# Thoughts and Ideas on CLR Interoperability

* Author: Douglas P. Fields, Jr. - symbolics@lisp.engineer
* Last revised: 2026-05-25 (Updated for 0.1.17)

# Brief Summary

## Evaluation

Most of these allow changes to s-expressions with different
things in the operator position, including literal strings,
or different things in function cells of symbols. They're not
all necessarily compatible with each other.

* `("Literal String" CLRObject ...)`
  * If CLRObject is a C# object
    * turn into `(dotnet:invoke CLRObject "Literal String" ...)`
  * If CLRObject is a Type - make a static call on the type
    * Turn into `(dotnet:static <Type String of CLRObject> "Literal String" ...)`
  * If "Literal String" is "new" then act as an allocator/constructor
    * CLRObject is a String = of that type
    * CLRObject is a Type = of that type
    * CLRObject is an instance = of the same type of instance
* `("Literal String1" "Literal String2" ...)`
  * Turn into `(dotnet:static "Literal String2" "Literal String1" ...)`
  * Or a if a C# Type object for the 2nd slot:
    * Turn into `(dotnet:static "Type of 2nd slot" "Literal String1" ...)`
* `(defun Symbol "Literal String" "Doc String")`
* Chained accessors: `"A.B.C"`
  * Each can be a Property or Method of no arguments
  * `('("String1" "String2" ...) CLRObject/LiteralString...)`
    * Call "String1" on CLRObject/LiteralString
    * Then "String2" on the result
    * Then ... on each preceding result
* `"String<Type, ...>"`
  * Allow Generic function specification
* `"String[<Type, ...>]([Type, ...])"`
  * Allow exact function specfication with parameters specified
* `(Symbol ...)` where Symbol has no function cell but does have a
  value cell with a literal String or other interop value (e.g., a
  c# delegate, etc.)?
  * This feels like it blurs too many lines, and we should just allow
    strings or other C#/CLR callables to be put directly into a symbol's function cell
* Some mechanism to defun something with a CLR `Func<>`
  or other callables
* Some way to call overloaded operators on types elegantly
  * `"operator+"`, etc.?
  * `"+"` → `"op_Addition"`, etc.?
* Allow delegates in operator position, e.g., C# Action
  * Should it should be in Function cell
  * `(defun symbol delegate "docstring")`
    * where delegate could be a symbol whose value cell contains the C# delegate object
* Allow C# MethodInfo in operator position, e.g., 
* Allow C# 9 Function Pointers (`delegate*`) in operator position
* Make CLOS instances of C# classes, with the full type specifiers as
  potentially nested lists, e.g.,
  * `(make-instance '(csharp:list string) :capacity 10)`
  * This would map to the fully specified C# type `System.Collections.Generic.List<string>` (or whatever the exact C# type is)
  * (Of course, use an actual instanantiable type, not `List` in this example)

## Optimization

* C# `dynamic` style optimizations?
* Can we let the CLR JIT optimize reflected calls away? 
  (I don't know anything about it.)

## Miscellaneous

* Have a reader extension that allows strings to be clearly specified as:
  * C# types/classes: `#cst"My.CSharp.Class"` with optional `<>` type parameters
  * C# function/invokeable references: `#csi"ToString"` or `#csi"operator +"`
  * Consider other macro starts such as `##t` or `##i` (would need sub-readers
    due to `##`?)
  * Research common reader macros to avoid collisions

* We can't take the Clojure interop mechanism of starting things with
  a leading `.` (dot/period) because those would be considered valid
  Lisp symbols, e.g., `.foo` or `.ToString`.
  * A lone dot is an error in standard Common Lisp so that is a possibility
    for extension?

* Implement `*evalhook*` and related capabilities 
  from [CLtL2](https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node180.html),
  to enable the above?

## Testing & Conformance

* How do all of these things impact conformance tests?

# Detailed Discussion

TODO

# Implementation Thoughts

* For static strings in operator position:
  * [Look here](https://github.com/dotcl/dotcl/blob/7299d104f7cd4225464109322296036f97dc448e/compiler/cil-compiler.lisp#L707)
    (historical reference: v0.1.8 cli-compiler.lisp), and add a new case to the `cond` for
    `(stringp op)`

# Other Hosted Lisps

* [ABCL](https://abcl.org/) (Armed Bear Common Lisp): Common Lisp on the JVM
  * [JVM Interop Docs](https://abcl.org/doc/abcl-user.html)
* Clojure: a natively hosted Lisp
  * [JVM interop](https://clojure.org/reference/java_interop)
  * [CLR interop](https://github.com/clojure/clojure-clr/wiki/Basic-CLR-interop)
  * [JavaScript interop](https://clojurescript.org/index)
* [ECL](https://ecl.common-lisp.dev/main.html) has good C interop
  (compiles to C)
* [JSCL](https://github.com/jscl-project/jscl) - JavaScript Common Lisp
* [Clasp](https://clasp-developers.github.io/) - Common Lisp on LLVM with strong C++ interop

---

# Done in DotCL 0.1.17

The following interop ideas have already been natively implemented in DotCL as of versions up to 0.1.17:

* **Support Extension Method calls, e.g. in C# `"some-string".ExtensionMethod()`**
  * Completed in **0.1.14**. `dotnet:invoke` automatically resolves LINQ and other extension methods directly on the receiver.
* **Cache (memoize) reflection results for reuse?**
  * Completed in **0.1.10** and **0.1.11**. Dynamic `dotnet:invoke` caches resolved methods by call shape, improving speed by ~4.6x. Type-declared interop via `(the (dotnet "...") ...)` compiles to direct `callvirt` instructions.
* **CLOS Multimethods: Allow dispatching on C# types**
  * Partially completed in **0.1.9** and fully realized in **0.1.17**. `defmethod` now accepts a class object as a specializer via `#.`, e.g., `(defmethod do-something ((arg #.(dotnet:class-for-type "System.String"))))`. Closed generics get distinct readable class names like `List<Int32>`.
