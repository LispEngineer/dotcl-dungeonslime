# Creating a C# Generic Function Mechanism for DotCL

Common Lisp has a very flexible generic function mechanism,
including multimethods. The user entry points are `defgeneric`
and `defmethod`.

This document proposes a simple version of that mechanism,
built around the macros `defc#generic` and `defc#method`. 

## Implementation Versions

There are several incrementally improved variations that will
be implemented. 

* **Version 1**: Allow dispatching choices to be made only based on
  the C# type of the first argument; only C# types are handled.
  The functions can only have required arguments. A `T` rule will
  still be allowed to match anything (including non-CLR types).
* **Version 1.5**: The functions can still have all the usual 
  non-required arguments, like `&optional`, `&key` and `&rest`.
* **Version 2**: Allow dispatching choices to be made based on
  the type of the first argument; both C# types and Common Lisp
  types and classes are handled.
* **Version 3**: Extend the dispatch to handle the `eql` specializer.
* **Version 4**: Extend it to allow multimethods, so do dispatching
  choices can be made on multiple required argument types.
* **Version 5**: Add a dispatch cache, for improved performance.
  Clear the cache any time a new method is defined.
  * Add other caches (e.g., type resolution cache) if desired.

## Retained Functionality

Additionally, these capabilities are retained:
* `:documentation` on `defc#generic` akin to that on `defgeneric`

## Unsupported Functionality

Unlike standard Common Lisp generic functions, some capabilities
will not be initially supported.

Unsupported `defgeneric` capabilities:
* `:method-combination`: This is not supported for now. The
  system will only call the most specific defined method.
* `:generic-function-class`
* `:method-class`
* `:argument-precedence-order`
* `declare`

Unsupported `defmethod` capabilities:
* `declare`
* `call-next-method`
* `next-method-p`

Dispatching in all versions will be done to the most specific match,
without any ability to call the next least specific (at least for now).

## C# Generic Function Specializers

The big difference between `defmethod` and `defc#method` is that the
`defc#method` will accept three types of `parameter-specializer-name`
instead of two:

* `symbol` - a standard Common Lisp type or class specifier; `T` will
  match anything (in Version 2), even non-C# objects.
* `(eql eql-specializer-form)` - standard Common Lisp `eql` specializer (in Version 3)
* `string` - This is new: a static CL string, which is the fully qualified
  C# type name (e.g., `"Microsoft.Xna.Framework.Graphics.Texture2D"`,
  `"System.Collections.ArrayList"`, etc.)

By way of a Version 1 example:

```lisp
(defc#generic width (obj)
  (:documentation "Gets the width of the specified object"))

(defc#method width ((obj "Microsoft.Xna.Framework.Graphics.Viewport"))
  "Gets the width of the Viewport"
  ;; implementation ...
)

(defc#method width ((obj "Microsoft.Xna.Framework.Rectangle"))
  "Gets the width of the Rectangle"
  ;; implementation ...
)
```


# Design Considerations for a Minimal Implementation

Here are some considerations/thoughts on implementing a robust, high-performance
and minimal C# class-aware generic function system.

## C# Type Resolution & Class Precedence List (CPL) Construction

For C# objects, the inheritance and interface hierarchy must be mapped
dynamically at dispatch time (or cached):

* **Class Precedence List (CPL)**: A CPL must be constructed on the fly for
  any C# object by traversing its inheritance hierarchy (`typeof(T).BaseType`)
  recursively up to `System.Object`.

* **Interface Ordering**: Since C# classes can implement multiple interfaces, a
  deterministic precedence rule for interfaces in the CPL must be defined
  (e.g., namespace/name alphabetical sorting, or declaration order on the type)
  to resolve method dispatch order unambiguously.

### Type Resolution

To avoid verbose fully-qualified names in method signatures, the string 
specializer should first attempt to resolve names via DotCL's
`dotnet::*type-aliases*` hash table (e.g., resolving `"Rectangle"`
to `"Microsoft.Xna.Framework.Rectangle"`).

Use the `DynamicBaseCaller.GetType()` to resolve the user-specified string types
so it can find types in loaded assemblies as well. (Think about whether to do
this resolution at compile time, run time, or...?)

Consider having a type resolution cache.

## Primitive and Boxed Type Mapping

For future consideration:

Since DotCL automatically marshals certain C# value types to native Common Lisp 
types (e.g., `System.Int32` to Lisp `integer`), the dispatcher needs to reconcile
these mappings:

* Standard Lisp type specifiers (`integer`, `string`, `float`) and C# type
  strings must be checked side-by-side during specificity calculations.

## Dispatch Performance (Caching)

CLOS-like dispatch requires caching to avoid costly reflection searches on every
invocation.

* **Monomorphic Inline Cache:** Store the C# type of the last successfully
  dispatched argument and the resolved target method. If subsequent
  calls pass the same type, invoke the cached method directly.
  * This is how DotCL implemented its `Runtime.DispatchGF()`.
  * Consider extending this to N entries.

## Implementation Strategy: CLOS-MOP vs. Pure Macro-Expansion

* **CLOS-MOP Approach**: Subclass `standard-generic-function` and `standard-method`
  and override `compute-applicable-methods` and `method-more-specific-p`, etc.
  * Requires complete MOP support on the C# runtime side.
* **Pure Macro-Expansion**: Expand `defc#generic` to a standard `defun` wrapping
  a dispatch table, and `defc#method` to a registration call. This avoids relying
  on C# runtime MOP capabilities and is highly portable.

For this initial implementation, **Pure Macro-Expansion** will be used for
simplicity and self-containedness.


# Longer Term Ideas

* Implement a full version of this as a patch to DotCL to seamlessly handle
  C# classes as first class citizens in the generic function community.