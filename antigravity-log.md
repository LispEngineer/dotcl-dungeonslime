# Antigravity CLI Activity Log

## Session: May 23-24, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| May 23, 2026 | [monoutils.lisp](monoutils.lisp) | Modified | Created Lisp package shim for `monoutils:add3` and `monoutils:invoke-generic`. Added `(setf (documentation ...))` for Lisp-accessible docstring. |
| May 23, 2026 | [MonoUtils.cs](MonoUtils.cs) | Modified | Implemented `MonoUtils.InvokeGeneric` to dynamically specialize and invoke generic instance methods from Common Lisp. |
| May 23, 2026 | [main.lisp](main.lisp) | Modified | Refactored `Content.Load<Texture2D>` call to use the generic method invoker: `(monoutils:invoke-generic cont "Load" '("Microsoft.Xna.Framework.Graphics.Texture2D") "images/logo")`. |
| May 23, 2026 | [MonoGameLispDemo.asd](MonoGameLispDemo.asd) | Modified | Configured ASDF components so `monoutils` is loaded before `main`. |
| May 23, 2026 | [lispdoc.md](doc/lispdoc.md) | Created | Documented `LispDoc` attribute processing and the missing generic function fallback in `dotcl`'s runtime. (Later moved by user to `doc/lispdoc.md`). |
| May 23, 2026 | [MonoUtils.cs](MonoUtils.cs) | Modified | Added a private helper `ResolveTypeAlias` that queries Lisp's `dotnet::*type-aliases*` hash table at runtime via `Startup.SymInPkg` and `DynamicBindings.Get`. |
| May 23, 2026 | [main.lisp](main.lisp) | Modified | Updated `load-content` to use the type alias `'("TEXTURE2D")` instead of `'("Microsoft.Xna.Framework.Graphics.Texture2D")`. |
| May 23, 2026 | [README.md](README.md) | Modified | Documented `monoutils:invoke-generic` and its type-alias resolution capability. |
| May 24, 2026 | [antigravity-log.md](antigravity-log.md) | Created | Initialized this log file. |
| May 24, 2026 | [dotcl-repl.lisp](../../dotcl/contrib/dotcl-repl/dotcl-repl.lisp) | Modified | Implemented `console-read-key-interruptable` and updated `readline` to support interruptable console reads. |
| May 24, 2026 | [game-repl.lisp](game-repl.lisp) | Modified | Placed the file in the `:game-repl` package, exported REPL functions, and added checking for `*no-lisp-repl*`. |
| May 24, 2026 | [mg-core.lisp](mg-core.lisp) | Modified | Prefix background REPL startup and teardown calls with the package name: `game-repl:`. |
| May 24, 2026 | [dotcl-form-evaluation.md](doc/dotcl-form-evaluation.md) | Created | Detailed explanation of DotCL's s-expression evaluation and operator-position compilation internals. |
| May 26, 2026 | [texture-region.lisp](texture-region.lisp) | Modified | Corrected misspelled `:init-arg` option to `:initarg` and updated slot initargs to keywords. |
| May 26, 2026 | [MonoGameLispDemo.asd](MonoGameLispDemo.asd) | Modified | Uncommented the `texture-region` compilation unit to enable build-time compilation. |
| May 27, 2026 | [dotcl-generic.md](doc/dotcl-generic.md) | Created | Detailed explanation of DotCL's generic function and method implementation internals. |
| May 27, 2026 | [clr-generic-functions.md](doc/clr-generic-functions.md) | Modified | Appended C# class-aware generic function system design considerations. |
| May 27, 2026 | [clr-generic.lisp](clr-generic.lisp) | Created | Implemented Version 1 of C# Class-Aware Generic Functions macros and dispatch. |
| May 27, 2026 | [clr-generic-test.lisp](clr-generic-test.lisp) | Created | Created startup test suite for C# Generic Functions. |
| May 27, 2026 | [MonoGameLispDemo.asd](MonoGameLispDemo.asd) | Modified | Added `clr-generic` and `clr-generic-test` components and ordered `type-aliases` before them. |
| May 27, 2026 | [Program.cs](Program.cs) | Modified | Commented out `game.Run()` and `game.Dispose()` calls to facilitate CLI testing. |
| May 27, 2026 | [clr-generic.lisp](clr-generic.lisp) | Modified | Added slot documentation comments to the `c#generic-function` structure. |
| May 29, 2026 | [clr-generic-test.lisp](clr-generic-test.lisp) | Modified | Replaced `Microsoft.Xna.Framework.Game` with `Microsoft.Xna.Framework.GameTime` instantiation to prevent double-game instantiation Segfaults. |
| May 30, 2026 | [README.md](README.md) | Modified | Updated "Functionality Implemented" and "Source File Descriptions" to document C# generic functions, texture-region classes, and `ta-from-file`. |
| May 30, 2026 | [mg-classes.lisp](mg-classes.lisp) | Modified | Exported `rect` function to resolve package resolution errors in other modules. |
| May 30, 2026 | [texture-region.lisp](texture-region.lisp) | Modified | Implemented `ta-from-file` and a startup validation test for texture atlases. |
| May 30, 2026 | [MonoGameLispDemo.csproj](MonoGameLispDemo.csproj) | Modified | Added MSBuild target copying dotcl `contrib` folder (including ASDF and UIOP) to the build output directory to support runtime loading. |
| May 30, 2026 | [texture-region.lisp](texture-region.lisp) | Modified | Uncommented `(require "asdf")` to load UIOP and verify ASDF runtime load functionality. |
| May 30, 2026 | [settings.lisp](settings.lisp) | Modified | Added compile-time verbosity settings to output loading and compilation details. |
| May 30, 2026 | [load-system-test.lisp](load-system-test.lisp) | Modified | Wrapped ASDF require and load-system in an eval-when block to define the ANAPHORA package at compile-time. |
| May 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Added explanation log for removing generic functions and methods in DotCL, and for appending directory paths and filenames in Common Lisp/UIOP. |
| Jun 2, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Added explanation log for Black-Scholes LaTeX and plain-text mathematical formulas. |
| Jun 4, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Added explanation log for DotCL stack traces, error re-throwing, and exception mapping. |
| Jun 4, 2026 | [Program.cs](Program.cs) | Modified | Replaced direct game.Run() with reflection-based invocation to call shadowed Run() method of Lisp subclass. |
| Jun 4, 2026 | [doc/abcl-java-interop.md](doc/abcl-java-interop.md) | Created / Modified | Created and updated research/design document detailing ABCL's Java class integration and C#/.NET reified generics interop mapping for DotCL. |
| Jun 4, 2026 | [doc/package-dotnet.md](doc/package-dotnet.md) | Modified | Documented all symbols in the DOTNET package with type, syntax, description, C# details, and Lisp examples. |
| Jun 4, 2026 | [doc/package-dotcl.md](doc/package-dotcl.md) | Modified | Documented all symbols in the DOTCL package with type, syntax, description, C# details, and Lisp examples. |
| Jun 4, 2026 | [doc/package-dotcl-mop.md](doc/package-dotcl-mop.md) | Modified | Documented all symbols in the DOTCL-MOP package with type, syntax, description, C# details, and Lisp examples. |
| Jun 4, 2026 | [doc/package-dotcl-internal.md](doc/package-dotcl-internal.md) | Modified | Documented all symbols in the DOTCL-INTERNAL package with type, syntax, description, C# details, and Lisp examples. |
| Jun 5, 2026 | [doc/package-dotnet.md](doc/package-dotnet.md) | Modified | Reorganized the Index of Symbols to be grouped by purpose. |
| Jun 5, 2026 | [Makefile](Makefile) | Created | Created a simple Makefile with `build`, `test`, `run`, and `clean` targets. |
| Jun 5, 2026 | [texture-atlas.lisp](texture-atlas.lisp) | Modified | Changed numeric assertion from `equal` to `=` to handle type difference (double-float vs integer). |
| May 23, 2026 | [~/.bashrc](file:///home/dfields/.bashrc) | Modified | Configured `ssh-agent` to reuse existing running sessions via `ssh-add -l` connectivity check. |
| Jun 1, 2026 | [/tmp/install_amdisp4.sh](file:///tmp/install_amdisp4.sh) | Created | Script to fetch, patch, and install `amdisp4` webcam driver on Linux 7.0 (XanMod). Updated to fix DKMS command. |
| Jun 5, 2026 | [README.md](README.md) | Modified | Updated the new Makefile targets. |
| Jun 5, 2026 | [animation.lisp](animation.lisp) | Modified | Fixed unbound variable animation error in update method. |
| Jun 6, 2026 | [/usr/src/amdisp4-8/dkms.conf](file:///usr/src/amdisp4-8/dkms.conf) | Modified | Added `BUILD_EXCLUSIVE_KERNEL` regex to prevent building the out-of-tree webcam driver on Ubuntu OEM kernels. |
| Jun 8, 2026 | [AssemblyToLispy.cs](AssemblyToLispy.cs) | Created | Implements Phase 1 metadata generator for .NET assemblies in Common Lisp S-expression format, including type resolution and list/string escaping. |
| Jun 8, 2026 | [Program.cs](Program.cs) | Modified | Hooked AssemblyToLispyTest.RunTests() into the --test CLI option. |
| Jun 8, 2026 | [README.md](README.md) | Modified | Documented AssemblyToLispy.cs and updated test arguments description. |
| Jun 8, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the implementation of AssemblyToLispy Phase 1 & 2A, sub-phases design, and explanations. |
| Jun 8, 2026 | [doc/assembly-to-lispy.md](doc/assembly-to-lispy.md) | Modified | Restructured Phase 2 into sub-phases 2A, 2B, 2C, 2D, and 2E. |
| Jun 8, 2026 | [AssemblyToLispy.cs](AssemblyToLispy.cs) | Modified | Implemented Phase 2A (general metadata extraction and CamelCaseToKebabCase conversion) and expanded test assertions. |
| Jun 9, 2026 | [AssemblyToLispy.cs](AssemblyToLispy.cs) | Modified | Expanded tests to cover real-world assemblies and dynamically load modular test files. |
| Jun 9, 2026 | [assembly-to-lispy-tests.lisp](assembly-to-lispy-tests.lisp) | Deleted | Removed monolithic test file in favor of the new modular testing framework. |
| Jun 9, 2026 | [tests/framework.lisp](tests/framework.lisp) | Created | Implemented common testing DSL, schema validators, CLR reflection checks, and test registry. |
| Jun 9, 2026 | [tests/*.test.lisp](tests/system-runtime.test.lisp) | Created | Split assembly-specific spot-checks into separate files (System.Runtime, Console, etc.). |
| Jun 9, 2026 | [README.md](README.md) | Modified | Documented the modular test suite layout and dynamic discovery details. |
| Jun 9, 2026 | [doc/assembly-to-lispy.md](doc/assembly-to-lispy.md) | Modified | Documented the design and completion of Phase 3D and Phase 3E. |
| Jun 9, 2026 | [AssemblyToLispyTestTarget/EdgeCases.cs](AssemblyToLispyTestTarget/EdgeCases.cs) | Modified | Marked defaults parameter type as object? to fix compiler warning CS8625. |
| Jun 9, 2026 | [doc/lisp-assemblies.md](doc/lisp-assemblies.md) | Modified | Documented the revised Phase 1 design and defined the subsequent implementation phases. |
| Jun 11, 2026 | [csharp.lisp](csharp.lisp) | Modified | Implemented revised case-sensitive list-call and prefix shorthand reader macros (#!! and #!) in eval-when to support compile-time execution. |
| Jun 11, 2026 | [poc-test.lisp](poc-test.lisp) | Modified | Added 8 startup tests validating the revised C# reader macros syntax formats. |
| Jun 11, 2026 | [MonoGameLispDemo.asd](MonoGameLispDemo.asd) | Modified | Added csharp to depends-on list of poc-test, and declared assembly-package-generator and package-generator-tests components. |
| Jun 11, 2026 | [README.md](README.md) | Modified | Documented C# reader macros and Phase 1 package generator source files. |
| Jun 11, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged macro changes, package generator additions, and explained their implementation. |
| Jun 11, 2026 | [packages.lisp](packages.lisp) | Modified | Declared and exported the `:assembly-package-generator` package. |
| Jun 11, 2026 | [Program.cs](Program.cs) | Modified | Parsed `--assembly-metadata`, `--class`, and `--output` options, invoking Lisp generator. |
| Jun 11, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Created/Mod | Implemented package generator. Added CL symbol shadowing and lazy symbol macro constants (Phase 1A). |
| Jun 11, 2026 | [package-generator-tests.lisp](package-generator-tests.lisp) | Created | Implemented unit tests for kebab conversion, splitting, and filtering. |
| Jun 11, 2026 | [MonoGameLispDemo.asd](MonoGameLispDemo.asd) | Modified | Enhanced ASDF integration to dynamically discover and load files in `cspackages/` early. |
| Jun 11, 2026 | [poc-test.lisp](poc-test.lisp) | Modified | Appended package generator integration tests using dynamic symbol resolution to support clean bootstrap. |
| Jun 11, 2026 | [README.md](README.md) | Modified | Documented Phase 1A enhancements, shadowing, and lazy evaluation of C# properties. |
| Jun 11, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged file modifications and explained the package generation integration. |
| Jun 17, 2026 | [Program.cs](Program.cs) | Modified | Added `--constant-properties` CLI argument parsing. |
| Jun 17, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Updated to accept `constant-properties-list` and emit `defconstant` for matched properties. |
| Jun 17, 2026 | [Makefile](Makefile) | Modified | Updated targets to pass `--constant-properties "*"` for `Vector2`, `Color`, and `SamplerState`. |
| Jun 17, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented the implementation and rationale for `--constant-properties`. |
| Jun 17, 2026 | [typed-calls-test.lisp](typed-calls-test.lisp) | Modified | Expanded property accessor and mutator tests, adding new assertions for reference type properties, packed values, and read-only property verification. |
| Jun 17, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added guidelines to verify parentheses balance individually for all modified files when compile/build errors are encountered. |
| Jun 17, 2026 | [FILES.md](FILES.md) | Modified | Updated description of typed-calls-test.lisp to include property accessor and mutator test coverage. |
| Jun 17, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Updated docstring of `*generator-version*` to document the capabilities added in each version. |
| Jun 17, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged property accessor/mutator testing details, parenthesis guidelines, and version history updates. |
| Jun 20, 2026 | [collision.lisp](collision.lisp) | Created | Implemented CLOS `circle` class with boundary functions and `circle-intersects` using `Vector2.DistanceSquared`. |
| Jun 20, 2026 | [mg-classes.lisp](mg-classes.lisp) | Modified | Added `v2-distance-squared`, `v2-reflect`, `v2-normalize`, `rect-intersects`, `rect-contains-p`. |
| Jun 20, 2026 | [packages.lisp](packages.lisp) | Modified | Pre-declared 3 new cspackages, added local nicknames `:rect`, `:gd`, `:pp`, new exports. |
| Jun 20, 2026 | [game-1.lisp](game-1.lisp) | Modified | Added `bat-pos`/`bat-vel` slots, `assign-random-bat-velocity`, collision logic in `update`, updated `draw`. |
| Jun 20, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Added `"collision"` and `"collision-test"` components with proper dependencies. |
| Jun 20, 2026 | [collision-test.lisp](collision-test.lisp) | Created | Comprehensive collision detection test suite with 30 assertions across 7 test groups. |
| Jun 20, 2026 | [test-harness.lisp](test-harness.lisp) | Modified | Added `(run-collision-tests)` call in `run-all-tests`. |
| Jun 20, 2026 | [doc/opencode-implementation-notes.md](doc/opencode-implementation-notes.md) | Modified | Documented Chapter 12 collision detection implementation. |
| Jun 20, 2026 | [FILES.md](FILES.md) | Modified | Added descriptions for `collision.lisp`, `collision-test.lisp`. |
| Jun 20, 2026 | [FILES.md](FILES.md) | Modified | Added description for `agy-proposal-for-package-generator.md`. |
| Jun 20, 2026 | [doc/agy-proposal-for-package-generator.md](doc/agy-proposal-for-package-generator.md) | Created | Documented taxonomy and phased implementation plan for handling C# method overloads in the Lisp package generator. |
| Jun 20, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Bumped v10; implemented group-based overload analysis (`clean-method-p`, `dirty-method-p`, etc.), typed overload generation, static-method arg type hints, removed `is-value-type-p` conditional. |
| Jun 20, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Fixed backtick bug in `cspackages-test` component declaration (`'` → `` ` ``). Added `cspackages-test` component. |
| Jun 20, 2026 | [mg-classes.lisp](mg-classes.lisp) | Modified | Reimplemented `v2-normalize` using `dotnet:static` for `op_Division`; removed hand-written `v2-distance-squared`, `v2-reflect`, `rect-intersects`, `rect-contains-p`. |
| Jun 20, 2026 | [cspackages/microsoft-xna-framework-vector2.lisp](cspackages/microsoft-xna-framework-vector2.lisp) | Modified | Manually added `distance-squared`, `reflect` function definitions, exports, and dirty-overload doc-comments (chicken-and-egg bypass). |
| Jun 20, 2026 | [cspackages/microsoft-xna-framework-rectangle.lisp](cspackages/microsoft-xna-framework-rectangle.lisp) | Modified | Manually added `intersects`, `contains` passthrough + 5 typed overloads + exports + dirty doc-comments. |
| Jun 20, 2026 | [cspackages-test.lisp](cspackages-test.lisp) | Created | 30+ integration tests for Vector2, Rectangle, Point, TimeSpan generated functions and operators. |
| Jun 20, 2026 | [packages.lisp](packages.lisp) | Modified | Pre-declared `:microsoft-xna-framework-point`, added `:point`/`:time-span` local nicknames, removed old mg-classes exports. |
| Jun 20, 2026 | [game-1.lisp](game-1.lisp) | Modified | Uses `v2*` (mg-classes function) instead of `v2:*` (vector2 package `*` not available). |
| Jun 20, 2026 | [collision.lisp](collision.lisp) | Modified | Uses `microsoft-xna-framework-vector2:distance-squared`. |
| Jun 20, 2026 | [collision-test.lisp](collision-test.lisp) | Modified | Uses `find-symbol`/`funcall` for generated functions; fixed negative coords assertion (v2→v1). |
| Jun 20, 2026 | [test-harness.lisp](test-harness.lisp) | Modified | Added `(run-cspackages-tests)` call. |
| Jun 20, 2026 | [FILES.md](FILES.md) | Modified | Documented cspackages-test.lisp and v10 generator changes. |
| Jun 20, 2026 | [PLAN.md](PLAN.md) | Modified | v10 done; added dirty-overload and static direct-call TODOs. |
| Jun 20, 2026 | [README.md](README.md) | Modified | Documented v10 method overload support. |
| Jun 20, 2026 | [doc/opencode-implementation-notes.md](doc/opencode-implementation-notes.md) | Modified | Documented v10 generator group-based overload handling. |
| Jun 23, 2026 | [doc/package-dotnet.md](doc/package-dotnet.md) | Modified | Added DOTNET:HINT-TYPE, OBJECT-TYPE, INVOKE-GENERIC, RESOLVE-TYPE |
| Jun 23, 2026 | [doc/package-dotcl.md](doc/package-dotcl.md) | Modified | Added DOTCL:LAUNCH-PROCESS, THREAD-OBJECT, BACKTRACE, BACKTRACE-WITH-ARGS, PRINT-BACKTRACE |
| Jun 23, 2026 | [doc/dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) | Created | Detailed explanation of bidirectional .NET and DotCL interoperability mechanisms. |
| Jun 23, 2026 | [FILES.md](FILES.md) | Modified | Added description for `dotnet-dotcl-interop.md`. |
| Jun 23, 2026 | [doc/package-dotnet.md](doc/package-dotnet.md) | Modified | Noted that `dotnet:call-out` does not support generic methods. |
| Jun 23, 2026 | [doc/dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) | Modified | Noted that `dotnet:call-out` does not support generic methods. |
| Jun 23, 2026 | [doc/dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) | Modified | Appended a detailed "Missing Interoperability Capabilities & Proposed Enhancements" section. |


---

### 2. Explanations Log

#### A. DotCL `LispDoc` Attributes Analysis
We analyzed how `[LispDoc("DOTNET:CALL-OUT")]` is implemented and why it initially returned `NIL` when queried from Lisp using `(documentation 'dotnet:call-out 'function)`:
1. **Source Generation:** The `LispDocGenerator` (Roslyn Source Generator in `runtime.docgen`) parses `<lispdoc>` elements from C# comments at compile time and outputs `GeneratedDocs.g.cs`.
2. **Startup Registration:** At startup, `GeneratedDocs.Register()` is called to store the string metadata in a C# dictionary `_docs` inside `Runtime.Arithmetic.cs`.
3. **The Missing Hook:** In `cil-stdlib.lisp`, the Lisp generic function `(documentation symbol 'function)` is defined to query only the Lisp `*documentation-table*` hash-table. Unlike the `variable` lookup method, it has no fallback path to retrieve values from the C# `_docs` dictionary.
4. **Suggested Fix:**
   * In `Runtime.Core.cs`: Register `%GET-FUNCTION-DOCUMENTATION` wrapper pointing to `Runtime.Documentation`.
   * In `cil-stdlib.lisp`: Update the `documentation` method for symbol/function to call `%get-function-documentation` on fallback.

#### B. Loading the Game into the Standalone DotCL REPL
To load MonoGame and local C# classes before starting the Lisp game in the REPL:
1. **Load MonoGame Assembly Explicitly:** Load the `MonoGame.Framework.dll` assembly to ensure all its types are loaded into the `AppDomain` and searchable by Lisp `ResolveDotNetType` (JIT doesn't eagerly load transitives on `Assembly.LoadFrom`):
   ```lisp
   (dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGame.Framework.dll")
   ```
2. **Load Project Assembly:** Load the compiled game C# project assembly containing your custom code:
   ```lisp
   (dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo.dll")
   ```
3. **Execute C# Initializer/Registrars:** Register package definitions, custom function bindings, and docstrings from Lisp:
   ```lisp
   (dotnet:static "MonoUtilsRegistrar" "Initialize")
   (dotnet:static "MonoUtilsRegistrar" "SetDocumentation")
   ```
4. **Load Lisp Code/FASLs:** Load the game's compiled Lisp FASL or load `asdf` and run `(asdf:load-system "MonoGameLispDemo")`.
5. **Run:** Instantiate and start the game loop:
   ```lisp
   (defparameter *game* (make-game))
   (dotnet:invoke *game* "Run")
   ```

#### C. Changing Current Directory at the DotCL REPL
To change the working directory at the DotCL REPL:
1. **Via .NET Interop (System-wide process level):** Call the standard .NET `SetCurrentDirectory` method to change the active directory for the entire host process (affecting assembly resolution, asset loading paths, and file operations):
   ```lisp
   (dotnet:static "System.IO.Directory" "SetCurrentDirectory" "/path/to/directory")
   ```
2. **Via Common Lisp standard (Lisp relative paths):** Update the default pathname defaults for relative Common Lisp operations (like `load` or `open`):
   ```lisp
   (setf *default-pathname-defaults* #P"/path/to/directory/")
   ```

#### D. MonoGame ContentManager Asset Path Resolution
MonoGame's `ContentManager` searches for compiled assets (`.xnb` files, which are generated from `.png`/`.wav`/etc. sources by `MGCB`) in a directory relative to the process's current working directory (specifically, `WorkingDirectory + RootDirectory`).
* **The Issue:** When launching the DotCL REPL from the project root, the working directory is the project root folder. The `Content/` folder in the project root only contains the raw `.png` source files, not the compiled `.xnb` assets. The compiled assets are placed in the build output folder (`bin/Debug/net10.0/ubuntu.24.04-x64/Content/`).
* **The Solution:** Change the process working directory to the build output directory before executing load/run commands:
  ```lisp
  (dotnet:static "System.IO.Directory" "SetCurrentDirectory" "bin/Debug/net10.0/ubuntu.24.04-x64/")
  ```
  Alternatively, change the `RootDirectory` property of the `ContentManager` object:
  ```lisp
  (setf (dotnet:invoke (content *game*) "RootDirectory") "bin/Debug/net10.0/ubuntu.24.04-x64/Content")
  ```

#### E. Cleanly Shutting Down MonoGame from Within
To cleanly exit the MonoGame loop and return control back to the caller of `Run()` (so the host process/REPL can continue execution):
1. **Call `Exit()`:** From within the game instance (e.g. inside `update`), call the standard MonoGame `Exit` method:
   ```lisp
   (dotnet:invoke self "Exit") ; or (dotnet:invoke *game* "Exit") from outside/inside
   ```
   This marks the game loop to terminate at the end of the current frame update pass.
2. **Dispose Resources:** Since `Game` implements `IDisposable`, the caller should explicitly call `Dispose` after `Run()` returns to release underlying native graphic context resources (SDL2, OpenAL, OpenGL):
   ```lisp
   (dotnet:invoke *game* "Dispose")
   ```

#### F. Calling Base Class Methods (`super` Equivalent) in DotCL
When writing a `.NET` class in Lisp using `dotnet:define-class` and you want to call a shadowed or hidden method from the super class (equivalent to C#'s `base.SomeMethod()` or Java's `super.someMethod()`):
* **Function:** Use the built-in **`dotnet:call-base`** function.
* **Syntax:**
  ```lisp
  (dotnet:call-base self "MethodName" arg1 arg2 ...)
  ```
* **How it works:** Under the hood, `dotnet:call-base` generates and caches a `.NET` `DynamicMethod` that performs a non-virtual call (`OpCodes.Call` rather than `OpCodes.Callvirt`) on the target's base type method definition. This bypasses both subclass method overriding and non-virtual method shadowing/hiding.

#### G. Extracting the Underlying .NET Thread Object from a Lisp Thread
In DotCL's `dotcl-thread` library, threads are represented by the native C# class `DotCL.LispThread` (which inherits from `LispObject`, not `LispDotNetObject`).
* **The Challenge:** Because it does not inherit from `LispDotNetObject`, you cannot call `dotnet:invoke` on it directly to read its properties (doing so throws a type error).
* **The Solution:** You can wrap/box the Lisp thread object as a standard `.NET` object using `dotnet:box` with `"System.Object"`, and then read its C# `"Thread"` property:
  ```lisp
  (let* ((lisp-thread (dotcl-thread:make-thread (lambda () ...)))
         (boxed-thread (dotnet:box lisp-thread "System.Object")))
    (dotnet:invoke boxed-thread "Thread"))
  ```
  This returns the underlying `System.Threading.Thread` object.

#### H. Trapping ThreadInterruptedException in console-read-key-interruptable
To make the DotCL REPL responsive to thread interrupts (e.g. from background tasks or shutdown commands), we changed the console key reader to check `Console.KeyAvailable` inside a loop instead of performing a blocking `Console.ReadKey()`:
1. **Loop and Sleep:** The function loops and checks `(dotnet:static "System.Console" "get_KeyAvailable")`. If a key is available, it returns it via `(dotnet:static "System.Console" "ReadKey" t)`. If not, it sleeps for 50ms using `(dotnet:static "System.Threading.Thread" "Sleep" 50)`.
2. **Trap Exceptions:** The loop is wrapped in a `handler-case` catching `error`. Since .NET exceptions (including `System.Threading.ThreadInterruptedException`) are intercepted and wrapped as Lisp `error` conditions by the DotCL runtime, we can catch the exception and return `nil`.
3. **Handle in Readline:** In `readline`, we verify the result of `console-read-key-interruptable`. If it returns `nil`, we immediately abort and return `nil`. The REPL host detects this `nil` return as EOF/interrupt and cleanly breaks the read-eval-print loop.

#### I. Game REPL Package Separation
To decouple the background REPL utilities from the main `cl-user` package:
1. **Package Declaration:** We defined the `:game-repl` package inside [game-repl.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/game-repl.lisp) using `defpackage` wrapped in an `eval-when` form to ensure compile-time/load-time availability.
2. **Switching Context:** Switched package context via `(in-package :game-repl)` inside `game-repl.lisp`.
3. **Internal Imports:** Prefixed `thread-alive-p` with `dotcl-thread:thread-alive-p` because `:game-repl` does not use the `:dotcl-thread` package by default.
4. **Symbol Qualification:** Updated [mg-core.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/mg-core.lisp) (which runs in `cl-user`) to refer to the exported functions via `game-repl:start-background-repl` and `game-repl:kill-background-repl`.

#### J. Debugging and Fixing texture-region.lisp
When compiling `texture-region.lisp`, the DotCL compiler entered the debugger with a `PROGRAM-ERROR` due to the syntax error inside the `defclass` definition.
1. **Misspelled Slot Option**: The slot options were written as `:init-arg texture` and `:init-arg source-rect`. In Common Lisp, the standard slot option is `:initarg`. The hyphenated `:init-arg` is not defined by ANSI Common Lisp, leading the compiler to reject the definition with a `PROGRAM-ERROR`.
2. **Initarg Symbols**: The initarg values were written as standard symbols (`texture`, `source-rect`). While standard symbols are permitted, they require package-prefixing or importing when calling `make-instance`. The standard convention in Common Lisp is to use keywords (e.g. `:texture`, `:source-rect`).
3. **Integration**: Uncommenting the file entry in `MonoGameLispDemo.asd` ensures that `texture-region.lisp` is compiled and included in the output FASL when running `dotnet build`.

#### K. Resolving Diverged Git Branches
The local `main` branch and the remote `origin/main` branch had diverged:
1. **Remote Commit**: `origin/main` had one new commit (`5a6360d` - "Improve formatting") which only modified `clr-interop-ideas.md`.
2. **Local Commit**: The local branch had two commits (`2b6fdf5` and `baa85ba`) which implemented Chapter 6/7 progress and our Lisp type inspection helpers.
3. **Resolution**: Since the remote commit did not modify any files touched by local commits, we ran a `git pull --rebase origin main` to cleanly replay your local changes on top of the remote's formatting improvements, restoring a linear history.

#### L. DotCL defgeneric and defmethod Internals
We researched the DotCL codebase to map the implementation of CLOS generic functions and methods:
1. **Lisp Macros**: In `dotcl/compiler/cil-macros.lisp`, `defgeneric` (line 2498) and `defmethod` (line 2759) macros compile down to internal operations like `%make-gf`, `%find-gf`, `%register-gf`, and `%set-gf-lambda-list-info`.
2. **Compiler Mapping**: In `dotcl/compiler/cil-forms.lisp`, calls like `%make-gf` are compiled to .NET runtime calls such as `Runtime.MakeGF`.
3. **C# Representation**: In `dotcl/runtime/Clos.cs`, standard metaobjects are defined:
   - `LispMethod` (line 369): Stores qualifier, specializer classes, and method function.
   - `GenericFunction` (line 404): Inherits from `LispFunction`. Stores method list, lambda-list metadata, and monomorphic inline cache `LastDispatch`.
4. **Dispatch Logic**: In `dotcl/runtime/Runtime.CLOS.cs`, the dispatch mechanism `DispatchGF` (line 1849) handles arity checks, monomorphic cache lookups, EQL-specialized direct dispatch paths, keyword argument validation, method qualifier sorting, and precedence comparisons via `CompareMethodSpecificity` (line 2743) against the Class Precedence List (CPL).

#### M. C# Class-Aware Generic Function System Analysis
We analyzed `clr-generic-functions.md` and recommended additions for a minimal implementation of a C# class-aware generic function system in DotCL, focusing on:
1. **C# Class Precedence List (CPL) Construction**: Resolving inheritance hierarchies and interface implementations.
2. **Type Alias Resolution**: Supporting user-defined type aliases (like `TEXTURE2D`).
3. **Primitive Type Mapping**: Handling Lisp-native primitives (like `integer`) vs .NET primitives (like `System.Int32`).
4. **Monomorphic Inline Caching**: Ensuring performance parity with standard CLOS dispatch.
5. **MOP vs Custom Macro-based Dispatch**: Assessing the feasibility of extending standard `generic-function` classes vs a pure macro-expand-to-defun approach.

#### N. Implementation of Version 1 of C# Class-Aware Generic Functions
We implemented and tested Version 1 of the C# Generic Function system:
1. **Lisp Macros**: Implemented `defc#generic` and `defc#method` in [clr-generic.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/clr-generic.lisp).
   - `defc#generic` creates a metadata registry record and defines a dispatching function.
   - `defc#method` registers method instances specialized on C# class names, interfaces, or `T`. Type alias resolution is integrated using `dotnet::*type-aliases*`.
2. **Dispatch Logic**:
   - `c#method-applicable-p` uses `IsAssignableFrom` reflection method on C# `System.Type` to dynamically verify if an argument is a subclass or implements the specialized type.
   - `c#method-more-specific-p` performs topological subclass/sub-interface sorting of applicable methods, falling back to alphabetical naming when comparing unrelated interfaces.
3. **Tests**: Implemented a comprehensive test suite in [clr-generic-test.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/clr-generic-test.lisp) covering basic dispatch, interface specificity (ArrayList vs Hashtable), and type alias resolution (using the `"GAME"` alias). All tests are run automatically at startup.
4. **Program.cs Modification**: Commented out the blocking `game.Run()` call to allow startup testing to run seamlessly in the CLI.

#### O. Explanation of defstruct Slot Accessors (c#method-specializer)
We explained how structure readers (like `c#method-specializer`) are automatically generated by the Common Lisp `defstruct` macro:
1. **Defstruct Generation**: Defining `(defstruct c#method specializer ...)` automatically defines the constructor `make-c#method`, the predicate `c#method-p`, and slot readers (such as `c#method-specializer` and `c#method-function`) prefixed with the structure name.

#### P. Merging csharp-defgeneric into main
We successfully merged the `csharp-defgeneric` branch into `main`:
1. **Branch Check**: We determined that `csharp-defgeneric` was a direct descendant of `main` (three commits ahead, branching directly from `3da97c6`).
2. **Execution**: We checked out `main` and performed a fast-forward merge of the `csharp-defgeneric` branch.

#### Q. Safely Reading/Loading Forms in Common Lisp
We explained how to safely read a single form from a file in Common Lisp by:
1. **Disabling Read-time Evaluation**: Binding `*read-eval*` to `nil` to prevent `#.` execution.
2. **Restricting the Readtable**: Binding `*readtable*` to `(copy-readtable nil)` to use the standard ANSI readtable without custom macro characters.
3. **Handling EOF**: Calling `read` with eof parameters (`(read stream nil :eof)`) to prevent signaling an error at the end of the file.

#### R. Debugging MonoGame/DotCL Double-Game Instantiation Segmentation Fault
We resolved a Segmentation Fault (Exit Code 139) that occurred approximately 1.5 seconds after game startup:
1. **The Issue**: In commit `0ba21e8d7`, we added `clr-generic-test.lisp` which instantiated a C# `Microsoft.Xna.Framework.Game` instance during the loading/testing phase. Creating multiple `Game` instances in a single process violates MonoGame singleton assumptions and corrupts global graphics/SDL contexts. When the garbage collector eventually collected the temporary game instance (roughly 1.5 seconds later), its C# finalizer ran and destroyed native resources currently in use by the active game loop, causing a Segfault.
2. **The Fix**: We updated [clr-generic-test.lisp](clr-generic-test.lisp) to test type alias resolution using the `"GAMETIME"` alias (instantiating `Microsoft.Xna.Framework.GameTime`) instead of `"GAME"`. This performs the same type alias resolution test without calling native finalizers that tear down process-wide SDL/OpenGL state.

#### S. Runtime Resolution of ASDF and UIOP in Game Project
We investigated and resolved why `(require "asdf")` failed at runtime with `DotCL.LispErrorException: REQUIRE: module "asdf" not found` and why `uiop` functions were inaccessible:
1. **The Issue:**
   * **Location lookup:** In DotCL's `MODULE-PROVIDE-CONTRIB`, standard module resolution searches a `contrib/` subdirectory relative to the executing process's `AppContext.BaseDirectory`. When running the game, this base directory is `bin/Debug/net10.0/ubuntu.24.04-x64/`. Since the repository did not copy the `contrib/` folder to the build output, this lookup failed.
   * **Dependency Resolution Skip:** ASDF is precompiled as a monolithic module (`asdf.fasl`) without individual component source child elements. Therefore, `asdf:component-children` and `asdf:component-pathname` return `NIL` for it. This causes DotCL's `--resolve-deps` tool to treat it as an empty or built-in system and skip outputting its path to the bundle manifest (`dotcl-deps.txt`), meaning it is never copied to the build output folder by MSBuild.
2. **The Fix:**
   * Updated `MonoGameLispDemo.csproj` to copy the entire `contrib/` folder from the sibling `dotcl` repository to the build output directory `contrib/` folder using `<CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>`.
   * Uncommented `(require "asdf")` in `texture-region.lisp` to enable UIOP function lookup. This successfully loads ASDF and UIOP at runtime, resolving functions like `uiop:string-suffix-p`.

#### T. Compile-Time Verbosity and Package Loading Resolution
We configured compile-time verbosity for the `dotcl` compiler and resolved a compile-time failure with `Package "ANAPHORA" not found` when loading user systems:
1. **Compile-Time Verbosity:** The `--compile-project` command executes compilation in a fresh process where standard output settings (`*compile-verbose*` etc.) default to `NIL`. To view full load and compilation details without modifying the compiler itself, we added a top-level `eval-when` form in [settings.lisp](settings.lisp):
   ```lisp
   (eval-when (:compile-toplevel :load-toplevel :execute)
     (setf *compile-verbose* t
           *compile-print* t
           *load-verbose* t
           *load-print* t))
   ```
   This form is evaluated at the start of the compiler's read phase, turning on verbosity and printing for the entire project compilation process.
2. **Package Loading Resolution:** When `load-system-test.lisp` calls `(asdf:load-system "anaphora")` as a normal top-level function call, it is compiled but not evaluated at compile-time. Consequently, when the compiler subsequently reads the symbol `anaphora:awhen`, the `ANAPHORA` package does not yet exist, crashing the build.
   We resolved this by wrapping the system loads in an `eval-when` form in [load-system-test.lisp](load-system-test.lisp):
   ```lisp
   (eval-when (:compile-toplevel :load-toplevel :execute)
     (require "asdf")
     (asdf:load-system "anaphora"))
   ```
   This forces the package to load at compile-time so symbols from `ANAPHORA` can be successfully read and compiled.

#### U. Removing Generic Functions and Methods in DotCL
To completely remove a generic function and all of its associated methods from the Lisp environment, we must address two layers: standard Common Lisp and DotCL's internal runtime registry.

1. **Standard Common Lisp (`fmakunbound`):**
   The standard function `fmakunbound` clears the function cell of a symbol, effectively unbinding any function, macro, or generic function associated with it:
   ```lisp
   (fmakunbound 'yyyy)
   ```
   If the generic function is defined as a `(setf ...)` writer (e.g. `(setf yyyy)`), you must unbind the setf function cell as well:
   ```lisp
   (fmakunbound '(setf yyyy))
   ```

2. **DotCL Runtime Registry (`RemoveGfRegistryEntry`):**
   In DotCL, all generic functions are registered inside an internal C# dictionary `_gfRegistry` located in the `DotCL.Runtime` class. Because `fmakunbound` only clears the symbol's function cell, the generic function object remains inside this registry (meaning `%find-gf` will still return it).
   To cleanly remove it from the runtime registry, you can invoke the public C# method `RemoveGfRegistryEntry` via the DotCL interop:
   - For a standard generic function:
     ```lisp
     (dotnet:static "DotCL.Runtime" "RemoveGfRegistryEntry" 'yyyy)
     ```
   - For a `(setf ...)` generic function (passing `t` to the optional `isSetf` parameter):
     ```lisp
     (dotnet:static "DotCL.Runtime" "RemoveGfRegistryEntry" 'yyyy t)
     ```

3. **Dynamic / Compile-Time Cleanup:**
   If you want to define a temporary generic function in a source file and undefine it once compilation or loading finishes so that it doesn't pollute the environment:
   ```lisp
   (eval-when (:compile-toplevel :load-toplevel :execute)
     (fmakunbound 'yyyy)
     (dotnet:static "DotCL.Runtime" "RemoveGfRegistryEntry" 'yyyy))
   ```

#### V. Appending Directory Paths and Filenames in Common Lisp and UIOP
When combining a directory path (which does not end with a directory separator) with a filename to produce a string path in Common Lisp:

1. **Recommended UIOP Approach (`uiop:subpathname*`):**
   Using `uiop:subpathname*` is the most robust and portable method in modern Common Lisp codebases. It automatically converts the base directory string into a directory pathname (adding the appropriate trailing slash) and merges it with the filename. You can wrap it in `uiop:native-namestring` or `namestring` to obtain a string path:
   ```lisp
   (uiop:native-namestring (uiop:subpathname* +content-default+ "atlas-definition.lisp"))
   ```

2. **Standard ANSI Common Lisp Approach (`merge-pathnames`):**
   In standard Common Lisp, pathnames are manipulated using directory components rather than raw string operations. To treat `+content-default+` as a directory pathname, we can append a slash to force the host OS pathname parser to recognize it as a directory, and then merge:
   ```lisp
   (namestring
     (merge-pathnames "atlas-definition.lisp"
                      (pathname (concatenate 'string +content-default+ "/"))))
   ```

#### W. Black-Scholes Formula Mathematical Formatting
To demonstrate math formatting capabilities, we documented the mathematical formulation of the Black-Scholes model for pricing European call/put options in both LaTeX and plain-text/Unicode notation.

##### LaTeX Formulation
The pricing formula for a European call option $C(S, t)$ is:
$$C(S_t, t) = N(d_1) S_t - N(d_2) K e^{-r(T-t)}$$

And for a European put option $P(S, t)$:
$$P(S_t, t) = N(-d_2) K e^{-r(T-t)} - N(-d_1) S_t$$

Where $d_1$ and $d_2$ are defined as:
$$d_1 = \frac{\ln(S_t/K) + (r + \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}$$
$$d_2 = d_1 - \sigma \sqrt{T-t}$$

##### Plain-Text/Unicode Formulation
For viewers without a LaTeX renderer, the formulas are formatted as follows:

* **Call Option Price:**
  C(S_t, t) = N(d1) * S_t - N(d2) * K * e^(-r * (T - t))

* **Put Option Price:**
  P(S_t, t) = N(-d2) * K * e^(-r * (T - t)) - N(-d1) * S_t

* **Where:**
  d1 = [ ln(S_t / K) + (r + (volatility^2 / 2)) * (T - t) ] / [ volatility * sqrt(T - t) ]
  d2 = d1 - volatility * sqrt(T - t)

* **Variables:**
  - S_t: Current price of the underlying asset
  - K: Strike price
  - T - t: Time to maturity (in years)
  - r: Risk-free interest rate
  - volatility (sigma): Volatility of the underlying asset
  - N(x): Cumulative distribution function of the standard normal distribution

#### X. Stack Traces and Exception Handling in DotCL
We documented how DotCL handles error representation, stack trace generation, error re-throwing, and mapping between Lisp conditions and C#/.NET exceptions.

1. **Lisp Errors vs. C# Exceptions:**
   - **Lisp Errors:** Signaled via `(error ...)`. Unhandled Lisp errors invoke the debugger (`INVOKE-DEBUGGER`) and are thrown at the C# CLR level as a `DotCL.LispErrorException` which wraps the Lisp condition object.
   - **C# Exceptions:** Standard .NET exceptions (like `System.NullReferenceException`) thrown from C# are caught by the compiled catch block, wrapped inside a `LispProgramError` condition with the exception's message, and signaled.

2. **Printing Stack Traces via .NET Interop:**
   Since DotCL runs on top of the .NET CLR, you can call standard .NET diagnostics methods inside Lisp handlers to get stack traces.
   - **Inside `handler-bind` (Highly Recommended):**
     Because `handler-bind` executes handler clauses *before* unwinding the stack, you get the exact call stack at the moment the error was signaled. You can fetch it using `System.Environment`:
     ```lisp
     (dotnet:static "System.Environment" "get_StackTrace")
     ```
     Or using `System.Diagnostics.StackTrace` to get structured frame objects:
     ```lisp
     (let ((trace (dotnet:new "System.Diagnostics.StackTrace" t)))
       (dotnet:invoke trace "ToString"))
     ```
   - **Enabling Unhandled Exception Stack Traces:**
     You can set the special variable `dotcl:*debug-stacktrace*` to `t` to instruct the DotCL runtime to automatically print full C# exception stack traces to standard error for all unhandled exceptions:
     ```lisp
     (setf dotcl:*debug-stacktrace* t)
     ```

3. **Re-throwing Errors:**
   - **In `handler-bind`:** You do not need to manually re-throw the error. Returning normally from a `handler-bind` handler tells the signaling system to continue searching for other handlers or invoke the debugger.
   - **In `handler-case`:** If you want to catch an error, perform logic, and then re-throw it, call `(error c)` on the caught condition:
     ```lisp
     (handler-case (some-operation)
       (error (c)
         ;; Do some logging/cleanup
         (error c))) ; Re-throws the condition
     ```

#### Y. ABCL Java Class Integration in CLOS
We analyzed the architecture of Armed Bear Common Lisp (ABCL)'s Java class and interface integration into the CLOS type and method dispatch systems.

1. **Object and Class Representation:**
   - **`JavaObject`:** Instantiated Java objects are wrapped by `org.armedbear.lisp.JavaObject`, which inherits from `LispObject`. Its `classOf()` method dynamically calls `ensure-java-class` on the object's `getClass()`.
   - **`java-class`:** Represents Java class and interface metaobjects. It inherits from `standard-class` and stores the raw JVM `Class<?>` reference.
   - **Type Mapping:** `ensure-java-class` uses MOP's `ensure-class` to create a `java-class` metaobject whose direct superclasses mirror the Java inheritance hierarchy (superclasses + implemented interfaces), all rooting in the built-in Lisp class `java-object`. A registry map (`javaClassMap`) preserves type identity.

2. **Method Dispatch & Class Precedence List (CPL) Sorting:**
   - `compute-class-precedence-list` is specialized for `java-class` and implements a custom scoring mechanism to resolve Java's multiple interface implementation conflicts:
     1. Concrete Java Classes (excluding `Object`).
     2. Java Interfaces.
     3. `java.lang.Object`.
     4. Base Lisp types/classes (e.g. `java-object`, `standard-object`, `t`).
   - This ensures concrete class specializers override interface specializers, which in turn override `java.lang.Object` and generic CLOS classes.

3. **Extensible Sequences Integration:**
   - The `java-collections` module intercepts the creation of the CLOS class for `java.util.List` to inject `sequence` into its direct superclasses list.
   - Once integrated, standard extensible sequence methods (like `sequence:length` and `sequence:elt`) are defined to wrap standard Java collection method calls (like `size()`, `get()`, `set()`).

We compiled a comprehensive architectural and design document in [doc/abcl-java-interop.md](doc/abcl-java-interop.md) outlining these components and detailing actionable recommendations for bringing a similar C#/.NET interop to DotCL.

#### Z. C#/.NET Reified Generics vs. Java Generics in CLOS
We analyzed how the reified generics of the .NET CLR impact CLOS integration in DotCL compared to the type-erased generics of the JVM in ABCL:

1. **Reified Types:** Because C# types are reified, `List<string>` and `List<int>` are distinct `System.Type` objects at runtime. DotCL must dynamically create distinct CLOS classes (`c#class`) for each unique closed generic type.
2. **Open Generics & Wildcard Specializers:** Lisp methods often need to specialize on any instance of a generic class (e.g., `List<T>`). We proposed dynamically mapping open generic types (like `List<>`) to CLOS classes and setting them as direct superclasses for all corresponding closed generic types (like `List<string>`), placing them in the Class Precedence List (CPL) for seamless method matching.
3. **Variance (Covariance & Contravariance):** C# generic variance (like `IEnumerable<out T>`) can be mapped directly into CLOS by adding covariant base typings (e.g. `IEnumerable<object>`) as direct superclasses of derived typings (e.g. `IEnumerable<string>`), aligning CLR assignability with standard CLOS method applicability.
4. **Value-Type Instantiations:** Generic value-type layouts (like `List<int>`) require explicit boxing/unboxing and marshalling by the DotCL FFI to interact cleanly with Lisp types.

#### AA. DotCL DOTNET Package Documentation
We documented all 30 standard symbols and the 2 extra WinForms symbols within the `DOTNET` package inside [doc/package-dotnet.md](doc/package-dotnet.md):
1. **Scope:** Covered class definitions (`%DEFINE-CLASS`), native dynamic FFI (`%FFI-CALL`, `FFI`, `%FFI-CALL-PTR`), object instantiations (`NEW`), member read/write operations (`INVOKE`, `%SET-INVOKE`, `STATIC`, `%SET-STATIC`, `CALL-OUT`, `STATIC-GENERIC`, `BOX`), base method calls (`CALL-BASE`), events (`ADD-EVENT`, `REMOVE-EVENT`), native DLLs (`LOAD-LIBRARY`, `FREE-LIBRARY`, `FIND-SYMBOL`, `FIND-SYMBOL-ANY`, `LIBRARY-PATH`), memory operations (`ALLOC-MEM`, `FREE-MEM`, `MEM-READ`, `MEM-WRITE`, `TYPE-SIZE`, `TYPE-ALIGN`), stream wrapping (`TO-STREAM`), NuGet integration (`REQUIRE`), and UI thread management (`UI-INVOKE`, `UI-POST`).
2. **Format:** For each symbol, we provided:
   * Explicit type classification (all are Functions).
   * Detailed Lisp syntax signature.
   * Comprehensive parameter descriptions and returns.
   * In-depth explanation of internal C# mechanisms and dynamic IL emitting implementations.
   * Clear and working Common Lisp usage code examples.

#### AB. DotCL DOTCL Package Documentation
We documented all 50 symbols (including special variables, macros, and functions) within the `DOTCL` package inside [doc/package-dotcl.md](doc/package-dotcl.md):
1. **Scope:** Covered special variables (`*DEBUG-STACKTRACE*`, `*HOST-FEATURES*`, `*PACKAGE-LOCKS-DISABLED*`, `*SAVE-SIL*`), macro (`WITHOUT-PACKAGE-LOCKS`), and core functions covering OS processes (`RUN-PROCESS`, `%RUN-PROCESS`), environment lookup (`GETCWD`, `GETENV`), diagnostics (`%CTYPE-STATS`, `ALLOC-REPORT`, `ALLOC-RESET`, `GC-STATS`), package locking (`LOCK-PACKAGE`, `UNLOCK-PACKAGE`, `PACKAGE-LOCKED-P`), package local nicknames (`ADD-PACKAGE-LOCAL-NICKNAME`, `REMOVE-PACKAGE-LOCAL-NICKNAME`, `PACKAGE-LOCAL-NICKNAMES`), threading and locks (`MAKE-THREAD`, `CURRENT-THREAD`, `THREADP`, `THREAD-NAME`, `THREAD-ALIVE-P`, `THREAD-JOIN`, `THREAD-YIELD`, `DESTROY-THREAD`, `ALL-THREADS`, `MAKE-LOCK`, `ACQUIRE-LOCK`, `RELEASE-LOCK`, `LOCKP`, `MAKE-RECURSIVE-LOCK`, `RECURSIVE-LOCK-P`), synchronization (`MAKE-CONDITION-VARIABLE`, `CONDITION-VARIABLE-P`, `CONDITION-WAIT`, `CONDITION-NOTIFY`, `CONDITION-BROADCAST`, `MAKE-SEMAPHORE`, `SIGNAL-SEMAPHORE`, `WAIT-ON-SEMAPHORE`), compilation/images (`SIL-TO-FASL`, `SAVE-APPLICATION`), process control (`QUIT`), garbage collection (`GC`), and internals (`%SET-REPL-READLINE-HOOK`, `FUNCTION-SIL`, `DOTCL-HOMEDIR-PATHNAME`).
2. **Format:** For each symbol, we provided type classification, syntax signatures, detailed parameters/value summaries, explanation of their dynamic backing in C#, and Common Lisp code usage examples.

#### AC. DotCL DOTCL-MOP Package Documentation
We documented all 90 symbols (including metaobject classes, functions, and generic functions) within the `DOTCL-MOP` package inside [doc/package-dotcl-mop.md](doc/package-dotcl-mop.md):
1. **Scope:** Covered 15 metaobject classes/specializers (e.g. `DIRECT-SLOT-DEFINITION`, `EQL-SPECIALIZER`, `SPECIALIZER`, etc.) and 75 protocol and utility functions (covering default initargs, slot readers, Class Precedence List sorting, generic function/method attributes, and AMOP stubs).
2. **Format:** For each symbol, we provided type classification, Lisp syntax, detailed behavior/parameter mappings, description of the backing reflection/array structures in C# (e.g., `LispClass` fields in [Mop.cs](file:///home/dfields/src/cl/dotcl/runtime/Mop.cs)), and Common Lisp code examples.

#### AD. DotCL DOTCL-INTERNAL Package Documentation
We documented all 154 internal and system symbols within the `DOTCL-INTERNAL` package inside [doc/package-dotcl-internal.md](doc/package-dotcl-internal.md):
1. **Scope:** Categorized symbols into 9 logical sections: (1) Low-level threading & synchronization primitives, (2) CLOS & MOP internal protocol functions, (3) Compiler state and environment special variables, (4) Internal package lock & nickname functions, (5) Array & structure internals, (6) Load-Time-Value (LTV) caching, (7) Pretty printer & circularity handling, (8) Loop macro context & AST structure, and (9) Miscellaneous internal functions and variables.
2. **Format:** For each symbol, we provided its explicit type classification (variables, functions, macros, structures, setters), syntax signature, a detailed description, dynamic backing details in C#, and usage examples.

#### AE. Makefile and Texture Atlas Test Bug Fix
1. **Makefile Creation:** Created a `Makefile` with targets:
   - `build`: Builds the project using `dotnet build`.
   - `test`: Builds and runs the game in `--test` mode (no GUI).
   - `run`: Builds and runs the game normally.
   - `clean`: Cleans MSBuild build artifacts.
2. **Texture Atlas Test Assertion Fix:** Fixed an assertion failure in `texture-atlas.lisp` where `equal` was used to compare `delay-ms` (which is a double-float, `234.0d0`) with the integer `234`. In Common Lisp, `equal` checks for structural equivalence but is type-sensitive for numbers. Changing it to `=` correctly performs numeric-only comparison across types, allowing the test suite to pass cleanly.

#### AF. Unbound Variable animation Bug Fix
1. **The Issue:** When launching the game in non-test (GUI) mode, an unbound variable error was triggered for `animation` during the update loop.
2. **The Cause:** In [animation.lisp:L77](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/animation.lisp#L77), the code called `(when (null animation) ...)`. Because `animation` was not bound as a local variable, Lisp treated it as a dynamic/global variable lookup (which failed), rather than calling the slot accessor `(animation as)`.
3. **The Fix:** Changed the code to call `(animation as)` to retrieve the slot value correctly.

#### AG. ssh-agent Reuse in .bashrc
We updated `~/.bashrc` to reuse a single running instance of `ssh-agent` across all terminals:
1. **Sourcing Session:** Sources `~/.ssh/agent.env` to inherit `SSH_AUTH_SOCK` and `SSH_AGENT_PID`.
2. **Status Check:** Uses `ssh-add -l` to check the agent's actual connection status.
3. **Conditional Load:** If the agent is unreachable (status 2), it spawns a new agent and runs `ssh-add`. If it's running but empty (status 1), it runs `ssh-add` to prompt for the key. If it's healthy with keys (status 0), it does nothing, silently reusing the session.

#### AH. AMD ISP4 Webcam Driver Compatibility
For the HP ZBook Ultra G1a (Ryzen AI Max 300 series) running XanMod kernel 7.0.x:
1. **Out-of-Tree compilation:** The `amdisp4` driver is not fully upstreamed. We set up `/tmp/install_amdisp4.sh` to download, apply hardware patches, and register the driver as a DKMS module (`amd_isp4_capture`).
2. **Kernel 7.0 Compatibility:** Patched `isp4_video.c` to delete references to `vb2_ops_wait_prepare` and `vb2_ops_wait_finish` which were removed in Video4Linux2.
3. **Clang Compilation in DKMS:** Configured `dkms.conf` with `MAKE[0]="make -C '${kernel_source_dir}' ... LLVM=1 modules"` to force DKMS to compile using Clang to prevent GCC compiler mismatch errors on XanMod.

#### AI. Excluding Ubuntu OEM Kernels from amdisp4 DKMS Builds
To prevent DKMS from compiling the out-of-tree `amdisp4` driver on official Ubuntu OEM kernels (which already have the AMD ISP4 driver built-in):
1. **Pattern:** Added `BUILD_EXCLUSIVE_KERNEL="([^m]|[^e]m|[^o]em|[^-]oem)$"` to `/usr/src/amdisp4-8/dkms.conf`.
2. **Regular Expression Logic:** Matches all kernel version strings *except* those ending in `-oem`. This allows successful auto-builds on standard/XanMod kernels (like `7.0.10-x64v3-xanmod1`) but automatically skips the build on OEM kernels (like `6.17.0-1024-oem`) without breaking package upgrades.

#### AJ. Assembly-to-Lispy Phase 1 Implementation
We implemented and tested Phase 1 of the Assembly-to-Lispy metadata generator:
1. **Metadata Generator (`AssemblyToLispy.cs`):** Creates exactly one new C# class that targets .NET assemblies. It loads public types, filters out generic parameters, and extracts names, fully-qualified names, namespaces, and public method names (including overloads and accessors).
2. **Lisp S-expression Format:** Formats output data as a Common Lisp property list (plist) for each type, with string escaping (escaping double quotes and backslashes) and formatted lists of methods. Writes the entire set as a single Lisp list.
3. **Assembly Dependency Resolving:** Registers a handler for the `AppDomain.CurrentDomain.AssemblyResolve` event that dynamically checks the input directory for missing dependencies (essential for resolving type-forwarded references from facade dlls like `System.Runtime.dll`).
4. **Test Suite:** Added `AssemblyToLispyTest.RunTests()` which extracts metadata from the reference assembly `System.Runtime.dll` and verifies that standard classes like `System.Collections.ArrayList` and their methods (like `Add` and `Clear`) are correctly extracted and structured in the generated file. Hooked this test to run during `make test` via the `--test` CLI flag.

#### AK. Understanding C# Generic Type Arity Suffixes (Backtick Notation)
We documented the meaning and interpretation of the backtick character (`) and trailing number in C# / .NET class names when outputting metadata:
1. **Generic Arity Notation**: The backtick (`) is a .NET Common Language Runtime (CLR) metadata naming convention. The number following the backtick represents the "arity" of the type, which is the number of generic type parameters it accepts.
2. **Examples**:
   - `System.Action`4` represents the generic delegate `System.Action<T1, T2, T3, T4>`, which has 4 generic parameters.
   - `System.Tuple`3` represents the generic class `System.Tuple<T1, T2, T3>`, which has 3 generic parameters.
3. **Reason for Existence**:
   - **Overloading on Generic Parameters**: In .NET, a namespace can contain multiple classes with the same name, as long as they have different numbers of generic parameters (e.g. `Tuple<T1>`, `Tuple<T1, T2>`). CIL metadata uses the backtick suffix (e.g. `Tuple`1`, `Tuple`2`) to uniquely distinguish these types.
   - **Compiler Sugar vs. Runtime Names**: While high-level languages like C# hide the suffix, it is the actual internal name of the class in compiled MSIL metadata. When performing reflection via `type.Name` or `type.FullName`, the CLR returns the name containing the backtick.

#### AL. Assembly-to-Lispy Phase 2 Design and Implementation Plan
We reviewed the `doc/assembly-to-lispy.md` file and expanded Phase 2 to outline a concrete design and implementation plan. To make the work modular, we split Phase 2 into five sequential sub-phases:
1. **Phase 2A (General Metadata)**: Extracts type classification (kind of type), inheritance (superclass and interface lists), and type-boolean flags. Includes a `CamelCaseToKebabCase` keyword utility.
2. **Phase 2B (Fields and Properties)**: Serializes properties (with read/write capabilities) and fields (with literal/read-only metadata).
3. **Phase 2C (Methods and Constructors)**: Serializes detailed constructors and methods (including parameter names, types, and defaults, return types, and static/operator properties).
4. **Phase 2D (Documentation Information)**: Incorporates assembly XML documentation mapped to types, methods, fields, and properties (comparing direct `XDocument` parsing against Roslyn's `XmlDocumentationProvider`).
5. **Phase 2E (Advanced Features)**: Integrates advanced generic constraints and custom attribute extraction.

#### AM. Assembly-to-Lispy Phase 2A Implementation
We implemented and tested Phase 2A of the metadata generator:
1. **General Metadata Extraction**: Extended the generator inside [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs) to extract:
   - `:kind` (:class, :struct, :interface, :enum, :delegate).
   - `:superclass` (fully qualified name of the parent type, or `nil`).
   - `:interfaces` (sorted list of all implemented interface names).
2. **Kebab-Case Utility**: Implemented `CamelCaseToKebabCase` to translate PascalCase/camelCase checks to Lisp-style hyphenated keywords.
3. **Type Flags**: Added boolean flags (`IsAbstract`, `IsSealed`, `IsImport`, `IsSerializable`, `IsGenericType`, `IsGenericTypeDefinition`, `IsNested`) converted dynamically to kebab-case keywords.
4. **Obsolete Warnings Suppression**: Disallowed compiler warnings for `'Type.IsSerializable'` being obsolete by wrapping it in `#pragma warning disable/restore SYSLIB0050` blocks.
5. **Testing**: Expanded `AssemblyToLispyTest` to verify that `System.Collections.ArrayList` is correctly classified as `:kind :class` with `:superclass "System.Object"`, interfaces including `"System.Collections.IList"`, and `:serializable` in its flags.

#### AN. Detailed Comment on Warning Suppression Pragma
The file `AssemblyToLispy.cs` was updated to add a detailed inline comment explaining why the warning suppression pragma was used:
1. **Context/Reasoning**: Explains that `Type.IsSerializable` is deprecated in .NET 8.0+ due to the legacy formatter deprecation, which throws warning `SYSLIB0050`.
2. **Relevance**: Highlights that this metadata is still critical for Common Lisp packaging/marshaling support.
3. **Safety**: Explains the scope of the `#pragma` block (disables warnings specifically for the access statement, then immediately restores it so no other warnings are missed).

#### AO. Completed Details of Output Format Documentation
The file [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md) was updated to fully document the Lisp S-expression plist structure generated by the metadata parser.
1. **Key Specifications**: Documented all plist keys (`:name`, `:fully-qualified-name`, `:namespace`, `:kind`, `:superclass`, `:interfaces`, `:flags`, `:methods`) with their respective Lisp types (String, Keyword, List) and semantic meanings.
2. **Maintenance Constraint**: Added a directive requiring future developers to keep the output format documentation synchronized with code modifications.

#### AP. Resolved SExpressions.cs Build Error
An untracked Rosetta Code reference file `SExpressions.cs` was failing compilation due to a reference to a non-existent interface `ISExpression`.
1. **Resolution**: Removed the `ISExpression` interface inheritance declaration in `SExpressions.cs` since the interface was not defined.
2. **Result**: The project now builds successfully with zero compiler warnings/errors and passes all tests.

#### AQ. Assembly-to-Lispy Phase 2B Implementation
The metadata parser inside [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was updated to support properties and fields extraction (Phase 2B):
1. **Properties Extraction**: Extracts property name, type, static flag,
   readable/writable capability, and visible get/set method names. Accessors are
   filtered to only expose public or protected accessors.
2. **Fields Extraction**: Extracts field name, type, static flag, literal flag
   (for constants), init-only flag (for readonly fields), and public visibility.
3. **Dynamic Plist Formatting**: Plists are generated dynamically so that any
   field or property with a nil/empty value is omitted from the output
   representation (respecting the constraint that keys with nil values are
   omitted).
4. **Tests Expanded**: Verified that properties (like `Capacity` and `Count`)
   are correctly serialized for `System.Collections.ArrayList` and fields (like
   `Empty`) are correctly serialized for `System.EventArgs`.
5. **Documentation**: Documented the property and field plist structures and added
   detailed explanations for compiler-generated filtering logic under Phase 2B in
   [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md).

#### AR. Assembly-to-Lispy Phase 2C Implementation
The metadata parser inside [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was updated to support constructors and methods extraction (Phase 2C):
1. **Constructors Extraction**: Retrieves all public/protected constructors and
   formats them under a `:constructors` list, including their parameters.
2. **Methods Extraction**: Retrieves all public/protected methods, grouping
   (sorting) them consecutively by clean name, then parameter count. Property
   getters/setters and event accessors are filtered out to avoid duplication.
3. **Operator Overloads**: Clean method names for C# operator overloads are
   mapped to Lisp operator symbols (e.g. `+` for `op_Addition`), while keeping the
   CIL name under `:mangled-name`.
4. **Parameters and Default Values**: Extracts parameter names, types, and
   optional default values (which are formatted into appropriate Lisp syntax).
5. **Tests Expanded**: Added assertions to verify `ArrayList` constructors and
   methods (`Add` and `Clear`) and operator overloads in `System.Decimal` (e.g.
   the addition operator).
6. **Documentation**: Documented Phase 2C details and implementation choices in
   [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md).

#### AS. Assembly-to-Lispy Phase 2C Lisp Default Value Serialization
The parameter default value serialization inside
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was refined to output valid Common Lisp literals across all supported types:
1. **Nulls and Booleans**: Serialized as the Lisp symbols `nil` or `t`.
2. **Integers**: Formatted as raw numbers without additional type suffixes.
3. **Floats and Doubles**: Formatted with the single-float exponent indicator `f` (e.g., `1.5f0`)
   and double-float exponent indicator `d` (e.g., `1.5d0`) by leveraging DotCL's internal
   `SingleFloat` and `DoubleFloat` printer representation.
4. **Decimals**: Formatted as integers for integral values, and reduced ratios (e.g., `5/4`)
   using Greatest Common Divisor (GCD) math for fractional values.
5. **Characters**: Serialized using DotCL's `LispChar` native representation (e.g.,
   `#\LATIN CAPITAL LETTER A`).
6. **Enums and Structs**: Wrapped in escaped Lisp strings to guarantee parsing safety.
7. **Documentation & Testing**: The documentation inside
   [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md)
   and [README.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/README.md) was
   updated. The test suite inside
   [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
    was extended with direct unit testing assertions for all these default value formatting
    cases.

#### AT. Assembly-to-Lispy UTF-8 BOM Prevention
The metadata parser file writing code inside
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was updated to use a UTF-8 encoding that does not emit a Byte Order Mark (BOM).
1. **Encoding Modification**: Replaced `Encoding.UTF8` with `new UTF8Encoding(false)` in
   `File.WriteAllText` to prevent the leading 3 bytes of BOM (`EF BB BF`) from being written to
   the output metadata file. This ensures compatibility with Common Lisp readers.
2. **Testing**: Added a verification step in `AssemblyToLispyTest` that reads the raw bytes
   of the generated output file and asserts that they do not start with the 3-byte UTF-8 BOM prefix.

#### AU. Assembly-to-Lispy Generic Type Formatting Refinements
The metadata parser inside
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was refined to support simplified generic type names and preserve full assembly-qualified
details as sibling properties:
1. **Option 2 Generic Type Names**: Implemented a recursive helper `GetFriendlyTypeName`
   that formats closed generic types using simplified backtick syntax (e.g.
   ``Name`Arity[Args...]``), omitting verbose assembly version and token information.
2. **Programmatic Detection of Assembly Qualifications**: Added a recursive helper
   `IsAssemblyQualified` that programmatically determines if a type's `FullName` is
   assembly-qualified by checking if the type, its elements, or any of its generic
   parameters contains a closed generic type.
3. **Assembly-Qualified Sibling Fields**: Added sibling properties
   `:assembly-qualified-type` (for properties, fields, and parameters) and
   `:assembly-qualified-return-type` (for methods) containing the original full
   assembly-qualified name when a type is assembly-qualified.
4. **Documentation and Testing**: Documented these additions in the property and field
   plist schemas and Phase 2C implementation choices of
   [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md).
   Expanded `AssemblyToLispyTest` to assert the correct backtick formatting and presence
   of sibling fields using `ReadOnlyCollection<Exception>`.

#### AV. Assembly-to-Lispy Constructor Visibility Refinements
The metadata parser constructor formatting inside
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was refined to serialize explicit visibility tags and avoid empty plist representations:
1. **Visibility Tags**: Updated `FormatConstructorPlist` to write `:public t` for public,
   `:protected t` for protected (`IsFamily`), and `:protected-internal t` for
   protected-internal (`IsFamilyOrAssembly`) constructors. This ensures that every
   constructor plist contains at least one key-value pair and never yields an
   empty `"()"` plist.
2. **Testing**: Expanded `AssemblyToLispyTest` to assert that abstract classes with
   protected parameterless constructors (such as `System.Attribute`) output
   `(:protected t)` under `:constructors` instead of `()`.
3. **Documentation**: Updated the output format documentation and schema specifications
   for constructors, methods, and parameters in
   [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md).

#### AW. Assembly-to-Lispy XML Documentation Integration (Phase 2D)
The metadata parser inside
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was updated to implement Phase 2D (XML documentation integration):
1. **XML Documentation Loading**: Direct XML parsing (Option A) was implemented. The XML path is
   computed by changing the target assembly `.dll` extension to `.xml`. It is loaded via
   `XDocument.Load()` and mapped into a dictionary by member name.
2. **Signature Mapping**: Reflection metadata `MemberInfo` instances are mapped to XML doc
   member keys (e.g., `T:` for types, `F:` for fields, `P:` for properties, and `M:` for
   constructors and methods). Parameter types are resolved recursively, mapping array rank
   brackets, by-ref `@`, pointer `*`, method/class generic parameters, and closed generic
   types using curly braces `{}`.
3. **Text Cleaning**: Inline tags like `<see cref="..."/>` and `<paramref name="..."/>` are
   replaced with their plain text labels. Extra whitespace and newlines are collapsed.
4. **Plist Structure**: A `:documentation` plist is constructed containing `:summary`, `:returns`,
   and `:parameters` plists mapping parameter names and descriptions.
5. **Backwards Compatibility**: The `:documentation` key is appended at the very end of member
   plists (properties, fields, constructors, methods) to preserve exact prefix substring
   matching in the test suite.
6. **Testing**: Modified `AssemblyToLispyTest` assertions to tolerate documentation keys in the
   plist by verifying prefix substrings. Expanded tests verify XML documentation on types and
   constructors.
7. **Documentation**: Updated output format schema details and added documentation structure
    [assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md).

#### AX. Assembly-to-Lispy Documentation Comment Restorations
The metadata parser source file
[AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
was updated to include detailed C# triple-slash comments:
1. **Descriptive Comments**: Added triple-slash XML summary documentation to all plist
   formatting helper methods (`FormatPropertyPlist`, `FormatFieldPlist`,
   `FormatConstructorPlist`, and `FormatMethodPlist`).
2. **Assertion Documentation**: Added triple-slash documentation to the test assertion helper
   `AssertDefaultValue` in the test suite class.

#### AY. Assembly-to-Lispy CLI Arguments (--assembly and --output)
The CLI startup logic inside
[Program.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/Program.cs)
was updated to handle two new command line arguments:
1. **Assembly Target Parsing**: Added support for `--assembly <filename>` to specify a C# assembly
   file. The input directory is calculated dynamically by parsing the absolute file path, and the
   assembly name is extracted automatically.
2. **Output Target Parsing**: Added support for `--output <filename>`. If the value is `-` or the
   parameter is omitted entirely, standard output (stdout) is selected.
3. **Log Redirection**: Introduced a `RedirectLogsToError` property in
   [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
   that routes all diagnostic messages to standard error (stderr) when standard output is used
   for the metadata payload.
4. **Execution Mode**: When `--assembly` is specified, both the game startup and the test suite
   are bypassed, executing only the metadata generation pipeline.
5. **Documentation**: Documented the command line arguments and behavior under
   [README.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/README.md).

## AZ. Phase 2E Implementation

1. **Parameter Modifiers**: Implemented detection for `out`, `ref`, `scoped`, and `params` modifiers on parameters in `AssemblyToLispy.cs`.
2. **in / ref readonly**: Implemented unified logic that identically tags both `in` and `ref readonly` parameters with `:ref-readonly t`.
3. **Extension Methods**: Implemented detection for extension methods (`:extension-method t`) and explicitly tagged their first parameter as the `this` argument (`:extension-this t`).
4. **Documentation**: Updated `doc/assembly-to-lispy.md` outlining the newly supported output keywords and their mapping behaviors.

## BA. Phase 3A Implementation

1. **Utility Package**: Extracted `safe-read-form-from-file`, `+base-directory+`, `path-combine`, `file-exists-and-readable-p`, and `qualify-path` from `texture-atlas.lisp` into a new `utils.lisp` file. Defined a new `utils` package in `packages.lisp` and updated the `MonoGameLispDemo.asd` manifest. Removed `anaphora` usage from `file-exists-and-readable-p` to fix compilation order errors.
2. **Native Lisp Testing Script**: Created `assembly-to-lispy-tests.lisp` that uses a simple DSL (`deftest`, `assert-equal`, etc.) to run programmatic tests in Lisp natively. 
3. **DotCL Test Runner Execution**: Refactored `RunTests` in `AssemblyToLispy.cs` to eliminate fragile string assertions. The test runner now invokes DotCL to load and execute `assembly-to-lispy-tests.lisp` on the generated metadata, bubbling up the test success back into C#.

## BB. Phase 3B Implementation

1. **Synthetic Test Assembly Target**: Created a new C# library project `AssemblyToLispyTestTarget` containing an `EdgeCases.cs` file with meticulously crafted classes, structs, enums, interfaces, and methods that exercise all implemented reflection and documentation edge cases.
2. **Metadata Generator Updates**: Added `:enum-underlying-type` extraction logic in `AssemblyToLispy.cs` to properly output the underlying data type of enums (e.g. `System.Byte`). 
3. **C# Test Runner Expansion**: Refactored `AssemblyToLispyTest.RunTests()` into a parameterized function that sequentially compiles metadata for both `System.Runtime.dll` and the new synthetic `AssemblyToLispyTestTarget.dll` and passes both paths down to the Lisp test script.
4. **Lisp Test Expansions**: Modified the Lisp test script `run-all-assembly-tests` to accept a secondary `assembly-name` argument for test suite dispatching. Implemented a new `test-synthetic-target` validation function to parse and assert the exact structural output generated by the synthetic edge case assembly. Fixed bugs related to default literal parsing since `safe-read-form-from-file` actually evaluates literals into their true CL types natively.

## BC. Phase 3C Implementation

1.  **Lisp Validation Engine**: Added a complete suite of recursive validator functions (`plist-p`,
    `key-present-p`, `validate-plist-keys`, `validate-documentation-schema`,
    `validate-parameter-schema`, `validate-method-schema`, `validate-constructor-schema`,
    `validate-property-schema`, `validate-field-schema`, and `validate-type-schema`) in
    [assembly-to-lispy-tests.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/assembly-to-lispy-tests.lisp)
    to enforce structural compliance across the entire metadata tree.
2.  **Semantic CLR Verification**: Extended the Lisp validators to query the live C# assemblies under
    test using dynamic reflection lookup. For each entity in the metadata, the validator resolves
    its type and verifies that all documented fields, properties, methods, and constructors exist.
3.  **C# Reflection Wrappers**: Added static helper methods (`GetTypeMethods`, `GetTypeProperties`,
    `GetTypeFields`, `GetTypeConstructors`) in
    [MonoUtils.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/MonoUtils.cs)
    to bypass dynamic invocation type casting and internal subclass limitations during reflection.
4.  **Test Suite Integration**: Integrated the new `test-schema-validation` test case directly
    into the test runner in
    [assembly-to-lispy-tests.lisp](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/assembly-to-lispy-tests.lisp),
    executing automatically on both `System.Runtime.dll` and `AssemblyToLispyTestTarget.dll`
    metadata generation runs.
5.  **Documentation**: Updated
    [doc/assembly-to-lispy.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/assembly-to-lispy.md)
    and [README.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/README.md) to log
    Phase 3C completion details.

## BD. Phase 3D: Test Real-World Assemblies

1.  **Test Pipeline Expansion**: Updated `AssemblyToLispyTest.RunTests()` in
    [AssemblyToLispy.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispy.cs)
    to compile and run test sequences on `System.Console.dll`,
    `MonoGame.Framework.dll`, `DotCL.Runtime.dll`, `MonoGameLispDemo.dll`, and
    `NVorbis.dll`.
2.  **Spot-Checks Dispatch**: Defined spot checks `test-system-console`,
    `test-monogame-framework`, `test-dotcl-runtime`,
    `test-monogame-lisp-demo`, and `test-nvorbis` to verify key types and
    members for each target.

## BE. Phase 3E: Modular Test Discovery

1.  **Modular Test Directory**: Created a dedicated `tests/` directory to host
    the test suite, replacing the monolithic `assembly-to-lispy-tests.lisp`.
2.  **Base Framework Harness**: Implemented `tests/framework.lisp` to define the
    testing DSL, the recursive schema validator, the live CLR semantic reflection
    checks, and the registration hash table mapping assembly names to tests.
3.  **Self-Registering Test Files**: Created individual `*.test.lisp` files for
    each assembly that use `def-assembly-test` to automatically register
    themselves under their target assembly names.
4.  **Dynamic Test Discovery**: Updated the C# runner in `AssemblyToLispy.cs`
    to dynamically load `tests/framework.lisp` first, then locate and load
    all `*.test.lisp` files in the `tests/` directory before invoking the
    Lisp-native test dispatcher.

## BF. EdgeCases.cs CS8625 Warning Fix

1.  **Nullable Context Conformity**: Resolved C# compiler warning CS8625 ("Cannot convert null
    literal to non-nullable reference type") in
    [EdgeCases.cs](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/AssemblyToLispyTestTarget/EdgeCases.cs).
    Marked the `nullVal` parameter of type `object` in `DefaultsMethod` as nullable
    (`object? nullVal = null`), ensuring the default null assignment compiles cleanly under
    nullable reference types.

## BG. Lisp Assemblies Documentation Update

1.  **Revised Implementation Phases**: Documented the revised Phase 1 plan and defined subsequent
    implementation phases (Phase 2 to Phase 5) in
    [lisp-assemblies.md](file:///home/dfields/src/cl/MonoGameLispDemo-standalone/doc/lisp-assemblies.md).
    The phases isolate generator concerns (constants, simple methods, getters/setters,
    overload-resolution, constructors, modifiers, and reified generics) into sequential
    and manageable deliverables.

### BH. Case-Sensitive C# Reader Macros (#!! and #!)

1.  **Readtable Context Sync**: Addressed an issue where reader macros defined in `csharp.lisp` were unavailable during the compilation of subsequent files like `poc-test.lisp`. Because `compile-file` does not evaluate top-level forms at compile-time by default, the dispatch macro registrations were missing. This was resolved by wrapping the `set-dispatch-macro-character` call in an `eval-when` block with `:compile-toplevel`, `:load-toplevel`, and `:execute` targets.
2.  **Lambda Inlining Dispatch**: Designed and implemented the reader macros so they expand to lambda expressions immediately applied to their remaining arguments. For list-based calls like `(#! obj Method args...)`, the reader macro reads `obj` normally and reads the `Method` name case-sensitively, returning a lambda that encapsulates the `dotnet:invoke` call. This avoids unmatched close parenthesis issues and double parenthesis evaluation problems, resulting in clean, standard Lisp forms.
3.  **Case-Preservation Control**: Implemented local case-preservation by copying `*readtable*` and setting `readtable-case` to `:preserve` only during the reading of the class name and method name. This isolates case-preservation to the .NET specific symbols, while other arguments are parsed normally.
4.  **ASDF Dependency Ordering**: Configured `MonoGameLispDemo.asd` so that `poc-test.lisp` depends on `csharp.lisp`, guaranteeing that the reader macro character is registered and active before the compiler reads the test cases.
5.  **Verification Coverage**: Added 8 startup tests in `poc-test.lisp` asserting correct evaluation of prefix shorthand calls, list calls with strings or symbols, and mixed string/symbol calls on `System.Math` and `System.Guid`.

### BI. Phase 1 Assembly Package Generator Implementation

1.  **String and Naming Utilities**: Created `camel-to-kebab` to convert C# PascalCase/camelCase type, constant, and method names to Lisp kebab-case. Implemented boundary check to prevent inserting double hyphens at dot character locations. Created `split-string` to parse semicolon-delimited lists of target classes.
2.  **Member Filtering (Phase 1)**: Mapped simple C# members to Lisp. Excluded methods with overloads, generic parameters, generic return types, default values, special parameter modifiers (ref, out, ref-readonly, params), operator overloads, and property getters/setters.
3.  **Constant Extraction**: Parsed fields and properties inside the S-expression metadata. Static properties that are read-only and static fields that are literal or init-only are converted into `defconstant` definitions surrounded by `+` earmuffs.
4.  **Preamble & Template Output**: Generated Lisp source files with package headers (`defpackage` and `in-package`). Generated `<type>`, `<type-str>`, `<creation>`, and `<version>` metadata constants in the package.
5.  **CLI Runner**: Hooked `--assembly-metadata`, `--class`, and `--output` options into `Program.cs`. When invoked, the runner boots DotCL, loads dependencies manifest, and invokes the Lisp generator.
6.  **Unit Tests**: Implemented a separate test suite `package-generator-tests.lisp` executing at load-time to verify name conversions, splitting, and Phase 1 member filtering.

### BJ. Phase 1A Assembly Package Generator Integration

1. **Dynamic ASDF integration**: Pre-calculated the `:components` list inside `MonoGameLispDemo.asd`
   by scanning the `cspackages/` directory at read-time and generating flat `:file` components.
   This prevents DotCL build errors caused by trying to concatenate directory pathnames inside
   ASDF `:module` components.
2. **Conflicting symbol shadowing**: Enhanced the package generator to check if generated Lisp
   names match standard Common Lisp symbols (such as `read`, `+`, `length`). Conflicting symbols
   are automatically added to a `(:shadow ...)` clause in the generated `defpackage` form,
   preventing catastrophic redefinition of compiler/Lisp-image globals.
3. **Lazy evaluation of C# properties**: Replaced the use of `defconstant` with `define-symbol-macro`
   for C# static fields and properties. This defers their evaluation to reference-time, avoiding
   load-time platform exceptions (e.g. `System.Console.CapsLock` throwing on Linux) and allowing
   access to live C# values.
4. **Bootstrapping test configuration**: Designed the integration tests in `poc-test.lisp` to use
   dynamic package and symbol lookups (`find-package`, `find-symbol`, `eval`) instead of static
   package prefixes. This allows the system to boot and compile cleanly from a clean slate even
   when the wrapper packages do not exist yet.
5. **Makefile Automation**: Added the `generate-cspackages` target in the `Makefile` to generate
   wrapper packages for `System.Console`, `System.TimeSpan`, and `Microsoft.Xna.Framework.Vector2`
   using the CLI generator.

### BK. Separation of Compile-Time Constants and Runtime Read-Only Values

1. **Objective**: Separating compile-time constants (C# `const` fields) from runtime read-only values (C# `static readonly` fields and static read-only properties) in the Lisp package generator. True compile-time constants are defined with `defconstant` and retain `+` earmuffs, while runtime read-only values/properties are defined with `define-symbol-macro` and drop `+` earmuffs.
2. **Changes Made**:
   - Modified `poc-test.lisp` to add diagnostic printing of `macroexpand-1` results and evaluation of the `zero` symbol macro in the generated `microsoft-xna-framework-vector2` package.
3. **Current Investigation**:
   - The test `microsoft-xna-framework-vector2:zero` evaluates to `NIL`. The symbol macro expands to `(dotnet:static <type-str> "Zero")`. The diagnostics are added to inspect why the type resolution fails. The package generator will be updated to output the literal class name string (e.g., `"Microsoft.Xna.Framework.Vector2"`) directly inside `define-symbol-macro` rather than referencing the `<type-str>` symbol, ensuring robust type resolution.

### BL. Build Process Verbosity and Debugging Options Explanation

1. **Objective**: Responded to a query on how to obtain more detailed information during the `compile-project` phase of the build process.
2. **Details Provided**:
   - Identified that the build cache places a concatenated Lisp source file at `obj/Debug/net10.0/ubuntu.24.04-x64/dotcl-fasl/MonoGameLispDemo.concat.lisp`, which represents the exact source input to the compiler.
   - Recommended running the compilation process interactively in the `dotcl` REPL to obtain full backtraces and debugger hooks for package resolution failures.
   - Highlighted the package lookup mismatch (`Package "DOTCL-REPL" not found`) caused by top-level `require` forms not being wrapped in `eval-when` compile-time blocks during non-interactive compiler runs.

### BM. Colored Format Wrapper Function Explanation

1. **Objective**: Responded to a query requesting a custom version of `format` that prepends ANSI escape sequences for RED color and appends escape sequences to reset the color.
2. **Details Provided**:
   - Designed a wrapper function `format-red` that wraps the standard `format` call.
   - Handled both stream output and string-generation (`nil` destination) return-value semantics.
   - Utilized the standard `#\Esc` character to construct the ANSI color escape sequences cleanly.

### BN. Supporting Operator Overloads in Package Generation

1. **Objective**: Support operator overloads (such as `/=`, `=`, `>`, etc.) in generated packages.
2. **Changes Made**:
   - Updated `assembly-package-generator.lisp` to check for a `:mangled-name` property in the
     method metadata. When present, the `:mangled-name` (e.g. `"op_Inequality"`) is used in the
     generated `dotnet:static` or `dotnet:invoke` calls instead of the clean name (e.g. `"/="`).

### BO. Adding Package Generator Operator Tests

1. **Objective**: Add comprehensive tests for generated operator overloads in
   `package-generator-tests.lisp`.
2. **Changes Made**:
   - Adjusted the ASDF compilation order in `MonoGameLispDemo.asd` to ensure that
     `package-generator-tests` is loaded after all generated packages inside `cspackages/`
     have been compiled and loaded.
   - Added comprehensive operator tests for `System.TimeSpan` (covering `=`, `/=`, `<`, `<=`, `>`,
     and `>=`) and `Microsoft.Xna.Framework.Vector2` (covering `=`, `/=`, and `+`) to
     `package-generator-tests.lisp`.

## Constant Properties Makefile Refactor
- Evaluated `System` and `MonoGame` classes to check which ones qualify for generating constant properties.
- `System.Console` properties are dynamic, so `--constant-properties` does not apply.
- `System.TimeSpan` contains static readonly fields (`Zero`, `MaxValue`, `MinValue`), so we added `--constant-properties "*"` to its generation command.
- Most `Input` classes do not contain static readonly fields, but `Microsoft.Xna.Framework.Input.GamePadState` has `Default`. Appended `--constant-properties "*"` to its generation command.
- Verified that all enumerations such as `SpriteEffects` and `SpriteSortMode` already generate correctly natively using `+kebab-name+` due to their `:literal` metadata flags, avoiding the need for the flag there.

## Session: June 17, 2026

### BP. Fixing Paren Mismatches and Support for Direct Calls

1. **Objective**: Resolve the compilation errors during Lisp compilation (`DotclCompileRoot`), verify parentheses balance, and document new features.
2. **Changes Made**:
   - Identified and fixed an unclosed parenthesis in `assembly-package-generator.lisp` within `generate-class-file` function (mismatch introduced by the previous agent's type-declared direct call optimization).
   - Identified and fixed commented-out parentheses `)))` in `package-generator-tests.lisp` within `run-package-generator-tests` (which left the `methods-list` binding list open).
   - Reverted temporary workaround changes to `game-repl.lisp` so that it uses standard `require` expressions.
   - Updated `poc-test.lisp` to support finding both `+ZERO+` (when optimized as a compile-time constant property) and `ZERO` (as a dynamic symbol macro) to make integration tests robust.
   - Updated `README.md` and `doc/implementation-notes.md` to document the new DotCL 0.1.11 `(the (dotnet "Type") ...)` direct-call casting optimizations.
   - Updated `FILES.md` to describe `typed-calls-test.lisp`.

### BQ. Verification of Build, Test, and Code Generation Pipelines

1. **Objective**: Confirm that the code compiles, the test suite executes successfully, and all generated package code compiles cleanly without syntax or packaging errors.
2. **Verification Details**:
   - Executed `make build`, verifying that all compiler targets succeed.
   - Executed `make test` to run the test suite, which completed successfully with 0 failures across 74 tests.
   - Executed `make cspackages` to regenerate all C# wrappers under `cspackages/` directly, confirming no package generation errors occur.
   - Verified that the generated code is correct and that local package nicknames do not clash with standard definitions.

### BR. Eliminating Duplicate Exports/Shadows and Incrementing Version

1. **Objective**: Fix a bug where duplicate exports and shadows are written to generated package files, and increment the generator version.
2. **Root Cause**: Since C# classes can contain multiple overloads for static methods (such as `op_Multiply`) or methods can meet criteria for multiple extraction lists (like both static and simple methods), their Lisp names get added to the `exports` and `shadows` lists multiple times. While Lisp allows this syntactically, it is redundant and style-incorrect to export/shadow the same symbol name multiple times.
3. **Changes Made**:
   - Modified `assembly-package-generator.lisp` to increment the generator version (`*generator-version*`) from `6` to `7`.
   - Used `remove-duplicates` with `:test #'string= :from-end t` on the accumulated `exports` and `shadows` lists to filter out duplicate symbols while preserving their relative order.
   - Regenerated all packages via `make cspackages`, confirming that duplicate entries (such as `#:*` or `#:=` in `Color` and `Vector2` packages) are eliminated.
   - Verified that all Lisp tests continue to compile and pass successfully.

### BS. Aligning Package Exports and Mapping Implicit/Explicit Conversion Operators

1. **Objective**: Resolve issues where symbols like `#:*` and `#:op_-implicit` are exported in generated packages but have no corresponding definitions in the file.
2. **Root Cause**:
   - `static-methods` and `public-instance-fields` were being processed to collect package exports, even though the generator only outputs definitions for `simple-methods` (excluding operators and overloads). Thus, static methods with overloads (such as `*`) and conversion operators (such as `op_-implicit`) were incorrectly exported.
   - `op_Implicit` and `op_Explicit` operators were not mapped to clean Lisp names, meaning they were processed as raw names.
3. **Changes Made**:
   - Modified `AssemblyToLispy.cs` to map `op_Implicit` to `"implicit-cast"` and `op_Explicit` to `"explicit-cast"`.
   - Modified `assembly-package-generator.lisp` to increment the generator version (`*generator-version*`) from `7` to `8`.
   - Modified the `exports` list collection in `assembly-package-generator.lisp` to exclude `static-methods` and `public-instance-fields`, ensuring only the generated members (such as literal fields, constant fields, constant properties, and simple methods) are exported.
   - Regenerated all packages via `make cspackages`, confirming that `#:*` is no longer exported in `Color` when undefined, and that `implicit-cast` is correctly generated and exported in `Vector2`.
   - Ran `make test` to verify that all tests pass successfully with the updated version 8 generator.

### BT. Reverting game-repl.lisp Modifications

1. **Objective**: Discard all modifications to `game-repl.lisp` and restore it to its original state.
2. **Changes Made**:
   - Replaced the contents of `game-repl.lisp` with its original content retrieved from the HEAD commit, leaving the file logically unmodified in the working tree.
   - Built the project and ran all integration tests to confirm that standard build targets and test suites continue to function correctly with the restored REPL code.

### BU. Clarification on game-repl.lisp State and Git Staging

1. **Details**:
   - The modifications to `game-repl.lisp` (using `asdf:load-system` instead of `require` and simplifying the loop) were introduced and staged by a previous session's agent during compilation troubleshooting.
   - The working copy has been restored to match `HEAD` exactly, meaning the code is reverted to its original state.
   - Because of the restriction against running non-read-only git commands, the git index was not modified (e.g. not running `git restore --staged`). The staged index changes should be discarded by the user via `git restore --staged game-repl.lisp`.

### BV. Fixing Handled Test Failures in typed-calls-test.lisp

1. **Objective**: Fix a logic bug in `run-typed-calls-tests` where a failure-case error was caught by the same handler meant to verify successful exception catching.
2. **Root Cause**: The testing form used `handler-case` catching all `error` conditions, but executed `(error "[typed-calls-tests] FAIL...")` within the same block on success (when no cast exception was thrown). Consequently, the failure error was caught by the `(error (e) ...)` handler and erroneously outputted as a "PASS".
3. **Changes Made**:
   - Refactored `run-typed-calls-tests` in `typed-calls-test.lisp` to set a `failed` flag to `nil` on execution completion, and shifted the validation error signaling (`when (not failed) (error ...)`) outside the `handler-case` block.
   - Built and ran the test suite, confirming that the tests execute correctly and successfully catch invalid cast errors.

### BW. Summary of Investigation into Clean Build and Package Resolution Issues

1. **Objective**: Document the investigation and explain why modifications to previously working files were introduced.
2. **Investigation Findings**:
   - **Dirty Build State Illusion**: The Lisp compilation previously succeeded because it was operating on a dirty build state. The compiled `DungeonSlime.dll` from previous successful builds remained in the build output directory. During compilation, `type-aliases.lisp` evaluated `(dotnet:load-assembly ... "DungeonSlime.dll")` at compile-time. This loaded the old Lisp FASL code embedded in the DLL, pre-populating the compiler's Lisp environment with all package definitions and loaded ASDF dependencies (`anaphora`, `dotcl-thread`, `dotcl-repl`).
   - **Clean Build Reality**: When a clean build is executed (e.g., after `make clean`), `DungeonSlime.dll` is absent or does not contain the Lisp environment. The Lisp compiler starts with a blank Lisp image.
   - **DotCL Compiler Concatenation Mechanics**: DotCL compiles systems by concatenating all `.lisp` files declared in the `.asd` system components into a single large file `DungeonSlime.concat.lisp` and running `compile-file` on it.
   - **Package Nicknames Resolution**: The package `dungeon-slime` defined in `packages.lisp` defines local nicknames (`:v2`, `:ts`, etc.) referencing the generated packages (e.g., `microsoft-xna-framework-vector2`). If these packages do not exist in the Lisp image at the moment `packages.lisp` is compiled/evaluated, package definition fails with a "package not found" error.
   - **Dependency Loading**: Dependencies listed in the `.asd` `:depends-on` (such as `anaphora`) are not automatically loaded by ASDF during `--compile-project` before reading/compiling the concatenated file.
3. **Modifications Made & Rationale**:
   - **Package Pre-declarations**: Empty package definitions (e.g., `(defpackage :anaphora)` and the generated `microsoft-xna-framework-...` packages) were added to the top of `packages.lisp` inside an `eval-when` compile-time block. This ensures the packages exist when the `dungeon-slime` package (with its local nicknames) is defined.
   - **Double Colon References**: Single-colon references on package-prefixed symbols (such as `anaphora::awhen` or generated package constants) were changed to double-colons (`::`). This allows the Lisp reader to parse references to symbols in these packages even before their true exports are defined or loaded in the compilation stream.
   - **Dynamic Symbol Lookup**: In `game-repl.lisp`, the reference to `dotcl-repl:readline` was replaced with a dynamic lookup `(find-symbol "READLINE" "DOTCL-REPL")` and `funcall` to prevent compile-time reader errors if `dotcl-repl` is not present at read-time.

### BX. Integration of Lisp Parentheses Validator and Rules Update

1. **Objective**: Implement a programmatic parentheses validation tool and update project rules, documentation, and make targets based on user feedback.
2. **Changes Made**:
   - **Created check_parens.py**: Added [check_parens.py](file:///home/dfields/src/cl/dotcl-dungeonslime/check_parens.py) to the repository root directory. The script scans Lisp source files (.lisp and .asd) to verify that parentheses are balanced, skipping string literals, character literals, and block or line comments.
   - **Makefile Integration**: Added a `check-parens` target to the [Makefile](file:///home/dfields/src/cl/dotcl-dungeonslime/Makefile) that discovers all `.lisp` and `.asd` files (excluding build artifact directories) and runs them through `check_parens.py`.
   - **Project-Scoped Rules**: Appended rules to [GEMINI.md](file:///home/dfields/src/cl/dotcl-dungeonslime/GEMINI.md) instructing the agent to immediately verify parentheses balance on all modified files individually when compile or runtime errors are encountered.
   - **Documentation Updates**: Added descriptions of `check_parens.py` to [FILES.md](file:///home/dfields/src/cl/dotcl-dungeonslime/FILES.md) and documented the `check-parens` Makefile target usage in [README.md](file:///home/dfields/src/cl/dotcl-dungeonslime/README.md).

### BY. Extensive Property Accessor and Mutator Tests and Parenthesis Guideline Integration

1. **Objective**: Add detailed and extensive tests verifying C# instance property accessors/mutators, document the new parenthesis checking guidelines in the implementation notes, and update version comments in the generator.
2. **Root Cause / Background**:
   - Property mutation in DotCL for narrowing type signatures (such as `System.Byte` properties like `Color.R`) via reflection-based `dotnet:invoke` requires values to be explicitly cast to the exact target type (e.g. using `System.Convert.ToByte`) to avoid a `MissingMethodException`.
   - Missing parenthesis errors in Common Lisp/DotCL compile-time environments cause extremely confusing errors. A rigid guideline requires programmatically checking parentheses balance on all modified files individually as soon as compile or build errors occur.
   - The docstring for `*generator-version*` in `assembly-package-generator.lisp` lacked the details for past generator versions.
3. **Changes Made**:
   - **Updated typed-calls-test.lisp**: Expanded the test suite to include extensive get/set assertions for `SamplerState` (reference type property `BorderColor` taking/returning a struct `Color`), `Color` (value type properties `R`, `G` mutated using `System.Convert.ToByte`, and `PackedValue` mutated using `System.Convert.ToUInt32`), `TimeSpan` (read-only property `TotalMilliseconds`), and added test assertions verifying the absence of mutator functions (`(fboundp '(setf ...)) = nil`) on read-only properties of `TimeSpan`, `MouseState`, `KeyboardState`, and `GamePadState`.
   - **Updated doc/implementation-notes.md**: Added the parenthesis checking guideline explicitly to the mismatched parentheses section, reinforcing that the parentheses balance of all modified files must be verified individually when build or runtime errors are encountered.
   - **Updated FILES.md**: Updated the file manifest to reflect property accessor/mutator verification coverage in `typed-calls-test.lisp`.
   - **Updated assembly-package-generator.lisp**: Updated the docstring of the `*generator-version*` parameter to document the exact feature capabilities introduced in versions 1 through 9 of the generator.

## DotCL 0.1.12 Build Issue Resolution
* **Date**: 2026-06-20
* **Goal**: Fix the `make build` issue causing `anaphora` to not be found during the build phase.
* **Explanation**: DotCL 0.1.12 changed the build execution path to invoke the compiler via `dotnet run --project .../runtime/runtime.csproj`. This means the `System.AppDomain.CurrentDomain.BaseDirectory` during the compilation (`:compile-toplevel`) evaluates to the `dotcl/runtime/bin` directory, rather than the game's output binary directory. Thus, pushing a relative path to `asdf:*central-registry*` at compile-time using this BaseDirectory failed.
* **Modifications**: 
  * `load-system-test.lisp`: Split the `eval-when` logic. At compile-time, it now reads `obj/dotcl-outdir.txt` (written by MSBuild) to locate the correct target `bin-dir` where `.csproj` copied `anaphora` into `contrib/anaphora/` and registers it with ASDF. At run-time (`:load-toplevel` and `:execute`), it correctly falls back to using `AppDomain.CurrentDomain.BaseDirectory` to resolve the path dynamically when the actual executable launches.
  * `doc/implementation-notes.md`: Documented the problem and the compile-time/run-time split solution regarding DotCL 0.1.12 ASDF central registry configuration.

## Session: June 20, 2026 (OpenCode)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| Jun 20, 2026 | [input-manager.lisp](input-manager.lisp) | **Created** | New input management system implementing MonoGame Chapter 11: KeyboardInfo, MouseInfo, GamePadInfo, InputManager CLOS classes with frame-to-frame state tracking. |
| Jun 20, 2026 | [csharp.lisp](csharp.lisp) | Modified | Added `ts-` (TimeSpan subtraction) and `ts<=` (TimeSpan less-than-or-equal) functions. Fixed `ts>=` bug (called `op_GreaterThan` instead of `op_GreaterThanOrEqual`). |
| Jun 20, 2026 | [packages.lisp](packages.lisp) | Modified | Added pre-declarations for `:microsoft-xna-framework-input-mouse-state`, `:microsoft-xna-framework-input-game-pad-triggers`, `:microsoft-xna-framework-input-button-state`. Added `:dungeon-slime-input` package definition and `:input` local nickname. Updated `:csharp` package exports with `#:ts-` and `#:ts<=`. |
| Jun 20, 2026 | [mg-core.lisp](mg-core.lisp) | Modified | Added `input-manager` slot to `core` class. Create input manager in `initialize`. Update input manager in `update` before base class call. |
| Jun 20, 2026 | [game-1.lisp](game-1.lisp) | Modified | Refactored `check-keyboard-input` and `check-gamepad-input` to use the input manager. Changed Escape/F7 from continuous `key-down?` to `was-key-just-pressed` pattern. |
| Jun 20, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Added `input-manager` component dependency chain. |
| Jun 20, 2026 | [FILES.md](FILES.md) | Modified | Added `input-manager.lisp` and `opencode-implementation-notes.md` descriptions. |
| Jun 20, 2026 | [doc/opencode-implementation-notes.md](doc/opencode-implementation-notes.md) | **Created** | Detailed implementation notes for the input management system. |
| Jun 20, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added Input Management section referencing the new documentation. |

### 2. Discussion Log

* **Question**: Implement the Chapter 11 input management system as a Lisp translation of the C# tutorial code.
* **Explanation**: The input management system tracks previous and current input states for keyboard, mouse, and gamepad to detect "just pressed" and "just released" transitions. It provides a centralized `InputManager` that aggregates device-specific classes. The implementation follows the C# one-frame-latency pattern where game logic in `game-1:update` reads input from the previous frame's state update (which happens in `core:update` via `call-next-method`). The `:dungeon-slime-input` package uses local nicknames for the generated C# packages to avoid symbol conflicts. Timed gamepad vibration is handled internally in `GamePadInfo` using `GameTime.ElapsedGameTime` to decrement the remaining duration each frame.
* **Notes**: The generated cspackages must be pre-declared as empty packages in `packages.lisp` so the `:dungeon-slime-input` package's `:local-nicknames` can resolve at package-definition time before the cspackages are loaded. A pre-existing bug where the thumbstick code used `slime-position` instead of `slime-pos` was also fixed.

* **Question**: Create a taxonomy of C# method overloads and a phased plan for implementing support for them in the generator.
* **Explanation**: Since C# utilizes static typing to dispatch method overloads while Lisp relies on dynamic typing, directly mapping overloaded methods poses a challenge. I analyzed `System.Console` and `Vector2` to build a taxonomy: A) Operator Overloads (`op_Addition`), B) Arity-Based Overloads (e.g., `Write(string)` vs `Write(string, object)`), C) Type-Based Overloads (e.g., `Write(int)` vs `Write(float)`), D) Generic Overloads, and E) Modifiers (`out`/`ref`). The phased plan starts with Graceful Degradation (Phase 1) emitting stubs that throw helpful `error`s when unsupported overloads are called, moving on to Operator Overload mapping (Phase 2), Arity dispatch via `&rest` lengths (Phase 3), and finally Type-based dispatch using CLOS `defmethod`s (Phase 4).
* **Notes**: The proposal is documented in `doc/agy-proposal-for-package-generator.md`.

* **Question**: Implement the v10 package generator for C# method overloads.
* **Explanation**: The v10 generator classifies methods into clean (all simple params) and dirty (ref/out/params/defaults). For single-clean methods, a typed function with the base name is generated. For multi-clean methods, a `&rest` passthrough (for DotCL runtime dispatch) plus type-suffixed overloads (e.g., `contains-vector2`, `contains-int32-int32`) are generated. Dirty methods get a doc-comment listing their signatures. Value-type receivers get `(the (dotnet "...") obj)` typed calls; static methods get `(the (dotnet "...") arg)` type hints. A duplicate-`obj` bug in instance passthrough generation was fixed (`~Aobj` → `~A&rest args`). All cspackages were regenerated with v10. Two test fixes: `assert-cspkg` comparison uses `%cspkg-equal` for number-type-insensitive comparison; symbol names updated to match generator naming (`CONTAINS-VECTOR-2` → `CONTAINS-VECTOR2`). `make build && make test` passes.

## Chapter 13 Tilemaps Implementation

* **Date:** 2026-06-21
* **Goal:** Implement MonoGame Chapter 13 Tilemap tutorial using S-expressions instead of XML.
* **Changes:**
  * Created `Content/tilemap-definition.lisp` which contains S-expression definition for the 20x15 level.
  * Edited `Content.mgcb` to copy `tilemap-definition.lisp` into build output.
  * Created `tileset.lisp` which encapsulates a texture atlas sliced into grid regions.
  * Created `tilemap.lisp` which reads the S-expression configuration and supports drawing the grid of tiles to a `SpriteBatch`.
  * Integrated into `game-1.lisp` by loading the tilemap in `load-content`, drawing it dynamically, and overriding `screen-bounds` physics checks to use dynamic `room-bounds` derived from the tilemap size.
  * Implemented unit tests for `tileset` and `tilemap` logic in `tilemap-test.lisp`.
  * Passed all parens, compile, and run-time testing hooks.

## Chapter 13 Tilemaps Runtime Fixes

* **Date:** 2026-06-21
* **Goal:** Fix the runtime crashes when executing `make run`.
* **Changes:**
  * **Path Qualification:** In [game-1.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/game-1.lisp),
    defined a constant `+tilemap-filename+` that combines the default content
    directory prefix (`Content/`) so that the tilemap loader correctly locates
    `Content/tilemap-definition.lisp` at runtime under both absolute and
    build-relative paths.
  * **Type Coercion:** In [game-1.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/game-1.lisp),
    wrapped room bounds calculations in `round` to coerce dimensions to
    integers. This prevents `Cannot convert DoubleFloat to Int32` type errors
    when invoking the C# `Rectangle` constructor (which expects `Int32`).
  * **Texture Loader:** In [tilemap.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/tilemap.lisp),
    defined the `content-load-texture2d` function. It wraps generic
    `ContentManager.Load<Texture2D>` calls through DotCL's generic invocation
    and handles `nil` content managers gracefully by returning the asset name
    (ensuring CLI tests do not crash).

## Session: June 21, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| Jun 21, 2026 | [audio-test.lisp](audio-test.lisp) | **Created** | Created automated tests verifying the loading of `bounce.wav`, `collect.wav`, and `theme.ogg` using generated package wrappers. |
| Jun 21, 2026 | [test-harness.lisp](test-harness.lisp) | Modified | Hooked `(dungeon-slime::run-audio-tests)` into the automated test run. |
| Jun 21, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Declared `audio-test.lisp` component in the ASD definition and added it to `test-harness` dependencies. |
| Jun 21, 2026 | [game-1.lisp](game-1.lisp) | Modified | Added slots `bounce-sound`, `collect-sound`, and `theme-song` to class `game-1`. Loaded files in `load-content` and played `theme-song` via `media-player:play`, looping it. Triggered bounce and collect sounds in `update` via `sound-effect:play`. |
| Jun 21, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented Chapter 14 audio features and explained how `dotnet:generic-method` is used for generic calls in DotCL, contrasting it with using static wrapper functions. |
| Jun 21, 2026 | [FILES.md](FILES.md) | Modified | Updated file descriptions to include `audio-test.lisp` and noted the audio support features added to `game-1.lisp`. |
| Jun 21, 2026 | [README.md](README.md) | Modified | Documented Chapter 14 audio functionality in the Functionality Implemented section. |

### 2. Discussion Log

* **Question**: Implement Chapter 14 (audio/sound effects and music) using the pre-generated C# package wrapper functions rather than raw `dotnet:invoke` on `ContentManager.Load<T>`.
* **Explanation**: To play background music (`theme.ogg`) and sound effects (`bounce.wav` and `collect.wav`), we leveraged the generated C# lisp wrappers `sound-effect:from-file`, `song:from-uri`, `media-player:play`, and `sound-effect:play`. This completely bypasses the need for the runtime reflection required by `dotnet:generic-method` for generic `ContentManager.Load<T>` calls, which is cleaner and more idiomatic.
* **Testing**: Added `audio-test.lisp` to the automated Lisp test harness, which runs during `make test` to verify that the asset files can be successfully located and parsed as `SoundEffect` and `Song` objects by the C# wrappers. The full build and test suite executes and passes cleanly.
* **Implementation Notes**: Added detailed information in `doc/implementation-notes.md` detailing the mechanics of `dotnet:generic-method` in DotCL, and explaining why it is required for generic calls (like `ContentManager.Load<T>`) where the Lisp runtime needs a concrete type signature, while highlighting the benefits of utilizing non-generic static wrapper alternatives when possible.

### 3. Chapter 15 Audio Controller Implementation

* **Objective**: Centralize audio state (muting, volume adjustment) using an audio controller
  class.
* **Changes Made**:
  - **Created [audio-controller.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/audio-controller.lisp)**:
    Introduced the `audio-controller` CLOS class to manage sound effect instances and global audio
    volumes, supporting `toggle-mute`, `adjust-volume`, `play-song`, `play-sound-effect`, and
    `dispose-audio`.
  - **Modified [mg-core.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/mg-core.lisp)**:
    Added the `audio-controller` slot to the `core` class, initializing it before the base
    `Initialize` call so it is available during `LoadContent`. Updated and disposed the audio
    controller during `update` and `dispose` methods.
  - **Modified [game-1.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/game-1.lisp)**:
    Integrated the audio controller for playing music and sound effects. Added keyboard handlers
    in `check-keyboard-input` to toggle mute (`M`) and adjust volume (`+` and `-`).
  - **Modified [packages.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/packages.lisp)**:
    Added empty package pre-declarations for `:microsoft-xna-framework-audio-sound-effect-instance`
    and `:microsoft-xna-framework-audio-sound-state`.
  - **Modified [dungeon-slime.asd](file:///home/dfields/src/cl/dotcl-dungeonslime/dungeon-slime.asd)**:
    Added `audio-controller` to the component lists.
  - **Modified [doc/implementation-notes.md](file:///home/dfields/src/cl/dotcl-dungeonslime/doc/implementation-notes.md)**:
    Added documentation about type coercion issues when setting .NET `single-float` properties from
    Lisp `double-float` objects.

### 4. Zero-Sound Bug Analysis and Resolution

* **Symptom**: After running the game, no sounds played, and the `M`, `+`, and `-` volume keys
  did not function as expected.
* **Root Cause**:
  - The file [audio-test.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/audio-test.lisp)
    originally contained a top-level `(run-audio-tests)` invocation. This meant that the test
    suite executed at load time during regular game initialization.
  - Within `run-audio-tests`, the static volume property tests set global values down to `0.0f0`
    and mutated the test controller to a muted state. Since .NET static properties like
    `MediaPlayer.Volume` and `SoundEffect.MasterVolume` are process-wide, this left the global
    game environment completely muted at startup.
  - Furthermore, because the initial volume was left at `0.0f0` and the test controller was left
    muted, the subsequent unmuting logic cached `0.0f0` as the previous volume, rendering the
    mute toggle ineffective at restoring audible volume levels.
* **Resolution**:
  - Removed the top-level `(run-audio-tests)` call from `audio-test.lisp`. The tests are instead
    explicitly run only during test execution via `test-harness.lisp` under the `--test` flag.
  - Refactored `run-audio-tests` to query and save the current process-wide volumes at start, and
    restore them at the end of the test.
  - Added a restoring `(toggle-mute controller)` call inside the test to ensure the dummy controller instance is left unmuted at the end.

## Session: June 25, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 25, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Bumped generator version to 11. Added support for C# constructor wrapper generation (`new` and `new-xxx`), struct parameterless constructor injection, and overload dispatch collision prevention. |
| June 25, 2026 | [package-generator-tests.lisp](package-generator-tests.lisp) | Modified | Added unit tests for `clean-constructor-p` and `constructor-overload-name` helper functions. |
| June 25, 2026 | [cspackages-test.lisp](cspackages-test.lisp) | Modified | Added integration tests verifying class and struct constructor wrappers (e.g. `Vector2`, `Rectangle`, `TimeSpan`, `Uri`). |
| June 25, 2026 | [README.md](README.md) | Modified | Documented the generator version 11 object constructor support features. |
| June 25, 2026 | [FILES.md](FILES.md) | Modified | Documented constructor wrappers in the descriptions of modified files. |
| June 25, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added detailed implementation notes for C# package object constructors, struct parameterless constructor injection, and overload collision prevention. |

### 2. Explanations Log

#### AA. C# Object Constructor Generation and Struct Parameterless Constructors
We researched and resolved the generation of Common Lisp constructors for C# classes and structs:
1. **Class Constructors**: In .NET, Reflection `GetConstructors()` returns all declared class
   constructors. If a class has no explicit constructors, C# compiles an implicit parameterless
   constructor, which is returned.
2. **Struct Constructors**: For value types (structs), C# provides an implicit parameterless default
   constructor that zeroes out struct fields. However, the .NET Reflection API `GetConstructors()`
   does not return this implicit constructor.
   - To ensure struct package files contain the standard parameterless `new` function, the
     generator checks if the type is a struct (`:kind :struct`). If it is, and the constructor
     list does not contain a 0-parameter constructor, the generator injects `(:parameters nil
     :public t)` into the list.
3. **Overload Resolution and Collision Prevention**:
   - Single Constructor: The generator generates `(defun new (parameters)`
     `(dotnet:new <type-str> parameters))`.
   - Multiple Constructors: The generator generates `(defun new (&rest args)`
     `(apply #'dotnet:new <type-str> args))` for runtime dispatch, and type-suffixed
     wrappers like `(defun new-single-single (x y) (dotnet:new <type-str> x y))`
     for explicit dispatch.
   - Collision Prevention: A 0-argument constructor's type-suffixed name would be `new`,
     colliding with the `&rest` passthrough function. To prevent this, the generator
     skips generating the type-suffixed wrapper for any 0-argument constructor
     when multiple constructors exist, letting `new` handle the dispatch.


## Session: June 26, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 26, 2026 | [game-1.lisp](game-1.lisp) | Modified | Refactored game instantiations to use generated package constructors `v2:new`, `system-uri:new`, and `color:new` instead of raw `dotnet:new` and custom helpers. |
| June 26, 2026 | [packages.lisp](packages.lisp) | Modified | Reordered C# package stub pre-declarations to the top and added local nicknames to `:mg-classes`, `:dungeon-slime`, and `:dungeon-slime-input`. |
| June 26, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Added dynamic `*cspackages-components*` dependency to `:mg-classes` and `:input-manager` to ensure proper load order. |
| June 26, 2026 | [input-manager.lisp](input-manager.lisp) | Modified | Refactored all raw keyboard, mouse, and gamepad constructors and state queries to use `cspackages` wrappers. |
| June 26, 2026 | [audio-controller.lisp](audio-controller.lisp) | Modified | Refactored instance disposal to use `sei:dispose` instead of raw `dotnet:invoke` calls. |
| June 26, 2026 | [audio-test.lisp](audio-test.lisp) | Modified | Refactored system URI construction to use `system-uri:new` and `system-uri-kind:+relative+`. |
| June 26, 2026 | [mg-classes.lisp](mg-classes.lisp) | Modified | Refactored GameTime properties, Vector2 static fields, and Rectangle constructor to use `cspackages` wrappers. |
| June 26, 2026 | [mg-core.lisp](mg-core.lisp) | Modified | Refactored Content, IsMouseVisible, GraphicsDevice, and Window property gets/sets, and SpriteBatch constructor. |
| June 26, 2026 | [FILES.md](FILES.md) | Modified | Updated description of Lisp files in FILES.md to note the refactoring to C# wrappers. |
| June 26, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added a section detailing the raw interop refactoring to generated wrappers. |

### 2. Explanations Log

#### Refactoring game-1.lisp to Use Constructor Wrappers
- **Objective**: Refactor the main game logic to utilize the generated package-level C# constructors instead of raw reflection-based `dotnet:new` calls or manual constructor helper functions.
- **Modifications**:
  - Replaced all calls to the custom `(vector2 x y)` helper in `game-1.lisp` with the auto-generated `(v2:new x y)` constructor.
  - Replaced the instantiation of `System.Uri` via `(dotnet:new "System.Uri" ...)` with `(system-uri:new ...)`.
  - Verified that all parentheses remain balanced using `make check-parens`.
  - Built the project via `make build` and ran all tests using `make test`.
  - Manually ran the game via `make run` to ensure complete behavioral parity.

#### Refactoring Raw .NET Interop Calls to C# Package Wrappers
- **Objective**: Replace raw, reflection-based `.NET` interop calls with their generated `cspackages` wrapper equivalents across all remaining source files to improve type-safety, readability, and idiomatic style.
- **Modifications**:
  - Reorganized `packages.lisp` so that all C# package stubs are declared empty at the top of the file, allowing other packages to safely reference them via local nicknames during compilation.
  - Refactored `input-manager.lisp` to use `kb-state:new`, `kb:get-state`, `ms:new`, `mouse:get-state`, `mouse:set-position`, `gp-state:new`, `gp:get-state`, and `gp:set-vibration`.
  - Refactored `audio-controller.lisp` to use `sei:dispose` to release active `SoundEffectInstance` objects.
  - Refactored `audio-test.lisp` to use `system-uri:new` and `system-uri-kind:+relative+`.
  - Refactored `mg-classes.lisp` to use `game-time:total-game-time`, `game-time:elapsed-game-time`, `game-time:is-running-slowly`, `v2:+zero+`, `v2:+one+`, `v2:+unit-x+`, `v2:+unit-y+`, and `rect:new`.
  - Refactored `mg-core.lisp` to use `game:content`, `game:window`, `game:is-mouse-visible`, `game:graphics-device`, and `sprite-batch:new`.
  - Updated `dungeon-slime.asd` to include dynamic dependencies on `*cspackages-components*` for `mg-classes` and `input-manager` to ensure proper Lisp compilation order.
- **Verification**:
  - Verified balanced parentheses across the codebase via `make check-parens`.
  - Compiled all changes successfully via `make build` with no warnings or errors.
  - Ran the Lisp-native and interop test suites via `make test`; all tests passed.
  - Launched the game using `make run` to manually verify that gameplay, audio, rendering, and controls continue to function correctly.


## Session: June 27, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 27, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added a section explaining the root causes and impact of ASDF compilation and load warnings under DotCL 0.1.14. |
| June 27, 2026 | [doc/compilation-warnings-in-0.1.14.md](doc/compilation-warnings-in-0.1.14.md) | Created | Created a detailed document describing the ASDF warnings and errors under DotCL 0.1.14. |
| June 27, 2026 | [FILES.md](FILES.md) | Modified | Documented the new compilation warnings document in FILES.md. |
| June 27, 2026 | [doc/package-dotnet.md](doc/package-dotnet.md) | Modified | Added detailed documentation for all new DotCL 0.1.14 dotnet symbols, and removed deprecated WinForms functions. |
| June 27, 2026 | [doc/dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) | Modified | Marked implemented interop features as DONE and updated status descriptions. |
| June 27, 2026 | [doc/clr-interop-ideas.md](doc/clr-interop-ideas.md) | Modified | Marked multimethod dispatch on C# types as DONE. |
| June 27, 2026 | [doc/dotcl-0.1.14-upgrade-plan.md](doc/dotcl-0.1.14-upgrade-plan.md) | Created | Created a detailed upgrade plan to utilize the new DotCL 0.1.14 capabilities in Lisp source code. |
| June 27, 2026 | [~/Documents/how-to-mirror-bitsavers.md](file:///home/dfields/Documents/how-to-mirror-bitsavers.md) | Created | Created mirroring guide for Bitsavers using bandwidth-limiting rsync. |
| June 27, 2026 | [clr-generic.lisp](clr-generic.lisp) | Modified | Refactored type assignability check in `c#method-applicable-p` to use `dotnet:is-instance-of`. |
| June 27, 2026 | [packages.lisp](packages.lisp) | Modified | Pre-declared empty `:anaphora` stub package to prevent reader/package errors during concatenated compilation. |
| June 27, 2026 | [FILES.md](FILES.md) | Modified | Updated descriptions for `clr-generic.lisp` and `packages.lisp` to note the 0.1.14 changes. |
| June 27, 2026 | [README.md](README.md) | Modified | Updated C# Generic Function System section to reflect Version 1.1 changes. |
| June 27, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented the C# generic function refactoring and ASDF compilation package error resolution. |
| June 27, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Refactored warnings and errors to print in red using `utils:format-red`. |
| June 27, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged today's sessions, including the ASDF warnings diagnosis, interop documentation updates, bitsavers mirroring guide, Part 1 upgrade implementation, and generator red errors refactoring. |
| June 27, 2026 | [AssemblyToLispy.cs](AssemblyToLispy.cs) | Modified | Added generic method identification (IsGenericMethod) and generic-arity property format. |
| June 27, 2026 | [AssemblyToLispyTestTarget/EdgeCases.cs](AssemblyToLispyTestTarget/EdgeCases.cs) | Modified | Added GenericMethodTestClass with synthetic generic methods for testing. |
| June 27, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Incremented generator version to 12. Updated simple-method-p and clean-method-p to accept generic methods of arity 1. Updated method wrapper generation to output type-first arguments and call dotnet:invoke-generic and dotnet:static-generic. |
| June 27, 2026 | [package-generator-tests.lisp](package-generator-tests.lisp) | Modified | Added tests verifying simple-method-p accepts generic methods of arity 1 and rejects arity 2. |
| June 27, 2026 | [tests/framework.lisp](tests/framework.lisp) | Modified | Added :is-generic and :generic-arity keywords to allowed method plist keys. |
| June 27, 2026 | [tests/synthetic-target.test.lisp](tests/synthetic-target.test.lisp) | Modified | Added assertions checking metadata output for GenericMethodTestClass. |
| June 27, 2026 | [assembly-to-lispy-tests-final.lisp](assembly-to-lispy-tests-final.lisp) | Modified | Added :is-generic and :generic-arity keywords to allowed method plist keys in final schema validator. |
| June 27, 2026 | [doc/dotnet-dotcl-interop.md](doc/dotnet-dotcl-interop.md) | Modified | Documented C# Lisp Package Generator support for generic methods of exactly one type argument. |
| June 27, 2026 | [doc/dotcl-0.1.14-upgrade-plan.md](doc/dotcl-0.1.14-upgrade-plan.md) | Modified | Added section on Generic Methods support and documented open question regarding 2+ type argument syntax. |
| June 27, 2026 | [README.md](README.md) | Modified | Documented C# Lisp Package Generator v12 enhancements. |
| June 27, 2026 | [FILES.md](FILES.md) | Modified | Documented generic method support (v12) for assembly-package-generator.lisp. |
| June 27, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added implementation details for C# Generic Method Wrappers (Generator Version 12). |
| June 27, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the generic method generator implementation and test updates. |

### 2. Explanations Log

#### Diagnostic Analysis of ASDF Compile Warnings & Errors under DotCL 0.1.14
- **Objective**: Identify what is causing the warnings (`COMPILE-FAILED-WARNING`, `COMPILE-WARNED-WARNING`, `RECURSIVE-OPERATE`, `DEFGENERIC: EMPTYP...`) when executing `make repl` under DotCL 0.1.14, evaluate their impact, and determine if any cache needs to be cleared.
- **Cache Information**: Located the ASDF FASL cache at `/home/dfields/.cache/common-lisp/dotcl-0.1.14-linux-x64/`. Deleting this folder forces ASDF to recompile all files when `(asdf:load-system "dungeon-slime")` is run.
- **Recursive Operate Warnings**:
  - Traced to `(asdf:load-system "anaphora")` inside the `eval-when (:compile-toplevel)` form in `load-system-test.lisp` and `(require "dotcl-repl")` in `game-repl.lisp`.
  - Cause: ASDF raises a warning if a nested compile or load operation is triggered while another ASDF operation is already active (i.e. compiling/loading `dungeon-slime`).
  - Impact: Completely benign; ASDF successfully loads the nested system. However, the compiler treats the warning as a failure/warning flag, prompting ASDF to raise `COMPILE-FAILED-WARNING` and `COMPILE-WARNED-WARNING` for the current component.
- **Defgeneric Emptyp Redefinition Warning**:
  - Traced to the compilation and load of `quicklisp/http.lisp`.
  - Cause: DotCL 0.1.14 implements a *cross-package function bridge* that copies the function slot of an existing same-named symbol (copy-on-intern) to any new symbol if its slot is empty. When `ql-http::emptyp` is interned, it inherits the ordinary function slot of `uiop:emptyp` (defined by ASDF/UIOP). When `defgeneric emptyp` is evaluated, it checks if `ql-http::emptyp` is fbound to a non-generic function. Seeing the inherited ordinary function, it raises the `redefinition` warning, clears the slot, and registers the generic function.
  - Impact: Completely benign. The generic function is correctly registered, and Quicklisp/HTTP runs exactly as expected.

#### DotCL 0.1.14 Integration Upgrades & Documentation Updates
* **Objective**: Update the project's documentation to match the new capabilities of DotCL 0.1.14, and outline an upgrade plan for using these capabilities.
* **Modifications**:
  * Modified `doc/dotnet-dotcl-interop.md` to mark missing items now implemented in 0.1.14 as **DONE** (including `dotnet:await`, array utilities, generic type construction, explicit type checking and casting, generic out/ref calls, enum flag utilities, and exception handling boundaries).
  * Modified `doc/package-dotnet.md` to add detailed function documentation, type signatures, and usage examples for all of the new DotCL 0.1.14 symbols, and removed references to the deprecated WinForms UI thread functions (`UI-INVOKE` and `UI-POST`).
  * Modified `doc/clr-interop-ideas.md` to mark CLOS multimethod dispatch on C# classes as **DONE**.
  * Created `doc/dotcl-0.1.14-upgrade-plan.md` detailing how `clr-generic.lisp` and other source files can be updated to utilize these new features.
  * Created `~/Documents/how-to-mirror-bitsavers.md` containing bandwidth-respectful instructions and parameters for mirroring Bitsavers using anonymous rsync.

#### Implementation of Part 1 (Type Checking Refactoring) and ASDF Package Resolution
* **Objective**: Implement Part 1 of the DotCL 0.1.14 upgrade plan by refactoring type checks in `clr-generic.lisp` to use `dotnet:is-instance-of`, and resolve compilation package errors.
* **Modifications & Fixes**:
  * **Type Checking**: Replaced manual type-lookup reflection logic in `clr-generic.lisp` (`c#method-applicable-p` assignability check) with `(dotnet:is-instance-of first-arg spec)`.
  * **Pre-declared Stub**: During compilation, the DotCL compiler reads the concatenated source file completely before executing it, which causes reader failures on symbols like `anaphora:awhen` if the package `"ANAPHORA"` is not yet defined. A stub `(defpackage :anaphora)` was added to `packages.lisp` to prevent compiler reader/lookup errors, mirroring the existing stubbing pattern in the repository.
  * **FASL Version Cleanup**: Cached `.fasl` files generated by previous DotCL versions (such as 0.1.11 or 0.1.12) are incompatible with DotCL 0.1.14 and are silently ignored by the loader during dependency resolution. To force recompilation under DotCL 0.1.14, stale `.fasl` files in the workspace and the Quicklisp directory were deleted, and a clean build was performed.
* **Verification**:
  * Executed `make check-parens` to verify parentheses balance.
  * Executed `make build` and compiled the project successfully with no warnings or errors.
  * Executed `make test` and verified that the Lisp-native and interop test suites passed completely.

#### Red-Formatting Generator Errors and Warnings
- **Objective**: Format the C# Lisp package generator's warning and error messages in red so they stand out during build pipeline execution.
- **Modifications**:
  - Modified the warning for unmatched class filters on line 742 of [assembly-package-generator.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp#L742) to print using `utils:format-red`.
  - Wrapped the main entry point `run-assembly-package-generator` inside a `handler-case` catching all `error` conditions. If an error occurs, it is printed in red using `utils:format-red` to `*error-output*` before being re-signaled to C# to preserve the correct exit status.
- **Verification**:
  - Ran `make check-parens` to verify parentheses balance.
  - Successfully ran `make build` and `make test` to ensure complete code correctness.

#### Implementation of C# Generic Method Wrappers (Generator Version 12)
- **Objective**: Implement support in the C# Lisp Package Generator to generate wrappers for C# generic methods of exactly one type argument (such as `ContentManager.Load<T>()`).
- **Modifications**:
  - **C# Metadata Extractor**: Updated `FormatMethodPlist` in [AssemblyToLispy.cs](file:///home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispy.cs) to check `method.IsGenericMethod`. If true, it outputs `:is-generic t` and `:generic-arity [count]` (from `GetGenericArguments().Length`) in the generated plist metadata.
  - **Schema Validation**: Updated allowed keys in the method schema checker in both [framework.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/tests/framework.lisp) and [assembly-to-lispy-tests-final.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-to-lispy-tests-final.lisp) to include `:is-generic` and `:generic-arity`, avoiding schema validation errors.
  - **Method Classification**: Modified `simple-method-p` and `clean-method-p` in [assembly-package-generator.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp) to allow generic methods if their generic arity is exactly 1. Added corresponding unit tests in [package-generator-tests.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/package-generator-tests.lisp) to verify classification behavior.
  - **Wrapper Generation**: Updated [assembly-package-generator.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp) code generation logic (Case 2 and Case 3) to generate signatures that take the type parameter first (e.g. `(load type obj asset-name)` for instance generic methods and `(create type args...)` for static generic methods). The generated bodies invoke DotCL's `dotnet:invoke-generic` and `dotnet:static-generic` interop targets.
  - **Tests**: Added synthetic target `GenericMethodTestClass` with generic methods to [EdgeCases.cs](file:///home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispyTestTarget/EdgeCases.cs) and added test assertions verifying their metadata extraction in [synthetic-target.test.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/tests/synthetic-target.test.lisp).
- **Verification**:
  - Verified parentheses are balanced across all files using `make check-parens`.
  - Built the project successfully via `make build`.
  - Ran the test suite via `make test` and confirmed all 45 assertions in `synthetic-target.test.lisp` and other tests pass successfully.
  - Regenerated C# packages via `make cspackages` and verified that `load` in `microsoft-xna-framework-content-content-manager.lisp` is correctly generated.

#### Resolution of Compilation and Load Order Errors for Generated Lisp Packages
- **Objective**: Fix compilation and load-time errors (such as `type not found` and `Undefined function: GET-TYPE` or `Unbound variable: CURRENT-DOMAIN`) caused by the inclusion of additional generated C# packages.
- **Modifications**:
  - **ASD Load Order**: Modified [dungeon-slime.asd](file:///home/dfields/src/cl/dotcl-dungeonslime/dungeon-slime.asd) to load components in a sequence that resolves circular compile-time/load-time dependencies:
    1. Base setup components: `packages.lisp`, `settings.lisp`, and `type-aliases.lisp` (which runs an `eval-when` block to load the external assembly `MonoGame.Framework.dll`).
    2. Package utilities: `monoutils.lisp`.
    3. Essential system package: `cspackages/system-app-domain.lisp` (which provides `current-domain` and `base-directory` macros/functions used by `utils.lisp`).
    4. General utilities: `utils.lisp` (which defines `utils:+base-directory+`).
    5. The remaining generated C# packages in `cspackages/` (which can now load and resolve `monoutils:get-type` and other functions).
  - **Package Definitions**: Updated [packages.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/packages.lisp) stub definitions for `:system-app-domain`, `:system-object`, and `:system-type` to export required symbols (`base-directory`, `current-domain`, `get-type`, `full-name`) early. This ensures that referencing packages (like `utils` and `monoutils`) can read these symbols during compile-time/load-time parsing before the actual `cspackages/` implementations are loaded.
- **Verification**:
  - Parentheses balance verified across all files using `make check-parens`.
  - Built the project successfully via `make build`.
  - Ran the test suite via `make test` and confirmed all tests pass successfully.


## Session: June 28, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 28, 2026 | [packages.lisp](packages.lisp) | Modified | Replaced obsolete `:time-span` nickname and resolved duplication of `:ts` nickname. Added `(:ts :system-time-span)` package local nickname mapping to `:dungeon-slime`, `:dungeon-slime-input`, and `:dungeon-slime-tests`. |
| June 28, 2026 | [animation.lisp](animation.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [game-1.lisp](game-1.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [texture-atlas.lisp](texture-atlas.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [input-manager.lisp](input-manager.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [cspackages-test.lisp](cspackages-test.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname, and refactored tests to use direct symbol calls instead of dynamic `find-symbol` reflections. |
| June 28, 2026 | [package-generator-tests.lisp](package-generator-tests.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [typed-calls-test.lisp](typed-calls-test.lisp) | Modified | Migrated TimeSpan calls to use the local `ts:` nickname. |
| June 28, 2026 | [poc-test.lisp](poc-test.lisp) | Modified | Migrated TimeSpan lookups to use the local `ts` package name and local nicknaming. |
| June 28, 2026 | [cspackages/system-time-span.lisp](cspackages/system-time-span.lisp) | Modified | Refactored overloaded standard operator dispatchers (`+`, `-`, `*`, `/`) to determine and invoke specific typed static method calls purely in Lisp, avoiding `MissingMethodException` errors from dynamic operator resolution. |
| June 28, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added documentation for local nickname migration and TimeSpan operator dispatchers. |

### 2. Explanations Log

#### Refactoring Dependencies and Simplifying REPL Load
- **Circular Dependency Elimination**: Replaced the call to `(app-domain:base-directory app-domain:current-domain)` in `utils.lisp` with direct native `.NET` interop calls on `System.AppDomain`. This completely broke the circular dependency of the utility layer on `system-app-domain.lisp`. Reverted stub packages in `packages.lisp` accordingly.
- **Linear Compilation Sequence**: Restored a clean, linear load sequence in `dungeon-slime.asd` where packages load, then settings, then type-aliases, then monoutils, then utils, then all wrapper packages in one block, followed by remaining files.
- **ASDF-Free Runtime Path Resolution**: Implemented a dynamic assembly loader wrapper in `type-aliases.lisp` checking `(find-package :asdf)`. When ASDF is loaded (such as in REPL or compile environments), it dynamically resolves paths relative to the ASDF system directory and loads the assemblies. When ASDF is absent (in standalone compiled executable environments), the logic is completely skipped, as the assemblies are already statically linked and loaded by the C# host process.
- **Self-Contained Loaders**: Moved `MonoUtilsRegistrar.Initialize` to a load-time `eval-when` block in `monoutils.lisp`. Streamlined `load-repl.lisp` to use `*content-directory*` and avoid duplicate assembly loads and registrar calls.

#### Deferring Test Execution to Test-Runner Mode Only
- **Objective**: Prevent the typed calls tests from running automatically when the system loads (e.g. during REPL startup or compilation), ensuring they only run when explicitly running tests.
- **Modifications**:
  - Removed `(run-typed-calls-tests)` top-level form from the end of `typed-calls-test.lisp`.
  - Added `(run-typed-calls-tests)` call inside the `run-all-tests` function in `test-harness.lisp`.
  - Verified that running `make test` executes all test cases (including typed calls) successfully, while loading the REPL no longer displays any test execution runs.

#### Migrating to TimeSpan C# Wrapper Package using Local Nicknames
- **Objective**: Migrate all code, tests, and wrapper usages from `csharp` timespan functions or full `system-time-span:` prefixes to the local package nickname `ts:`.
- **Modifications**:
  - Registered `(:ts :system-time-span)` package local nickname under `:dungeon-slime`, `:dungeon-slime-input`, and `:dungeon-slime-tests`.
  - Swapped out all occurrences of `system-time-span:` and `time-span:` with `ts:`.
  - Cleaned up dynamic test lookups in `cspackages-test.lisp` to call the local symbols directly, which avoids runtime nickname resolution constraints.

#### Resolving TimeSpan Operator Dispatch Exceptions
- **Objective**: Fix `System.MissingMethodException: Method 'System.TimeSpan.+' not found` thrown during runtime when standard operators (`+`, `-`, `*`, `/`) were called on TimeSpan instances.
- **Modifications**:
  - Refactored `cspackages/system-time-span.lisp`'s generic dispatchers for `+`, `-`, `*`, and `/` to determine argument count and types dynamically in Common Lisp, mapping them directly to C#'s IL names (`op_Addition`, `op_UnaryPlus`, `op_Subtraction`, `op_UnaryNegation`, `op_Multiply`, and `op_Division`).
| June 28, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Incremented generator version to 14. Added automatic type-based operator dispatching (cond) and qualified standard comparison checks (cl:=) in generated templates to avoid package shadowing conflicts. |
| June 28, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added details of Version 13 and Version 14 generator changes for operator overload type dispatch and CL package qualification. |

### 3. Package Generator Refactoring for Operator Overloads (Version 13 & 14)
* **Type-Based Operator Dispatching (Version 13)**: Refactored the package generator to output a runtime `cond` block for overloaded operator groups (such as `+`, `-`, `*`, `/`). The block inspects argument counts and types dynamically in Lisp and delegates to type-suffixed generated functions (e.g. `+-time-span-time-span`), resolving `MissingMethodException` errors caused by passing raw symbols like `"+"` to the .NET binder.
* **Standard Comparison Qualification (Version 14)**: Resolved another `MissingMethodException` on `op_Equality` caused by shadowed comparison operators. Because packages like `system-time-span` shadow `=`, test conditions like `(= (length args) 2)` inside the generated package resolved to `system-time-span:=`, causing recursive dispatch attempts on integers. Qualified all generated operator comparison tests with `cl:` (e.g., `(cl:= (length args) 2)`) to ensure they use standard Lisp comparison rather than the shadowed C# wrappers.
* **Verification**: Ran `make clean` (manually deleting `obj/` and `bin/` cache directories) and re-compiled all FASL files. Running `make test` passes successfully, and the game starts and runs cleanly via `make run` without throwing any reflection-related method exceptions.


## Session: June 28, 2026 (Part 2)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 28, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Incremented generator version to 15. Added `map-member-name` helper to map conflicting C# member names (`Quote`, `Function`, `T`, `Nil`) to safe names (`quote!`, `function!`, `t!`, `nil!`). Qualified all standard Common Lisp symbols (`defun`, `apply`, `cond`, `and`, `or`, `error`, `the`, `setf`, `length`, `nth`, `numberp`, `typep`, `stringp`, `list`, etc.) in emitted code templates with `cl:` package prefix. |
| June 28, 2026 | [mg-classes.lisp](mg-classes.lisp) | Modified | Uncommented vector constants (`+v2-0+`, `+v2-1+`, `+v2-x1+`, `+v2-y1+`), multiplication function (`v2*`), and normalized vector helper (`v2-normalize`), which can now run cleanly using the namespace-safe generated wrappers. |
| June 28, 2026 | [packages.lisp](packages.lisp) | Modified | Uncommented exports for Vector2 constants and helper functions. |
| June 28, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented namespace safety, reserved Lisp word mapping, and package prefix qualification rules for generator Version 15. |
| June 28, 2026 | [FILES.md](FILES.md) | Modified | Added description of Version 15 package generator features. |
| June 28, 2026 | [README.md](README.md) | Modified | Documented Version 13-15 generator versions and namespaces fixes. |
| June 28, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged Version 15 Namespace Safety modifications. |

### 2. Explanations Log

#### Namespace Safety and Standard Symbol Protection (Version 15)
- **Objective**: Fix the type-cast error/missing method exception during `v2:*` and ensure standard Lisp symbols are not shadowed or incorrectly resolved within generated code.
- **Reserved Lisp Words Protection**: Created `map-member-name` which maps C# members named `Quote`, `Function`, `T`, or `Nil` to safe Lisp names `quote!`, `function!`, `t!`, and `nil!`. This ensures critical Lisp symbols used by reader macros `'` and `#'` are never shadowed.
- **Prefix Qualification**: Qualified standard Common Lisp symbols (such as `defun`, `apply`, `cond`, `and`, `or`, `error`, `the`, `setf`, `length`, `nth`, `numberp`, `typep`, `stringp`, `list`, `boolean`, `t`, etc.) with the `cl:` package prefix inside all generated property accessor, method dispatcher, type check, and constructor templates.
- **Vector Helper Restoration**: Uncommented the `+v2-0+` to `+v2-y1+` constants, `v2*`, and `v2-normalize` in `mg-classes.lisp` and restored their exports in `packages.lisp`. Since `microsoft-xna-framework-vector2:length` now uses `cl:length` internally, it executes cleanly without attempting dynamic interop casts on Lisp lists.
- **Verification**: Cleaned out `obj/` and `bin/` directories. Built and compiled the package generator successfully, regenerated all wrappers via `make cspackages`, checked parentheses balance, and ran `make build test`. All tests passed cleanly, and `make run` boots and exits the game successfully.


## Session: June 28, 2026 (Part 3)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 28, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Incremented generator version to 16. Tracked `is-static-overload-p` per individual clean method overload (via `(getf cm :is-static)`) rather than using group-wide `static-p` resolution in Case 3 typed overload generation. This ensures static overloads grouped with instance methods are correctly generated as static wrappers utilizing `dotnet:static` and do not receive an implicit `obj` parameter. |
| June 28, 2026 | [game-1.lisp](game-1.lisp) | Modified | Replaced `(v2:normalize (v2:new normal-x normal-y))` with `(v2-normalize (v2:new normal-x normal-y))` inside the bat collision response logic (line 276) to resolve the struct boxing mutation issue. |
| June 28, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented static vs instance method name collisions in the package generator, value type/struct boxing mutation issues, and the Lisp-native `v2-normalize` workaround. |
| June 28, 2026 | [FILES.md](FILES.md) | Modified | Documented Version 16 package generator changes. |
| June 28, 2026 | [README.md](README.md) | Modified | Documented Version 16 package generator features. |
| June 28, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged Version 16 Overload Static Tracking and bat bounce modifications. |

### 2. Explanations Log

#### Overload Static Tracking (Version 16)
- **Objective**: Fix the bat bounce collision response failure caused by static vs instance name collisions in `Vector2.Normalize`.
- **The Bug**: Since `Vector2` defines both an instance `Normalize()` and static `Normalize(Vector2)`, the package generator grouped them by name. Because the instance overload appeared first, the group was classified as instance (`static-p` is `nil`). This caused the static method to be generated as an instance method `normalize-vector2` (expecting an `obj` receiver), and the passthrough `normalize` was overwritten by the 1-argument instance wrapper.
- **The Fix**: The package generator was modified to track `is-static-overload-p` per-overload rather than group-wide in Case 3. Static overloads grouped with instance methods are now correctly generated as static wrappers.

#### Struct Boxing and Mutation Workaround
- **Struct Boxing Mutation**: C# structs are value types. Invoking instance methods on a value type receiver (such as calling the instance method `Normalize()` on a `Vector2` instance in `game-1.lisp`) requires boxing the structure. The mutation is applied only to the boxed copy, which is discarded upon return, leaving the original Lisp reference unchanged. Since the instance method returns `void` (which is Lisp `nil`), calling `(v2:normalize ...)` returns `nil` and fails to normalize the vector, causing the velocity reflection `(v2:reflect (bat-vel game) normal)` to fail.
- **Workaround**: The bat collision bounce logic in `game-1.lisp` was updated to use the clean, tested `v2-normalize` helper defined in `mg-classes.lisp`, which uses the generated `length` wrapper and safely avoids NaN results on zero vectors.
- **Verification**: Rebuilt the generator (`make build`), regenerated the packages (`make cspackages`), ran parentheses checks (`make check-parens`), and verified that all automated tests passed successfully (`make test`). Manually ran the game (`make run`) and verified that the bat correctly bounces off screen boundaries, only triggers the crash sound once per bounce, and does not get stuck in corners or slide along walls.


## Session: June 29, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 29, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Incremented generator version to 17. Updated `camel-to-kebab` to convert C# string `"NaN"` directly to `"nan"` (generating constant wrappers as `+nan+`). Updated `map-member-name` to convert predicate methods/properties starting with `"Is"` followed by an uppercase letter (e.g. `IsNaN`, `IsEmpty`) to Lisp predicates ending with a question mark `?` (e.g. `nan?`, `empty?`), replacing the `"Is"` prefix. |
| June 29, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Documented Version 17 naming conventions updates. |
| June 29, 2026 | [FILES.md](FILES.md) | Modified | Documented Version 17 package generator features. |
| June 29, 2026 | [README.md](README.md) | Modified | Documented Version 17 package generator features. |
| June 29, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged Version 17 naming conventions modifications. |

### 2. Explanations Log

#### Idiomatic Lisp Naming Conventions (Version 17)
- **Objective**: Implement idiomatic Common Lisp naming conventions for C# properties and methods related to `NaN` and predicate checks starting with `Is`.
- **NaN and IsNaN Mapping**: The `"NaN"` field/property name is mapped directly to Lisp symbol name `"nan"` inside `camel-to-kebab` (so `System.Double.NaN` compiles as `+nan+`). The `"IsNaN"` method name maps to Lisp symbol name `"nan?"` instead of the literal `is-na-n`.
- **IsSomething Predicate Suffix**: Properties and methods whose C# name starts with `"Is"` followed by an uppercase letter are translated to Lisp predicates ending with a question-mark suffix `?`, removing the `is-` prefix (e.g. `IsEmpty` -> `empty?`, `IsActive` -> `active?`, `IsFinite` -> `finite?`). This handles boolean properties and check methods cleanly, producing highly idiomatic Lisp symbol interfaces.
- **Verification**: Built the package generator successfully, regenerated all wrappers via `make cspackages`, checked parentheses balance, and ran `make test`. All Lisp-native and interop tests passed successfully.


## Session: June 30, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the comprehensive project review and summary session. |

### 2. Explanations Log

#### Comprehensive Project Review and Summary
- **Objective**: Conduct a detailed review and summary of the codebase architecture, files, and interactions to prepare for upcoming refactoring phases.
- **Project Context**: The project is a .NET 10 MonoGame 2D game ("Dungeon Slime") written in Common Lisp via the DotCL environment, featuring a dual C#/Lisp runtime bridge, metadata extraction tool, automatic Lisp-wrapper package generator, input management, sound effect/music controllers, tilemap rendering, and collision detection systems.
- **C# Base and Core Utilities**:
  - [Program.cs](Program.cs) serves as the executable entry point, parsing CLI args for tests, assembly analysis, and running the game.
  - [MonoUtils.cs](MonoUtils.cs) / [monoutils.lisp](monoutils.lisp) coordinate low-level runtime reflection (e.g. `InvokeGeneric` and type-alias lookup).
  - [AssemblyToLispy.cs](AssemblyToLispy.cs) extracts structural metadata and XML documentation from .NET assemblies into S-expression format.
- **Lisp Wrapper Generation**:
  - [assembly-package-generator.lisp](assembly-package-generator.lisp) translates extracted S-expression metadata into idiomatic Lisp packages (placed under `cspackages/`) with type-suffixed overload functions, kebab-case mapping, and predicate translation.
- **Game Engine Components**:
  - [mg-core.lisp](mg-core.lisp) establishes the proxy class `MonoGameCLOSProxy` to dispatch lifecycle loops (Update, Draw, LoadContent) into Lisp.
  - [game-1.lisp](game-1.lisp) houses the core game logic, including score tracking, bat and slime entities, audio play triggers, and tilemap drawing.
  - [input-manager.lisp](input-manager.lisp), [collision.lisp](collision.lisp), [audio-controller.lisp](audio-controller.lisp), [tilemap.lisp](tilemap.lisp), [tileset.lisp](tileset.lisp), [sprite.lisp](sprite.lisp), [animation.lisp](animation.lisp), and [sprite-font.lisp](sprite-font.lisp) model corresponding game engine features in Common Lisp.
- **Interoperability and Infrastructure**:
  - [csharp.lisp](csharp.lisp) provides reader macros `#!` and `#!!` for direct instance/static calls.
  - [clr-generic.lisp](clr-generic.lisp) defines `defc#generic` and `defc#method` dispatch systems.
- **Verification**: Verified compilation via `make build` and ran the full test suite via `make test` successfully.

#### BY. Comprehensive DotCL 0.1.15 dotnet Package Analysis (v2)

1. **Objective**: Create a complete analysis of every function, macro, and
   special variable in the `dotnet` package as of DotCL v0.1.15, organized by
   functional category, with detailed documentation, internal mechanics, and
   usage examples. This supersedes the incomplete v1 analysis.
2. **Analysis Process**:
   - Reviewed the previous analysis file
     (`doc/opencode-qwen36-dotnet-analysis-0.1.15.md`) which covered 30
     functions across 15 categories.
   - Analyzed all C# source files in `../dotcl/runtime/` to find all
     `RegisterDotNet` calls in `Startup.cs` (lines 1928-2032).
   - Analyzed Lisp source files for macros and functions: `cil-stdlib.lisp`,
     `cil-macros.lisp`, `contrib/dotnet-class/dotnet-class.lisp`, and
     `contrib/dotnet-ffi/dotnet-ffi.lisp`.
   - Discovered 23 additional items not covered in the v1 analysis: 11
     native memory/FFI functions, 3 event/UI functions, 1 NuGet function,
     4 macros, 3 contrib utilities, and 1 compiler macro.
3. **Items Added (23 new entries)**:
   - `dotnet:require` (NuGet package management)
   - `dotnet:ui-invoke`, `dotnet:ui-post` (WinForms UI thread)
   - `dotnet:add-event`, `dotnet:remove-event` (event handling)
   - `dotnet:%ffi-call` (low-level FFI)
   - `dotnet:alloc-mem`, `dotnet:free-mem`, `dotnet:mem-read`,
     `dotnet:mem-write`, `dotnet:type-size`, `dotnet:type-align`
     (native memory operations)
   - `dotnet:load-library`, `dotnet:free-library`, `dotnet:find-symbol`,
     `dotnet:find-symbol-any`, `dotnet:library-path` (native library)
   - `dotnet:handler-bind` (macro for CLR exception dispatch)
   - `dotnet:define-class` (contrib macro), `dotnet:define-ffi` (contrib macro),
     `dotnet:ref` (contrib indexer sugar), `dotnet:using` (contrib macro),
     `dotnet:*type-aliases*` (contrib special variable)
4. **File Created**:
   `doc/opencode-qwen36-dotnet-analysis-0.1.15-v2.md` -- 53 total entries
   across 20 functional categories, with comprehensive details on internal
   C# mechanics, conditional compilation, and examples.


## Session: June 30, 2026 (Part 2)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 30, 2026 | [build-setup.lisp](build-setup.lisp) | Created | Created build-time Lisp initialization script to load Quicklisp and register system search hooks. |
| June 30, 2026 | [type-aliases.lisp](type-aliases.lisp) | Modified | Removed `DungeonSlime.dll` from compile-time load list to prevent build crashes, and set it to load dynamically only at runtime (load/execute). Added probe-file checks to verify that output directory and assemblies exist before loading. |
| June 30, 2026 | [DungeonSlime.csproj](DungeonSlime.csproj) | Modified | Integrated `<DotclBuildInit>` pointing to `build-setup.lisp`. Implemented `CopyReferencesBeforeLisp` target to automatically copy NuGet reference assemblies (like `MonoGame.Framework.dll`) to the output folder before Lisp compilation runs. Added template comment for `<DotclAsdSearchPath>`. |
| June 30, 2026 | [Makefile](Makefile) | Modified | Simplified the `build-actual` target to a single-step `dotnet build` call, eliminating the two-phase build and hardcoded environment variables. Simplified the `repl` target to run `dotcl` directly. |
| June 30, 2026 | [load-repl.lisp](load-repl.lisp) | Modified | Loaded `build-setup.lisp` at the start of the REPL load process to enable Quicklisp integration during interactive REPL sessions. |
| June 30, 2026 | [FILES.md](FILES.md) | Modified | Added entry for `build-setup.lisp`. |
| June 30, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Updated the build execution notes to document the `build-setup.lisp` and single-step build refactorings. |
| June 30, 2026 | [README.md](README.md) | Modified | Documented the new single-step build system and REPL launch steps. |
| June 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the build system refactoring session. |

### 2. Explanations Log

#### Upgraded and Modularized Build System
- **Objective**: Modernize the project's build system to leverage the new capabilities of DotCL, making it modular, self-contained, and clean.
- **Quicklisp Build-Time Integration**: Created `build-setup.lisp` which is declared as a `<DotclBuildInit>` script in `DungeonSlime.csproj`. During build, the MSBuild task loads `build-setup.lisp`, which automatically locates and loads Quicklisp from the user's home directory. This registers the Quicklisp system search functions with ASDF at build-time, allowing ASDF dependencies (such as `anaphora`) to resolve naturally without requiring manual environment variables (`CL_SOURCE_REGISTRY`) or wrappers.
- **Single-Step Compile and Clean Rebuilds**: Added the `CopyReferencesBeforeLisp` target to `DungeonSlime.csproj`. It copies all NuGet reference assemblies (like `MonoGame.Framework.dll`) to the output directory before Lisp compilation runs.
- **Compile-time Assembly Loading Separation**: Modified `type-aliases.lisp` to remove the compile-time (`compile-toplevel`) dependency on `DungeonSlime.dll` (which is the output of the compilation itself and does not yet exist on a clean build). `DungeonSlime.dll` is now loaded dynamically only during runtime load/execute phases (e.g. when launching a standalone REPL), and both compile-time and run-time assembly loaders are wrapped in robust `probe-file` checks.
- **Verification**: Cleaned build directories via `make clean` and rebuilt in one step via `make build`. Ran the automated tests successfully via `make test` and verified that the game starts up and loads all textures and assets cleanly via `make run`. Ran the interactive REPL via `make repl` and verified that it successfully loads the game package and boots to the `DUNGEON-SLIME>` prompt without any errors.

#### Explanation of None Remove items in .csproj
- **Objective**: Explain the purpose of removing `main.lisp` and `dungeon-slime.asd` from the `<None>` item group in the project file.
- **Explanation**: In .NET SDK-style projects, files in the project directory are automatically included in default item groups (such as `<None>` for non-C# files) by the SDK's default globbing rules. By specifying `<None Remove="..." />`, these Lisp files are excluded from the default `<None>` group. This prevents the raw Lisp source files from being processed by default MSBuild copy tasks (which might copy them to the root of the output directory), keeping them reserved exclusively for DotCL's custom build compilation and bundling targets.

#### Explanation of ProjectReference items in .csproj
- **Objective**: Explain the purpose of the ProjectReference nodes for `DotCL.Runtime.csproj` and `AssemblyToLispyTestTarget.csproj`, and identify alternative approaches.
- **Explanation**: 
  - `DotCL.Runtime.csproj` reference: Imports and builds the local in-tree DotCL runtime library, providing the Lisp execution engine, interop capabilities, and custom build tasks. An alternative approach is to reference a compiled `DotCL.Runtime` NuGet package via a `<PackageReference>` node (e.g. `<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`).
  - `AssemblyToLispyTestTarget.csproj` reference: Integrates a C# target assembly built specifically as a test fixture. This allows the metadata extraction tool (`AssemblyToLispy.cs`) and its Lisp unit tests to load and verify edge cases on a known target assembly. An alternative approach is to build the test fixture separately and refer to the output DLL directly using a `<Reference>` node with a `<HintPath>`, or copy the compiled binary DLL directly into a test resource folder.

#### Explanation of Contrib copy in .csproj
- **Objective**: Explain if the `contrib` folder copy ItemGroup is still required and its relation to `CopyReferencesBeforeLisp` and DotCL 0.1.15.
- **Explanation**: 
  - The `contrib` copying section is still required.
  - Relation to `CopyReferencesBeforeLisp`: The `CopyReferencesBeforeLisp` target only copies NuGet assembly references (DLLs) matched in `@(ReferenceCopyLocalPaths)`. It does not copy source files from the sibling `../dotcl/contrib` directory.
  - Relation to DotCL 0.1.15: When using a local `<ProjectReference>` to `DotCL.Runtime.csproj` (instead of a NuGet `<PackageReference>`), MSBuild does not automatically copy sibling folder assets like `contrib`. Therefore, this manual `<None>` copy configuration is necessary to place the `contrib/` directory (which contains Lisp systems like `asdf` and `uiop`) into the build output folder. This folder is resolved at runtime when calling `(require "asdf")`.

#### Explanation of Dotcl.targets Import in .csproj
- **Objective**: Explain the purpose of importing `Dotcl.targets`, if it is still needed in 0.1.15, and identify a more portable alternative.
- **Explanation**: 
  - Purpose: Imports the Lisp compilation MSBuild targets (such as `DotclResolveDeps` and `DotclCompileRoot`) from the local sibling DotCL check-out, enabling Lisp source compilation and dependency bundling during `dotnet build`.
  - Necessity in 0.1.15: It is still required when referencing DotCL via a local `<ProjectReference>` because the MSBuild tasks must be loaded into the build context to compile Lisp files.
  - Portable Alternative: If the project transitions to referencing `DotCL.Runtime` via a NuGet `<PackageReference>` (e.g., `<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`), MSBuild will automatically import the package's build targets from the NuGet package cache. This eliminates the need for the manual `<Import>` node and removes the relative pathname dependency (`..\dotcl\runtime\build\Dotcl.targets`).


## Session: June 30, 2026 (Part 3)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 30, 2026 | [DungeonSlime.csproj](DungeonSlime.csproj) | Modified | Documented each section in the MSBuild project file with detailed XML comments describing what they do and why they are necessary. |
| June 30, 2026 | [README.md](README.md) | Modified | Updated build steps and system features to document the transition to NuGet PackageReference and the removal of the sibling check-out requirement. |
| June 30, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Updated build execution notes to document the pure package-based build, package targets, and `$(_DotCLContribDir)` folder copy. Removed obsolete note on the broken 0.1.12 package. |
| June 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the PackageReference migration session. |

### 2. Explanations Log

#### PackageReference Migration
- **Objective**: Decouple the build system completely from the local sibling `../dotcl` repository by migrating to `PackageReference`.
- **NuGet Package Reference Integration**: Replaced the local project reference and custom MSBuild imports with `<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`. MSBuild automatically imports package targets and resolves dependencies in-process during standard builds.
- **Portable Contrib Asset Copying**: Reconfigured the `contrib` folder copy step to source files from `$(_DotCLContribDir)` (the NuGet package's assets directory) rather than a relative local pathname. The ItemGroup condition is gated on `$(_DotCLContribDir)` not being empty to prevent MSBuild glob evaluation errors during pre-restoration build phases.
- **Adjusted Target Hooks**: Updated the custom `CopyReferencesBeforeLisp` and `WriteOutDirForLisp` targets to run before `_DotCLResolveDeps` and `_DotCLCompileRoot` respectively, matching the target hook names exposed by the NuGet package targets.
- **Verification**: Cleaned build directories via `make clean` and successfully built the project in a single step via `make build`. Ran the automated tests successfully via `make test` and verified that the game starts up and loads all textures and assets cleanly via `make run`. Ran the interactive REPL via `make repl` and verified that it successfully loads the game package and boots to the `DUNGEON-SLIME>` prompt without any errors, resolving assemblies and C# types correctly from the package assets.
#### Explanation of Contrib Directory Contents and lack of .fasl files
- **Objective**: Explain why there are fewer files and no `.fasl` files in `bin/.../contrib/` compared to before the refactoring.
- **Explanation**: 
  - The difference is correct and reasonable.
  - Sourcing difference: Previously, MSBuild copied files from the local sibling `../dotcl/contrib/` folder, which contained compiled `.fasl` files left over from previous local compiler or REPL runs in the `dotcl` source tree. The NuGet package only distributes raw Lisp source files (`.asd` and `.lisp`) in its `dotclassets/contrib/` directory to remain architecture-independent and minimal.
  - Automated compilation: For any `contrib` systems that the game depends on (such as `dotnet-class`, `dotcl-thread`, and `dotcl-repl`), the DotCL compilation tasks compile them on-the-fly and copy the compiled `.fasl` files directly into `bin/.../dotcl-fasl/` rather than placing them in the `contrib/` subdirectory.
  - On-the-fly compilation: If any other non-dependency `contrib` system is loaded at runtime (e.g. during a REPL session), ASDF compiles it on-the-fly and caches the output in the user's local FASL cache (`~/.cache/common-lisp/`).


## Session: June 30, 2026 (Part 4)

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| June 30, 2026 | [game-1.lisp](game-1.lisp) | Modified | Qualified the `bounce-sound` and `collect-sound` loading paths using `qualify-path` to ensure they are resolved relative to the application base directory rather than the current working directory. |
| June 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the audio path qualification fix. |

### 2. Explanations Log

#### Audio Path Qualification Fix
- **Objective**: Fix a runtime crash that occurs when the game is launched from a working directory other than the application binary directory (such as when testing with another user).
- **Path Resolution Issue**: The `sound-effect:from-file` method delegates to `Microsoft.Xna.Framework.Audio.SoundEffect.FromFile`, which resolves relative paths against the process's current working directory (`Environment.CurrentDirectory`) rather than the application's base folder. When launched from `/home/dummy`, it looked for `/home/dummy/Content/audio/bounce.wav` and crashed.
- **Fix**: Wrapped the `"Content/audio/bounce.wav"` and `"Content/audio/collect.wav"` load paths in `qualify-path`. This resolves them relative to `+base-directory+` (the application's installation folder) where the compiled `Content/` folder is located.
- **Verification**: Built successfully and verified that the test suite continues to pass.

### 3. Additional File Modifications Log (Part 4)

| Date | File | Action | Description |
|---|---|---|---|
| June 30, 2026 | [DungeonSlime.csproj](DungeonSlime.csproj) | Modified | Added a copy task to copy raw `.wav` files under `Content/audio/` to the build output directory so they are present for `SoundEffect.FromFile` filesystem loads. |
| June 30, 2026 | [utils.lisp](utils.lisp) | Modified | Updated `qualify-path` to convert the resolved pathname object to its native string representation using `uiop:native-namestring` to prevent interop method signature mismatch during static interop invocations. |
| June 30, 2026 | [game-1.lisp](game-1.lisp) | Modified | Wrapped audio resource loading and playback initialization in a `handler-case` to catch OpenAL device initialization and other audio resource exceptions gracefully without crashing. Also qualified the theme song path (`Content/audio/theme.ogg`) and set the URI kind to `Absolute` to prevent directory resolution mismatches when launched from different folders. Mapped constructor to `RelativeOrAbsolute` URI kind to resolve path formatting exceptions. |
| June 30, 2026 | [audio-controller.lisp](audio-controller.lisp) | Modified | Wrapped playback controls and volume getters/setters in `handler-case` expressions and added `null` checks to guarantee safety if the audio device fails to initialize. |
| June 30, 2026 | [README.md](README.md) | Modified | Added a "Portable Execution & Multi-User Testing Considerations" section documenting design details and guidelines for future portable development. |
| June 30, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added a "Multi-User Portability and Exception-Safe Audio Support" section detailing build copying, path string conversion, URI parsing, and audio fallback structures. |
| June 30, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the exception-safe audio handling and documentation fixes. |
| July 1, 2026 | [sprite.lisp](sprite.lisp) | Modified | Fixed `(slot-boundp spr 'region spr)` to `(slot-boundp spr 'region)` in `sprite-center-origin`. The 3-arg form is `(slot-boundp obj slot slot-name)`, but the third argument was the object itself (`spr`) instead of the slot name (`'region`). This prevented the function from correctly detecting when the region was unbound and silently skipped setting the origin to center. |
| July 1, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the slot-boundp bug fix in sprite-center-origin. |
| July 2, 2026 | [assembly-package-generator.lisp](assembly-package-generator.lisp) | Modified | Implemented Version 18 overload resolution: determined positional parameter prefix solely by lack of default values up to `min-len` regardless of parameter names, mapped positional parameters by index inside action generator, introduced optional positional parameters via `cl:&optional` for parameters between `min-len` and `max-mandatory-len`, and replaced runtime package name queries with compile-time literal string generation. |
| July 2, 2026 | [cspackages-test.lisp](cspackages-test.lisp) | Modified | Updated Contains and Division test cases to align with the new positional/optional overload interface, and verified exception class name, method name, package name, and supplied-args keys/values. |
| July 2, 2026 | [collision-test.lisp](collision-test.lisp) | Modified | Reverted Contains test assertions to use the clean positional interface instead of keywords. |
| July 2, 2026 | [README.md](README.md) | Modified | Documented Lisp Package Generator v18 features. |
| July 2, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Added detailed technical documentation of Version 18 overload resolution rules and package-name diagnostics. |
| July 2, 2026 | [doc/package-generator-dependencies.md](doc/package-generator-dependencies.md) | Created | Documented the external dependencies of the package generator code and its generated package wrappers. |
| July 2, 2026 | [FILES.md](FILES.md) | Modified | Added doc/package-generator-dependencies.md and Version 18 overload changes. |
| July 2, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged Version 18 overload resolution improvements and dependencies documentation. |


#### O. C# Overload Resolution Improvements (Version 18)
- **Objective**: Fix type dispatch and runtime lookup failures for overloaded C# methods (e.g. `TimeSpan.FromMilliseconds`, `Rectangle.Contains`, operator overloads like `+`).
- **Positional Prefix Fix**: Changed the positional parameter prefix selector `common-parameter-prefix` to ignore C# parameter names and match parameters purely by position/index if they do not have default values. This allows methods with varying parameter names across overloads to be called positionally.
- **Optional Positional Parameters**: Introduced optional positional parameters using `cl:&optional` (with `supplied-p` variables) instead of keyword arguments for parameters between `min-len` and `max-mandatory-len`. This ensures arity-based overloads (such as operator overloads like `+`) can be called positionally, resolving keyword argument mismatch crashes (`odd number of keyword arguments`).
- **Index-Based Parameter Mapping**: Updated the invocation code generator `format-master-overload-action` to map method parameters back to their bound variables by index instead of name. This prevents unbound variable errors in the generated master wrapper bodies.
- **Literal Diagnostics**: Generated package names as literal string constants inside the fallback branch of master wrappers when raising `csharp-overload-not-found`, resolving diagnostic package retrieval bugs.
- **Verification**: All 8 test suites built and passed successfully, and the game runs cleanly.



## Session: July 4, 2026

### 1. File Modifications Log

| Date | File | Action | Description |
|---|---|---|---|
| July 4, 2026 | [Content/fonts/04B_30.ttf](Content/fonts/04B_30.ttf) | Modified | Replaced temporary system font fallback with the correct original pixel font copied from ~/Downloads. |
| July 4, 2026 | [packages.lisp](packages.lisp) | Modified | Exported `scene`, `title-scene`, `gameplay-scene`, `active-scene`, `next-scene`, and `change-scene`. |
| July 4, 2026 | [dungeon-slime.asd](dungeon-slime.asd) | Modified | Added `scene.lisp`, `title-scene.lisp`, `gameplay-scene.lisp`, and `scene-test.lisp` components. |
| July 4, 2026 | [mg-core.lisp](mg-core.lisp) | Modified | Added slots `active-scene` and `next-scene` to `core`. Updated `update`, `draw`, and `dispose` to delegate to the active scene. Implemented `change-scene` and `transition-scene`. |
| July 4, 2026 | [scene.lisp](scene.lisp) | Created | Implemented base abstract scene class and lifecycle protocol. |
| July 4, 2026 | [title-scene.lisp](title-scene.lisp) | Created | Implemented start/title screen rendering and transition handling. |
| July 4, 2026 | [gameplay-scene.lisp](gameplay-scene.lisp) | Created | Implemented gameplay scene housing slime-vs-bat gameplay logic and boundary checks. |
| July 4, 2026 | [game-1.lisp](game-1.lisp) | Modified | Simplified to a bootstrap container class that triggers the title scene. |
| July 4, 2026 | [scene-test.lisp](scene-test.lisp) | Created | Implemented unit tests for scene lifecycle and transitions. |
| July 4, 2026 | [test-harness.lisp](test-harness.lisp) | Modified | Hooked up `run-scene-tests` to `run-all-tests`. |
| July 4, 2026 | [README.md](README.md) | Modified | Documented Chapter 17 Scene Management features and updated Font credits to point to its FontSpace page. |
| July 4, 2026 | [doc/implementation-notes.md](doc/implementation-notes.md) | Modified | Updated font installation and credit details. |
| July 4, 2026 | [FILES.md](FILES.md) | Modified | Added file descriptions for new scene-related files. |
| July 4, 2026 | [antigravity-log.md](antigravity-log.md) | Modified | Logged the Scene Management implementation session. |
| July 4, 2026 | [scene-test.lisp](scene-test.lisp) | Modified | Fixed parenthesis mismatch in run-scene-tests. |
| July 4, 2026 | [gameplay-scene.lisp](gameplay-scene.lisp) | Modified | Extended let* block in update method to keep game and kb in scope across the entire gameplay update logic, fixing runtime unbound-variable errors. |

### 2. Explanations Log

#### CLOS-Based Scene Management (Chapter 17)
- **Objective**: Implement a modular screen management architecture separating the title screen from main gameplay logic in a highly Lisp-idiomatic CLOS manner.
- **Disposal & Garbage Collection**: Designed a Lisp-native `dispose` method on the base `scene` class that unloads the scene's private `.NET` `ContentManager` using `(cm:unload (scene-content scene))` and `(cm:dispose (scene-content scene))`. In the core scene transition, the old scene reference is overwritten/cleared, and `(dotnet:static "System.GC" "Collect")` is called to force deterministic reclamation of graphics assets.
- **Bootstrapping**: Simplified `game-1` to only call base MonoGame initialization and queue the start screen `title-scene` as the next scene.
- **Font Replacement**: Overwrote the system `Adwaita` font fallback with the original `04B_30.ttf` pixel font and credited its author.
- **REPL Asset Loading Fix**: Fixed a crash in the REPL where the scene-specific `ContentManager` instances failed to resolve asset paths like `images/logo`. Modified `scene.lisp`'s `:after` `initialize-instance` method to query and inherit the `RootDirectory` property dynamically from the game's main `ContentManager` rather than hardcoding `"Content"`. This ensures the fully qualified `*content-directory*` path set by `load-repl.lisp` propagates to all scenes when running under the REPL environment.
- **Gameplay Update Scope Fix**: Corrected a runtime unbound-variable error (`#<UNBOUND-VARIABLE: GAME>`) that prevented collision detection and scoring from executing. The closing parenthesis of the initial `let*` block in `update ((scene gameplay-scene) gt)` was misplaced, causing all subsequent movement checks and collision calculations to run outside the scope of `game` and `kb`. Extended the `let*` block to wrap the entire method body.
- **Font Build Recompilation**: Documented that replacing a raw `.ttf` font file does not automatically trigger a rebuild in the MonoGame Content Pipeline (MGCB) task because the compiler only monitors the `.spritefont` XML descriptor file for modifications. Touching `Content/fonts/04B_30.spritefont` successfully updates its timestamp, forcing MGCB to recompile the font to `04B_30.xnb` and copy it to the build output directory. Added a corresponding note block to `README.md` to instruct future developers on how to force font recompilation.
