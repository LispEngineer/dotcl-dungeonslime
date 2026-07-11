Gemini 3.5 Flash written summary of how `defgeneric` and `defmethod`
are implemented and work in DotCL. (Originally analyzed for 0.1.8; updated for 0.1.17 changes).

---

# DotCL CLOS: defgeneric & defmethod Internals

In DotCL, the implementation of generic functions and methods is split between **Lisp-level macros and compiler code generation** and a **C# backend runtime representation**.

Here is a breakdown of where these parts are located and how they function:

## 1. Macro Definitions (Lisp Compiler)
At compile time, `defgeneric` and `defmethod` forms are processed and expanded into lower-level constructs by the compiler macros:
*   **[cil-macros.lisp:L2498](../../dotcl/compiler/cil-macros.lisp#L2498):** The **`defgeneric`** macro parses argument lists, keyword parameter congruence, and method combinations. It expands into calls like `%make-gf`, `%find-gf`, `%register-gf`, and `%set-gf-lambda-list-info`.
*   **[cil-macros.lisp:L2759](../../dotcl/compiler/cil-macros.lisp#L2759):** The **`defmethod`** macro compiles individual method implementations. It extracts qualifiers (e.g., `:before`, `:after`, `:around`), parses specializers (including `EQL` specializers), and handles lexical `call-next-method` and `next-method-p` function captures.

## 2. Form Code Generation (Lisp Compiler)
The compiler translates these low-level operations into calls on the C# runtime:
*   **[cil-forms.lisp:L4745](../../dotcl/compiler/cil-forms.lisp#L4745):** Connects Lisp-side primitives such as `%make-gf` and `%mark-defgeneric-inline-method` directly to the compiled runtime class method targets like `Runtime.MakeGF` and `Runtime.MarkDefgenericInlineMethod`.

## 3. Object Representation (C# Runtime)
In the C# runtime layer, generic functions and methods are represented as standard C# classes:
*   **[Clos.cs:L369](../../dotcl/runtime/Clos.cs#L369):** The **`LispMethod`** class represents a single method. It keeps track of its qualifiers, specializers (either type classes or `EQL` forms), and the underlying executable function.
*   **[Clos.cs:L404](../../dotcl/runtime/Clos.cs#L404):** The **`GenericFunction`** class represents a generic function and inherits from `LispFunction`. It holds the list of associated methods, lambda list congruence rules, and a single-entry monomorphic inline cache (`LastDispatch`) to optimize dispatch performance on repetitive type signatures.

## 4. Dispatch and Precedence Rules (C# Runtime)
The routing and execution of applicable methods happen in:
*   **[Runtime.CLOS.cs:L1340](../../dotcl/runtime/Runtime.CLOS.cs#L1340):** The `MakeGF` method registers generic functions and wires their invoke callback to the dispatcher.
*   **[Runtime.CLOS.cs:L1849](../../dotcl/runtime/Runtime.CLOS.cs#L1849):** The **`DispatchGF`** function executes on invocation:
    1.  Validates arity and keyword arguments against the generic function's signature.
    2.  Checks the monomorphic inline cache (`LastDispatch`) for a fast-path match.
    3.  Evaluates `EQL` specializers.
    4.  Collects applicable methods, filters them, and groups them by qualifier (`:around`, `:before`, `:primary`, `:after`).
    5.  Sorts grouped methods by precedence via **`CompareMethodSpecificity`** ([Runtime.CLOS.cs:L2743](../../dotcl/runtime/Runtime.CLOS.cs#L2743)) using the **Class Precedence List (CPL)** of the argument types.

---

# Major CLOS Updates (0.1.9 - 0.1.17)

Since the original analysis (0.1.8), the CLOS implementation has received major upgrades:

*   **Thread Safety (0.1.9):** The method list in `GenericFunction` is now copy-on-write, fixing concurrency issues when modifying methods while another thread dispatches.
*   **Native .NET Type Specialization (0.1.9+):** `defmethod` now directly supports dispatching on .NET types without workarounds. In 0.1.17, `defmethod` accepts a class object as a specializer via `#.`, allowing direct targeting of classes retrieved by `(dotnet:class-for-type "System.String")`.
*   **Closed Generics Handling (0.1.17):** Generic types now get distinct, readable class names (e.g. `List<Int32>`) rather than colliding on the bare ``List`1``, ensuring predictable dispatch across instantiations.
*   **Caching & Performance (0.1.16):** CLOS dispatch is significantly faster. A dispatch cache for EQL-specialized functions was added, and `call-next-method` closures are built lazily without per-dispatch allocation.
*   **Standard Conformance (0.1.14):** The Class Precedence List (CPL) now rigorously follows the CLHS class linearization, including non-monotonic hierarchies. `:argument-precedence-order` is also fully honored.
*   **AMOP Support (0.1.15):** The Metaobject Protocol was expanded with primitives like `compute-applicable-methods-using-classes`, `compute-discriminating-function`, and `compute-effective-method`.
