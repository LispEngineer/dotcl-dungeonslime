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

2. You can then load the package with the DotCL built-in ASDF. However,
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

* Quicklisp: You can use SBCL to load Quicklisp packages. As of now,
  Quicklisp does not load in DotCL (there are DotCL language issues
  and also needs a DotCL-specific socket implementation). However,
  once loaded in SBCL, you can use DotCL's ASDF to load those systems,
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

DotCL 0.1.9 introduces the ability for CLOS generic functions (`defgeneric`) to dispatch natively on instances of C# classes created via `dotnet:define-class` as well as raw C# framework types (e.g., `Microsoft.Xna.Framework.Vector2`).

## Class Registration and Naming
When DotCL encounters a native C# object for the first time, or when `(class-of obj)` is explicitly called on it, DotCL lazily creates a CLOS wrapper class for the .NET type. This wrapper is placed in the `dotcl-internal` package and named after the short name of the C# class. 
For example, `Microsoft.Xna.Framework.Vector2` becomes `dotcl-internal::|Vector2|`.

To specialize a `defmethod` on a raw C# type, you use this internal symbol as the class specializer:
```lisp
(defmethod get-x ((obj dotcl-internal::|Vector2|))
  (dotnet:invoke obj "X"))
```

## The Compile-Time Constraint
In Common Lisp, `defmethod` is a macro that expands at compile time. During this expansion, it calls `find-class` to verify the existence of the class you are specializing on.

In this project, `make build` compiles the code using the standalone DotCL compiler. The compiler process only loads standard .NET runtime libraries; it **does not** load our application-specific assemblies, such as `MonoGame.Framework.dll`. 
If you write a top-level `(defmethod ... ((obj dotcl-internal::|Vector2|)) ...)` statically in your code, the compiler will attempt to resolve `Vector2`, fail to find the MonoGame assembly, and hard-crash the compilation with `FIND-CLASS: no class named Vector2` or `DOTNET: type not found: Microsoft.Xna.Framework.Vector2`.

## The `eval` Workaround
To resolve the compile-time failure, we must defer the macro-expansion of `defmethod` until *runtime*, when the MonoGame assembly is fully loaded by the `Program.cs` host.

We achieve this by quoting the method definition and passing it to `eval` inside a function:
```lisp
(defun register-clr-methods ()
  ;; 1. Force the lazy registration of the CLOS wrapper class.
  ;; Instantiating a dummy Vector2 and calling class-of guarantees 
  ;; that dotcl-internal::|Vector2| exists.
  (class-of (dotnet:new "Microsoft.Xna.Framework.Vector2" 0.0f0 0.0f0))
  
  ;; 2. Dynamically evaluate the defmethod at runtime.
  ;; The compiler skips expanding this because it's just data.
  (eval '(defmethod get-x ((obj dotcl-internal::|Vector2|)) 
           (dotnet:invoke obj "X"))))
```
By executing this function at program startup, we bypass the compiler's strict type verification while fully preserving standard CLOS method dispatch performance at runtime.

## Defining C# Types from Lisp
When defining new C# proxy classes from Lisp using `dotnet:define-class` (or its underlying components), always pass parameter and field types as fully-qualified strings (e.g., `"System.Double"`) instead of unquoted symbols (e.g., `System.Double`). 
Symbols without string qualification might fail to resolve during macro expansion if the namespace environment isn't strictly controlled, whereas explicit string declarations correctly guide DotCL's internal reflection (`dotnet:resolve-type`).

