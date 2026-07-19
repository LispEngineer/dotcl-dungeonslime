# File Descriptions

* Author: Douglas P. Fields, Jr. - symbolics@lisp.engineer

This file contains overview information about the various documents
and files in this repository.

# Documentation

* [README.md](README.md): The main README of the repository.

* [FILES.md](FILES.md): This file

* [PLAN.md](PLAN.md): The implementation plan and phases

* [README-original.md](README-original.md): The original
  author SANO-san's README. Note: in Japanese.

* [LICENSE](LICENSE): The MIT License for this repository.

* [antigravity-log.md](antigravity-log.md): Local-only log of ML/AI 
  assistance and changes. (Not checked in to source control.)

* [implementation-notes.md](doc/implementation-notes.md): How this
  was implemented, how to do various things in the future, etc.

* [enable-audio-under-wsl-ubuntu24.04.md](doc/enable-audio-under-wsl-ubuntu24.04.md): Detailed
  guide for enabling OpenAL audio support under WSL2 running Ubuntu 24.04.

* [abcl-java-interop.md](doc/abcl-java-interop.md): Documentation on ABCL Java interop concepts.

* [opencode-implementation-notes.md](doc/opencode-implementation-notes.md):
  Notes on the implementation of MonoGame Chapter 11 input management system
  and Chapter 12 collision detection system by OpenCode.

* [clr-interop-ideas.md](doc/clr-interop-ideas.md): I've had some thoughts
  and ideas on extending DotCL for interoperability with CLR and C#
  in a more coder-friendly way.

* [lispdoc.md](doc/lispdoc.md) describes DotCL's `LispDoc`
  annotation, which I thought would generate docstrings.
  This did not work in 0.1.8, but was fixed in 0.1.9 and should work as of DotCL 0.1.17.

* [BUILD-GUIDE.md](doc/BUILD-GUIDE.md) describes in great detail how this
  project is built when you call `dotnet build`.

* [dotnet-static-generic.md](doc/dotnet-static-generic.md) describes how
  the current `dotnet:static-generic` function works, as I wanted to
  create an analoguous `monoutils:invoke-generic` function. I hope that
  function or an analog will be incorporated into DotCL.

* [dotcl-form-evaluation.md](doc/dotcl-form-evaluation.md) explains how
  DotCL 0.1.17 evaluates and compiles a form. (It only does compilation,
  no interpretive evaluation.)

* [dotcl-generic.md](doc/dotcl-generic.md) details the internal workings of
  generic functions and method dispatch inside the DotCL 0.1.17 runtime environment.

* [opencode-qwen36-dotnet-analysis-0.1.15-v2.md](doc/opencode-qwen36-dotnet-analysis-0.1.15-v2.md):
  Comprehensive analysis of all exported symbols in the DotCL `DOTNET` package
  as of v0.1.15 (note we are now on 0.1.17), organized by functional category with detailed documentation,
  internal mechanics, and examples. Supersedes the incomplete v1 analysis.

* [package-dotcl.md](doc/package-dotcl.md) lists the exported symbols in the `DOTCL` package.

* [package-dotcl-mop.md](doc/package-dotcl-mop.md) lists the exported symbols in the `DOTCL-MOP` package.

* [package-dotcl-internal.md](doc/package-dotcl-internal.md) provides detailed documentation of all 154 internal/system symbols in the `DOTCL-INTERNAL` package.

* [dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) explains in detail all the mechanisms for .NET interoperability, in both directions, between DotCL Common Lisp and the .NET CLR.

* [compilation-warnings-in-0.1.14.md](doc/compilation-warnings-in-0.1.14.md): Detailed analysis of the compile and load warnings under older DotCL 0.1.14 (we are now on 0.1.17).

* [package-generator-dependencies.md](doc/package-generator-dependencies.md): Dependency analysis of the Lisp C# package generator and the generated packages.

* [GEMINI.md](GEMINI.md) - Contains useful references on libraries for
  human consumption. Used to provide guidance to Google's 
  [Antigravity CLI](https://antigravity.google/product/antigravity-cli)
  (formerly called Gemini CLI)
  which the author uses with Gemini.
  (See below for notes on the author's use of ML assistance.)
  * Linked to [AGENTS.md](AGENTS.md) and possibly other files of a similar nature.


# Lisp

* `build-setup.lisp`: Build-time Lisp initialization script loaded by the MSBuild task. It automatically searches for and loads Quicklisp to make Quicklisp-installed systems discoverable by ASDF during compilation.

* `packages.lisp`: Defines the Lisp packages used across the project. A few
  special `defpackage` forms at the top (`:system-object`, `:system-type`,
  `:anaphora`) prevent compiler symbol-lookup failures; the local nicknames
  to generated `cspackages/` packages resolve directly against the real
  packages, since `csharp-assembly-packages` loads as an ASDF system
  dependency before any project component compiles.


* `test-harness.lisp`: Runs all the other tests sprinkled all throughout
  the Lisp code.

* `audio-test.lisp`: Verifies that audio resources (bounce, collect, theme) load correctly using
  the pre-generated C# wrappers. Refactored to use `system-uri:new` and
  `system-uri-kind:+relative+`.

* `utils.lisp`: Contains general utility functions (like path qualification and safe reading).
  Uses native interop to retrieve the base directory, avoiding load-time package circular dependencies.

* `settings.lisp`: Defines system-wide Lisp settings (e.g., `declaim`).

* `constants.lisp`: Defines system-wide constants; very often these are
  Lispy versions of C# enumerations.

* `typed-calls-test.lisp`: Test suite verifying that type-declared direct method calls
  work correctly under DotCL 0.1.17, that invalid cast exceptions are handled correctly,
  and that the generated instance property accessors, mutators, and read-only properties
  function as expected.

* `mg-classes.lisp`: Defines basic MonoGame classes and functions in a Lisp-friendly way 
  (e.g. `vector2`, `rect`, accessors `x`, `y`, `width`, `height`, and `sprite-batch-begin` helpers).
  Refactored to utilize generated C# wrappers like `game-time:`, `v2:`, and `rect:new` instead of
  raw `dotnet:invoke` and `dotnet:new` calls.

* `texture-region.lisp`: Implements the CLOS class `texture-region` and 
  associated drawing/retrieval functions.

* `texture-atlas.lisp`: Implements the CLOS class `texture-atlas` and the 
  `ta-from-file` safe Lisp form reader.

* `mg-core.lisp`: Creates a C# class `MonoGameCLOSProxy` which acts as a proxy between the
  MonoGame Game C# world and the Lisp CLOS world. Defines a base CLOS
  class called `core` which defines all the methods that are the target
  of this proxy class. Refactored to utilize generated `game:`, `sprite-batch:` wrappers.
  Importantly, the `core` must be given a reference to an instantiated proxy class when
  instantiated! 
  
  This base `core` class has mostly administrative functionality:
  * Start and stop the background REPL
  * Set up the game window size, etc.
  * Save various MonoGame-relevant items in CLOS slots in the
    "constructor" (via `initialize-instance :after`)

* `input-manager.lisp`: Implements the MonoGame Chapter 11 input management system in CLOS.
  Provides `KeyboardInfo`, `MouseInfo`, `GamePadInfo`, and `InputManager` classes that track
  previous/current input states for detecting "just pressed" and "just released" transitions.
  Includes timed vibration management for gamepads. Refactored to utilize generated C# package
  member stubs and constructor functions in place of raw `.NET` interop calls.

* `collision.lisp`: Implements the MonoGame Chapter 12 collision detection
  system in CLOS. Provides the `circle` CLOS class with boundary functions
  (`circle-left`, `circle-right`, `circle-top`, `circle-bottom`) and
  `circle-intersects` for circle-circle collision testing. Screen boundary
  blocking, bouncing, and trigger response logic is integrated into
  `game-1.lisp`.

* `collision-test.lisp`: Comprehensive test suite for the collision detection
  system. Covers circle construction, boundary computation, true/false
  intersection cases, degenerate cases, `v2-distance-squared`, `v2-reflect`,
  `v2-normalize`, `rect-intersects`, and `rect-contains-p`.

* `audio-controller.lisp`: Implements the `audio-controller` CLOS class for Chapter 15.
  Provides centralized audio management, tracks sound effect instances for proper
  disposal, and handles global mute state and volume adjustments. Refactored to use
  `sei:dispose` instead of raw `dotnet:invoke` calls.

* `tilemap.lisp`: Implements the `tilemap` CLOS class for Chapter 13.
  Loads a tilemap layout from an S-expression file, mapping grid
  positions to `texture-region` cells within a tileset. Provides drawing
  functionality that draws all tiles via SpriteBatch. Defines
  `content-load-texture2d` to dynamically load texture assets from the
  `ContentManager`.

* `tileset.lisp`: Implements the `tileset` CLOS class for Chapter 13.
  Represents a grid of tiles (a tile atlas) from a single `texture-region`.
  Provides logic for slicing the region into uniform tiles and caching
  the resulting sub-regions.

* `tilemap-test.lisp`: Tests the tileset splitting and tilemap loading logic.

* `game-1.lisp`: A subclass of the `core` class that serves as the bootstrap game shell. It initializes the window and immediately transitions to the starting `title-scene`.

* `scene.lisp`: Base abstract class for scenes. Defines the lifecycle protocol (initialize, load-content, unload-content, update, draw, dispose) specialized on CLOS scene subclasses, and sets up scene-private ContentManagers.

* `title-scene.lisp`: Subclass of `scene` representing the game's start/title screen. Displays the game logo and title text, renders a pulsing "Press Enter to Play" prompt, and draws a scrolling tiled background pattern using wrapper packages. Transitions to the gameplay scene on user input.

* `gameplay-scene.lisp`: Subclass of `scene` encapsulating the main gameplay logic (slime-eating-bat, boundaries, collision). Manages gameplay-specific sprites, tilemap, score, sound effects, and music.

* `scene-test.lisp`: Unit tests for the scene management lifecycle, transition mechanics, and resource disposal protocols using mock scenes.

* `game-repl.lisp`: Provides functions to launch a background thread which
  operates a Lisp REPL. Sorta klugey for now but works.

* `load-repl.lisp`: Not a part of the sources of the game; use this like
  `(load "load-repl.lisp")` from a clean `dotcl` REPL instance to get the
  entire game loaded and ready for REPL hacking. Streamlined to only load the
  system and instantiate the game using compile-time paths.

* `load-system-test.lisp`: Proof of concept that we can load a system using
  ASDF and use it in our binary. Also has related changes in `.csproj` file.

* `main.lisp`: The main functions which instantiate the MonoGame Game class
  by creating the CLOS and C# objects, associating them together, and
  returning the C# class. It also stores the two classes in `*game*` and
  `*cs-game*` (C sharp game).

* `monoutils.lisp`: Lisp stub for the `MonoUtils.cs` class, which defines
  several C# functions intended to be used from Lisp land. Works similarly
  to DotCL's `dotnet` package. Also contains the documentation strings for
  the functions as I couldn't figure out how to set them in the C# source.
  Triggers C# registrar initialization automatically at load-time.

* `poc-test.lisp`: Optional Proofs of Concept and Tests that can be run by
  including them in the `.asd` file (commented out by default). Useful during
  development only.

* `sprite.lisp`: The Sprite class from the Dungeon Slime tutorial
  [Chapter 8](https://docs.monogame.net/articles/tutorials/building_2d_games/08_the_sprite_class/index.html)
  as a CLOS class.

* `sprite-font.lisp`: SpriteFont helper functions for Chapter 16.
  Provides `load-font`, `measure-string`, and `draw-string` functions
  for loading, measuring, and rendering text via MonoGame's SpriteFont
  class. Implemented as pure helper functions (not a CLOS class) since
  SpriteFont is a sealed C# class with no virtual methods.

* `animation.lisp`: The Animation and Animated Sprite classes from
  Chapter 9 of the tutorial.

* `type-aliases.lisp`: Provides MonoGame-specific and other C# type aliases
  into `dotnet::*type-aliases*` mostly for ease of reading the code.
  Loads assemblies dynamically when ASDF is present, supporting clean
  compilation and REPL usage while remaining safe for standalone executable
  environments.

* `dungeon-slime.asd`: ASDF system definition file for this game. Registers
  the `cspackages/` directory on `asdf:*central-registry*` and depends on
  `csharp-assembly-packages` (the self-contained system emitted by
  `dotcl-packagegen`) as an ordinary ASDF `:depends-on` system. The one
  exception, `cspackages/csharp-generics.lisp`, is listed as a root
  component with `:depends-on ("type-aliases")` because it resolves .NET
  types at read/compile time and so must compile after the MonoGame
  assemblies load (see [implementation-notes.md](doc/implementation-notes.md),
  "Replacing the Splice with a Plain `:depends-on`").

* `explore.lisp`: Just some functions I load into the REPL to explore
  the areas of DotCL.

* `csharp.lisp`: Useful utilities for calling into C# library classes.
  Includes the `#!` (instance call) and `#!!` (static call) reader macros.
  - Prefix Shorthand Mode:
    - `(#!MethodName obj ...)` expands to a method invocation of `MethodName` on `obj`.
    - `(#!!Class.Method ...)` expands to a static method invocation of `Method` on `Class`.
  - List-Call Mode:
    - `(#! obj "StringMethod" ...)` and `(#! obj SymbolMethod ...)` expand to method invocations of the specified method name (case-sensitive) on `obj`.
    - `(#!! "Class" "Method" ...)` and `(#!! Class Method ...)` expand to static method invocations on the specified class and method names (case-sensitive).
  - Synonym Mode:
    - `#!` and `#!!` resolve directly to the symbols `dotnet:invoke` and `dotnet:static` when followed by no arguments or closing parenthesis.

# C#

* `MonoUtils.cs`: Containts the C# implementation of an `invoke-generic`
  function that is akin to `dotnet:static-generic`. Also has a
  `MonoUtilsRegistrar` class which will register the functions in the
  DotCL environment under the `MONOUTILS` package; this needs to be
  called at some point before use to make the functions visible to
  Lisp.

* `Program.cs`: Main launcher for the stand-alone executable. 
  Optional arguments:
  * `--test` will prevent the actual MonoGame from running and will run the test suite
  * TODO: Document the rest of these
  * `--assembly`
  * `--assembly-metadata`
  * `--class`
  * `--output`


# MonoGame Files

* `Content/`: All the files that the game needs for pictures, etc.

* `Content.mgcb`: MonoGame Content Builder configuration. This references all
  the content that the `ContentManager` can load. I think there is something a
  little off with my configuration, but it works.

* `Content/tilemap-definition.lisp`: Lisp S-expression configuration specifying
  the layout for the level tilemap, using indices that map into the atlas's tileset.


# Project Files

* `Makefile`: The make script defining build targets (e.g., `make build`, `make test`).

* `check_parens.py`: Python utility to programmatically verify parentheses balance in Common Lisp source files.

* `revert-cspackages-timestamps.sh`: Shell script that, after regenerating
  `cspackages/` (e.g. via `make cspackages`), reverts any file whose only
  diff from `HEAD` is the generator's embedded `Creation Date` comment and
  `<creation>` defconstant timestamp, leaving files with genuine content
  changes untouched. Supports `--dry-run`. Lets `cspackages/` be regenerated
  frequently without polluting git history with timestamp-only diffs.

* `DungeonSlime.csproj`: This is the C# Project file for the game. Its
  mystical incantations produce the final standalone binary. For more
  details, see the [BUILD-GUIDE.md](doc/BUILD-GUIDE.md).


