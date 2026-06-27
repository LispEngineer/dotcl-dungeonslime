# DotCL 0.1.14 ASDF Compilation and Load Warnings Analysis

When executing ASDF operations under DotCL 0.1.14 (such as compiling or loading
the `dungeon-slime` system or Quicklisp packages), several warnings and
compile-failed conditions may be printed. This document provides a detailed
analysis of the root causes, impact, and cache management for these warnings.

## 1. ASDF FASL Cache Directory

ASDF compiles Lisp source files into `.fasl` files and caches them locally. For
DotCL 0.1.14 on Linux, the default cache directory is located at:
```
/home/dfields/.cache/common-lisp/dotcl-0.1.14-linux-x64/
```
Deleting this directory forces ASDF to recompile all files next time
`(asdf:load-system "dungeon-slime")` is executed:
```bash
rm -rf /home/dfields/.cache/common-lisp/dotcl-0.1.14-linux-x64/
```

## 2. Warnings Analysis

### A. `DEFGENERIC: EMPTYP` Redefinition Warnings

* **Symptom**:
  ```
  WARNING: DEFGENERIC: EMPTYP is being redefined as a generic function, but it was previously defined as an ordinary function.
  ```
* **Source**: Triggered during the compilation/loading of `quicklisp/http.lisp`.
* **Root Cause**: DotCL 0.1.14 implements a *cross-package function bridge*
  designed to allow functions defined in one package to be inherited by other
  packages. When a symbol is newly interned, if its `Function` slot is empty,
  the runtime scans all other packages for an existing symbol of the same name
  with a non-null `Function` slot, and copies it.
  
  When `ql-http::emptyp` is interned, the copy-on-intern logic finds the
  ordinary function `uiop:emptyp` (defined in the `UIOP` package) and copies it
  to `ql-http::emptyp`'s function slot. 
  
  Subsequently, when the `(defgeneric emptyp ...)` form is evaluated, DotCL's
  redefinition check detects that `ql-http::emptyp` is already `fboundp` as a
  non-generic function and issues the warning.
* **Impact**: **Completely benign.** After signaling the warning, the macro
  calls `fmakunbound` to clear the inherited function slot and successfully
  binds the new generic function. The Quicklisp HTTP client functions exactly
  as intended.

### B. `RECURSIVE-OPERATE` Warnings

* **Symptom**:
  ```
  WARNING: #<RECURSIVE-OPERATE>
  ```
* **Source**: Triggered in:
  - `load-system-test.lisp` during `(eval-when (:compile-toplevel) (asdf:load-system "anaphora"))`.
  - `game-repl.lisp` during `(eval-when (:compile-toplevel :load-toplevel :execute) (require "dotcl-repl"))`
    (which maps to `asdf:load-system`).
* **Root Cause**: ASDF signals this warning whenever `asdf:load-system` or
  `asdf:operate` is recursively invoked while another ASDF operation is already
  active (e.g. compiling/loading the parent `dungeon-slime` system).
* **Impact**: **Completely benign.** ASDF successfully compiles and loads the
  nested system.

### C. `COMPILE-FAILED-WARNING` & `COMPILE-WARNED-WARNING`

* **Symptom**:
  ```
  WARNING: #<COMPILE-FAILED-WARNING>
  WARNING: #<COMPILE-WARNED-WARNING>
  ```
* **Source**: Emitted during compilation of `quicklisp/http.lisp` and
  `load-system-test.lisp`.
* **Root Cause**: When the underlying C# `compile_file` runs, any standard
  warning (like `RECURSIVE-OPERATE` or `DEFGENERIC` redefinitions) that is not
  classified as a `style-warning` sets the compiler's warning and failure flags.
  At the end of compiling a component, ASDF detects these flags and raises
  `COMPILE-FAILED-WARNING` and `COMPILE-WARNED-WARNING` conditions.
* **Impact**: **Completely benign.** These are wrapper conditions informing ASDF
  and the user that compilation generated warnings. They do not block the build
  or prevent execution of subsequent components.
