# Implementation Notes

This document contains notes on tricky aspects of the codebase, implementation details, and caveats for future reference.

## Instance Properties and Struct "Boxing Mutation"

The generator (`assembly-package-generator.lisp`) emits accessor (`property-name`) and mutator (`(setf property-name)`) functions for C# instance properties. 

When invoking a setter on an instance property of a **value type (struct)** via `dotnet:invoke`, DotCL boxes the struct. Modifying a property through the generated Lisp `setf` mutator (e.g., `(setf (property-name my-struct) new-val)`) might only mutate the boxed copy inside the CLR boundary, leaving the original `my-struct` variable in Lisp unmodified.

Therefore, users should exercise caution when mutating properties on C# structs from Lisp. A comment `;; Note: Modifying a property of a value type (struct) via setf may only mutate a boxed copy, leaving the original unchanged. Use caution with structs.` is automatically inserted above property mutators generated for structs to alert users of this behavior.

Reference types (classes) do not suffer from this issue.

In addition, Lisp properties with only a setter (write-only properties) are generated with the name `set-propertyname` and accept the receiver as the first argument: `(set-propertyname obj new-value)`.
