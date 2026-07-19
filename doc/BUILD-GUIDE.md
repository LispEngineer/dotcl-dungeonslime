# Attribution

This document was originally written by Antigravity CLI on 2026-05-20,
against the pre-NuGet build (a sibling `../dotcl` checkout with a
`ProjectReference` and an `<Import>` of `Dotcl.targets`). It was rewritten
on 2026-07-19 to describe the current build: the `DotCL.Runtime` NuGet
package (0.1.18) and its `_DotCLResolveDeps` / `_DotCLCompileRoot` targets.
For the ASDF-level details of how `cspackages/` is wired into
`dungeon-slime.asd`, see `CLAUDE.md` ("Build pipeline") and
[implementation-notes.md](implementation-notes.md) ("Replacing the Splice
with a Plain `:depends-on`").


# DungeonSlime Project & Build Explanation

This document provides a breakdown of the `DungeonSlime.csproj` project
file, the overall build pipeline, and the roles of the referenced files.
The `.csproj` itself carries a detailed comment banner above every section;
this guide explains how the sections fit together rather than repeating
those comments verbatim.

---

## 1. Section-by-Section Breakdown of `DungeonSlime.csproj`

```xml
<Project Sdk="Microsoft.NET.Sdk">
```
*   Standard **.NET SDK** project: brings in the C# compiler, default file
    globbing, and standard build targets without manual declarations.

### General Configuration
```xml
  <PropertyGroup>
    <OutputType>WinExe</OutputType>
    <RootNamespace>DungeonSlime</RootNamespace>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <RollForward>Major</RollForward>
  </PropertyGroup>
```
*   **`OutputType=WinExe`**: GUI application — on Windows this prevents a
    console window from spawning behind the game window.
*   **`RollForward=Major`**: lets the .NET host run on newer major runtimes
    (e.g. .NET 11) if the targeted .NET 10.0 runtime is absent.
*   The rest are standard modern-C# conveniences (implicit usings, nullable
    reference-type warnings, default namespace).

### Platform-Conditional TFM and RuntimeIdentifier
```xml
  <PropertyGroup Condition="$([MSBuild]::IsOSPlatform('Windows'))">
    <TargetFramework>net10.0-windows</TargetFramework>
    <RuntimeIdentifier>win-x64</RuntimeIdentifier>
  </PropertyGroup>
  <PropertyGroup Condition="!$([MSBuild]::IsOSPlatform('Windows'))">
    <TargetFramework>net10.0</TargetFramework>
    <RuntimeIdentifier>$(NETCoreSdkRuntimeIdentifier)</RuntimeIdentifier>
  </PropertyGroup>
```
*   On Windows: `net10.0-windows` lets the MonoGame Windows packages
    (shipped against `net8.0-windows7.0`) resolve through NuGet's compat
    layer, and `win-x64` is forced because MonoGame's native SDL2 library
    has no Windows-ARM64 build (Snapdragon machines run it under Prism
    emulation).
*   Elsewhere: plain `net10.0`, with the RID resolved dynamically to the
    host (`linux-x64`, `linux-arm64`, `osx-arm64`, ...). This is why the
    build output path varies and must never be hardcoded — resolve it with
    `dotnet build DungeonSlime.csproj -getProperty:OutputPath` (as the
    `Makefile` does).

### DotCL Build Properties
```xml
  <PropertyGroup>
    <DotclProjectAsd>$(MSBuildProjectDirectory)/dungeon-slime.asd</DotclProjectAsd>
  </PropertyGroup>
```
*   **`DotclProjectAsd`**: the entry point for the Lisp side of the build.
    The DotCL targets (imported automatically from the NuGet package)
    resolve dependencies and compile Lisp sources relative to this ASDF
    system definition. This is the only property the NuGet-based pipeline
    needs — the old `DotclRuntimeProject`/`DotclBaseCore` sibling-checkout
    paths are gone.

### DotCL Build Initialization
```xml
  <ItemGroup>
    <DotclBuildInit Include="$(MSBuildProjectDirectory)/build-setup.lisp" />
  </ItemGroup>
```
*   **`DotclBuildInit`**: Lisp file(s) the DotCL compiler loads *before*
    compiling project sources. `build-setup.lisp` locates and loads
    Quicklisp and registers its ASDF search hooks, so external systems
    (e.g. `anaphora`) resolve at build time. A commented-out
    `DotclAsdSearchPath` example shows how to add non-Quicklisp ASDF search
    paths if ever needed.

### Raw Lisp Source Exclusions
```xml
  <ItemGroup>
    <None Remove="main.lisp" />
    <None Remove="dungeon-slime.asd" />
  </ItemGroup>
```
*   Keeps the SDK's default `<None>` globbing from copying raw Lisp source
    into the output directory — the Lisp is compiled to FASLs under
    `dotcl-fasl/` by the DotCL targets instead.

### NuGet Package References
```xml
  <ItemGroup>
    <PackageReference Include="MonoGame.Framework.DesktopGL" Version="3.8.*" />
    <PackageReference Include="Gum.MonoGame" Version="2026.5.8.1" />
    <PackageReference Include="MonoGame.Content.Builder.Task" Version="3.8.*" />
  </ItemGroup>
  <ItemGroup>
    <PackageReference Include="DotCL.Runtime" Version="0.1.18" />
  </ItemGroup>
```
*   **`MonoGame.Framework.DesktopGL`**: cross-platform SDL2 + OpenGL
    rendering, windowing, input, and audio.
*   **`Gum.MonoGame`**: the Gum UI library (Chapter 20's panels, buttons,
    sliders).
*   **`MonoGame.Content.Builder.Task`**: runs the MonoGame Content Builder
    (MGCB) over `Content/Content.mgcb` during the build, compiling
    textures/fonts/songs into `.xnb` assets.
*   **`DotCL.Runtime`**: the Lisp runtime *and* its MSBuild integration.
    Referencing this package automatically imports
    `DotCL.Runtime.ProjectCore.targets` from the NuGet cache — this is what
    replaced the old explicit `<Import Project="..\dotcl\runtime\build\Dotcl.targets" />`
    and `ProjectReference` to a sibling checkout.

### Contrib Lisp Library Copy
```xml
  <ItemGroup Condition="'$(DotclProjectAsd)' != '' and '$(_DotCLContribDir)' != ''">
    <None Include="$(_DotCLContribDir)\**\*"> ... </None>
  </ItemGroup>
```
*   Copies DotCL's `contrib` Lisp library tree from the restored NuGet
    package into the output directory, so the game host can
    `(require "asdf")` at runtime (used by the in-game REPL and dynamic
    system loading).

### Raw Audio Asset Copy
```xml
  <ItemGroup>
    <Content Include="Content\audio\*.wav"> ... </Content>
  </ItemGroup>
```
*   Sound effects load via `SoundEffect.FromFile` directly from disk
    (bypassing the MGCB content pipeline), so the raw `.wav` files must be
    copied to the output directory themselves.

### Custom Targets Bridging C# and Lisp Compilation
```xml
  <Target Name="CopyReferencesBeforeLisp" BeforeTargets="_DotCLResolveDeps"
          DependsOnTargets="ResolveReferences" Condition="'$(DotclProjectAsd)' != ''">
    <Copy SourceFiles="@(ReferenceCopyLocalPaths)" DestinationFolder="$(OutDir)" ... />
  </Target>

  <Target Name="WriteOutDirForLisp" BeforeTargets="_DotCLCompileRoot"
          Condition="'$(DotclProjectAsd)' != ''">
    <WriteLinesToFile File="obj/dotcl-outdir.txt" Lines="$(OutDir)" Overwrite="true" />
  </Target>
```
*   **`CopyReferencesBeforeLisp`**: on a clean build, the NuGet reference
    assemblies (MonoGame, Gum, ...) would not yet be in `$(OutDir)` when
    Lisp compilation starts; this target copies them there first so
    compile-time assembly loading can find them.
*   **`WriteOutDirForLisp`**: writes `$(OutDir)` to `obj/dotcl-outdir.txt`
    before Lisp root compilation. `type-aliases.lisp` reads this file at
    compile time to locate and load `MonoGame.Framework.dll` (and friends)
    without hardcoding the RID-dependent output path. See
    [implementation-notes.md](implementation-notes.md), "Resolving Build
    Output Paths Programmatically".

---

## 2. The Compilation and Execution Pipeline

When running `dotnet build` (`make build`), the pipeline processes the
project in these stages:

### Stage 1: The Lisp Build (DotCL NuGet targets)

1.  **`_DotCLResolveDeps`** — walks `dungeon-slime.asd`'s `:depends-on`
    graph (`dotnet-class`, `dotcl-thread`, `dotcl-repl`, `anaphora`,
    `csharp-assembly-packages`) and compiles each dependency system into
    its own standalone `.fasl`, using only the DotCL base image plus
    whatever `build-setup.lisp` registered. The consuming project's own
    .NET assemblies (e.g. `MonoGame.Framework.dll`) are **not** loaded in
    this phase — which is why the generated `cspackages/` wrappers must
    avoid load-time `dotnet:resolve-type` (they use lazy, memoized
    lookups; see `CLAUDE.md`, "Build pipeline").
2.  **`_DotCLBundleDeps`** — bundles the per-dependency FASLs and a load
    manifest into the output's `dotcl-fasl/` directory.
3.  **`_DotCLCompileRoot`** — concatenates the root system's own
    `:components` (in ASDF dependency order) into one `.concat.lisp` and
    compiles it to `DungeonSlime.fasl`. The project's referenced assemblies
    *are* loaded here, so this is the phase where
    `cspackages/csharp-generics.lisp` (read-time `#.` type resolution,
    compile-time CLOS proxy registration) and everything after
    `type-aliases.lisp` can safely touch MonoGame types.

    This target declares `Inputs`/`Outputs`, so MSBuild skips it entirely
    when the FASL is newer than every `.lisp`/`.asd` input — see
    [implementation-notes.md](implementation-notes.md), "DotCL Compilation
    Caching", for why compile-time diagnostics sometimes don't print.

### Stage 2: The C# and Content Build (SDK + MGCB)

1.  The C# compiler builds the small interop shims (`Program.cs`, which
    also defines `MonoGameCLOSProxy`; `BaseCaller.cs`; `MonoUtils.cs`;
    `MonoGameLispUtilities.cs`).
2.  `MonoGame.Content.Builder.Task` runs MGCB over `Content.mgcb`,
    producing `.xnb` content in the output directory.
3.  FASLs, contrib tree, reference assemblies, and raw `.wav` files land
    in the output directory per the items/targets above.

### Stage 3: Execution

When the built executable launches:

1.  `DotclHost.Initialize()` boots the Lisp runtime.
2.  `DotclHost.LoadFromManifest()` loads `dotcl.core`, the dependency
    FASLs, and `DungeonSlime.fasl` in manifest order.
3.  `main.lisp`'s entry point constructs the CLOS `game-1` instance and its
    C# `MonoGameCLOSProxy`, wires them together, and either runs the
    MonoGame `Run()` loop (`make run`) or the test harness (`--test`,
    `make test`).

---

## 3. Key Files

*   **[dungeon-slime.asd](../dungeon-slime.asd)**: the ASDF system
    definition — dependency systems, the full component list with
    `:depends-on` ordering, and the `eval-when` that registers
    `cspackages/` on `asdf:*central-registry*`.
*   **[build-setup.lisp](../build-setup.lisp)**: build-time init script
    (Quicklisp discovery/registration) loaded via `DotclBuildInit`.
*   **[main.lisp](../main.lisp)**: Lisp entry point — instantiates the game
    and proxy, dispatches `--test`/GUI modes.
*   **[Program.cs](../Program.cs)**: the C# host — boots DotCL, loads the
    manifest, and calls into Lisp.
*   **[BaseCaller.cs](../BaseCaller.cs)**: workaround utilities letting
    Lisp CLOS methods invoke C# base-class methods (e.g. `base.Update()`).
*   **`cspackages/`**: generated Lispy wrapper packages for MonoGame/System
    classes (see `CLAUDE.md`, "Generated C# wrappers").
*   **NuGet cache (`~/.nuget/packages/dotcl.runtime/0.1.18/`)**: source of
    the imported `DotCL.Runtime.ProjectCore.targets`, `DotCL.Runtime.dll`,
    `dotcl.core`, and the `contrib` tree.
