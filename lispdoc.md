Note: This documentation below is written by Antigravity on
2026-05-23 without editing by me.

# dotcl LispDoc Documentation Review

This document provides a detailed breakdown of how the C# `[LispDoc]` annotations are implemented, how the Roslyn source generator processes them, and why they currently return `NIL` at runtime when queried via standard Common Lisp documentation functions.

---

## 1. How C# `[LispDoc]` Works Under the Hood

The `dotcl` environment utilizes a custom **Roslyn Source Generator** to extract docstrings from C# XML comments and compile them into static metadata.

### The Attribute Definition
The `LispDocAttribute` is defined dynamically during the analyzer/source generator pass inside the [`runtime.docgen`](file:///home/dfields/src/cl/dotcl/runtime.docgen/LispDocGenerator.cs#L23-L28) project:
```csharp
namespace DotCL {
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    internal sealed class LispDocAttribute : Attribute {
        public string LispName { get; }
        public LispDocAttribute(string lispName) => LispName = lispName;
    }
}
```

### The Source Generator ([LispDocGenerator.cs](file:///home/dfields/src/cl/dotcl/runtime.docgen/LispDocGenerator.cs))
During compilation of `DotCL.Runtime`, the source generator scans C# files for methods decorated with `[LispDoc("LISP-SYMBOL-NAME")]`:
1. It reads the leading `///` XML comments for `<lispdoc>...</lispdoc>` elements.
2. If the `<lispdoc>` element is absent, it falls back to the `<summary>` block.
3. It aggregates all matches and emits a generated source file `GeneratedDocs.g.cs` containing:
   ```csharp
   namespace DotCL;
   internal static partial class GeneratedDocs {
       internal static void Register() {
           Runtime.SetFunctionDoc("DOTNET:MAKE-DELEGATE", "...");
           Runtime.SetFunctionDoc("DOTNET:CALL-OUT", "...");
           ...
       }
   }
   ```

### C# Metadata Storage
During engine bootstrapping in `Startup.cs`, `GeneratedDocs.Register()` is called, which populates the private `_docs` dictionary in `Runtime.Arithmetic.cs`:
```csharp
private static readonly Dictionary<(string sym, string docType), LispObject> _docs = new();

internal static void SetFunctionDoc(string lispName, string docstring) =>
    _docs[(lispName, "FUNCTION")] = new LispString(docstring);
```

---

## 2. Why `(documentation 'dotnet:call-out 'function)` Returns `NIL`

Although docstrings are correctly generated and registered in C#'s `_docs` dictionary, the Lisp-side `documentation` generic function does **not** fall back to checking this dictionary.

* In [`cil-stdlib.lisp`](file:///home/dfields/src/cl/dotcl/compiler/cil-stdlib.lisp#L1084-L1086), the Lisp generic function for retrieving symbol-function documentation is defined as:
  ```lisp
  (defmethod documentation ((x symbol) (doc-type (eql 'function)))
    (%get-doc x 'function))
  ```
  `%get-doc` only queries the Lisp hash table `*documentation-table*`, which has no fallback path to C#.

* In contrast, variables **do** have a fallback. The method for `(eql 'variable)` queries the Lisp table first, and then calls a C# builtin wrapper:
  ```lisp
  (defmethod documentation ((x symbol) (doc-type (eql 'variable)))
    (or (%get-doc x 'variable)
        (%get-variable-documentation x))) ;; -> calls C# GetVariableDocumentation which reads from _docs
  ```

Because there is no `%get-function-documentation` shim in `cil-stdlib.lisp` calling into C#'s `_docs`, any built-in functions registered via `[LispDoc]` return `NIL` when queried from Lisp.

---

## 3. Recommended Fix in `dotcl`

To make C#-defined `[LispDoc]` attributes accessible via standard Lisp `(documentation '... 'function)` calls, two changes are required:

### Step A: Register the C# helper in [`Runtime.Core.cs`](file:///home/dfields/src/cl/dotcl/runtime/Runtime.Core.cs)
```csharp
// Expose the documentation lookup to Lisp
Startup.RegisterBinary("%GET-FUNCTION-DOCUMENTATION", (sym, type) => Runtime.Documentation(sym, type));
```

### Step B: Add the fallback in Lisp ([`cil-stdlib.lisp`](file:///home/dfields/src/cl/dotcl/compiler/cil-stdlib.lisp#L1084-L1086))
```lisp
(defmethod documentation ((x symbol) (doc-type (eql 'function)))
  (or (%get-doc x 'function)
      (%get-function-documentation x 'function)))
```
