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

* [abcl-java-interop.md](doc/abcl-java-interop.md): Documentation on ABCL Java interop concepts.

* [assembly-to-lispy.md](doc/assembly-to-lispy.md): Detailed specifications for the `AssemblyToLispy` extraction pipeline.

* [lisp-assemblies.md](doc/lisp-assemblies.md): Documentation covering the Lisp Assembly Package Generator.

* [lispy-csharp-standard-library.md](doc/lispy-csharp-standard-library.md): Design thoughts regarding a Lispy C# standard library.

* [clr-interop-ideas.md](doc/clr-interop-ideas.md): I've had some thoughts
  and ideas on extending DotCL for interoperability with CLR and C#
  in a more coder-friendly way.

* [lispdoc.md](doc/lispdoc.md) describes DotCL's `LispDoc`
  annotation, which I thought would generate docstrings.
  This does not work as of DotCL 0.1.8.

* [BUILD-GUIDE.md](doc/BUILD-GUIDE.md) describes in great detail how this
  project is built when you call `dotnet build`.

* [dotnet-static-generic.md](doc/dotnet-static-generic.md) describes how
  the current `dotnet:static-generic` function works, as I wanted to
  create an analoguous `monoutils:invoke-generic` function. I hope that
  function or an analog will be incorporated into DotCL.

* [dotcl-form-evaluation.md](doc/dotcl-form-evaluation.md) explains how
  DotCL 0.1.8 evaluates and compiles a form. (It only does compilation,
  no interpretive evaluation.)

* [clr-generic-functions.md](doc/clr-generic-functions.md) describes the design
  and implementation plan of the custom C# class-aware generic function system.

* [dotcl-generic.md](doc/dotcl-generic.md) details the internal workings of
  generic functions and method dispatch inside the DotCL 0.1.8 runtime environment.

* [package-dotnet.md](doc/package-dotnet.md) provides detailed documentation of
  all 30 standard symbols and the 2 extra WinForms symbols in the DotCL `DOTNET` package.

* [package-dotcl.md](doc/package-dotcl.md) lists the exported symbols in the `DOTCL` package.

* [package-dotcl-mop.md](doc/package-dotcl-mop.md) lists the exported symbols in the `DOTCL-MOP` package.

* [package-dotcl-internal.md](doc/package-dotcl-internal.md) provides detailed documentation of all 154 internal/system symbols in the `DOTCL-INTERNAL` package.

* [GEMINI.md](GEMINI.md) - Contains useful references on libraries for
  human consumption. Used to provide guidance to Google's 
  [Antigravity CLI](https://antigravity.google/product/antigravity-cli)
  (formerly called Gemini CLI)
  which the author uses with Gemini.
  (See below for notes on the author's use of ML assistance.)


# Lisp

* `packages.lisp`: Defines the Lisp packages used across the project.

* `utils.lisp`: Contains general utility functions (like path qualification and safe reading).

* `settings.lisp`: Defines system-wide Lisp settings (e.g., `declaim`).

* `constants.lisp`: Defines system-wide constants; very often these are
  Lispy versions of C# enumerations.

* `clr-generic.lisp`: Implements the Version 1 C# class-aware generic function
  system macros (`defc#generic`, `defc#method`) and dispatch/specificity resolution logic.

* `clr-generic-test.lisp`: Startup test suite verifying C# generic function 
  dispatching, interface specificity, and alias resolution.

* `mg-classes.lisp`: Defines basic MonoGame classes and functions in a Lisp-friendly way 
  (e.g. `vector2`, `rect`, accessors `x`, `y`, `width`, `height`, and `sprite-batch-begin` helpers).

* `texture-region.lisp`: Implements the CLOS class `texture-region` and 
  associated drawing/retrieval functions.

* `texture-atlas.lisp`: Implements the CLOS class `texture-atlas` and the 
  `ta-from-file` safe Lisp form reader.

* `mg-core.lisp`: Creates a C# class `MonoGameCLOSProxy` which acts as a proxy between the
  MonoGame Game C# world and the Lisp CLOS world. Defines a base CLOS
  class called `core` which defines all the methods that are the target
  of this proxy class. Importantly, the `core` must be given a reference
  to an instantiated proxy class when instantiated! 
  
  This base `core` class has mostly administrative functionality:
  * Start and stop the background REPL
  * Set up the game window size, etc.
  * Save various MonoGame-relevant items in CLOS slots in the
    "constructor" (via `initialize-instance :after`)

* `game-1.lisp`: An extension of the `core` class above that actually
  will implement the MonoGame Dungeon Slime logic. For now, it also will
  steadily rotate the background color between black and red, which speed can
  be controlled with `color-cycle-period`. Changing that acts as a good test
  that the in-game REPL is working.

* `game-repl.lisp`: Provides functions to launch a background thread which
  operates a Lisp REPL. Sorta klugey for now but works.

* `load-repl.lisp`: Not a part of the sources of the game; use this like
  `(load "load-repl.lisp")` from a clean `dotcl` REPL instance to get the
  entire game loaded and ready for REPL hacking.

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

* `poc-test.lisp`: Optional Proofs of Concept and Tests that can be run by
  including them in the `.asd` file (commented out by default). Useful during
  development only.

* `sprite.lisp`: The Sprite class from the Dungeon Slime tutorial
  [Chapter 8](https://docs.monogame.net/articles/tutorials/building_2d_games/08_the_sprite_class/index.html) 
  as a CLOS class.

* `animation.lisp`: The Animation and Animated Sprite classes from
  Chapter 9 of the tutorial.

* `type-aliases.lisp`: Provides MonoGame-specific and other C# type aliases
  into `dotnet::*type-aliases*` mostly for ease of reading the code.

* `dungeon-slime.asd`: ASDF system definition file for this game.

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

* `assembly-to-lispy-tests-final.lisp`: Top-level execution file for the `AssemblyToLispy` end-to-end test suite.

* `assembly-package-generator.lisp`: Lisp-native tool implementing Phase
  1 & 1A C# Assembly Package Generator. Reads metadata generated by `AssemblyToLispy`
  and generates Lisp packages containing type constants, constants, and
  simplest non-overloaded members.
  * Robustly handles package naming conflicts by dynamically detecting and
    shadowing conflicting standard Common Lisp symbols (e.g. `read`, `+`, `length`).
  * Resolves platform-compatibility exceptions by utilizing `define-symbol-macro`
    to lazily evaluate C# static fields/properties at reference-time rather than load-time.
  * Supports operator overloads (such as `/=`, `=`, `>`, etc.) by mapping the clean Lisp names
    back to their original C# mangled names (such as `"op_Inequality"`, `"op_Equality"`, etc.)
    in the generated `dotnet:static` or `dotnet:invoke` calls.
  * `package-generator-tests.lisp`: Unit test suite verifying the naming
    conversion, string splitting, and member filtering behaviors of
    the assembly package generator, as well as testing the generated
    operator overloads (`=`, `/=`, `+`, `<`, `<=`, `>`, `>=`) on
    `System.TimeSpan` and `Microsoft.Xna.Framework.Vector2`.
  * `cspackages/`: Directory containing auto-generated packages (generated by
    `make generate-cspackages`) that are dynamically detected and compiled.


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

* `AssemblyToLispy.cs`: The `assembly-to-lispy` specification.
  * Extracts metadata (types, properties, fields, constructors, methods, parameter
    signatures, and XML documentation comments) from a .NET assembly and outputs a
    Common Lisp S-expression representation.
  * Implements Phases 1, 2A, 2B, 2C, and 2D of the metadata extraction pipeline.
  * Integrates assembly XML documentation comments, parsing summary text, return descriptions,
    and parameter descriptions into a structured `:documentation` plist.
  * Translates C# operator overloads to Lisp-friendly operators (e.g., `+` instead of
    `op_Addition`).
  * Serializes parameter default values into valid Common Lisp literals (e.g., `nil`,
    `t`, ratio literals for decimals, `f`/`d` exponent indicators for floats/doubles,
    and `#\character` syntax for characters).
  * Includes a modularized verification test suite located in the `tests/` directory:
    * `tests/framework.lisp`: Defines the test framework, validation DSL, and general schema/semantic validations.
    * `tests/*.test.lisp`: Individual test files containing spot-checks mapping to target assemblies (e.g., `tests/system-runtime.test.lisp`).
    * The test runner dynamically discovers and loads all test files under `tests/` at runtime.


## Deprecated C# Files

* `BaseCaller.cs`: *Deprecated!* My implementation of methods that can call the "base"
  class method of another class. Made before DotCL 0.1.8 added `call-base`.
  I might go back to using it if performance dictates, because it provides
  a `Func` that can be cached and called quickly without further reflection. 

* `MonoGameLispUtilities.cs`: *Deprecated!* My implementation of helper functions
  such as making non-generic versions of calls like `Load<Texture2D>`. Not needed
  anymore with my `invoke-generic` function in MonoUtils.


# MonoGame Files

* `Content/`: All the files that the game needs for pictures, etc.

* `Content.mgcb`: MonoGame Content Builder configuration. This references all
  the content that the `ContentManager` can load. I think there is something a
  little off with my configuration, but it works.


# Project Files

* `Makefile`: The make script defining build targets (e.g., `make build`, `make test`).

* `AssemblyToLispyTestTarget/`: The directory containing the synthetic C# project used as a test target for `AssemblyToLispy`.

* `DungeonSlime.csproj`: This is the C# Project file for the game. Its
  mystical incantations produce the final standalone binary. For more
  details, see the [BUILD-GUIDE.md](doc/BUILD-GUIDE.md).

