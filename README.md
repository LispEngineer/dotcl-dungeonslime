# dotcl MonoGame Common Lisp Dungeon Slime

* Author: [Douglas P. Fields, Jr.](mailto:symbolics@lisp.engineer)
* License: MIT (see [LICENSE](LICENSE)), per original author
* Changes Copyright: Douglas P. Fields, Jr.
* Original Copyright: [SANO, Masatoshi](https://github.com/snmsts)
* [Original README](README-original.md)

This is an implementation of the 
[MonoGame 2D Dungeon Slime demo](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
in as Lispy a fashion as possible. It is a learning vehicle for how
to build MonoGame games in DotCL Common Lisp. Learnings will also be
passed on to the [DotCL](https://github.com/dotcl/dotcl) project as
feature suggestions and bug reports.

The goals of this project are:

1. Move as much of the functionality into basic Common Lisp and
   CLOS as possible.

2. Make a clean set of Lispy functions for interacting with MonoGame.

3. Build various utilities and frameworks to make interacting with
   C#, CLR and MonoGame (and other non-Common Lisp platform things)
   ergonomic, reliable and well-documented.

This is heavily a work in progress. The code may not be as clean as I
would like, but this is primarily a proof of concept for creating another
game in SANO-san's awesome DotCL Common Lisp later.

## Package Generator

This package uses [my C# lisp package generator](https://github.com/LispEngineer/dotcl-package-generator)
(`dotcl-packagegen`), which originally was a part of this code, but is now standalone.

As of generator version 21+ (this project currently uses v30), `make cspackages`
produces a fully self-contained `cspackages/csharp-assembly-packages.asd` alongside the
generated `.lisp` files, in addition to the usual `packages.lisp` and
`csharp-assembly-utils.lisp`. That `.asd` is loadable entirely on its own
(`(asdf:load-system "csharp-assembly-packages")`), with no dependency on anything in
this project.

`dungeon-slime.asd` doesn't just point at that `.asd` and add it to its own
`:depends-on`, though — the generated `.lisp` files call `dotnet:resolve-type` at
load time (to look up MonoGame/System types), which only succeeds once
`MonoGame.Framework.dll` has already been loaded into the process. Under this
project's DotCL/MSBuild build pipeline, an ordinary `:depends-on` system dependency
gets compiled in an earlier build phase than the one that loads the game's own
.NET assembly references, so `dotnet:resolve-type` would fail during the build.
Instead, `dungeon-slime.asd` `read`s `cspackages/csharp-assembly-packages.asd`'s own
`:components` form directly — the authoritative file list and dependency graph,
straight from the generator — and splices those files into `dungeon-slime`'s own
component list (in the same build phase as the rest of the game, after the file
that loads the MonoGame assembly). See
["Wiring dungeon-slime.asd to the Generator's Self-Contained .asd"](doc/implementation-notes.md)
in the implementation notes for the full story, including the build failure this
was designed around.

### Installation and Use

Please clone the package generator and run `make deploy` to get the
`dotcl-packagegen` command line tool installed. This is needed by the
build system if you wish to run `make cspackages`. If you do not edit
the `cspackages`, you do not need to install the tool.


# How to Use

I've built and tested this on Ubuntu 24.04 on x64 only. I make no
guarantees that this will work on any other platform.

You will need to check out [dotcl](https://github.com/dotcl/dotcl) 
in a sibling directory to this one
and build and install the `dotcl` tool. This demo uses various files
assuming they are in that sibling directory. These references are
in the `DungeonSlime.csproj` file.

## DotCL Version

As of 0.1.9 the game works "out of the box," and a custom patched
`dotcl` is no longer necessary.
* I will migrate to using the new 0.1.9 features in due course.

As of 0.1.8 I am still using the self-compiled `dotcl` but I did
not test the `dotnet tool install`ed one.
* I am using a patched 0.1.8 that fixes a minor bug in the
  provided readline (backwards history) and also allows the
  readline to be interrupted (i.e., to stop a background thread).
  The game should build fine without these minor patches, which
  I have already submitted to DotCL.

## Build & Launch Steps

Preparation:

1. To use the MonoGame Content Builder, in this project's home directory:
   `dotnet tool restore`
   * This installs `dotnet-mgcb` and `dotnet-mgcb-editor` and `dotnet-mgcb-editor-linux`
     among other things.

### The Upgraded Build System (DotCL 0.1.15+)

As of DotCL 0.1.15, the project build system is migrated to a pure NuGet package reference structure
(`<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`). This removes the need for a local
sibling `dotcl` repository check-out.

Key features of the updated build system:
1. **Quicklisp Integration via Build-Init**: The project utilizes DotCL's `<DotclBuildInit>`
   task pointing to [build-setup.lisp](build-setup.lisp). At build time, this script loads the local
   Quicklisp installation (`~/quicklisp/setup.lisp`) to register ASDF system search hooks.
   External systems (such as `anaphora`) are resolved, compiled, and bundled into the output
   directory automatically without requiring manual `CL_SOURCE_REGISTRY` environment variables
   or wrappers.
2. **Automated Reference Copying**: A custom MSBuild target (`CopyReferencesBeforeLisp`) copies
   all referenced NuGet assemblies (like `MonoGame.Framework.dll`) to the output folder before
   Lisp compilation runs, preventing compile-time assembly load errors.
3. **Decoupled Compile-time Assemblies**: The Lisp compilation process does not require loading
   `DungeonSlime.dll` during the `:compile-toplevel` phase (avoiding circular dependency or file
   missing errors on clean builds). The assembly is dynamically loaded only during runtime
   `:load-toplevel` and `:execute` phases, so that custom C# types (such as `MonoUtilsRegistrar`)
   are successfully resolved during standalone interactive REPL sessions.
4. **Self-Contained Executable Bundle**: Compiled dependency FASLs (e.g. `anaphora.fasl`,
   `dotcl-repl.fasl`) and the load manifest (`dotcl-deps.txt`) are placed next to the executable
   in the `dotcl-fasl/` directory. Additionally, the standard `contrib/` Lisp library is copied
   directly from the restored NuGet package cache folder (`$(_DotCLContribDir)`) to the build
   output directory, allowing the entire `bin/` directory to be copied and run standalone on
   another machine.

You can use the provided `Makefile` to build, test, and run the project:

* **Rebuild C# Packages:** `make cspackages`
* **Build the project:** `make build` (runs the consolidated `dotnet build` command in a single step)
* **Run the test suite:** `make test` (runs the game in `--test` mode)
* **Run the game:** `make run` (runs the GUI game)
* **Clean build files:** `make clean` (cleans temporary directories and compiled FASL files)
* **Run MonoGame Content Builder**: `make mgcb`
* **Check Lisp parentheses balance:** `make check-parens`

> NOTE:
> **Font Rebuilds:** If you edit or replace the raw `.ttf` font file under `Content/fonts/`,
  the MonoGame Content Builder (MGCB) task will not automatically recompile it during `make build` 
  because MGCB only monitors changes to the `.spritefont` XML descriptor. To force a rebuild of 
  the font asset, you must touch the `.spritefont` file to update its timestamp:
> `touch Content/fonts/04B_30.spritefont`

Or manually run the steps:

1. To build: `dotnet build DungeonSlime.csproj -v d -c Debug`
   * `-v n` makes Lisp compilation errors be shown.
   * `-v d` shows more details.
   * `-v diag` shows the most, but I haven't really noticed a difference.

2. To run: `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime`
   * To run in test mode, add `--test` to the command line, and it will not invoke the game.

3. To generate C# assembly lisp packages: `make cspackages`

4. If you want to edit the `.mgcb` file, execute: `dotnet tool run mgcb-editor-linux`

5. To check Lisp parentheses balance manually:
   `find . -type f \( -name "*.lisp" -o -name "*.asd" \) ! -path "*/obj/*" ! -path "*/bin/*" ! -path "*/.git/*" | xargs python3 check_parens.py`
   * Parentheses balance is usually not much of a problem for human coders due to IDE support,
     but it seems to trip up AI assistance a lot. The problem is compounded due to DotCL's
     mechanism of concatenating all Lisp files into a single input during compilation phase.

## How to Load in REPL

First, build the game per the above. This ensures the C# files are compiled and copied into the
output directory, and the ContentManager assets are generated.

Invoke DotCL REPL using the provided Makefile target:
`make repl`
(Which executes `dotcl --eval '(load "load-repl.lisp")' --eval '(in-package :dungeon-slime)' repl`
directly).

Alternatively, invoke DotCL manually with `rlwrap --always-readline dotcl` (or omit rlwrap if you
prefer), then:

```lisp
;; Load all the necessary dependencies and make a game instance as
;; dungeon-slime::*mg-game*
(load "load-repl.lisp")
(in-package :dungeon-slime)

;; Execute the game then, with this:
(dotnet:invoke *mg-game* "Run")

;; After the game executes and returns to the REPL, clean up with this:
(dotnet:invoke *mg-game* "Dispose")
;; otherwise the game window will just sit there and cause grief.

;; To run the tests from the REPL:
(dungeon-slime-tests::run-all-tests)
```

It is not possible to run the game a second time after it exits
under the current MonoGame system.
It seems others have tried;
[see this issue](https://github.com/MonoGame/MonoGame/issues/7816).
In my case, it shows the game window and then segfaults out.

## Test with Another User

This test ensures that there are no unmet dependencies when the application is
built and run by another user (as if on another computer).

Create another user, I use one called `dummy`.

* `cp -a bin /tmp` to copy the built application there
* Enable the user to write to your X session: `xhost +si:localuser:dummy`
* `su - dummy`
  * `export DISPLAY=:0`
  * `/tmp/bin/Debug/net10.0/arch-x64/DungeonSlime` to run the game; ensure it works

## Portable Execution & Multi-User Testing Considerations

To ensure the application is fully portable and runs successfully when executed
by another user account (or from a different directory), several design and
build system choices are implemented.

### Portable Design Features Implemented
1. **Raw Sound File Copying**: Raw `.wav` audio files are explicitly copied to
   the output folder via the MSBuild project file (`DungeonSlime.csproj`) so they
   are available on disk for native filesystem loading.
2. **C# Interop Path Qualification**: Relative paths passed to filesystem-based
   constructors (like `SoundEffect.FromFile` and `Song.FromUri`) are resolved
   relative to the executable's directory using `qualify-path`. The paths are
   coerced to strings using `uiop:native-namestring` to prevent interop method
   signature mismatch crashes.
3. **Flexible URI Parsing**: Theme song URIs are constructed using
   `system-uri-kind:+relative-or-absolute+` to ensure they parse Unix absolute
   paths correctly without throwing formatting exceptions.
4. **Graceful Subsystem Fallback**: Audio hardware initialization and loading is
   protected by `handler-case` blocks. If the target environment blocks sound server
   connections (e.g. PipeWire socket permissions), the game runs in silent mode
   rather than crashing.

### Guidelines for Future Portable Development
- **Qualify Filesystem Paths**: Never pass raw relative strings directly to
  foreign filesystem methods. Wrap them in `qualify-path` to ensure directory
  independence.
- **Ensure String Conversion**: Always call `uiop:native-namestring` on resolved
  pathnames before passing them to C# constructors to avoid type dispatch failures.
- **Declare Custom Assets in Project File**: Any raw asset loaded directly via the
  filesystem (bypassing the MonoGame `ContentManager` pipeline) must be declared
  as `<Content>` with `<CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>`
  in `DungeonSlime.csproj`.
- **Trap Host Subsystem Exceptions**: Wrap host hardware and driver initialization
  routines (sound, graphics, network) in `handler-case` blocks so the game degrades
  gracefully on restricted host environments.

# A Note on ML/AI & Tooling

Much of the code herein is written by myself. I enjoy the act
of writing code (and especially documentation) and knowing how everything 
is put together.

However, I do use ML coding tools, primarily Antigravity CLI/Gemini, but
I have also been dabbling in OpenCode with various local models and even
tried Claude Code CLI.

I have found the tools to be extremely useful are in several cases:

* **Explanations**: Gemini 3.5 Flash especially has been extremely good at
  explaining what is going on in SANO-san's DotCL and how it interacts with
  C# / CLR. I have found its explanations to be so clear that I have been
  saving some of them in various `.md` files herein.

* **Troubleshooting**: When I hit a wall and can't figure something out,
  Gemini often is able to get me going again. And, I mean, much faster than
  my traditional Googling it and reading docs and staring at the screen.
  Embarrassingly, although I've been Lisping for almost 40 years now, I still
  sometimes make dumb errors like having a paren in the wrong place, which it
  finds very quickly. (I don't use paredit or other structural editing
  tools. I am happy this way. I do love "rainbow parentheses" though!)

* **Planning**: Fleshing out my plans into more detailed plans, or finding
  problems or gaps in my plans.

* **Coding**: When I have something well defined that I just don't feel like
  writing (usually because I've written it a jillion times before), I will
  ask Gemini to do it. I usually overspecify my instructions compared to what
  I have seen other tool users do, but it also means that in general the
  output gets pretty close to my standards and I can use it with only
  some edits.


# Functionality Implemented

MonoGame Dungeon Slime features:
* All Chapters 1-9 content
  * Classes are implemented as CLOS classes
    * The base CLOS Core class does callbacks into a MonoGame proxy Game class.
  * We don't use an XML file to define the Texture Atlas; we use a Lisp property list.
* All Chapter 11 content (input management)
  * `KeyboardInfo`, `MouseInfo`, `GamePadInfo`, and `InputManager` CLOS classes
  * Frame-to-frame state tracking for "just pressed" / "just released" detection
  * Timed vibration management for gamepads
* All Chapter 12 content (collision detection)
  * `circle` CLOS class with boundary functions and intersection testing
  * Screen boundary blocking for the player slime
  * Screen boundary bouncing for the enemy bat via `Vector2.Reflect`
  * Slime-vs-bat trigger response with random respawn
  * Rectangle intersection and containment utilities
* All Chapter 13 content (tilemaps)
  * Tilemap loaded via S-expression lists instead of XML
  * Tilemap and Tileset CLOS classes
  * Room boundaries scaled according to tilemap
* All Chapter 14 content (audio)
  * Looped background music playback using `media-player` static methods
  * Bounce sound effects triggered on screen boundary collisions
  * Collect sound effects triggered on slime-vs-bat collisions
  * Automated loading verification test suite in `audio-test.lisp`
* All Chapter 15 content (audio controller)
   * `audio-controller` CLOS class for centralized audio lifecycle management
   * Tracks and disposes of `SoundEffectInstance` objects automatically
   * Global mute state (`M` key) and volume controls (`+` / `-` keys)
* All Chapter 16 content (SpriteFonts)
   * `sprite-font.lisp` with `load-font`, `measure-string`, `draw-string` helpers
   * Score tracking system (migrated to `gameplay-scene`)
   * Score increments by 100 when slime collides with bat
   * Score text rendered in top-left corner using `04B_30.ttf` pixel font
   * SpriteFont loaded via proper MonoGame content pipeline
* All Chapter 17 content (Scene Management)
   * Pure CLOS-based scene lifecycle (`scene` class) specializing `initialize`, `load-content`, `update`, `draw`, and `dispose`.
   * Staged transition queue (`active-scene` and `next-scene` slots on `core`) to prevent frame-middle transitions.
   * Custom `title-scene` displaying a title, centered logo, and pulsing "Press Enter to Play" text.
   * Custom `gameplay-scene` housing the slime-eating-bat gameplay loop.
   * Return to title screen on Escape from the gameplay scene; exit only from the title screen.
   * Explicit scene disposal and CLR garbage collection invocation.
* All Chapter 18 content (Texture Sampling)
   * Scrolling tiled background pattern on the title screen using `sampler-state:+point-wrap+`.
   * Two separate `sprite-batch` rendering blocks in a single frame to apply different sampler states (`PointWrap` for tiling background, `PointClamp` for crisp UI/text rendering).
   * Scrolling offsets updated using delta time and wrapped seamlessly via Common Lisp's standard `mod` function.
   * Fully uses the generated `cspackages/` wrappers to avoid direct C# or `dotnet:` interop calls.

Basic in-game REPL:
* Launches a super simplistic REPL background thread that uses
  standard input and output. Control-D will exit the REPL.
* Demonstrate the REPL interacting with live game state with
  `(setf color-cycle-period 1.0)` to speed the color cycling.
* Evaluate `(exit)` to quit the game.
* Submitted change for `dotcl-repl` with `console-read-key-interruptable`
  to use a busy wait loop checking `Console.KeyAvailable` and sleeping for
  50ms intervals, trapping `ThreadInterruptedException` so that the REPL
  thread can be interrupted cleanly.
* REPL is started and stopped by the MonoGame `Game.Run()` by hooking into
  `BeginRun()` and `EndRun()`
* Note that the background REPL spawned when running from a top level
  REPL session does not interact well if the top level REPL is using rlwrap
  like `rlwrap --always-readline dotcl`.

`MonoUtils` Lisp Package written in C#:
* Proof of concept "MonoUtils" package written in C#.
* Provide a shim in `monoutils.lisp`.
* Have the top level `.asd` file include this shim and make the 
  `main.lisp` depend on it.
* Proof of concept "Add3" function exposed to Lisp as: `(monoutils:add3 1 2 3)`.
* Implement a `monoutils:invoke-generic` as an analog to the existing
  `dotnet:static-generic`. It supports resolving generic type arguments via Lisp type
  aliases (e.g., `'("TEXTURE2D")` instead of the fully qualified 
  `'("Microsoft.Xna.Framework.Graphics.Texture2D")`) registered in
  `dotnet::*type-aliases*`. 
  * Used for calling `Load<Texture2D>()` dynamically.
* `dotnet-p`: Tells if the argument is a Lisp-embedded dotnet/C#/CLR object.
* `boxed-dotnet-p`: Tells if the argument is a boxed dotnet/C#/CLR object,
  created with `dotnet:box`.
* `get-type`: Returns the Type object of a DotNet object, or nil if not a DotNet
  object. But if the arg is a string, tries to get the DotNet type of that name.
* `get-type-full-name`: Returns the string of the type name from `get-type` or nil.
  So if you pass it a string, it should return the same thing.

MonoGame Framework Classes: Texture Regions, Sprites and Texture Atlases:
* Implemented the CLOS classes `texture-region`, `sprite` and `texture-atlas` 
  to manage sprite sheet subdivisions.
* `animation` and `animated-sprite` contain sprite lists (and delays), and then
  implement them for MonoGame tapping both the `Draw` and `Update` callbacks.
* Implemented `ta-from-file` in `texture-atlas.lisp` which loads a `texture-atlas` from a Lisp
  form description file (like `Content/test-atlas.lisp`), converting symbol/keyword region
  names to strings for the atlas registry. It is accompanied by a validation test
  that runs on startup.

Lisp utility functionality:
* `safe-read-form-from-file` is used to securely load
  Lisp-based texture atlas descriptions without read-time evaluation.

C# Class-Aware Generic Function System (Version 1.1):
* NOTE: This may have been superseded by DotCL's 0.1.9 ability to dispatch
  C# types in (CLOS) methods.
* Implemented the `defc#generic` and `defc#method` macros in `clr-generic.lisp` 
  to support C# class type dispatch.
* Refactored in DotCL 0.1.14 to use `dotnet:is-instance-of` for dynamic assignability 
  checks instead of manual reflection (`IsAssignableFrom` checks).
* Performs topological class/interface inheritance specificity sorting on applicable 
  methods to find the most specific target method.
* Employs deterministic interface precedence sorting, utilizing alphabetical class 
  names to break ties between unrelated classes/interfaces.
* Supports type alias resolution via `dotnet::*type-aliases*` inside method specializers 
  (e.g., `"GAMETIME"` resolves to `"Microsoft.Xna.Framework.GameTime"`).
* Integrates a startup test suite in `clr-generic-test.lisp` checking type dispatch, 
  interface precedence specificity (`ArrayList` vs `Hashtable` dispatching 
  to `ICollection` vs `IDictionary`), and type alias resolution.


## Deprecated Functionality

Assembly Lisp Package Generator: Moved to its own repository.
* TODO: Add a link once published.

BaseCaller: This is a class that works around the missing base class
calling function in the dotnet package. Run the built binary with
the `--base` argument to see it work (in C#).
* Call a base method taking Void returning Void
* Get a `Func<>` to call any base method
* Invoke that `Func`tion
* Get any type by String name, even if System.Type.GetType() would fail
* Deprecated because SANO-san implemented `dotnet:call-base`


# Where to Go Next

* [My implementation plan](PLAN.md)
* [File descriptions](FILES.md)

# Credits

The font `04B_30.ttf` is the correct pixel font from [FontSpace (04b03 font)](https://www.fontspace.com/04b30-font-f735), which is used as `Content/fonts/04B_30.ttf` in this project.


# Chapter 20 Notes

[Source Code](https://github.com/MonoGame/MonoGame.Samples/blob/3.8.4/Tutorials/learn-monogame-2d/src/20-Implementing-UI-With-Gum/DungeonSlime/Game1.cs)

* `Core` is just the `Game1` class renamed