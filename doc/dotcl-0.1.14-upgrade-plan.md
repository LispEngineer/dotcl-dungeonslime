# DotCL 0.1.14 Upgrade Plan

With the new interoperability capabilities introduced in DotCL 0.1.14, several areas of the `dungeon-slime` codebase can be refactored to reduce boilerplate and improve performance.

## 1. Refactor Type Checking in `clr-generic.lisp` (**DONE**)

Currently, `clr-generic.lisp` performs manual type verification using raw reflection on `System.Type` objects.

**Current Implementation:**
```lisp
(when (monoutils:dotnet-p first-arg)
  (let ((arg-type (monoutils:get-type first-arg))
        (spec-type (monoutils:get-type spec)))
    (when (and arg-type spec-type)
      (dotnet:invoke spec-type "IsAssignableFrom" arg-type))))
```

**Proposed Update:**
Replace manual resolution and reflection with `dotnet:is-instance-of`. It accepts the object and the string specifier directly.
```lisp
(when (monoutils:dotnet-p first-arg)
  (dotnet:is-instance-of first-arg spec))
```
Additionally, `c#method-more-specific-p` checks type hierarchy using `IsAssignableFrom` between two types. We can investigate if `dotnet:is-instance-of` supports passing two `System.Type` instances, or stick with `IsAssignableFrom` specifically for Type-to-Type relationships.

## 2. Introduce `dotnet:await` for Asynchronous Operations

If the game needs to load heavy content, communicate with a server, or perform async background tasks, we can now use `dotnet:await` instead of manually waiting on `Task` objects. While not currently used in the game, it opens up the possibility for smooth loading screens (e.g. `await`-ing `Task.Delay` or `Task.Run` for large map initializations) without blocking the Lisp worker threads permanently if configured correctly.

## 3. Simplify Array Creation

In the future, if we need to generate arrays (such as vertex arrays for 3D graphics or specific typed collections required by MonoGame APIs), we can bypass the `System.Array` reflection and use `dotnet:make-array` or `dotnet:new-array`.

**Example use-case:**
Instead of mapping a Lisp list to a C# array using a custom helper loop, we can pass elements directly:
```lisp
(dotnet:new-array "Microsoft.Xna.Framework.Graphics.VertexPositionColor" v1 v2 v3)
```

## 4. Generic Type Construction

While most C# classes we instantiate are fully specified, if we build complex `Dictionary` or `List` types, we can construct the type cleanly.

**Proposed Update:**
```lisp
;; Instead of: (dotnet:new "System.Collections.Generic.Dictionary`2[System.String,System.Int32]")
(defvar *dict-type* (dotnet:make-generic-type "System.Collections.Generic.Dictionary" 
                                              '("System.String" "System.Int32")))
(dotnet:new *dict-type*)
```

## 5. Simplify Bitwise Enum Flags

If we expand sprite rendering (e.g., flipping sprites horizontally and vertically at the same time), we can easily combine the `SpriteEffects` enum.

**Proposed Update:**
```lisp
(dotnet:enum-or "Microsoft.Xna.Framework.Graphics.SpriteEffects" "FlipHorizontally" "FlipVertically")
```
This is significantly cleaner than fetching the underlying `int` values and applying `logior`.

## 6. Catching and Handling MonoGame Exceptions

We can intercept specific MonoGame errors (e.g. `ContentLoadException` when an asset is missing) without wrapping our game code in generic Lisp `handler-case` blocks that swallow other critical bugs.

**Proposed Update:**
```lisp
(dotnet:handler-bind 
    (("Microsoft.Xna.Framework.Content.ContentLoadException" 
      (lambda (e) 
        (format *error-output* "Failed to load asset!~%")
        (return-from my-loader nil))))
  (content:load-texture2d manager asset-name))
```

## 7. C# Lisp Package Generator Enhancements

The Lisp package generator (`assembly-package-generator.lisp` and `AssemblyToLispy.cs`) can be updated to utilize the new DotCL 0.1.14 capabilities when generating standard class/struct/enum bindings.

### A. Support for `out` and `ref` Parameters
* **Current Behavior:** Methods containing `out` or `ref` parameter modifiers are flagged as "dirty" and completely skipped.
* **Proposed Update:** Incorporate `dotnet:call-out` and `dotnet:call-out-generic` to generate wrappers for these methods.
  - `:ref` parameters are supplied by the caller as inputs (since they pass an initial value), whereas `:out` parameters are omitted from the generated function's parameter list.
  - The generated function will call `dotnet:call-out` (or `dotnet:call-out-generic` for generic methods), passing the input parameters.
  - The updated `:ref` and `:out` parameter values will be returned as additional Lisp multiple values following the method's primary return value.

### B. Enum Flags Generation (`dotnet:enum-or`)
* **Current Behavior:** Bitwise combination of C# `[Flags]` enums is performed manually in Lisp using `logior` on raw values.
* **Proposed Update:** 
  - Update the metadata extractor (`AssemblyToLispy.cs`) to detect if an enum has the `[System.FlagsAttribute]` and record this boolean attribute in the output metadata.
  - If (and only if) the enum has flags, the package generator will generate a `flags` helper in the enum's package using `dotnet:enum-or`:
    ```lisp
    (defun flags (&rest members)
      "Combine enum flag members using bitwise OR."
      (apply #'dotnet:enum-or <type-str> members))
    ```
  - The arguments passed to `flags` should map to the `+constants+` defined elsewhere in the generated package (e.g., `+flip-horizontally+`).

### C. Type Predicates and Casts
* **Proposed Update:** Export standard type predicate and casting functions in every package.
  - An `instance-of?` predicate (using `dotnet:is-instance-of`):
    ```lisp
    (defun instance-of? (obj)
      "Returns T if obj is an instance of this type, otherwise NIL."
      (dotnet:is-instance-of obj <type-str>))
    ```
  - A `cast` helper (using `dotnet:cast`):
    ```lisp
    (defun cast (obj)
      "Verify obj matches this type, returning the object carrying a static type hint."
      (dotnet:cast obj <type-str>))
    ```

### D. Type-Specialized Array Constructors
* **Proposed Update:** Export specialized array allocation wrappers for each class/struct type.
  - `make-array` wrapper:
    ```lisp
    (defun make-array (&rest dimensions)
      "Create a .NET array of this type."
      (apply #'dotnet:make-array <type-str> dimensions))
    ```
  - `new-array` wrapper:
    ```lisp
    (defun new-array (&rest elements)
      "Create a .NET array of this type pre-populated with elements."
      (apply #'dotnet:new-array <type-str> elements))
    ```

### E. Support for Generic Methods of Exactly One Type Argument (**DONE**)
* **Implemented Behavior:**
  - Extracted `:is-generic` and `:generic-arity` in `AssemblyToLispy.cs`.
  - Modified `assembly-package-generator.lisp` (`simple-method-p`, `clean-method-p`) to accept generic methods of exactly 1 type argument.
  - Generated wrappers prefixing the method arguments with the `type` parameter, calling `dotnet:invoke-generic` or `dotnet:static-generic` under the hood.
* **Open Questions for 2+ Type Arguments:**
  - For generic methods with 2+ type arguments, should the syntax be flat positional (e.g. `(method type1 type2 obj args...)`) or list-based (e.g. `(method (list type1 type2) obj args...)`)? This design decision remains open and will be resolved when implementing 2+ generic arity support.

## Conclusion
By adopting these tools, we can further reduce the footprint of `mg-classes.lisp` and eliminate custom reflection wrappers in `clr-generic.lisp`. No code has been modified yet; this plan serves as a roadmap for the next refactoring pass.
