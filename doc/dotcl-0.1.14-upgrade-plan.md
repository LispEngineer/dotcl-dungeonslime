# DotCL 0.1.14 Upgrade Plan

With the new interoperability capabilities introduced in DotCL 0.1.14, several areas of the `dungeon-slime` codebase can be refactored to reduce boilerplate and improve performance.

## 1. Refactor Type Checking in `clr-generic.lisp`

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

## Conclusion
By adopting these tools, we can further reduce the footprint of `mg-classes.lisp` and eliminate custom reflection wrappers in `clr-generic.lisp`. No code has been modified yet; this plan serves as a roadmap for the next refactoring pass.
