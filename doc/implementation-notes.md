# Implementation Notes

* Author: Douglas P. Fields, Jr - symbolics@lisp.engineer

This document contains some notes on how this was implemented,
how various implementation challenges were met (or not), and
notes about how to do things in the future.


# Including Lisp Libraries

It's very complicated to use a third party library right now in DotCL and
this application, and have them available in the binary.

1. Download the library using an SBCL with QuickLisp, because QuickLisp
   does not yet support DotCL.

2. Then load the package with the DotCL built-in ASDF. However,
   it requires some strange manner to make it work so it can be used
   in the normal build process as well as loading from a REPL. See
   [`load-system-test.lisp`](load-system-test.lisp) for details.

3. However, that doesn't make it possible for the binary to get these
   files when transferred to another system. So, the *source* needs to
   be copied to the binary output in a `contrib` directory. I've added
   a section to the `.csproj` that does that.

TO DO: See if it is possible to have the DotCL compiled FASL files used
instead?

I've [submitted a request](https://github.com/dotcl/dotcl/issues/32)
with DotCL to automate this somehow.


# Use of ASDF in the Game at Runtime

`(require "asdf")` fails at runtime with the error
`DotCL.LispErrorException: REQUIRE: module "asdf" not found`
due to a combination of two issues:

1. ASDF is skipped during build dependency bundling:
   Standard Lisp libraries in DotCL (like ASDF) do not define individual
   `:components` children and have `NIL` pathnames (since they are
   precompiled and shipped directly with the compiler).
   This causes DotCL's `--resolve-deps` tool to treat ASDF as a built-in package and
   skip outputting it to the bundle manifest (`dotcl-deps.txt`). As a result,
   MSBuild never copied the prebuilt `asdf.fasl` into the game's
   output directory.

2. Missing `contrib` directory at runtime:
   At runtime, DotCL's `MODULE-PROVIDE-CONTRIB` function dynamically searches for modules in a
   `contrib/` subdirectory relative to the
   executing process's `AppContext.BaseDirectory`
   (which for the game is `bin/Debug/net10.0/ubuntu.24.04-x64/` ).
   Because the `contrib/` folder was not copied to the build output directory,
   DotCL was unable to locate `asdf.fasl` dynamically.


# Open Questions

* How do I pass a boolean "False" to a C# function with `dotnet:invoke`?
  * Do I just send in `nil`?
  * Try `(dotnet:box nil "BOOL")` as in
    `(dotnet:invoke an-object "AMethod" (dotnet:box nil "BOOL"))`

* Is there a fast way to invoke C# functions/methods without going through
  introspection? I.e., a way to say "save the method call to X(a1, a2, a3)"
  and then invoke that method call on an object quickly with minimal overhead,
  preferably as if it were being directly invoked?
  * RESOLVED: DotCL 0.1.11 introduced direct method calls via the `(the (dotnet "Type") obj)` type declaration syntax.

* In `dotnet:define-class`, how would I specify a field of class
  `Func<object, object[], object>`?


# DotCL Issues Filed

* [Getting types of non-Lisp objects](https://github.com/dotcl/dotcl/issues/31)

* FR:[Extend multimethods to C# types](https://github.com/dotcl/dotcl/issues/29)

* [Enable `dotcl-repl:readline` to be interrupted](https://github.com/dotcl/dotcl/pull/28)

* [Fix backwards `dotcl-repl` history](https://github.com/dotcl/dotcl/pull/27)

* [Invoke non-static methods with generic type arguments](https://github.com/dotcl/dotcl/issues/23)

* [Omit default parameters in `dotnet:invoke`](https://github.com/dotcl/dotcl/issues/24)

* [Add constructor arguments to `dotnet:define-class`](https://github.com/dotcl/dotcl/issues/13).
  * Changed to "support multiple constructors", because SANO-san
    implemented the constructor arguments

* [Add `base` support in Lisp](https://github.com/dotcl/dotcl/issues/14).
  * CLOSED: SANO-san implemented this

* [Add array indexer](https://github.com/dotcl/dotcl/issues/15).
  * CLOSED: SANO-san implemented this


# Miscellaneous Notes

* Quicklisp: SBCL can be used to load Quicklisp packages. As of now,
  Quicklisp does not load in DotCL (there are DotCL language issues
  and also needs a DotCL-specific socket implementation). However,
  once loaded in SBCL, it is possible to use DotCL's ASDF to load those systems,
  e.g., `(asdf:load-system "dungeon-slime")`.
  * I may work on the Quicklisp DotCL implementation at some point.

* MGCB: To copy the `test-atlas.lisp` file to the output Content directory,
  add it to the `.mgcb` file and change the `Build Action` to `Copy`.

* To run the game as another user: (Remember I use Kubuntu 24.04 under Wayland)
  * `cp -a bin/Debug/net10.0/ubuntu.24.04-x64/ /tmp` (or wherever)
  * `xhost +si:localuser:dummy`
  * `su - dummy` (or any other user)
  * `export DISPLAY=:0` (use X11)
  * `/tmp/ubuntu.24.04-x64/DungeonSlime` (optionally add `--test`)

* DotCL compiles the root system by concatenating
  all source files in the system (in the order defined in the `.asd`file)
  into a single `.concat.lisp` file.

* DotCL keeps track of generic functions in an internal C# dictionary (_gfRegistry)
  to manage CLOS dispatch and compilation. Even after calling fmakunbound,
  the generic function object remains registered.
  See: `public static void RemoveGfRegistryEntry(Symbol sym, bool isSetf = false)`

* To pass a boolean "False" to a C# function with `dotnet:invoke`:
  * Do I just send in `nil` (works if the type can be discerned)
  * Use `(dotnet:box nil "BOOL")` as in
    `(dotnet:invoke an-object "AMethod" (dotnet:box nil "BOOL"))`
    if the type cannot be inferred by the DotCL Compiler/Runtime


# Resolving Build Output Paths Programmatically

Avoid hardcoding the exact output binary path (e.g., `bin/Debug/net10.0/ubuntu.24.04-x64/`)
into scripts, Makefiles, or Lisp code. The path is inherently brittle since it changes based
on OS, target framework, or build configuration (e.g. `-c Release`).

There are robust ways to resolve this dynamically depending on context:

## 1. In the Makefile (Via MSBuild)

The `.csproj` file naturally computes the output directory dynamically. It can be extracted
directly from the MSBuild evaluation engine without actually building the code by
querying the `OutputPath` property:

```makefile
BIN_DIR := $(shell dotnet build DungeonSlime.csproj -getProperty:OutputPath | tr '\\' '/')
```

(The `tr '\\' '/'` normalizes a mixed-separator value `-getProperty:OutputPath` can return
on a fully clean checkout, e.g. `bin\Debug/net10.0/` — see "De-Fragilizing the Makefile
Against .NET Version/Distro Changes" below.)

## 2. At Runtime (C# / Lisp Execution)

(This needs to be tested: what will the environment be when things are running?

If the project is actually running via `make run` or `make test`, it is possible to query the
.NET Core `System.AppContext.BaseDirectory` property. It will always return the absolute.
path of the directory containing the currently executing host application:

**In C#:**
```csharp
string outputDir = System.AppContext.BaseDirectory;
```

**In Lisp (via Interop):**
```lisp
(dotnet:static "System.AppContext" "BaseDirectory")
```

## 3. At Compile-Time (Inside Lisp `eval-when` Blocks)

Because `System.AppContext.BaseDirectory` points to the DotCL compiler process' directory
rather than the target project's directory during macro expansion, it cannot natively
resolve the target `bin/` path purely through reflection.

It is possible to invoke a nested MSBuild process using `uiop:run-program` during Lisp
compilation. It is possible for this to fail silently due to MSBuild node-reuse
locks and inherited environment variables. However, this seems to work in tests:
see `type-aliases.lisp`.

```lisp
  (let* ((out-path
          (uiop:run-program '("dotnet" "build" "DungeonSlime.csproj" "-getProperty:OutputPath")
                            :output :string
                            :ignore-error-status t))
         ;; Trim trailing newlines and whitespace
         (bin-dir (string-trim '(#\Space #\Tab #\Newline) out-path))
         ;; Parse and merge the absolute path to the DLL
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    ...more-code...)
```

A more robust solution is to add a custom MSBuild target to the `.csproj` file that
writes `$(OutDir)` to a standard file location (like `obj/dotcl-outdir.txt`) right before
the DotCL compilation task runs:

**In DungeonSlime.csproj:**
```xml
<Target Name="WriteOutDirForLisp" BeforeTargets="_DotCLCompileRoot" Condition="'$(DotclProjectAsd)' != ''">
  <WriteLinesToFile File="obj/dotcl-outdir.txt" Lines="$(OutDir)" Overwrite="true" />
</Target>
```

**In Lisp (eval-when block):**
```lisp
(eval-when (:compile-toplevel)
  (let* ((outdir-file (merge-pathnames "obj/dotcl-outdir.txt" (asdf:system-source-directory "dungeon-slime")))
         (bin-dir (with-open-file (s outdir-file) (read-line s)))
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (dotnet:load-assembly (namestring dll-path)))

  ;; Proceed with class registration safely!
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
    (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))
```


# DotCL Compilation Caching (`_DotCLCompileRoot`)

When integrating DotCL with MSBuild (via the `DotCL.Runtime` NuGet package's targets; this target
was named `DotclCompileRoot` in the older sibling-checkout `Dotcl.targets` era), the actual
execution of the Lisp compiler is managed by the `_DotCLCompileRoot` MSBuild target.

This target is configured with specific `Inputs` (all the `.lisp` files in the project and the
`.asd` file) and `Outputs` (the compiled `.fasl` file). This enables MSBuild's native incremental
build caching mechanisms.

When running `make build` or `dotnet build` multiple times in a row without making any modifications
to the source files, MSBuild detects that the `.fasl` output file is already newer than all of the
`.lisp` input files. When this happens, MSBuild prints a message stating:
`Skipping target "_DotCLCompileRoot" because all output files are up-to-date with respect to the input files.`

Because the compilation target is completely skipped, the DotCL compiler process is never launched.
Consequently, any code inside `eval-when (:compile-toplevel)` blocks (such as `format` diagnostic prints,
programmatic assembly loads, or macro expansions) will **not** be executed again, and no compile-time output
will be printed to the console.

When debugging compile-time macros or `eval-when` logic and want to force the compiler to run so as to
see the outputs, the MSBuild cache must be invalidated by either:

1. Making a modification to any `.lisp` file or the `.asd` file (e.g., adding a space and saving it).
2. Running `make clean` (or `dotnet clean`) to delete the `obj/` and `bin/` directories, forcing MSBuild to
   rebuild the `.fasl` from scratch on the next build.

## A Second, Independent FASL Cache That `make clean` Does Not Touch

`make clean` only clears `obj/`/`bin/` inside the project directory, but DotCL/ASDF
also maintains a *global*, content-addressed FASL cache outside the project entirely,
at `~/.cache/common-lisp/dotcl-<version>-linux-x64/<absolute-path-to-source-tree>/`.
This mirrors every compiled system by its full source path (e.g.
`.../dotcl-0.1.18-linux-x64/home/dfields/src/cl/dotcl-dungeonslime/cspackages/packages.fasl`),
and it is a *separate* staleness trap from the `obj/`/`bin/` one described above:
`make clean` (i.e. `dotnet clean`) never deletes it, so it can persist across any
number of clean rebuilds.

This surfaced while removing the `x`/`y`/`width`/`height` generics from
`mg-classes.lisp` in favor of the `cs:` (`csharp-generics`) package: two classes
(`Texture2D`, `Viewport`) needed new wrapper packages added to `cspackages/`, so
their `--class` entries were added to the `Makefile`'s `cspackages` target and
`make cspackages` was run to regenerate the vendored wrappers. The subsequent
`make build` still failed to compile the project's own `packages.lisp` with
`ADD-PACKAGE-LOCAL-NICKNAME: no package named MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D`,
even after `make clean`. The `obj/Debug/.../dotcl-fasl/csharp-assembly-packages.fasl`
in the project's own `obj/` was in fact stale too (both this file and its
`deps/` copy dated from a build a day before the regeneration), but even after
deleting `obj/` outright the *same* error persisted — because
`~/.cache/common-lisp/dotcl-0.1.18-linux-x64/<project-path>/cspackages/packages.fasl`
(dated from the older `cspackages/packages.lisp`, before `Texture2D`/`Viewport`
were added) was still being picked up by ASDF's dependency resolution for the
`csharp-assembly-packages` system, silently shadowing the freshly regenerated source.

**Fix**: delete the project's subtree under the global cache directory, then rebuild:
```sh
rm -rf ~/.cache/common-lisp/dotcl-*-linux-x64$(pwd)
make clean
make build
```
When a Lisp build fails with a package/symbol-not-found error that only makes sense
if stale `cspackages/` output were still in play — especially right after
`make cspackages` regenerates wrapper packages — clearing this directory (not just
`obj/`/`bin/` via `make clean`) should be one of the first things tried, alongside
the `obj/`-only staleness case already covered above.


# DotCL Build Execution Changes and ASDF Loading

In DotCL, the build pipeline natively supports automatically bundling dependencies (like Quicklisp
systems) during MSBuild execution.

**The Streamlined PackageReference Approach (Upgraded to DotCL 0.1.15):**
1. **Transition to PackageReference**: The project is decoupled from the local sibling check-out of
   the `dotcl` repository by utilizing `<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`
   instead of a `<ProjectReference>`. MSBuild automatically imports the custom compilation targets from
   the package cache.
2. **Dependencies via `build-setup.lisp`**: The project registers a build initialization script:
   [build-setup.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/build-setup.lisp) using the
   `<DotclBuildInit>` target. During build execution, the package-internal compiler task loads this
   script, which automatically finds and loads Quicklisp to register ASDF system search hooks at
   build-time.
3. **Automated Reference Copying**: A custom target `CopyReferencesBeforeLisp` executes before Lisp
   compilation, copying all referenced NuGet assembly DLLs (like `MonoGame.Framework.dll`) to the output
   directory so they can be loaded by the Lisp compiler at compile-time.
4. **Copying the `contrib` Library**: The MSBuild project file includes a target to copy the standard
   `contrib` Lisp package directories (ASDF, UIOP, socket, thread, etc.) from the restored package assets
   directory `$(_DotCLContribDir)` into the output `contrib/` subdirectory, enabling the game to resolve
   built-in systems dynamically (e.g. via `(require "asdf")`) at runtime.
5. **Loading Macros at Compile-Time**: Because Lisp compilation evaluates dependencies strictly to
   generate `.fasl` bundles, it does not automatically load dependency systems into the compiler's
   active environment. To use macros from a dependency (like `anaphora:awhen`), the system must still
   be loaded during `:compile-toplevel`:
   ```lisp
   (eval-when (:compile-toplevel)
     (asdf:load-system "anaphora"))
   ```
   At runtime, `DotclHost.LoadFromManifest` loads all FASL dependencies automatically in the order
   defined by `dotcl-deps.txt`.

# Input Management (MonoGame Chapter 11)

The input management system (`input-manager.lisp`) was implemented following
the MonoGame Chapter 11 tutorial. See
[opencode-implementation-notes.md](opencode-implementation-notes.md) for
full details of the implementation.

Key points:

- The `:dungeon-slime-input` package uses local nicknames to reference
  the generated C# packages, avoiding symbol conflicts.
- Each `core` game instance has one `input-manager` (class allocation).
- The update order follows the C# one-frame-latency pattern: game logic
  reads input from the previous frame's state update, which happens in
  `core:update` via `call-next-method`.
- The generated cspackages must be pre-declared as empty packages in
  `packages.lisp` (alongside the other pre-declares) so the
  `:dungeon-slime-input` package's `:local-nicknames` can be resolved
  at package-definition time before the cspackages are loaded.

# Tilemaps (MonoGame Chapter 13)

The tilemap system (`tilemap.lisp`, `tileset.lisp`) implements Chapter 13 of the MonoGame tutorial.
Instead of using XML for configuration as suggested in the tutorial, the implementation utilizes
S-expressions for the `tilemap-definition.lisp` file.

Key points:
- The tilemap relies on the `Content.mgcb` file to copy `tilemap-definition.lisp` into the output directory.
- `safe-read-form-from-file` is used to load the S-expression configuration securely.
- S-expression lists specify rows and columns, slicing into a texture atlas's `texture-region`.
- Room boundaries are computed dynamically based on the tilemap's loaded dimensions and scale, rather than hard-coding the screen bounds, allowing the game physics and collisions (e.g. slime bounding box) to scale naturally with the map.
- The tilemap definition file is located in the Content directory. The constant
  `+tilemap-filename+` combines the default content directory prefix (`Content/`)
  so that `qualify-path` correctly resolves the path at runtime (both relative to
  the root and in the C# build output folder).
- To prevent type conversion issues, dimensions used in constructing the room
  bounds `Rectangle` (e.g. scale * size) must be coerced to integers (using
  `round`) before calling the `rect` constructor, as the C# `Rectangle`
  constructor requires `Int32` parameters.
- Textures are loaded using `content-load-texture2d`, which wraps generic
  `ContentManager.Load<Texture2D>` calls through DotCL's generic invocation or
  returns the raw asset name when the manager is `nil` (for CLI testing context).


# Audio and Music (MonoGame Chapter 14)

The audio system (`audio-test.lisp` and updates to `game-1.lisp`) implements
Chapter 14 of the MonoGame tutorial. Instead of loading audio via
`ContentManager.Load<T>`, the implementation uses direct filesystem loading
via the static methods of `SoundEffect` (`from-file`) and `Song` (`from-uri`).

## Generic Methods in DotCL (`dotnet:generic-method`)

In .NET, generic methods are methods that are defined with type parameters. A
common example in MonoGame is `ContentManager.Load<T>(string assetName)`.

In DotCL, you cannot invoke a generic method directly using standard member
invocation because the Lisp runtime needs to know which concrete type signature
to look up in the .NET metadata.
To resolve this, DotCL provides the `dotnet:generic-method` function:
```lisp
(dotnet:generic-method "MethodName" "TypeArgument1" "TypeArgument2" ...)
```
For example, to call `Content.Load<SoundEffect>("audio/bounce")`, you would write:
```lisp
(dotnet:invoke content-manager
               (dotnet:generic-method "Load" "Microsoft.Xna.Framework.Audio.SoundEffect")
               "audio/bounce")
```
This instructs DotCL to perform a generic method instantiation for the `Load`
method on the `ContentManager` instance, specializing it with the type
`Microsoft.Xna.Framework.Audio.SoundEffect` before invoking it.

### Avoiding Generic Methods with Static Constructors

While `dotnet:generic-method` works, it relies on runtime reflection to resolve
the generic signature. Whenever possible, using non-generic static construction
methods provided by C# classes is preferred as it is cleaner and uses the
pre-generated C# wrappers.

For instance, `SoundEffect.FromFile(string path)` and
`Song.FromUri(string name, Uri uri)` are non-generic static methods. They can
be invoked directly through the Lisp package wrappers `sound-effect:from-file`
and `song:from-uri`, bypassing `ContentManager` entirely.

# Audio Controller (MonoGame Chapter 15)

The audio controller system (`audio-controller.lisp` and updates to `game-1.lisp` and `mg-core.lisp`) implements Chapter 15 of the MonoGame tutorial.

Key points:
- The `audio-controller` CLOS class provides centralized audio lifecycle management.
- Because `SoundEffectInstance` objects are limited resources, they must be manually disposed of when they stop playing. The audio controller tracks active instances and cleans them up in `update-audio` when they reach the `Stopped` state.
- Keyboard bindings for global mute (`M`) and volume adjustment (`+` and `-`) are integrated into the main input polling loop in `game-1.lisp`.
- The `cspackages` generator is updated to include wrappers for `SoundEffectInstance` and `SoundState`.

## Challenging Type Issues with .NET Reflection (Float vs. DoubleFloat)

A significant challenge arose when adjusting the master volume and media volume
via `.NET` reflection. In C#, the properties `SoundEffect.MasterVolume` and
`MediaPlayer.Volume` are defined as C# `float` (single-precision floating-point
numbers).

### The Mismatch

When Lisp queries a C# `float` property using `dotnet:static` or
`dotnet:invoke`, the DotCL runtime automatically marshals the return value into
a Lisp `DoubleFloat` (a double-precision float).

If arithmetic is performed on this value (e.g., adding or subtracting a volume
delta), the result remains a `DoubleFloat` in Lisp.

### The Reflection Failure

When the updated Lisp `DoubleFloat` value is set back to the C# property using
`(setf (dotnet:static ...))`, DotCL's underlying binder attempts to find a match.
Specifically:
1. DotCL calls the .NET reflection `InvokeMember` API with `BindingFlags.SetProperty`.
2. Because the Lisp value is marshaled to .NET as a `double` (a 64-bit float),
   the binder searches for a property setter that accepts a `double`.
3. The .NET reflection binder does not automatically downcast or narrow a
   `double` to a `float` (a 32-bit float) for property setters.
4. Consequently, the member lookup fails completely, throwing a
   `System.MissingMethodException` with a message indicating the property
   setter could not be found.

### The Solution

To resolve this reflection binding mismatch, values must be explicitly coerced
back to Lisp's `single-float` type using `(coerce value 'single-float)` before
passing them to the C# property setter. This ensures DotCL marshals the value
as a 32-bit `float`, matching the property signature in the assembly.

Example:
```lisp
(defun set-master-volume (vol)
  (setf (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")
        (coerce vol 'single-float)))
```

# Chapter 16: SpriteFont Text Rendering

## Design Decision: Helper Functions, Not a CLOS Class

`SpriteFont` is a sealed C# class from MonoGame with no virtual methods.
Creating a CLOS wrapper class around it would add unnecessary indirection
without providing any polymorphic benefit. Instead, `sprite-font.lisp`
provides three helper functions:

* `load-font` — loads a SpriteFont via `ContentManager.Load<SpriteFont>(name)`
* `measure-string` — calls `SpriteFont.MeasureString(string)` to get text dimensions
* `draw-string` — calls `SpriteBatch.DrawString(...)` with keyword arguments

This follows the same pattern used for `SoundEffect` and `Song` helpers in the
generated `cspackages/` directory.

## Content Pipeline Setup

The SpriteFont must go through the MonoGame content pipeline (not a simple copy)
to be processed by the `FontDescriptionImporter` and `FontDescriptionProcessor`.
The `Content.mgcb` entry uses these processors with the font size, kerning,
and character region settings matching the `.spritefont` XML description.

The font file `04B_30.ttf` is referenced by name in the `.spritefont` file.
Note: The MonoGame tutorial's download link for this font (docs.monogame.net)
returns a 404 error. Rather than using the temporary AdwaitaMono system font fallback,
the correct original `04B_30.ttf` pixel font has been copied from the user's Downloads
folder. Credit and license details for this font can be found on its
[FontSpace Page](https://www.fontspace.com/04b30-font-f735).

## Score Origin Computation

The score text origin is computed by measuring the string `"Score: 0"` (not
just `"Score"`) to ensure proper left-center alignment. This is because the
full text `"Score: 123"` or `"Score: 9999"` will be drawn at render time,
and the origin needs to account for the full width of the text pattern.

The position is computed once during `initialize` (after `load-content` via
`call-next-method`) and stored in the `score-text-position` and
`score-text-origin` slots on the `game-1` class.

## ASDF Dependency Chain

```
packages -> mg-classes -> sprite-font -> game-1
```

`sprite-font.lisp` depends on `mg-classes` for `v2:+zero+`, `v2:+one+`
and `sprite-effects:+none+`.


# Refactoring Raw .NET Interop Calls to C# Package Wrappers

All `.lisp` files have been reviewed and raw `.NET` interop calls (`dotnet:new`,
`dotnet:invoke`, `dotnet:static`, and raw namespace-qualified readers like
`#!!`) were replaced with their corresponding `cspackages` wrappers.

## Nicename Scoping and Pre-declarations

To allow packages like `dungeon-slime-input` and `mg-classes` to use generated C# package
wrappers via local nicknames, all generated C# package namespaces were moved to the
top of `packages.lisp` and pre-declared empty:
- `(defpackage :microsoft-xna-framework-game-time)`
- `(defpackage :microsoft-xna-framework-game)`
- `(defpackage :microsoft-xna-framework-graphics-sprite-batch)`
- `(defpackage :microsoft-xna-framework-input-mouse)`
This ensures compilation and package loading succeed without order-of-definition crashes.

## Input Management Refactoring

In `input-manager.lisp`, raw constructor and static state query calls were replaced:
- `(dotnet:new "Microsoft.Xna.Framework.Input.KeyboardState")` -> `(kb-state:new)`
- `(#!!Microsoft.Xna.Framework.Input.Keyboard.GetState)` -> `(kb:get-state)`
- `(dotnet:new "Microsoft.Xna.Framework.Input.MouseState")` -> `(ms:new)`
- `(#!!Microsoft.Xna.Framework.Input.Mouse.GetState)` -> `(mouse:get-state)`
- `(dotnet:static "Microsoft.Xna.Framework.Input.Mouse" "SetPosition" ...)` -> `(mouse:set-position ...)`
- `(dotnet:new "Microsoft.Xna.Framework.Input.MouseState" ...)` -> `(ms:new ...)`
- `(dotnet:new "Microsoft.Xna.Framework.Input.GamePadState")` -> `(gp-state:new)`
- `(#!!Microsoft.Xna.Framework.Input.GamePad.GetState ...)` -> `(gp:get-state ...)`
- `(dotnet:static "Microsoft.Xna.Framework.Input.GamePad" "SetVibration" ...)` -> `(gp:set-vibration ...)`

## Audio and Test Framework Refactoring

In `audio-controller.lisp`, instance disposal calls were refactored:
- `(dotnet:invoke instance "Dispose")` -> `(sei:dispose instance)`

In `audio-test.lisp`, raw system URI constructors were refactored:
- `(dotnet:new "System.Uri" ...)` -> `(system-uri:new theme-path system-uri-kind:+relative+)`

## CLOS Utility Classes Refactoring

In `mg-classes.lisp`, raw `Vector2` static field fetches, `Rectangle` constructors, and `GameTime`
property gets were refactored:
- `(dotnet:invoke gt "TotalGameTime")` -> `(game-time:total-game-time gt)`
- `(dotnet:invoke gt "ElapsedGameTime")` -> `(game-time:elapsed-game-time gt)`
- `(dotnet:invoke gt "IsRunningSlowly")` -> `(game-time:is-running-slowly gt)`
- `(dotnet:static "Microsoft.Xna.Framework.Vector2" "Zero")` -> `v2:+zero+`
- `(dotnet:static "Microsoft.Xna.Framework.Vector2" "One")` -> `v2:+one+`
- `(dotnet:static "Microsoft.Xna.Framework.Vector2" "UnitX")` -> `v2:+unit-x+`
- `(dotnet:static "Microsoft.Xna.Framework.Vector2" "UnitY")` -> `v2:+unit-y+`
- `(dotnet:new "Microsoft.Xna.Framework.Rectangle" ...)` -> `(rect:new x y w h)`

In `mg-core.lisp`, C# window/game property accesses and the `SpriteBatch` constructor
were refactored:
- `(dotnet:invoke mg "Content")` -> `(game:content mg)`
- `(dotnet:invoke mg "Window")` -> `(game:window mg)`
- `(setf (dotnet:invoke mg "IsMouseVisible") T)` -> `(setf (game:is-mouse-visible mg) T)`
- `(dotnet:invoke monogame "GraphicsDevice")` -> `(game:graphics-device monogame)`
- `(dotnet:new "Microsoft.Xna.Framework.Graphics.SpriteBatch" ...)` -> `(sprite-batch:new base-gd)`

## ASDF Dependency Ordering

In `dungeon-slime.asd`, components that utilize the local C# package nicknames (`mg-classes` and
`input-manager`) were updated to explicitly list the generated `*cspackages-components*` in their
`:depends-on` declaration list. This ensures the generator stubs are fully loaded
and defined before the main game files compile. (Historical: the
`*cspackages-components*` mechanism was retired on 2026-07-11 — see
"Replacing the Splice with a Plain `:depends-on`" below.)


# DotCL 0.1.14 ASDF Compilation and Load Warnings Analysis

Under DotCL 0.1.14, executing ASDF operations (such as compiling or loading the
`dungeon-slime` system or Quicklisp packages) may generate various warnings
and compile-failed conditions. These warnings have been analyzed and verified
as completely benign.

## 1. `RECURSIVE-OPERATE` Warnings

* **Cause**: This warning is signaled by ASDF when a nested `load-system` or
  `require` operation is initiated while another ASDF operation is already
  active on the same image.
* **Occurrences**:
  - In `load-system-test.lisp` during `(eval-when (:compile-toplevel) (asdf:load-system "anaphora"))`
    while compiling `dungeon-slime`.
  - In `game-repl.lisp` during `(eval-when (:compile-toplevel :load-toplevel :execute) (require "dotcl-repl"))`
    which translates to `(asdf:load-system "dotcl-repl")` while compiling/loading `dungeon-slime`.
* **Impact**: Completely benign. ASDF handles the nested operation correctly
  and loads the systems. However, because `RECURSIVE-OPERATE` is a standard
  warning (not a `style-warning`), it triggers the compiler's warning check,
  which ASDF reports as `COMPILE-WARNED-WARNING` and `COMPILE-FAILED-WARNING`
  for the compiling file.

## 2. `DEFGENERIC: EMPTYP` Redefinition Warnings

* **Cause**: In `quicklisp/http.lisp`, a generic function `emptyp` is defined via
  `(defgeneric emptyp ...)`. When its FASL assembly is loaded, the DotCL
  cross-package function bridge copy-on-intern logic inherits the function
  slot of the existing ordinary function `uiop:emptyp` (which is in the `UIOP`
  package) onto `ql-http::emptyp`. As a result, the `defgeneric` redefinition check
  sees that the symbol `ql-http::emptyp` is already `fboundp` as a non-generic
  function and issues a warning:
  `WARNING: DEFGENERIC: EMPTYP is being redefined as a generic function, but it was previously defined as an ordinary function.`
* **Impact**: Completely benign. The warning handler automatically clears the
  inherited function slot using `fmakunbound` and correctly binds the generic
  function. This warning only occurs during compilation (when ASDF loads the
  freshly built FASL) and when first loading Quicklisp setup, and does not
  affect the game.




## 2. Resolving the `"ANAPHORA"` Package Error during Clean Build
When upgrading to DotCL 0.1.14 and performing `make build`, the compilation crashed with a `PACKAGE-ERROR` stating that no package named `"ANAPHORA"` exists.

* **Reader/Package Mismatch**: During compilation, the DotCL compiler concatenates all files into `.concat.lisp` and reads them completely before evaluation. The Lisp reader parses symbols like `anaphora:awhen` before the `eval-when` form that loads `"anaphora"` is evaluated.
* **Pre-declaration Stub**: To prevent reader package lookup errors, a stub `(defpackage :anaphora)` was added to `packages.lisp` (which is compiled first), following the established repository pattern for C# package stubs.
* **Stale FASL Cleanup**: Stale `.fasl` files compiled by previous DotCL versions (such as 0.1.11 or 0.1.12) are incompatible with DotCL 0.1.14 and are silently ignored by the loader during the dependency resolution phase. Consequently, the actual `"anaphora"` package was never loaded. Deleting all stale `.fasl` files in both the workspace and the Quicklisp directory and cleaning the project's `obj` directory forces a full rebuild, compiling the dependencies cleanly using DotCL 0.1.14.


# Dependency Refactoring and REPL Load Simplification

The build dependency hierarchy was refactored to eliminate compile-time
circular dependencies, simplify `dungeon-slime.asd`, and streamline the REPL
loader (`load-repl.lisp`).

## 1. Circular Dependency Elimination

Previously, `utils.lisp` relied on the generated C# wrapper package
`system-app-domain` to retrieve `+base-directory+` via
`(app-domain:base-directory app-domain:current-domain)`. However, the generator
for `system-app-domain` depended on `utils.lisp`. This created a compile-time
and load-time dependency loop.

To break this loop:
* The initialization of `+base-directory+` in `utils.lisp` was rewritten to use
  direct, native `.NET` interop calls:
  ```lisp
  (defconstant +base-directory+
    (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "get_BaseDirectory")
    "Get the C# base directory of this current executable")
  ```
* This decouples the utility layer entirely from `system-app-domain.lisp`.
* Stub definitions for `:system-app-domain`, `:system-object`, and
  `:system-type` in `packages.lisp` were reverted to simple stubs. Stub exports
  are only retained for symbols referenced at read-time by referencing files
  before the generated packages compile (`system-object:get-type` and
  `system-type:full-name`).

## 2. Linear Build Sequence

With utility modules decoupled from generated code, the component load order in
`dungeon-slime.asd` was restored to a simple, flat linear sequence:
1. `packages`
2. `settings`
3. `type-aliases`
4. `monoutils`
5. `utils`
6. `*cspackages-components*` (loads all generated package wrappers, all of
   which now consistently depend on `packages`, `utils`, and `monoutils`)
7. Remaining game files.

(Historical: step 6's `*cspackages-components*` splice was later retired in
favor of a plain `:depends-on` — see "Replacing the Splice with a Plain
`:depends-on`" below.)

This completely eliminated complex `remove-if` and `remove-if-not` filters
from the system definition.

## 3. Dynamic Assembly Loading and Standalone Executables

To ensure the compiled game executable runs cleanly without requiring ASDF to
be loaded at runtime, all system directory and assembly paths inside
`type-aliases.lisp` are resolved dynamically by checking if ASDF is present
via `(find-package :asdf)`.

If ASDF is present (during Lisp compilation or inside REPL sessions), the
loader resolves the output directory relative to the ASDF system directory and
loads the assemblies dynamically. If ASDF is absent (during standalone
executable execution), the assembly loading sequence is completely skipped,
as the assemblies are already statically linked and loaded by the C# host
process. This prevents runtime `Undefined function` errors.

## 4. Self-Contained REPL Loader

The C# helper registrar `MonoUtilsRegistrar.Initialize` call was moved to a
load-time `eval-when` block at the end of `monoutils.lisp`.

Because assembly loading, path resolution, and registrar initialization are
now handled automatically by the ASDF system, `load-repl.lisp` was simplified
to just:
1. Load ASDF and register the directory.
2. Load the `"dungeon-slime"` ASDF system.
3. Change package to `:dungeon-slime`.
4. Create the game object and configure `RootDirectory` using
   `*content-directory*`.


# Local Nickname Migration and TimeSpan Operator Dispatchers

## 1. TimeSpan Package Nickname Migration

To clean up references to the `system-time-span` package, all references across
the codebase were migrated to use a `:ts` package local nickname:
* Package definitions for `:dungeon-slime`, `:dungeon-slime-input`, and
  `:dungeon-slime-tests` in [packages.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/packages.lisp) were updated to include
  `(:ts :system-time-span)` under `:local-nicknames`.
* The obsolete `:time-span` nickname was removed to prevent collisions.
* All code symbols (e.g. `system-time-span:from-milliseconds`) and tests (e.g.
  `system-time-span:from-ticks`) were refactored to use `ts:`.
* Test code using dynamic symbol reflection (e.g., `(find-symbol "=" :ts)`) was
  updated to make direct, read-time resolved calls (e.g. `(ts:= t1 t2)`),
  eliminating runtime package name resolution issues.


# Multi-User Portability and Exception-Safe Audio Support

To support multi-user testing environments (e.g., executing the game compiled by
one user under another local account via `/tmp` or running from different working
directories), the codebase implements path qualification safety and graceful host
subsystem failure fallbacks.

## 1. Raw Sound File Copying
By default, the MonoGame Content Builder (`MGCB`) compiles audio files into
`.xnb` format. However, the Lisp game engine loads sound effects directly from
the filesystem using `SoundEffect.FromFile`, bypassing the content pipeline.
To support this, a copy target is declared in [DungeonSlime.csproj](file:///home/dfields/src/cl/dotcl-dungeonslime/DungeonSlime.csproj) to
explicitly copy raw `.wav` sound files under `Content/audio/` to the build output
directory, keeping them alongside the compiled assets.

## 2. Interop Path Qualification and Type Safety
Relative paths passed to filesystem-based static constructors (e.g.,
`SoundEffect.FromFile`) are resolved to the application's base installation directory
using `qualify-path` (defined in [utils.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/utils.lisp)). 
- **Type Safety**: Lisp path-manipulation functions (such as `uiop:subpathname*` inside
  `path-combine`) return `pathname` objects. Passing a `pathname` object to a C#
  method expecting a string signature results in a method lookup failure
  (`MissingMethodException`).
- **Fix**: `qualify-path` is updated to convert resolved pathnames to native string
  representations using `uiop:native-namestring`.

## 3. Flexible URI Parsing for Audio
Theme songs are loaded via `Song.FromUri`. When loading qualified filesystem paths on Unix
systems (which lack a scheme prefix like `file:///`), the constructor is called using
`system-uri-kind:+relative-or-absolute+`:
```lisp
(system-uri:new qualified-path system-uri-kind:+relative-or-absolute+)
```
This prevents `UriFormatException` crashes while correctly resolving both absolute paths (when
the file exists in the installation directory) and relative fallbacks.

## 4. Graceful Audio Device Fallbacks
Under multi-user environments, access to the primary user's sound server (PipeWire or
PulseAudio) is frequently restricted, causing OpenAL device initialization to fail.
- **Tolerant Loading**: Audio resource loading in [game-1.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/game-1.lisp) is wrapped in a
  `handler-case` expression. If sound device initialization fails, a warning is printed
  to the error console, the audio slots are set to `nil`, and the game successfully
  loads and runs in silent mode rather than crashing.
- **Protected Actions**: Playback controls and volume setters/getters in
  [audio-controller.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/audio-controller.lisp) are wrapped in `handler-case` and guard against `nil`
  inputs, ensuring volume adjustments or collision triggers do not crash during silent runs.
- **WSL2 Audio Setup**: If running under WSL2 with Ubuntu 24.04, the OpenAL initialization
  can fail due to missing native libraries (PulseAudio, ALSA, PipeWire clients). See the
  detailed guide [enable-audio-under-wsl-ubuntu24.04.md](enable-audio-under-wsl-ubuntu24.04.md)
  on how to install these packages and enable audio playback.


# Wiring `dungeon-slime.asd` to the Generator's Self-Contained `.asd` (Package Generator v23)

> **Superseded (2026-07-11).** This section describes the
> `*cspackages-components*` read/splice mechanism, which is no longer what
> `dungeon-slime.asd` does. As of commits `9630352`..`fa9c4d7` (2026-07-11),
> the project uses a plain ASDF `:depends-on ("csharp-assembly-packages")`
> with `cspackages/` pushed onto `asdf:*central-registry*`, plus one
> hand-placed root component (`cspackages/csharp-generics`). See the section
> "Replacing the Splice with a Plain `:depends-on` (Package Generator v45)"
> below, and [issue-49-continued.md](issue-49-continued.md) for the full
> investigation. The section is preserved unchanged as history: it documents
> why the plain `:depends-on` *used to be impossible*, which is the context
> the later fix responds to.

Starting with generator v21, `dotcl-packagegen` (`../package-generator`) emits
its own ASDF system definition, `cspackages/csharp-assembly-packages.asd`,
alongside the generated `.lisp` files. By v23 that generated system is fully
self-contained (its own `packages.lisp` and `csharp-assembly-utils.lisp`, no
dependency on anything in this project). Before this change, `dungeon-slime.asd`
had no such file to build against, so it worked around the gap with an
`eval-when`-computed `*cspackages-components*` list that raw-scanned the
`cspackages/` directory for `*.lisp` files and spliced each one into
`dungeon-slime`'s own `:components`, guessing `:depends-on ("packages" "utils"
"monoutils")` for every one of them (an assumption that was already wrong by
v23 — the generated files don't reference this project's `utils`/`monoutils`
at all, they depend on the generator's own `packages` and
`csharp-assembly-utils`). This is the change referenced in the commit
"Use package generator v23 ... Next: update the .asd."

## 1. The ASDF `:depends-on` Approach That Doesn't Work

The obvious "correct" fix looks like turning `csharp-assembly-packages` into a
real ASDF system dependency:

```lisp
(defsystem "dungeon-slime"
  :depends-on ("csharp-assembly-packages" "dotnet-class" "dotcl-thread" "dotcl-repl" "anaphora")
  :components (...))
```

with `cspackages/` registered on `asdf:*central-registry*` (the same idiom
`load-repl.lisp` already uses for the project root) so ASDF can find
`csharp-assembly-packages.asd` by name. This reads cleanly, drops the
`:depends-on` splicing needed on every consumer component (`mg-classes`,
`poc-test`, `input-manager`, `audio-controller`, `cspackages-test`,
`typed-calls-test`), and is exactly what you'd do for a normal Quicklisp-style
library dependency.

**It does not work under the DotCL/MSBuild build pipeline used by this
project (`DotCL.Runtime.ProjectCore.targets`, DotCL.Runtime 0.1.15+).** That
pipeline compiles a project's Lisp system in two separate MSBuild targets,
run in this order:

1. **`_DotCLResolveDeps`** — runs the `DotclResolveDeps` MSBuild task, which
   walks the target `.asd`'s `:depends-on` graph and compiles each
   dependency into its own standalone `.fasl` (via `DotCL.Build.Tasks.dll`,
   in-process, using only the `DotCL.Runtime.dll` + `dotcl.core` base image
   plus whatever Quicklisp systems `build-setup.lisp` registers). The
   resulting per-dependency FASLs get bundled by the subsequent
   `_DotCLBundleDeps` target.
2. **`_DotCLCompileRoot`** — runs the `DotclCompileProject` MSBuild task,
   which compiles the **root system's own `:components`** (i.e., the actual
   `.lisp` files listed directly under `dungeon-slime`'s `:components`, not
   under its dependencies) into a single `DungeonSlime.fasl`.

Critically, only `_DotCLCompileRoot` loads the *consuming project's own* .NET
assembly references (`MonoGame.Framework.dll` etc.) into the Lisp runtime's
type-resolution context before compiling. `_DotCLResolveDeps` does not — it's
built for portable, assembly-agnostic Lisp libraries (the kind you'd pull
from Quicklisp), and has no notion of "this specific game's referenced NuGet
assemblies."

The generated `cspackages/*.lisp` files, however, call `dotnet:resolve-type`
directly at the top level, e.g. (from `cspackages/microsoft-xna-framework-vector2.lisp`):

```lisp
(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
```

This runs at load time (and inside an `eval-when` for `EnsureDotNetTypeClass`
right below it), so it needs `Microsoft.Xna.Framework.Vector2` to already be a
resolvable .NET type — i.e., `MonoGame.Framework.dll` must already be loaded
into the process. When `csharp-assembly-packages` is a `:depends-on` of
`dungeon-slime`, ASDF/DotCL compiles it during `_DotCLResolveDeps`, before
that assembly is loaded, and the build fails hard:

```
error : dotcl resolve-deps failed for .../dungeon-slime.asd:
  DOTNET: type not found: Microsoft.Xna.Framework.Vector2
```

This was confirmed experimentally (not just inferred from reading the
targets file): switching to the `:depends-on` form above reproduced this
exact error during `_DotCLResolveDeps`, on a project that otherwise built
fine before generator v21 introduced the possibility of doing this.

**Interesting near-miss**: simply moving the generated files' *splice
position* earlier in `dungeon-slime`'s own `:components` list (still as
plain components of the root system, not a `:depends-on`) reproduces the
*same* `DOTNET: type not found` error, but this time inside
`_DotCLCompileRoot` instead of `_DotCLResolveDeps`. That's because
`_DotCLCompileRoot` compiles the root's components strictly in a topologically
valid order derived from their `:depends-on` edges (not necessarily the
literal list order), and `type-aliases.lisp` — the file in this project that
actually loads `MonoGame.Framework.dll` (see `type-aliases.lisp`'s "Loading
assembly" logging) — must be compiled, and must run its `eval-when` assembly
load, strictly before any cspackages file that resolves a MonoGame type. So
the constraint isn't "cspackages must be a same-system component instead of a
system dependency" in isolation — it's specifically "cspackages must be
ordered, with an explicit ASDF dependency edge, after `type-aliases`", full
stop, regardless of which mechanism is used to include the files. A
`:depends-on` system dependency can never satisfy that, because the whole
dependency graph is resolved and compiled as a unit *before* the root
system's own `type-aliases.lisp` gets anywhere near running.

## 2. The Fix: Splice, But Derive From the Generator's Own `.asd`

`dungeon-slime.asd` keeps the "splice generated files into the root system's
own `:components`" shape (so they compile inside `_DotCLCompileRoot`, which
does have the assembly loaded), but instead of directory-scanning
`cspackages/` and guessing dependency names, it now `read`s
`cspackages/csharp-assembly-packages.asd` itself (with `*read-eval* nil`) and
pulls the real `:components` form back out of it:

```lisp
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *cspackages-components*
    (let* (...
           (cspackages-asd (uiop:subpathname cspackages-dir "csharp-assembly-packages.asd")))
      (if (uiop:file-exists-p cspackages-asd)
          (let* ((*read-eval* nil)
                 (defsystem-form (with-open-file (s cspackages-asd) (read s)))
                 (generated-components (getf (cddr defsystem-form) :components)))
            (mapcar (lambda (comp)
                      (destructuring-bind (kind name &key depends-on) comp
                        (list kind (concatenate 'string "cspackages/" name)
                              :pathname (uiop:subpathname cspackages-dir (concatenate 'string name ".lisp"))
                              :depends-on (cons "type-aliases"
                                                 (mapcar (lambda (d) (concatenate 'string "cspackages/" d))
                                                         depends-on)))))
                    generated-components))
          nil))))
```

Each generated component name is prefixed with `"cspackages/"` (so
`"packages"` and `"csharp-assembly-utils"` can't collide with this project's
own `packages.lisp`/`utils.lisp` components), its `:pathname` is pointed at
the real file under `cspackages/`, and its `:depends-on` is rewritten to use
the same `"cspackages/"`-prefixed names for its declared dependencies (so
`system-console`'s real dependency on `packages` and `csharp-assembly-utils`
becomes a dependency on `cspackages/packages` and
`cspackages/csharp-assembly-utils` — the actual generator-declared graph, not
a guess), **plus** an explicit extra dependency on `"type-aliases"` so every
spliced file is guaranteed to compile after the MonoGame assembly is loaded.

This list is spliced into `dungeon-slime`'s `:components` in the same
position the old scan-based version used (after `packages`, `settings`,
`type-aliases`, `monoutils`, `utils`; before `constants` and everything
else), and every consumer component that references cspackages symbols
(`mg-classes`, `poc-test`, `typed-calls-test`, `input-manager`,
`audio-controller`, `cspackages-test`) still splices in
`(mapcar (lambda (comp) (second comp)) *cspackages-components*)` as extra
`:depends-on` entries, exactly as before — that part of the old mechanism was
correct and is retained.

## 3. Why the Pre-Declared Stub Packages in `packages.lisp` Are Still Needed

While investigating this, the block of ~40 `(defpackage
:microsoft-xna-framework-vector2)`-style empty package stubs at the top of
`packages.lisp` looked like leftover cruft from the old, unordered directory
scan — the comment above them literally says "so local-nicknames doesn't
crash." It's tempting to delete them once the splice above gives cspackages
files a real, ordered dependency graph. **Don't** — they're independently
load-bearing, for a different reason:

* `packages.lisp` (this project's own, not the generated one) is the very
  first component in `dungeon-slime`'s `:components`, and it defines
  `:local-nicknames` (e.g. `(:v2 :microsoft-xna-framework-vector2)`) for
  packages like `:mg-classes` and `:dungeon-slime` — those local-nicknames
  need the *target* package to already exist as an object when
  `packages.lisp` is compiled, even though none of its symbols need to be
  bound or exported yet.
* `type-aliases.lisp` (which loads `MonoGame.Framework.dll`) `:depends-on
  ("packages" "settings")` — it must run *after* this project's own
  `packages.lisp`.
* The real `cspackages/packages.lisp` (which defines those same package
  objects with their full, generator-produced `:export` lists) can only
  compile *after* `type-aliases.lisp` has loaded the assembly (per the
  constraint in section 1).

That's a cycle if `packages.lisp` needed the *real* cspackages packages to
exist: `packages.lisp` → (needed by) `type-aliases.lisp` → (needed by)
`cspackages/packages.lisp` → (needed by, for real exports) `packages.lisp`.
The stub `(defpackage :microsoft-xna-framework-vector2)` forms break the
cycle: they give `packages.lisp`'s local-nicknames a package object to point
at immediately, and later, once `cspackages/packages.lisp` actually compiles,
Common Lisp's `defpackage` semantics let it reopen and extend that same
package object with its real `:export` list — a package can be `defpackage`'d
more than once, and later `:export` clauses add to what's already there
rather than replacing it, as long as nothing conflicts.

Two related stub packages, `:system-object` and `:system-type`, additionally
carry a couple of explicit `:export` forms (`get-type`, `full-name`) in the
pre-declaration block. These predate generator v23 (which now exports both
symbols directly from the real generated packages), so they're redundant
today, but harmless — re-exporting an already-exported symbol is a no-op —
and were left as-is to keep this change minimal.

## 4. A Real Bug Found Along the Way: Wrong Condition Class in Overload Tests

While tracing exactly which package each generated file's error-handling code
referenced, `utils.lisp` turned out to define its own
`(cl:define-condition csharp-overload-not-found (cl:error) ...)`, exported
from the `:utils` package. But `cspackages/csharp-assembly-utils.lisp` (the
generator's own shared runtime support file, self-contained since v23)
defines an identically-named-but-different condition class,
`csharp-assembly-utils:csharp-overload-not-found`, and **every** generated
wrapper's overload dispatcher signals *that* one:

```lisp
;; cspackages/microsoft-xna-framework-vector2.lisp
(cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found ...))
```

`cspackages-test.lisp`'s overload-resolution tests, however, were written
against the older `utils:csharp-overload-not-found`:

```lisp
(handler-case
    (progn
      (v2:/ (v2:new 1.0e0 2.0e0) "invalid-value")
      (error "..."))
  (utils:csharp-overload-not-found (e) ...))       ; <- wrong condition class!
```

Since `utils:csharp-overload-not-found` and
`csharp-assembly-utils:csharp-overload-not-found` are two distinct,
unrelated condition classes (both directly subclass `cl:error`; neither
inherits from the other), this `handler-case` clause could never actually
catch what `v2:/` signals. In practice this meant the `(error "...")` inside
the `handler-case` body would itself propagate uncaught up through the whole
`handler-case` form (since the handler clause never matches), rather than
the intended assertions on the condition's slots ever running.

**Fix**: deleted the dead-code duplicate condition definition from
`utils.lisp` (and its now-pointless `:export` entries from the `:utils`
package in `packages.lisp`), and updated `cspackages-test.lisp` to catch
`make test`: the "Condition class name" / "Condition method name" /
"Condition package name" / "Condition supplied-args ..." assertions inside
both overload-resolution test blocks (`Vector2 /` and `sprite-batch:begin`)
now report `PASS`, confirming the handler is actually exercised.

## 5. Verification

* `find . -name "*.lisp" -o -name "*.asd" | xargs python3 check_parens.py`
  (`make check-parens`) on all touched files.
* `dotnet build DungeonSlime.csproj -v d -c Debug` (`make build`) — succeeds
  cleanly, 0 warnings, 0 errors.
* `make test` — full `test-harness.lisp` run passes, including the
  newly-exercised overload-condition assertions above.
* `make repl` equivalent (`dotcl --eval '(load "load-repl.lisp")' ...`) —
  loads the whole system, boots a `game-1` instance, and exposes `*mg-game*`
  with no package or condition errors.


# Replacing the Splice with a Plain `:depends-on` (Package Generator v45)

The splice mechanism documented in the previous section was retired on
2026-07-11 (commits `9630352` "Move to the simpler inclusion of the
cspackages .asd file" through `fa9c4d7` "Fix REPL load", after several
intermediate broken states). `dungeon-slime.asd` now:

1. Pushes `cspackages/` onto `asdf:*central-registry*` in a top-level
   `eval-when` (the same idiom `load-repl.lisp` and `type-aliases.lisp`
   already use), so ASDF can find `csharp-assembly-packages.asd` by name.
2. Lists `"csharp-assembly-packages"` as an ordinary `:depends-on` system —
   exactly the "approach that doesn't work" from section 1 above.
3. Re-adds the one genuinely phase-sensitive file,
   `cspackages/csharp-generics.lisp`, as a plain root component with
   `:depends-on ("type-aliases")`, since the generator now emits the system
   definition without it (Makefile flag `--no-csharp-generic-in-asd`).

What made the "impossible" `:depends-on` possible is a series of generator
changes (v41→v45, driven by [dotcl/dotcl#49](https://github.com/dotcl/dotcl/issues/49)
and chronicled blow-by-blow in [issue-49-continued.md](issue-49-continued.md)):

* Per-class `<type>` constants stopped being eager
  `(defconstant <type> (dotnet:resolve-type ...))` forms and became lazy,
  memoized lookups — `define-symbol-macro`s backed by the `+unbound-marker+`
  machinery in `cspackages/csharp-assembly-utils.lisp`. Nothing resolves a
  .NET type at load time anymore, so the per-class files compile fine in
  `_DotCLResolveDeps` even though `MonoGame.Framework.dll` isn't loaded in
  that phase.
* The per-class `EnsureDotNetTypeClass` registration `eval-when`s (which
  *did* need the assembly at compile/load time) were removed from the
  per-class files (v44) and re-emitted inside `csharp-generics.lisp` itself
  (v45, flag `--ensure-type-in-generic`) — the one file that is hand-placed
  after `type-aliases`, so the registration always runs with the assembly
  loaded, in every build phase and at runtime alike.

Two knock-on simplifications landed with the same change:

* The ~40 stub `(defpackage :microsoft-xna-framework-*)` pre-declarations in
  this project's `packages.lisp` (section 3 of the previous section) were
  deleted: with `csharp-assembly-packages` a real dependency system, the
  generated `cspackages/packages.lisp` is fully loaded before any root
  component compiles, so the `:local-nicknames` resolve against the real
  packages and the load-order cycle the stubs broke no longer exists.
* Consumer components (`mg-classes`, `input-manager`, `audio-controller`,
  etc.) no longer splice `*cspackages-components*` into their `:depends-on`
  — that variable is gone; they carry only ordinary project-file
  dependencies.

Practical rule going forward: a new file that uses generated wrapper
packages needs no special `.asd` treatment at all. Only code with read-time
(`#.`) or compile-time type resolution needs the `csharp-generics`-style
manual placement after `type-aliases`.


# Chapter 18: Texture Sampling and Tiling Backgrounds

## Scrolling Offset and Wrapping with `mod`

Rather than using C# `Vector2` mutation for tracking background offsets which would allocate on
the heap or require custom interop every frame, the offsets are tracked as simple Lisp float
slots (`background-offset-x` and `background-offset-y`) on the `title-scene` class.
The scrolling offset is updated in the `update` method by multiplying the scroll speed (120
pixels/sec) by delta time. Wrapping is implemented using the standard Common Lisp `mod` function
against the background texture's width and height. This leverages Lisp's built-in mathematical
semantics to keep offsets bounded cleanly.

## Multi-Pass Rendering with Different Sampler States

MonoGame requires a separate `SpriteBatch.Begin` and `SpriteBatch.End` block when rendering with
different `SamplerState` values.
In `title-scene:draw`, the rendering is split into two sequential passes:
1. **Tiling Background**: Rendered with `sampler-state:+point-wrap+`. A destination rectangle
   is created covering the entire screen window size. A source rectangle of the same size
   starting at the rounded offsets `(ox, oy)` is passed. The GPU handles repeating/wrapping
   the texture automatically.
2. **Foreground UI and Text**: Rendered with `sampler-state:+point-clamp+` to keep the title
   screen fonts and prompt text crisp without tiling.

## Full Wrapper Integration (No direct `dotnet:invoke`)

To align with the project's strict architecture guidelines, all direct `dotnet:invoke` and
`dotnet:static` calls have been eliminated from `title-scene.lisp` by importing and leveraging
the generated type wrappers from `cspackages/`:
- `cm:load` is used to load the texture asset.
- `gd:clear` clears the screen.
- `sprite-font:line-spacing` determines line offsets.
- `ts:total-seconds` and `game-time:total-game-time`/`elapsed-game-time` handle timing.
- `sprite-batch:end` closes rendering passes.
- `game:exit` handles clean shutdown.
To support `sprite-font:line-spacing` without namespaces, the
`(:sprite-font :microsoft-xna-framework-graphics-sprite-font)` local nickname was added to the
`:dungeon-slime` package definition in `packages.lisp`.

## Dynamic Viewport Resolution Support

To support high-resolution displays (such as the default `1280x720` window size defined in
`constants.lisp`), the `title-scene:draw` method does not use static size config values from
`window-info` (which would fallback to `800x480` when `window-info` is unbound). Instead, it
queries the active `GraphicsDevice` viewport directly via `(gd:viewport gd)`.
By passing the viewport object to the generic `width` and `height` functions, the actual
rendering backbuffer resolution is retrieved dynamically. These bounds are then used for:
- Sizing the destination and source rectangles to ensure the tiled background covers the
  entire window space.
- Correctly calculating the horizontal centering (`win-w`) of all title lines and prompt text.
- Scaling the vertical offsets (`start-y` and `pos-y`) proportionally relative to `win-h` (using
  `15%` and `80%` height factors respectively) to maintain a consistent UI layout at any window
  resolution.


# Gum UI Event Handler Pattern (MonoGame Chapter 20)

Gum UI controls dispatch C# events (like `Click`, `ValueChanged`, `ValueChangeCompleted`) that
pass `object sender` and `EventArgs e` to the handler. In the Lisp world, these are delivered
as two arguments to a Common Lisp function.

## The `*core*` Global Pattern

Gum event handlers cannot use closures to capture scene references, because they are registered
as function objects and invoked by the Gum/C# runtime without closure context. Instead, all
Gum event handlers access the current game state through the `*core*` global variable:

```lisp
(defun handle-options-button-back (sender args)
  (declare (ignore sender args))
  (let ((scene (active-scene *core*)))
    ...use scene to access audio-controller, panels, buttons...))
```

This pattern works because `*core*` is set to the active game core instance at startup,
and `(active-scene *core*)` returns the currently displayed scene.

## Slider Volume Handlers

Volume slider handlers must coerce C# property values to `single-float` before passing them
to Lisp setter methods, because C# `float` properties are marshaled to Lisp as `DoubleFloat`
(see "Challenging Type Issues with .NET Reflection" above).

## TextRuntime Constructor Gap

The `mono-game-gum-gue-deriving-text-runtime` auto-generated wrapper does not provide a
`new` constructor function because its C# constructors have default parameters not yet
supported by the package generator. Instead, use `dotnet:new` directly:

```lisp
(dotnet:new "MonoGameGum.GueDeriving.TextRuntime")
```

## Enum State Comparison (audio-controller.lisp)

Methods in `audio-controller.lisp` that check the state of `SoundEffectInstance` and
`MediaPlayer` previously used `string-equal` on `ToString` output:

```lisp
;; Before
(string-equal (dotnet:invoke (sei:state instance) "ToString") "Stopped")
(string-equal (dotnet:invoke media-player:state "ToString") "Playing")
```

This was inefficient (string allocation + comparison) and semantically wrong, since
`.State` returns a typed enum value, not a string.

Replaced with `eq` against generated enum constants:

```lisp
;; After
(eq (sei:state instance) sound-state:+stopped+)
(eq media-player:state media-state:+playing+)
```

Two enum types are involved:
- `sei:state` returns `Microsoft.Xna.Framework.Audio.SoundState` (local nickname: `:sound-state`)
- `media-player:state` returns `Microsoft.Xna.Framework.Media.MediaState` (local nickname: `:media-state`)

Both enum types have the same members (`Stopped`, `Paused`, `Playing`), but they are
distinct .NET types. Each comparison uses the corresponding enum's constants.

`eq` works because the CLR provides singleton identity for boxed enum values of the
same type within an AppDomain, and the auto-generated constants are cached on first
access via `define-symbol-macro`.

If `eq` comparisons fail at runtime (e.g., if the interop layer doesn't preserve
singleton identity), the fallback is to compare underlying integer values:

```lisp
(= (cs:value__ (sei:state instance)) (cs:value__ sound-state:+stopped+))
```

where `cs:value__` is the type-generic accessor dispatched via `csharp-generics`.


# De-Fragilizing the Makefile Against .NET Version/Distro Changes

The sibling `../package-generator` project's `doc/plan-fable-detail-08.md` fixed three
build/test fragility bugs there: a hardcoded, SDK-patch-version-pinned reference-assembly
path, a hardcoded choice between Arch's and Ubuntu's pack-layout root, and an Arch-only
rolling-release SDK workload-resolver failure. This project's `Makefile` had the same two
path-related bugs (verified by inspection, then fixed the same way):

```make
# Before
# Ubuntu
#REF_DIR = /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
# Arch
REF_DIR = /usr/share/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
```

Any `dotnet` SDK patch upgrade (`10.0.9` → `10.0.10`, etc.) silently broke `REF_DIR`
(the directory stopped existing), and moving between Arch and Ubuntu required manually
commenting/uncommenting the right line. Unlike `package-generator`, this project has no
C# test harness consuming `REF_DIR` (`AssemblyToLispyTest`'s
`ResolveRefAssemblyDirectory`-style resolver) — it's used purely inside the `Makefile`'s
`cspackages` target as `--assembly` arguments to the external `dotcl-packagegen` CLI, so
this was a Makefile-only fix, no `.cs`/`.lisp` changes needed.

## Fix: auto-discovery, mirroring `package-generator`'s `Makefile`

```make
TARGET_FRAMEWORK_MAJOR := $(shell grep -oP '<TargetFramework>net\K[0-9]+' DungeonSlime.csproj | head -1)
ifndef REF_DIR
REF_DIR := $(shell ls -d /usr/share/dotnet/packs/Microsoft.NETCore.App.Ref/$(TARGET_FRAMEWORK_MAJOR).*/ref/net*/ \
                         /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/$(TARGET_FRAMEWORK_MAJOR).*/ref/net*/ 2>/dev/null \
                    | sort -V | tail -1)
endif
```

* Extracts the target major version from `DungeonSlime.csproj` (which has two conditional
  `<TargetFramework>` lines, `net10.0-windows` and `net10.0` — both major version 10, so
  `head -1` picking either is fine) rather than hardcoding it.
* Searches both the Arch (`/usr/share/dotnet/...`) and Ubuntu (`/usr/lib/dotnet/...`) pack
  roots, filtered to that major version, version-sorted (`sort -V`), picking the highest —
  so a patch upgrade just picks the new highest version automatically.
* `ifndef REF_DIR` means `make cspackages REF_DIR=/explicit/path/` on the command line
  still overrides auto-discovery entirely, same escape hatch as before.
* A guard in the `cspackages` target (`@test -n "$(REF_DIR)" || (echo "REF_DIR not found;
  set REF_DIR=... explicitly" >&2 && exit 1)`) fails loudly instead of silently passing an
  empty `--assembly` path to `dotcl-packagegen` if discovery finds nothing.

## Also carried over: the workload-resolver workaround and `BIN_DIR` fix

Some installs (notably Arch, whose `dotnet-sdk` package is rolling-release) end up with a
workload-set manifest referencing packages package management has since removed, breaking
every `dotnet build`/`dotnet pack` invocation with `"SDK Resolver Failure ... Workload set
version ... has missing manifests"` — even `dotnet workload repair` reports `"No workloads
are installed, nothing to repair"`, since the failure is in resolving the workload SDK
resolver itself, not in any actually-installed workload. This project uses no workloads
(no mobile/wasm/MAUI targets), so it's safe to disable workload resolution entirely:

```make
export MSBuildEnableWorkloadResolver := false
```

Separately, `BIN_DIR := $(shell dotnet build DungeonSlime.csproj -getProperty:OutputPath)`
can return a mixed-separator value (e.g. `bin\Debug/net10.0/`) on a fully clean checkout;
piping through `| tr '\\' '/'` normalizes it (see "Resolving Build Output Paths
Programmatically" above, which this updates).

## Verified

* `TARGET_FRAMEWORK_MAJOR`/`REF_DIR` resolve correctly on the current machine (Arch,
  `.NET 10.0.10` at the time of this fix) to the same directory the old hardcoded
  `10.0.9` path pointed to before the SDK patch-upgraded past it.
* `make cspackages REF_DIR=/some/explicit/path/` still overrides auto-discovery.
* An unresolvable `REF_DIR` (forced via a bogus `TARGET_FRAMEWORK_MAJOR=999`) hits the
  guard and fails the build with a clear message instead of silently misgenerating.
* `make build` (with the `MSBuildEnableWorkloadResolver`/`BIN_DIR` changes) and
  `make cspackages` (end-to-end regeneration against the discovered `REF_DIR`) both still
  succeed.

No `*generator-version*`/`dungeon-slime.asd` version bump — this is a build-tooling fix
only, not a change to any generated-output shape.


# `make repl` and "Unbound variable: SELF" in Foreign Callbacks

`make build`/`make run` worked fine, but `make repl` followed by
`(dotnet:invoke *mg-game* "Run")` (or `"Initialize"`, `"BeginRun"`, etc. — any
method defined via `dotnet:define-class`) failed immediately with:

```
;; Unhandled error in foreign callback: #<UNBOUND-VARIABLE: SELF>
```

## Root Cause

`dotnet:define-class` (from DotCL's `contrib/dotnet-class/dotnet-class.lisp`,
*not* part of this project) expands each `:methods` entry's body into
roughly:

```lisp
(lambda (self ,@param-names)
  (declare (ignorable self))
  ,@body)
```

The `self` in that backquote template is an ordinary, unhygienic symbol —
whichever one the Lisp reader produced when `dotnet-class.lisp` was itself
compiled. Crucially, that file has **no `in-package` of its own**, so which
package `self` lands in depends entirely on whatever `*package*` happened to
be active at that compile.

- `make repl`'s `load-repl.lisp` does `(asdf:load-system "dungeon-slime")`
  starting from `*package*` = `COMMON-LISP-USER` (dotcl's default toplevel
  package). Because `dungeon-slime.asd` lists `"dotnet-class"` as a
  `:depends-on` system, ASDF's `(require :dotnet-class)` resolves before any
  of this project's own components (including `packages.lisp`, which is what
  defines the `:dungeon-slime` package) ever run. That `require` is satisfied
  by a **pre-built FASL shipped with the installed `dotcl` tool**
  (`~/.dotnet/tools/.store/dotcl/<ver>/.../contrib/dotnet-class/dotnet-class.fasl`),
  compiled once, long ago, by the DotCL release process — under
  `COMMON-LISP-USER`, its own default toplevel package. FASLs bake in the
  *compile-time* package for every symbol they reference; loading that FASL
  later, under a different `*package*`, does not change that. So the macro's
  `self` parameter is fixed as `COMMON-LISP-USER::SELF`, forever, for that
  FASL.
- Meanwhile, every bare `self` written in this project's own source — e.g.
  `mg-core.lisp`'s `MonoGameCLOSProxy` methods, `(dotnet:invoke self
  "CLOSObject")` — is read by the standard CL reader while `*package*` =
  `:dungeon-slime` (or `:dungeon-slime-tests` for `clr-defmethod-test.lisp`),
  producing `DUNGEON-SLIME::SELF` — a *different* symbol object from
  `COMMON-LISP-USER::SELF`, despite printing identically as `SELF`.

At macroexpansion time, the body forms (containing `DUNGEON-SLIME::SELF`) are
spliced as-is into the macro's `(lambda (COMMON-LISP-USER::SELF) ...)`. The
parameter binds one symbol; the body reads a different, unrelated, genuinely
unbound one. Confirmed directly via `macroexpand-1`:

```lisp
DUNGEON-SLIME> (macroexpand-1 '(dotnet:define-class "X" ("System.Object")
                                  (:methods ("M" () :returns Void (foo self)))))
(DOTNET:%DEFINE-CLASS "X" "System.Object" NIL NIL
 (LIST (LIST "M" "System.Void" (LIST)
             (LAMBDA (COMMON-LISP-USER::SELF)
               (DECLARE (IGNORABLE COMMON-LISP-USER::SELF))
               (FOO SELF))       ; SELF here reads as DUNGEON-SLIME::SELF
             NIL NIL))
 NIL NIL NIL NIL NIL NIL NIL)
```

Why didn't `make build` hit this? Its MSBuild-driven pipeline recompiles
`dotnet-class.lisp` **from source**, as part of `_DotCLResolveDeps`, late
enough that plain per-file ASDF `compile-op`/`load-op` ordering (each
dependency is fully *loaded*, not just compiled, before the next file that
needs its macros gets compiled — see "ASDF Dependency Ordering" above) means
the recompiled macro's `self` ends up matching this project's own package by
the time it's actually needed. `make repl`'s `(require :dotnet-class)` short-
circuits that entirely by reusing the already-`*module-provider*`-satisfied
shipped FASL instead of recompiling.

## Fix

In `packages.lisp`, immediately after the `:dungeon-slime` `defpackage` form:

1. `intern` (and `export`, so `:dungeon-slime-tests` — which already `:use`s
   `:dungeon-slime` — inherits the identical symbol instead of interning its
   own `DUNGEON-SLIME-TESTS::SELF`) a `SELF` symbol into `:dungeon-slime`.
2. Bind `*package*` to `:dungeon-slime` and reload `dotnet-class.lisp`'s
   *source* (located via `(asdf:system-relative-pathname "dotnet-class"
   "dotnet-class.lisp")`, not the pre-built FASL) so the reader, encountering
   `self` in the macro's backquote template, finds and reuses the symbol
   already interned in step 1 rather than creating a new one.

This forces `dotnet:define-class` to recapture `self` as
`DUNGEON-SLIME::SELF` for both the REPL and build paths, so the macro's
parameter and every caller's body reference now agree.

This is a `dotcl`-side defect (an unhygienic macro capturing a symbol from
whatever package happens to be ambient at its own compile time, rather than
the caller's), worked around here rather than fixed at the source, since
`contrib/dotnet-class/dotnet-class.lisp` isn't part of this project. See
[`doc/dotcl-bug-self.md`](dotcl-bug-self.md) for the upstream bug report.

## Verified

* `check_parens.py packages.lisp` passes.
* `macroexpand-1` of a `dotnet:define-class` form in a fresh `make repl`
  session now shows a single `DUNGEON-SLIME::SELF` for both the lambda
  parameter and the body.
* `make repl` followed by `(dotnet:invoke *mg-game* "Run")` now runs
  `Initialize` → `LoadContent` → `BeginRun` → the title-scene transition with
  no unbound-variable errors (previously failed immediately on
  `Initialize`).
* `make clean build` still succeeds; the built executable still runs
  correctly end-to-end (`Initialize`'s `self` still prints the live
  `MonoGameCLOSProxy` instance as before).
* `make test` still passes in full, including `clr-defmethod-test.lisp`
  (package `:dungeon-slime-tests`), confirming the exported/inherited `SELF`
  symbol works for that package too.

