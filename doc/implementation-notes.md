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

## Diagnosing Parentheses Mismatches

Several methods can be used to locate mismatched parentheses:

1. **Detailed MSBuild Diagnostic Verbosity**:
   Run `dotnet build -v d` or `make build` to inspect the exact command executed,
   and locate the concatenated source file (e.g.,
   `obj/Debug/net10.0/ubuntu.24.04-x64/dotcl-fasl/DungeonSlime.concat.lisp`).
   Inspecting the concatenated file helps isolate which original source file
   contains the mismatched paren.

2. **Automated Parser Script**:
   A Python script can be used to trace parenthesis matching. The script must
   carefully ignore strings, single-line comments (starting with `;`), block
   comments (`#| ... |#`), and character literals (like `#\)` or `#\(` or `#\;`).
   Such a script maintains a stack of open parentheses and prints the exact line
   and column where an extra or missing parenthesis is encountered.

   Example check script:
   ```python
   def check_parens(filename):
       with open(filename, "r") as f:
           content = f.read()
       stack = []
       i, n = 0, len(content)
       while i < n:
           if content[i:i+2] == "#|":
               i += 2
               while i < n and content[i:i+2] != "|#": i += 1
               i += 2; continue
           if content[i] == ";":
               while i < n and content[i] != "\n": i += 1
               continue
           if content[i] == "\"":
               i += 1
               while i < n:
                   if content[i] == "\\": i += 2
                   elif content[i] == "\"": i += 1; break
                   else: i += 1
               continue
           if content[i:i+2] == "#\\":
               i += 2
               if i < n: i += 1
               while i < n and content[i].isalnum(): i += 1
               continue
           if content[i] == "(":
               stack.append(i); i += 1; continue
           if content[i] == ")":
               if not stack: return False
               stack.pop(); i += 1; continue
           i += 1
       return len(stack) == 0
   ```

## Instance Properties and Struct "Boxing Mutation"

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
