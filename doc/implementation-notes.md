# Implementation Notes

* Author: Douglas P. Fields, Jr - symbolics@lisp.engineer

This document contains some notes on how this was implemented,
how various implementation challenges were met (or not), and
notes about how to do things in the future.


# Lisp Packages for C# Classes

## Generating Constants for Static Properties

The `assembly-package-generator.lisp` tool generates Lisp bindings for .NET assemblies.
By default, it generates static properties (like `Vector2.Zero` or `Color.White`) as dynamic
symbol macros via `(define-symbol-macro ...)` since they are technically properties, not
constant fields, and reflection cannot distinguish whether a static read-only property's
value could change.

However, many types like `Microsoft.Xna.Framework.Vector2` and `Microsoft.Xna.Framework.Color`
have properties that act identically to constants. To optimize these, the `--constant-properties`
command-line flag was added to the generator. It accepts a comma-separated list of properties
to treat as compile-time constants (evaluated at macro-expansion load-time in Lisp using
`defconstant`). Passing `*` (e.g., `--constant-properties "*"`) marks all read-only
static properties of the class as constants.

Example Usage:
```bash
bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Color --output cspackages --constant-properties "*"
```
This forces properties like `Color.White` to be emitted as `(defconstant +white+ ...)`
instead of `(define-symbol-macro white ...)` improving performance and avoiding repeated
reflection evaluations.

## Direct Method Calls via Type Declarations

Starting in DotCL 0.1.11, method calls on C# instances can be optimized to direct
calls (avoiding runtime reflection and boxing/unboxing overhead, resulting in an
approximate 3.5x performance increase) by wrapping the receiver object in a
type declaration using the `the` operator.

The syntax for declaring a .NET type for a receiver is:
```lisp
(the (dotnet "Fully.Qualified.TypeName") receiver-form)
```

For instance, in `assembly-package-generator.lisp`, instance method stubs are
automatically optimized for reference types (classes/interfaces, excluding
structs and enums which are value types and not yet supported by `the` casting)
like so:
```lisp
(defun dispose (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "Dispose"))
```

If the actual object passed at runtime does not match the declared type, DotCL
will raise a `DotCL.LispErrorException` indicating the invalid cast.


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


# .NET CLOS Integration in DotCL 0.1.9

DotCL 0.1.9 introduces the ability for CLOS generic functions (`defgeneric`)
to dispatch natively on instances of C# classes created via `dotnet:define-class`
as well as raw C# framework types (e.g., `Microsoft.Xna.Framework.Vector2`).

## Class Registration and Naming

When DotCL encounters a native C# object for the first time, or when `(class-of obj)`
is explicitly called on it, DotCL lazily creates a CLOS wrapper class for the .NET type.
This wrapper is placed in the `dotcl-internal` package and named after the short name
of the C# class.
For example, `Microsoft.Xna.Framework.Vector2` becomes `dotcl-internal::|Vector2|`.

Internally, this registration happens in the DotCL compiler/runtime source code within
`Runtime.CLOS.cs`, specifically in the `EnsureDotNetTypeClass(Type type)` function.
This function creates a new `LispClass` and inserts it into the global `_classRegistry`
dictionary, mapping the simple C# name (and its uppercase variant) to the CLOS class wrapper.
Because `EnsureDotNetTypeClass` recursively calls itself on the type's `BaseType`, invoking
`class-of` on a C# object recursively creates a Lisp class hierarchy that accurately mirrors
the .NET inheritance tree (e.g. `System.ValueType`, `System.Object`).

To specialize a `defmethod` on a raw C# type, use an internal symbol as the class specializer:
```lisp
(defmethod get-x ((obj dotcl-internal::|Vector2|))
  (dotnet:invoke obj "X"))
```

### Warning: Namespace Collision (Bug?)

Because `EnsureDotNetTypeClass` explicitly uses the *short name* of the C# type
(`type.Name` instead of `type.FullName`), it is impossible to distinguish between
classes with the same name in different namespaces (e.g., `System.Object`
and `Dougs.Special.Object`).

When DotCL encounters the first of these classes, it registers `dotcl-internal::|Object|`
and maps the C# type to it. When it encounters the second class, it queries `_classRegistry`
with the same short name, finds the existing CLOS wrapper, and binds the second C# type to
the exact same CLOS class.

Consequences:
1. **Broken Method Dispatch**: A `defmethod` targeting `dotcl-internal::|Object|` will
   fire indiscriminately for instances of both `System.Object` and `Dougs.Special.Object`.
   It is not possible to specialize methods for one but not the other.
2. **Broken Inheritance**: The `ClassPrecedenceList` in Lisp is evaluated only for the first
   type registered. The second type completely loses its own inheritance tree in the Lisp
   layer and silently adopts the CPL of the first class.

## The Compile-Time Constraint

In Common Lisp, `defmethod` is a macro that expands at compile time. During this
expansion, it calls `find-class` to verify the existence of the class being specialized.

In this project, `make build` compiles the code using the standalone DotCL compiler. The
compiler process only loads standard .NET runtime libraries; it **does not** load the
application-specific assemblies, such as `MonoGame.Framework.dll`.
If a top-level `(defmethod ... ((obj dotcl-internal::|Vector2|)) ...)` is included statically
in the code, the compiler will attempt to resolve `Vector2`, fail to find the MonoGame
assembly, and hard-crash the compilation with `FIND-CLASS: no class named Vector2` or
`DOTNET: type not found: Microsoft.Xna.Framework.Vector2`.

## Workarounds

### Option 1: The `eval` Workaround

To resolve the compile-time failure, the macro-expansion of `defmethod` must be deferred
until *runtime*, when the MonoGame assembly is fully loaded by the `Program.cs` host.

Achieve this by quoting the method definition and passing it to `eval` inside a function:
```lisp
(defun register-clr-methods ()
  ;; 1. Force the registration of the CLOS wrapper class.
  ;; Instantiate a dummy object, OR better yet, invoke DotCL's
  ;; internal registration method directly via the static interop layer:
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))

  ;; 2. Dynamically evaluate the defmethod at runtime.
  ;; The compiler skips expanding this because it's just data.
  (eval '(defmethod get-x ((obj dotcl-internal::|Vector2|))
           (dotnet:invoke obj "X"))))
```
By executing this function at program startup, the compiler's strict type
verification is bypassed while fully preserving standard CLOS method dispatch
performance at runtime.

### Option 2: Loading Assemblies at Compile Time

To completely avoid the `eval` workaround and write standard, native `defmethod` code
at the top level, manually instruct the compiler to load the required assembly into
its own process space *before* it begins macro-expanding the methods.

This is done using standard Common Lisp `eval-when` blocks to explicitly load the
necessary assembly `.dll` and forcefully register the types during both the
`:compile-toplevel` and `:load-toplevel` phases.

```lisp
;; 1. The :compile-toplevel Phase
;; When DotCL compiles this file into a FASL, the compiler process needs to know about
;; the .NET types to successfully macro-expand `defmethod` and verify the classes exist.
;; Because the compiler runs from a different working directory, we must supply the
;; absolute path to the MonoGame.Framework.dll to ensure it loads successfully.
(eval-when (:compile-toplevel)
  (let* ((outdir-file (merge-pathnames "obj/dotcl-outdir.txt" (asdf:system-source-directory "dungeon-slime")))
         (bin-dir (with-open-file (s outdir-file) (read-line s)))
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (dotnet:load-assembly (namestring dll-path)))
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
    (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

;; 2. The :load-toplevel and :execute Phase
;; When the built game runs (or when evaluating this file directly via a REPL), the
;; .NET runtime automatically resolves dependencies like MonoGame since it is located
;; alongside the executable in the bin/ directory. Therefore, it is *not* needed to explicitly
;; load the assembly again using a hardcoded path. However, it is *still* necessary to ensure
;; that the CLOS wrappers are registered before `find-class` is called at runtime.
(eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

;; 3. Define methods natively!
;; Because the types are now fully loaded and registered within the compiler's CLOS environment,
;; `find-class` will succeed during compilation, allowing seamless top-level method definition.
(defmethod get-x ((obj dotcl-internal::|Vector2|))
  (dotnet:invoke obj "X"))
```

### MSBuild Dependency Timing Issue

When using **Option 2**'s `eval-when` mechanism, the Lisp compiler explicitly reads
`MonoGame.Framework.dll` from the output `bin/` directory. However, the custom MSBuild
target that triggers DotCL compilation (`DotclCompileRoot`) runs during the `BeforeBuild` phase.

This happens *before* the standard C# target `CopyFilesToOutputDirectory` has had a chance
to extract NuGet dependencies and place them into `bin/`. Consequently, if a
fresh build is run after a `make clean`, the Lisp compiler will immediately crash with a
`FileNotFoundException` because the `.dll` has not yet been extracted.

To bypass this timing issue without rewriting DotCL's internal `Dotcl.targets`,
a **Two-Stage Build** is used in the `Makefile`:

```makefile
build-actual:
	# 1. Build without DotCL targets (-p:DotclProjectAsd="")
	#    This forces MSBuild to resolve NuGet packages and fully populate bin/
	dotnet build DungeonSlime.csproj -c Debug -p:DotclProjectAsd=""
	
	# 2. Build normally. The DLLs are now present for DotCL to safely load during compile-time.
	dotnet build DungeonSlime.csproj -v d -c Debug
```

## Defining C# Types from Lisp

When defining new C# proxy classes from Lisp using `dotnet:define-class` (or its
underlying components), always pass parameter and field types as fully-qualified strings
(e.g., `"System.Double"`) instead of unquoted symbols (e.g., `System.Double`).
Symbols without string qualification might fail to resolve during macro expansion if the
namespace environment isn't strictly controlled, whereas explicit string declarations
correctly guide DotCL's internal reflection (`dotnet:resolve-type`).

## **Final Solution**

The file `type-aliases.lisp` has a list of assemblies and classes.
These assemblies are loaded at compile time, and the classes are registered
with DotCL for generic method dispatch.

This needs to be updated with all the classes being used for dispatch prior
to adding generic methods using those classes.


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
BIN_DIR := $(shell dotnet build DungeonSlime.csproj -getProperty:OutputPath)
```

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
<Target Name="WriteOutDirForLisp" BeforeTargets="DotclCompileRoot" Condition="'$(DotclProjectAsd)' != ''">
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


# DotCL Compilation Caching (`DotclCompileRoot`)

When integrating DotCL with MSBuild via `Dotcl.targets`, the actual execution of the Lisp compiler is
managed by the `DotclCompileRoot` MSBuild target.

This target is configured with specific `Inputs` (all the `.lisp` files in the project and the
`.asd` file) and `Outputs` (the compiled `.fasl` file). This enables MSBuild's native incremental
build caching mechanisms.

When running `make build` or `dotnet build` multiple times in a row without making any modifications
to the source files, MSBuild detects that the `.fasl` output file is already newer than all of the
`.lisp` input files. When this happens, MSBuild prints a message stating:
`Skipping target "DotclCompileRoot" because all output files are up-to-date with respect to the input files.`

Because the compilation target is completely skipped, the DotCL compiler process is never launched.
Consequently, any code inside `eval-when (:compile-toplevel)` blocks (such as `format` diagnostic prints,
programmatic assembly loads, or macro expansions) will **not** be executed again, and no compile-time output
will be printed to the console.

When debugging compile-time macros or `eval-when` logic and want to force the compiler to run so as to
see the outputs, the MSBuild cache must be invalidated by either:

1. Making a modification to any `.lisp` file or the `.asd` file (e.g., adding a space and saving it).
2. Running `make clean` (or `dotnet clean`) to delete the `obj/` and `bin/` directories, forcing MSBuild to
   rebuild the `.fasl` from scratch on the next build.


# Mismatched Parentheses in Common Lisp

Mismatched parentheses in Common Lisp can lead to extremely confusing compilation
errors, such as package lookup failures or symbols being reported as not external.
This occurs because an extra or missing parenthesis can cause the Lisp reader
to exit a macro definition or top-level form prematurely, causing subsequent forms
to be parsed in the wrong context or skipped entirely.

As soon as any compilation problems or other errors are encountered, the parentheses
balance of all modified files must be checked individually.

## Diagnosing Parentheses Mismatches

Several methods can be used to locate mismatched parentheses:

1. **Detailed MSBuild Diagnostic Verbosity**:
   Run `dotnet build -v d` or `make build` to inspect the exact command executed,
   and locate the concatenated source file (e.g.,
   `obj/Debug/net10.0/ubuntu.24.04-x64/dotcl-fasl/DungeonSlime.concat.lisp`).
   Inspecting the concatenated file helps isolate which original source file
   contains the mismatched paren.

2. **Automated Parentheses Validator (`check_parens.py`)**:
   A Python script [check_parens.py](file:///home/dfields/src/cl/dotcl-dungeonslime/check_parens.py)
   is located in the repository root directory. The script scans Lisp files, maintaining a stack
   of open parentheses to locate mismatches, while correctly skipping string literals,
   character literals (such as `#\(` or `#\;`), single-line comments,
   and nested multi-line block comments (`#| ... |#`).

   The check can be executed across all `.lisp` and `.asd` files in the workspace by running:
   ```bash
   make check-parens
   ```

   Alternatively, it can be run manually on specific files:
   ```bash
   python3 check_parens.py file1.lisp file2.lisp
   ```


# Instance Properties and Struct "Boxing Mutation"

The generator (`assembly-package-generator.lisp`) emits accessor (`property-name`)
and mutator (`(setf property-name)`) functions for C# instance properties.

When invoking a setter on an instance property of a **value type (struct)** via `dotnet:invoke`,
DotCL boxes the struct. Modifying a property through the generated Lisp `setf` mutator
(e.g., `(setf (property-name my-struct) new-val)`) might only mutate the boxed copy inside
the CLR boundary, leaving the original `my-struct` variable in Lisp unmodified.

Therefore, users should exercise caution when mutating properties on C# structs from Lisp.
A comment

```lisp
;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
```
is automatically inserted above property mutators generated for structs to alert users
of this behavior.

Reference types (classes) do not suffer from this issue.

In addition, Lisp properties with only a setter (write-only properties) are generated
with the name `set-propertyname` and accept the receiver as the first argument:
`(set-propertyname obj new-value)`.

## Example Transcript

```lisp
DUNGEON-SLIME> (defparameter x color:+white+)
X
DUNGEON-SLIME> x
#<DOTNET Microsoft.Xna.Framework.Color {R:37 G:255 B:255 A:255}>
DUNGEON-SLIME> (setf (color:r x) (dotnet:box 37 "System.Byte"))
#<DOTNET-BOXED Byte 37>
DUNGEON-SLIME> x
#<DOTNET Microsoft.Xna.Framework.Color {R:37 G:255 B:255 A:255}>
DUNGEON-SLIME> (setf (color:r x) (#!!System.Convert.ToByte 40))
#<DOTNET System.Byte 40>
DUNGEON-SLIME> x
#<DOTNET Microsoft.Xna.Framework.Color {R:40 G:255 B:255 A:255}>
DUNGEON-SLIME> (setf (color:r x) (the (dotnet "System.Byte") 55))
Error: Method 'Microsoft.Xna.Framework.Color.set_R' not found.
```


# DotCL 0.1.12 Build Execution Changes and ASDF Loading

In DotCL 0.1.12, the build pipeline natively supports automatically bundling dependencies (like Quicklisp systems) during MSBuild execution via `Dotcl.targets`.

Previously, dependencies like `anaphora` required complex `eval-when` workarounds to inject paths into `asdf:*central-registry*` at both compile-time and run-time, and required explicit MSBuild copy targets to bundle the source files into the binary folder.

**The Streamlined Approach:**
1. **Dependencies via `CL_SOURCE_REGISTRY`**: Instead of manually pushing paths to ASDF in Lisp, pass the `CL_SOURCE_REGISTRY` environment variable directly to `dotnet build` in the `Makefile`.
   ```makefile
   CL_SOURCE_REGISTRY="$(HOME)/quicklisp/dists/quicklisp/software//" dotnet build DungeonSlime.csproj -c Debug
   ```
   During the `DotclCompileRoot` MSBuild target, `dotcl build` will naturally resolve `anaphora.asd`, compile it to `anaphora.fasl`, and bundle it seamlessly into `dotcl-deps.txt`.

2. **Loading Macros at Compile-Time**: Because `DotclCompileRoot` evaluates dependencies strictly for producing `.fasl` bundles, it does *not* automatically load third-party systems into the compiler's execution environment. If you need to use a macro from a dependency (like `anaphora:awhen`), you still must load the system during `:compile-toplevel`:
   ```lisp
   (eval-when (:compile-toplevel)
     (asdf:load-system "anaphora"))
   ```
   At runtime, `DotclHost.LoadFromManifest` loads all dependencies automatically, so `:load-toplevel` and `:execute` are no longer needed for loading systems.

### Broken `DotCL.Runtime` 0.1.12 NuGet Package

DotCL 0.1.12 theoretically supports completely decoupling the Lisp build from a local DotCL source repository checkout by replacing the MSBuild `<ProjectReference>` with `<PackageReference Include="DotCL.Runtime" Version="0.1.12" />`.

**However, the `0.1.12` NuGet package published by DotCL is broken.** It is missing the `tasks/DotCL.Build.Tasks.dll` assembly inside the `.nupkg` archive. Attempting to build with the `PackageReference` fails with:
`error MSB4036: The "DotclCompileProject" task was not found.`

Because the MSBuild custom targets in the NuGet package are non-functional, the application must currently remain bound to the `ProjectReference` pointing to a local `../dotcl/runtime/runtime.csproj` build, along with the explicit `Dotcl.targets` `<Import>`. Once the DotCL maintainer fixes the packaging issue to correctly include the `tasks/` directory, the build can be safely transitioned to the `PackageReference`.

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
returns a 404 error. Instead, `AdwaitaMono-Regular.ttf` from the system fonts
was copied and renamed to `04B_30.ttf` as a drop-in replacement. Both are
monospaced TrueType fonts.

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
packages -> mg-classes -> clr-generic -> sprite-font -> game-1
```

`sprite-font.lisp` depends on `mg-classes` for `v2:+zero+`, `v2:+one+`
and `sprite-effects:+none+`. It depends on `clr-generic` for the
`dotnet-class` require.

## C# Package Object Constructors (Version 11)

### Struct Parameterless Constructor Injection
In .NET Reflection, value types (structs) do not return their implicit parameterless constructor
via `GetConstructors()`. To generate the correct parameterless `new` constructors for value types,
the generator (`assembly-package-generator.lisp`) checks if the type is a struct (`:kind :struct`).
If it is a struct and no zero-parameter constructor is found in the metadata, the generator
injects a default parameterless constructor `(:parameters nil :public t)` into its internal
constructors list.

### Overload Collision Prevention
For types with multiple clean constructors, the generator outputs a runtime dispatch `new`
function using `&rest` arguments. Additionally, type-suffixed constructors (e.g.,
`new-single-single`) are generated for performance or explicit dispatch. However, if a
constructor has zero parameters, its type-suffixed name would be `new`, colliding with and
overwriting the runtime dispatch `new` function.
To resolve this collision, the generator skips creating the type-suffixed function for any
zero-parameter constructor when a type has multiple clean constructors. The runtime dispatch
`new` function handles the parameterless case correctly when called without arguments: `(new)`.
