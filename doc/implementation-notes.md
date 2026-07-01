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

### Refactoring game-1.lisp to Use Constructor Wrappers
The game code in `game-1.lisp` was refactored to replace raw `dotnet:new` instantiations and local
helper functions with the newly generated package constructor wrappers:
- Raw instantiations of `System.Uri` via `(dotnet:new "System.Uri" ...)` were replaced with
  `system-uri:new`.
- Raw instantiations of `Microsoft.Xna.Framework.Vector2` via the `(vector2 ...)` helper were
  replaced with `v2:new` (using the nickname package `v2`).
- The custom local helper function `vector2` in `mg-classes.lisp` is no longer needed for new
  instantiations since the generated `v2:new` constructor handles the same behavior cleanly.


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
and defined before the main game files compile.


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


# C# Generic Function Type Checking Refactoring (DotCL 0.1.14 Upgrade - Part 1)

The C# Generic Function type checking in `clr-generic.lisp` was updated from manual reflection-based `IsAssignableFrom` checks to use `dotnet:is-instance-of` which was introduced in DotCL 0.1.14.

## 1. Type Assignability Verification
In `c#method-applicable-p` (defined in `clr-generic.lisp`), the previous implementation looked up types manually and invoked reflection:
```lisp
(let ((arg-type (monoutils:get-type first-arg))
      (spec-type (monoutils:get-type spec)))
  (when (and arg-type spec-type)
    (dotnet:invoke spec-type "IsAssignableFrom" arg-type)))
```
This was refactored to use the native type predicate:
```lisp
(dotnet:is-instance-of first-arg spec)
```
This eliminates manual type-lookup reflection logic in Lisp and delegates it to the DotCL runtime.

## 2. Resolving the `"ANAPHORA"` Package Error during Clean Build
When upgrading to DotCL 0.1.14 and performing `make build`, the compilation crashed with a `PACKAGE-ERROR` stating that no package named `"ANAPHORA"` exists.

* **Reader/Package Mismatch**: During compilation, the DotCL compiler concatenates all files into `.concat.lisp` and reads them completely before evaluation. The Lisp reader parses symbols like `anaphora:awhen` before the `eval-when` form that loads `"anaphora"` is evaluated.
* **Pre-declaration Stub**: To prevent reader package lookup errors, a stub `(defpackage :anaphora)` was added to `packages.lisp` (which is compiled first), following the established repository pattern for C# package stubs.
* **Stale FASL Cleanup**: Stale `.fasl` files compiled by previous DotCL versions (such as 0.1.11 or 0.1.12) are incompatible with DotCL 0.1.14 and are silently ignored by the loader during the dependency resolution phase. Consequently, the actual `"anaphora"` package was never loaded. Deleting all stale `.fasl` files in both the workspace and the Quicklisp directory and cleaning the project's `obj` directory forces a full rebuild, compiling the dependencies cleanly using DotCL 0.1.14.

## 3. C# Generic Method Wrappers (Generator Version 12)
To support invoking generic methods of exactly one type argument from Lisp, the C# Lisp Package Generator has been enhanced:

* **Metadata Extraction**: [AssemblyToLispy.cs](file:///home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispy.cs) formats generic methods by exporting `:is-generic t` and `:generic-arity [count]` (retrieved via `method.IsGenericMethod` and `method.GetGenericArguments().Length`).
* **Schema Validation**: Updated the testing schema ([framework.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/tests/framework.lisp) and [assembly-to-lispy-tests-final.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-to-lispy-tests-final.lisp)) to allow `:is-generic` and `:generic-arity` keywords inside method property lists, preventing validation failures.
* **Method Classification**: Modified `simple-method-p` and `clean-method-p` in [assembly-package-generator.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp) to support generic methods if their generic arity is exactly 1.
* **Wrapper Generation**: Generated Lisp functions take the `type` parameter (supporting type name string, alias, or System.Type object) as the first argument (or second argument after `obj` for instance methods). The wrapper delegates invocation to DotCL's `dotnet:invoke-generic` or `dotnet:static-generic` interop targets by passing `(list type)` as the type arguments list.


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

## 2. TimeSpan Standard Operator Dispatchers

Standard operators like `+`, `-`, `*`, and `/` are overloaded in C#'s
`System.TimeSpan`. The package generator emitted generic runtime dispatchers for
these, passing the operator strings directly to `dotnet:static` (e.g., `(apply
#'dotnet:static <type-str> "+" args)`).

However, .NET static operators compiled in IL have special names (such as
`op_Addition`, `op_UnaryPlus`, `op_Subtraction`, `op_UnaryNegation`,
`op_Multiply`, `op_Division`), so calling `"+"` or `"-"` directly via
`dotnet:static` results in `System.MissingMethodException`.

To fix this, the operators inside [cspackages/system-time-span.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-time-span.lisp) were
refactored to perform type and argument count dispatching purely in Lisp,
calling the correct typed static method wrapper functions:
* **`-`**: Calls `--time-span-time-span` (`op_Subtraction`) for 2 arguments, or
  `--time-span` (`op_UnaryNegation`) for 1 argument.
* **`+`**: Calls `+-time-span-time-span` (`op_Addition`) for 2 arguments, or
  `+-time-span` (`op_UnaryPlus`) for 1 argument.
* **`*`**: Inspects if the first argument is a C# object (via
  `monoutils:dotnet-p`) to dispatch to `*-time-span-double` (`op_Multiply`) or
  `*-double-time-span` (`op_Multiply`).
* **`/`**: Inspects if the second argument is a C# object (via
  `monoutils:dotnet-p`) to dispatch to `/-time-span-time-span` (`op_Division`)
  or `/-time-span-double` (`op_Division`).


# C# Operator Overload Dispatch in Package Generator (Generator Version 13 & 14)

## 1. Type-Based Operator Dispatching (Version 13)
The C# Lisp Package Generator has been enhanced in Version 13 to automatically generate type- and argument-count-aware dispatch wrappers for C# operator overloads (methods whose name starts with `"op_"` in C#, such as `op_Addition` and `op_Subtraction`, which are mapped to Lisp symbols like `+` and `-`):
* **Runtime Dispatch**: For overloaded operators, instead of outputting generic `(apply #'dotnet:static ...)` calls with raw operator symbols (e.g. `"+"` or `"-"`) which fail with `System.MissingMethodException`, the generator now emits a Lisp `cond` block.
* **Overload Selection**: The `cond` block inspects the runtime argument count and types (numbers, booleans, strings, or `.NET` objects) and dispatches the call to the corresponding type-suffixed generated overload functions (e.g. `+-time-span-time-span` or `*-time-span-double`).
* **Safe Fallback**: If no overload matches the argument patterns, a descriptive runtime error is thrown.

## 2. Standard Lisp Package Qualification (Version 14)
When standard Lisp operators (like `=`) are shadowed in a generated package (like `:system-time-span` shadowing `=`), any un-qualified calls to `=` in that package will resolve to the shadowed operator rather than the standard Common Lisp comparison function `cl:=`.
* **The Bug**: In Version 13, the generated test conditions (e.g. `(= (length args) 2)`) inside `:system-time-span` resolved to `system-time-span:=`. This caused recursive dispatch attempts with integer arguments (e.g. calling `op_Equality(int, int)`), leading to `MissingMethodException`.
* **The Fix**: In Version 14, the generator qualified all standard Lisp comparison operations in generated tests using the `cl:` package prefix (e.g., `(cl:= (length args) 2)`), ensuring they are evaluated as built-in Lisp functions rather than shadowed operator wrappers.


# Namespace Safety & Standard Lisp Symbol Protection (Version 15)

The Lisp Package Generator has been enhanced in Version 15 to establish complete namespace safety, preventing generated wrappers from shadowing critical Lisp syntax symbols and resolving symbol name collisions.

## 1. Mapping Special Forms & Reserved Words
In Common Lisp, symbols like `quote` and `function` are special operators used by reader macros `'` and `#'`. If a package shadows them, reader macros expand to package-local symbols (e.g. `microsoft-xna-framework-vector2:quote`), which crashes Lisp evaluation.
* **The Bug**: When generating wrappers for types containing members named `Quote`, `Function`, `T`, or `Nil`, the generator would output Lisp symbols like `quote` and `function` and place them in the package's `:shadow` list, causing syntax/compilation failures.
* **The Fix**: Version 15 maps C# member names named `Quote`, `Function`, `T`, or `Nil` to safe names `quote!`, `function!`, `t!`, and `nil!` respectively. This keeps them out of the package's `:shadow` list and preserves standard Common Lisp reader behavior.

## 2. Standard Lisp Symbol Qualification
To prevent other shadowed symbols in generated packages (such as `length`, `nth`, `cond`, `and`, `or`, `error`, `setf`, `defun`, `apply`, `function`, `the`, `list`, `numberp`, `typep`, `stringp`, `boolean`, `t`, etc.) from colliding with standard Lisp operators inside generated templates, the generator now qualifies all standard Lisp operators in generated templates with the `cl:` package prefix.
* **Examples**:
  - `(cond ...)` -> `(cl:cond ...)`
  - `(length args)` -> `(cl:length args)`
  - `(and ...)` -> `(cl:and ...)`
  - `(nth idx args)` -> `(cl:nth idx args)`
  - `(defun ...)` -> `(cl:defun ...)`
  - `(apply ...)` -> `(cl:apply ...)`
  - `(the ...)` -> `(cl:the ...)`
  - `(setf ...)` -> `(cl:setf ...)`
  - `(error ...)` -> `(cl:error ...)`
This prevents type-cast exceptions like `Unable to cast object of type 'DotCL.Cons' to type 'DotCL.LispDotNetObject'` when calling `v2:*` or other methods in generated files.


# Struct Mutation, Boxing, and Overload Resolution (Version 16)

## 1. Static vs. Instance Method Name Collisions

In C#, a class can define an instance method and a static method with the exact same name. For example, `Microsoft.Xna.Framework.Vector2` defines:
- `public void Normalize()` — an instance method that normalizes the vector in-place (returns `void`).
- `public static Vector2 Normalize(Vector2 value)` — a static method that returns a new normalized vector.

In the Lisp wrapper package generator, methods are grouped by name to generate overload dispatchers. Because both methods are named `Normalize`, they were grouped together. However:
- The generator previously determined if a method group was static based on the first method in that group. Since the instance method `Normalize()` appeared first, the entire group was classified as non-static (`static-p` is `nil`).
- Consequently, the static overload was generated as an instance method `normalize-vector2` (incorrectly expecting an `obj` receiver and using `dotnet:invoke` on it), and the passthrough dispatcher `normalize` was overwritten by a 1-argument instance wrapper `(cl:defun normalize (obj))`.

In Version 16, this was resolved by tracking `is-static-overload-p` per individual clean method overload (via `(getf cm :is-static)`) rather than using the group-wide `static-p`. This ensures that static overloads grouped with instance methods (such as `Vector2.Normalize(Vector2)`) are correctly generated as static wrappers utilizing `dotnet:static` without requiring an implicit `obj` receiver.

## 2. Struct Boxing & In-Place Mutation Failures

C# structures (like `Vector2` or `Color`) are value types (structs). In the Common Lisp / DotNet CLR interop layer, invoking any instance method on a value type receiver (such as calling the instance method `Normalize()` on a `Vector2` instance) requires boxing the structure into a heap-allocated `.NET` object wrapper.

Any mutations performed by that instance method are applied only to the boxed copy on the heap. Once the method invocation returns, the boxed copy is discarded, and the original Lisp reference or local variable remains completely unmodified.

Furthermore, because the instance method `Normalize()` returns `void`, the Lisp wrapper function evaluates to `nil`. Consequently:
1. Calling `(v2:normalize (v2:new normal-x normal-y))` returns `nil`.
2. The original vector is not normalized (since the mutation was performed on a boxed copy that was immediately discarded).
3. The resulting `nil` normal vector causes subsequent math operations (such as velocity reflection) to fail silently or behave incorrectly, causing gameplay issues such as collision bounce failures.

## 3. Workaround: Lisp-Native Helpers

Because of the boxing mutation problem, in-place struct mutations should be avoided in Lisp. Instead, static methods returning a new struct instance (or Lisp-native helper functions) should be used.

For vector normalization, the helper `v2-normalize` is defined in [mg-classes.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/mg-classes.lisp):
```lisp
(defun v2-normalize (v)
  "Returns a normalized copy of a Vector2 (unit vector in the same direction).
   If the vector is zero-length, returns Vector2.Zero."
  (let ((len (microsoft-xna-framework-vector2:length v)))
    (if (= 0.0e0 len)
      +v2-0+
      (dotnet:static "Microsoft.Xna.Framework.Vector2" "op_Division" v len))))
```

This helper has two key advantages:
1. It avoids the boxing mutation issue by returning a new `Vector2` instance.
2. It guards against division by zero (which in C# returns `NaN` components, leading to cascading physics bugs).

The bat collision bounce logic in [game-1.lisp](file:///home/dfields/src/cl/dotcl-dungeonslime/game-1.lisp) was updated to use this `v2-normalize` helper instead of `v2:normalize`.


# Idiomatic Lisp Naming Conventions (Version 17)

To make C# package wrappers feel more idiomatic to Common Lisp developers, Version 17 of the C# Lisp Package Generator updates the naming conventions for specific types of methods and fields:

## 1. NaN and IsNaN Mapping
- **`NaN` Constant**: Mapped directly to `"nan"` in `camel-to-kebab` so that constant wrappers for `NaN` (such as `System.Double.NaN`) generate as `+nan+` instead of the literal kebab-case `+na-n+`.
- **`IsNaN` Methods**: Mapped to `"nan?"` instead of the literal `is-na-n`.

## 2. IsSomething Boolean Predicates Suffix
- Any method or property whose C# name starts with `"Is"` followed by an uppercase letter (e.g. `IsEmpty`, `IsActive`, `IsFinite`) is translated to a Lisp predicate ending with a question mark `?` (e.g. `empty?`, `active?`, `finite?`), replacing the `is-` prefix.
- If the name is exactly `"Is"` or does not start with an uppercase letter following "Is" (e.g. `"Issue"`), the name is translated normally without the question mark conversion.


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



