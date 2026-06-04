# Package Documentation for `dotcl-internal`

This document provides detailed documentation for the internal and system symbols used within the `DOTCL-INTERNAL` package of the DotCL Common Lisp environment. These symbols represent the low-level building blocks of the compiler, runtime execution engine, object system (CLOS/MOP), thread manager, and macro systems (including the loop macro and pretty printer).

---

## 1. Low-Level Threading & Synchronization Primitives

These functions provide the direct interface to the .NET threading, locking, and synchronization systems. They are defined in [Runtime.Thread.cs](file:///home/dfields/src/cl/dotcl/runtime/Runtime.Thread.cs) and registered as raw CIL runtime calls. The public `DOTCL` package threading functions delegate to these internal operations.

| Symbol | Type | Syntax | Description & C# Backing | Example |
|---|---|---|---|---|
| `DOTCL-INTERNAL::%ACQUIRE-LOCK` | Function | `(%acquire-lock lock &optional wait-p timeout)` | Acquires a `LispLock` mutex. Uses `Monitor.Enter` or `Monitor.TryEnter`. | `(%acquire-lock lock)` |
| `DOTCL-INTERNAL::%RELEASE-LOCK` | Function | `(%release-lock lock)` | Releases a `LispLock` mutex. Uses `Monitor.Exit`. | `(%release-lock lock)` |
| `DOTCL-INTERNAL::%MAKE-LOCK` | Function | `(%make-lock &optional name)` | Creates a non-recursive `LispLock` mutex wrapper. | `(%make-lock "lock")` |
| `DOTCL-INTERNAL::%MAKE-RECURSIVE-LOCK` | Function | `(%make-recursive-lock &optional name)` | Creates a recursive (re-entrant) `LispLock` mutex. | `(%make-recursive-lock)` |
| `DOTCL-INTERNAL::%MAKE-CONDITION-VARIABLE` | Function | `(%make-condition-variable &key name)` | Creates a `LispConditionVariable`. | `(%make-condition-variable)` |
| `DOTCL-INTERNAL::%CONDITION-WAIT` | Function | `(%condition-wait cv lock &key timeout)` | Atomically releases the lock and waits on CV. Uses `Monitor.Wait`. | `(%condition-wait cv lock)` |
| `DOTCL-INTERNAL::%CONDITION-NOTIFY` | Function | `(%condition-notify cv)` | Wakes up a single thread waiting on the CV. Uses `Monitor.Pulse`. | `(%condition-notify cv)` |
| `DOTCL-INTERNAL::%CONDITION-BROADCAST` | Function | `(%condition-broadcast cv)` | Wakes up all threads waiting on the CV. Uses `Monitor.PulseAll`. | `(%condition-broadcast cv)` |
| `DOTCL-INTERNAL::%MAKE-SEMAPHORE` | Function | `(%make-semaphore &key initial-count name)` | Creates a counting `LispSemaphore` wrapping `SemaphoreSlim`. | `(%make-semaphore :initial-count 1)` |
| `DOTCL-INTERNAL::%SIGNAL-SEMAPHORE` | Function | `(%signal-semaphore semaphore &optional count)` | Increments semaphore count. Uses `SemaphoreSlim.Release`. | `(%signal-semaphore sem)` |
| `DOTCL-INTERNAL::%WAIT-ON-SEMAPHORE` | Function | `(%wait-on-semaphore semaphore &key timeout)` | Blocks until semaphore count is >0. Uses `SemaphoreSlim.Wait`. | `(%wait-on-semaphore sem)` |
| `DOTCL-INTERNAL::%CURRENT-THREAD` | Function | `(%current-thread)` | Returns the current thread object `LispThread`. Uses `[ThreadStatic]`. | `(%current-thread)` |
| `DOTCL-INTERNAL::%DESTROY-THREAD` | Function | `(%destroy-thread thread)` | Interrupts a thread. Uses `Thread.Interrupt`. | `(%destroy-thread thread)` |
| `DOTCL-INTERNAL::%THREAD-ALIVE-P` | Function | `(%thread-alive-p thread)` | Checks if thread is alive. Returns `t` or `nil`. Queries `Thread.IsAlive`. | `(%thread-alive-p thread)` |
| `DOTCL-INTERNAL::%THREAD-JOIN` | Function | `(%thread-join thread)` | Blocks until thread exits and returns its result. Calls `Thread.Join`. | `(%thread-join thread)` |
| `DOTCL-INTERNAL::%THREAD-NAME` | Function | `(%thread-name thread)` | Returns the string name of the thread. Queries `ThreadName`. | `(%thread-name thread)` |
| `DOTCL-INTERNAL::%THREAD-YIELD` | Function | `(%thread-yield)` | Yields thread processor execution. Calls `Thread.Yield`. | `(%thread-yield)` |
| `DOTCL-INTERNAL::%THREADP` | Function | `(%threadp object)` | Predicate returning `t` if object is a `LispThread`, else `nil`. | `(%threadp obj)` |

---

## 2. CLOS & MOP Internal Protocol Functions

These functions implement the underlying machinery of the Common Lisp Object System (CLOS) and Metaobject Protocol (MOP) inside [Runtime.CLOS.cs](file:///home/dfields/src/cl/dotcl/runtime/Runtime.CLOS.cs) and [Mop.cs](file:///home/dfields/src/cl/dotcl/runtime/Mop.cs).

| Symbol | Type | Syntax | Description & C# Backing | Example |
|---|---|---|---|---|
| `DOTCL-INTERNAL::%ADD-METHOD` | Function | `(%add-method gf method)` | Registers a method to a generic function, clearing cache. | `(%add-method gf method)` |
| `DOTCL-INTERNAL::%ALLOCATE-INSTANCE` | Function | `(%allocate-instance class)` | Allocates slot memory layout for a class prototype or new instance. | `(%allocate-instance class)` |
| `DOTCL-INTERNAL::%CHANGE-CLASS` | Function | `(%change-class instance new-class)` | Dynamically transitions an instance to a new class layout. | `(%change-class inst new-cls)` |
| `DOTCL-INTERNAL::%FIND-CLASS-OR-NIL` | Function | `(%find-class-or-nil name)` | Looks up a CLOS class object by name, returns `nil` if missing. | `(%find-class-or-nil 'my-class)` |
| `DOTCL-INTERNAL::%FIND-GF` | Function | `(%find-gf symbol)` | Finds registered generic function object from internal symbol registry. | `(%find-gf 'my-gf)` |
| `DOTCL-INTERNAL::%FIND-OR-FORWARD-CLASS` | Function | `(%find-or-forward-class name)` | Resolves a class name or creates a forward-referenced class placeholder. | `(%find-or-forward-class 'cls)` |
| `DOTCL-INTERNAL::%GF-METHODS` | Function | `(%gf-methods gf)` | Returns the list of method objects registered under the generic function. | `(%gf-methods gf)` |
| `DOTCL-INTERNAL::%MAKE-CLASS` | Function | `(%make-class name superclasses)` | Creates a new class metaobject with specified superclasses. | `(%make-class 'cls '(super))` |
| `DOTCL-INTERNAL::%MAKE-CLASS-FULL` | Function | `(%make-class-full name superclasses slots default-initargs)` | Complete class instantiator executing full layout allocation. | `(%make-class-full ...)` |
| `DOTCL-INTERNAL::%MAKE-GF` | Function | `(%make-gf symbol arity)` | Creates a generic function metaobject associated with the symbol. | `(%make-gf 'gf 1)` |
| `DOTCL-INTERNAL::%MAKE-INSTANCE-WITH-INITARGS` | Function | `(%make-instance-with-initargs class initargs)` | Allocates and initializes an instance with raw initargs. | `(%make-instance-with-initargs ...)` |
| `DOTCL-INTERNAL::%MAKE-METHOD` | Function | `(%make-method specializers qualifiers function)` | Instantiates a method object with specializers and function thunk. | `(%make-method specs nil fn)` |
| `DOTCL-INTERNAL::%MAKE-SLOT-DEF` | Function | `(%make-slot-def name initargs initform initfn)` | Creates an instance slot definition metaobject. | `(%make-slot-def 'x nil nil fn)` |
| `DOTCL-INTERNAL::%MAKE-SLOT-DEF-WITH-ALLOCATION` | Function | `(%make-slot-def-with-allocation name initargs initform initfn allocation)` | Instantiates instance or class-allocated slot definition. | `(%make-slot-def-with-allocation ...)` |
| `DOTCL-INTERNAL::%METHOD-FUNCTION` | Function | `(%method-function method)` | Returns the compiled Lisp function wrapper of the method code. | `(%method-function method)` |
| `DOTCL-INTERNAL::%METHOD-QUALIFIERS` | Function | `(%method-qualifiers method)` | Returns the qualifier list (e.g. `(:before)`) of the method. | `(%method-qualifiers method)` |
| `DOTCL-INTERNAL::%METHOD-SPECIALIZERS` | Function | `(%method-specializers method)` | Returns the list of specializer classes of the method. | `(%method-specializers method)` |
| `DOTCL-INTERNAL::%REGISTER-CLASS` | Function | `(%register-class name class)` | Registers the class object under the specified name symbol globally. | `(%register-class 'c cls)` |
| `DOTCL-INTERNAL::%REGISTER-GF` | Function | `(%register-gf symbol gf)` | Registers the generic function under the symbol name globally. | `(%register-gf 'gf obj)` |
| `DOTCL-INTERNAL::%REGISTER-STRUCT-CLASS` | Function | `(%register-struct-class name slots)` | Registers metadata mapping for structures in the class system. | `(%register-struct-class ...)` |
| `DOTCL-INTERNAL::%SET-CLASS-DEFAULT-INITARGS` | Function | `(%set-class-default-initargs class initargs)` | Configures default initialization arguments on the class metaobject. | `(%set-class-default-initargs ...)` |
| `DOTCL-INTERNAL::%SET-GF-LAMBDA-LIST-INFO` | Function | `(%set-gf-lambda-list-info gf req opt rest key key-names aok ll)` | Configures parsed parameter arity properties on the generic function. | `(%set-gf-lambda-list-info ...)` |
| `DOTCL-INTERNAL::%SET-METHOD-COMBINATION` | Function | `(%set-method-combination gf combination)` | Configures the method combination type (e.g. `STANDARD`). | `(%set-method-combination ...)` |
| `DOTCL-INTERNAL::%SET-METHOD-COMBINATION-ARGS` | Function | `(%set-method-combination-args gf args)` | Configures arguments passed to the method combination resolver. | `(%set-method-combination-args ...)` |
| `DOTCL-INTERNAL::%SET-METHOD-COMBINATION-ORDER` | Function | `(%set-method-combination-order gf order)` | Configures precedence order of methods during combinations. | `(%set-method-combination-order ...)` |
| `DOTCL-INTERNAL::%SET-METHOD-LAMBDA-LIST-INFO` | Function | `(%set-method-lambda-list-info method req opt rest key key-names aok)` | Sets arity properties on the method object. | `(%set-method-lambda-list-info ...)` |
| `DOTCL-INTERNAL::%SET-SLOT-VALUE` | Function | `(%set-slot-value instance name value)` | Directly assigns a value to a named instance slot (bypassing MOP). | `(%set-slot-value obj 'x 10)` |
| `DOTCL-INTERNAL::%SLOT-EXISTS-P` | Function | `(%slot-exists-p instance name)` | Returns `t` if the slot exists on the instance, otherwise `nil`. | `(%slot-exists-p obj 'x)` |
| `DOTCL-INTERNAL::(SETF CLASS-NAME)` | Function | `(setf (class-name class) name)` | Modifies the name symbol of the class. | `(setf (class-name cls) 'new)` |
| `DOTCL-INTERNAL::(SETF SLOT-VALUE-USING-CLASS)` | Function | `(setf (slot-value-using-class class instance slot) value)` | Protocol setter function that assigns a value to a slot. | `(setf (slot-value-using-class ...) 10)` |

---

## 3. Compiler State and Environment Special Variables

These special variables are bound dynamically by the DotCL compiler (e.g. inside `cil-compiler.lisp` and `cil-forms.lisp`) to track lexical scopes, local variables, tail-call optimizations, and macro expansion caches.

| Symbol | Type | Value Type | Description |
|---|---|---|---|
| `DOTCL-INTERNAL::*AT-TOPLEVEL*` | Variable | Boolean | True if the compiler is currently processing a top-level form. |
| `DOTCL-INTERNAL::*BLOCK-TAGS*` | Variable | List | List of active lexical block tags (used to resolve `block` and `return-from`). |
| `DOTCL-INTERNAL::*BOXED-VARS*` | Variable | List | List of variables that require boxing/wrapping due to closure capture. |
| `DOTCL-INTERNAL::*COMPILATION-UNIT-DEPTH*` | Variable | Integer | Tracks nesting level of active `with-compilation-unit` blocks. |
| `DOTCL-INTERNAL::*COMPILE-DEPTH*` | Variable | Integer | Depth recursion counter for form compilation. |
| `DOTCL-INTERNAL::*COMPILE-FILE-MODE*` | Variable | Symbol | Indicates file compilation flags (e.g. cross-compiling, standard). |
| `DOTCL-INTERNAL::*COMPILE-FORM-HANDLERS*` | Variable | Hash Table | Compiler routing map connecting symbols to form handlers. |
| `DOTCL-INTERNAL::*COMPILE-TIME-FLET-DEFS*` | Variable | List | Lexical environment definitions for local functions (`flet` / `labels`). |
| `DOTCL-INTERNAL::*COMPILE-WAS-TOPLEVEL*` | Variable | Boolean | Status tracking if compilation started at top level. |
| `DOTCL-INTERNAL::*CROSS-COMPILING*` | Variable | Boolean | True if compiler is cross-compiling Lisp forms for another target framework. |
| `DOTCL-INTERNAL::*CURRENT-MODULE-ID*` | Variable | String | String identifier for the PE assembly module currently being emitted. |
| `DOTCL-INTERNAL::*DEFERRED-COMPILATION-WARNINGS*` | Variable | List | Collects warnings (like undefined functions) to report at build end. |
| `DOTCL-INTERNAL::*DOUBLE-FLOAT-LOCALS*` | Variable | List | Maps active Lisp local float variables to double-precision local registers. |
| `DOTCL-INTERNAL::*ESTIMATE-CODE-SIZE-PUNT*` | Variable | Boolean | Optimization flag to bypass size estimation checks. |
| `DOTCL-INTERNAL::*FIXNUM-LOCALS*` | Variable | List | Maps Lisp integer locals directly to native 64-bit integer registers. |
| `DOTCL-INTERNAL::*FUNCTION-RETURN-TYPES*` | Variable | List | Compiler type inference lookup mapping functions to return types. |
| `DOTCL-INTERNAL::*GLOBAL-SPECIALS*` | Variable | List | Global list of symbols declared as dynamic/special. |
| `DOTCL-INTERNAL::*GLOBAL-SYMBOL-MACROS*` | Variable | List | Global list of symbol macros. |
| `DOTCL-INTERNAL::*GO-TAGS*` | Variable | List | Active tags in scope for `tagbody` and `go` jumps. |
| `DOTCL-INTERNAL::*IN-MV-CONTEXT*` | Variable | Boolean | True if form is compiled in a context expecting multiple values. |
| `DOTCL-INTERNAL::*IN-TAIL-POSITION*` | Variable | Boolean | True if compiler can safely apply tail-call optimization (TCO) to form. |
| `DOTCL-INTERNAL::*IN-TRY-BLOCK*` | Variable | Boolean | True if compiling within a try-catch error block (restricts TCO). |
| `DOTCL-INTERNAL::*LABEL-COUNTER*` | Variable | Integer | Auto-incrementing label counter for generating jump points in CIL. |
| `DOTCL-INTERNAL::*LABELS-MUTUAL-TCO*` | Variable | List | Tracks mutual tail-recursion optimized functions within `labels`. |
| `DOTCL-INTERNAL::*LOCAL-FUNCTIONS*` | Variable | List | Active lexical function bindings in scope. |
| `DOTCL-INTERNAL::*LOCALS*` | Variable | List | Active lexical variable bindings in scope. |
| `DOTCL-INTERNAL::*LONG-LOCALS*` | Variable | List | Maps variables to CIL long (Int64) local registers. |
| `DOTCL-INTERNAL::*LTV-COUNTER*` | Variable | Integer | Auto-incrementing index for load-time-value constant cache cells. |
| `DOTCL-INTERNAL::*MACRO-EXPAND-DEPTH-LIMIT*` | Variable | Integer | Hard limit of macro recursion depth to prevent compiler crashes. |
| `DOTCL-INTERNAL::*MACROEXPAND-CACHE*` | Variable | Hash Table | Speeds up compilation by caching macro expansions. |
| `DOTCL-INTERNAL::*MACROS*` | Variable | Hash Table | Registry of all defined global macro functions. |
| `DOTCL-INTERNAL::*NATIVE-SELF-NAME*` | Variable | String | Stores target method execution context name. |
| `DOTCL-INTERNAL::*SELF-FN-LOCAL*` | Variable | Symbol | Local identifier for recursive/self call bindings. |
| `DOTCL-INTERNAL::*SETF-EXPANDERS*` | Variable | Hash Table | Stores handlers defined via `defsetf`. |
| `DOTCL-INTERNAL::*SETF-EXPANSION-FNS*` | Variable | Hash Table | Stores expansion routines defined via `define-setf-expander`. |
| `DOTCL-INTERNAL::*SINGLE-FLOAT-LOCALS*` | Variable | List | Maps variables to single-precision (float) CIL registers. |
| `DOTCL-INTERNAL::*SPECIAL-CODE-SIZES*` | Variable | Hash Table | Tracking table for CIL instruction layouts. |
| `DOTCL-INTERNAL::*SPECIALS*` | Variable | List | List of symbols currently declared special in active lexical scope. |
| `DOTCL-INTERNAL::*SYMBOL-MACROS*` | Variable | List | Active symbol macros in lexical scope. |
| `DOTCL-INTERNAL::*TCO-IN-TRY-CATCH*` | Variable | Boolean | Flag indicating if TCO can be performed inside try/catch. |
| `DOTCL-INTERNAL::*TCO-LEAVE-INSTRS*` | Variable | List | IL instructions emitted when exiting a TCO block. |
| `DOTCL-INTERNAL::*TCO-LOCAL-FN-KEY*` | Variable | Symbol | Unique identifier for TCO targets. |
| `DOTCL-INTERNAL::*TCO-LOOP-LABEL*` | Variable | String | Dynamic label name pointing to the start of the TCO loop body. |
| `DOTCL-INTERNAL::*TCO-PARAM-ENTRIES*` | Variable | List | CIL parameter configurations for TCO optimization. |
| `DOTCL-INTERNAL::*TCO-SELF-NAME*` | Variable | String | Method name for self-recursion TCO. |
| `DOTCL-INTERNAL::*TCO-SELF-SYMBOL*` | Variable | Symbol | Lisp function name symbol targeted for self TCO. |
| `DOTCL-INTERNAL::*VAR-COUNTER*` | Variable | Integer | Auto-incrementing register variable index. |

---

## 4. Internal Package Lock & Nickname Functions

Under-the-hood helpers for package local nicknames and package lock validation.

| Symbol | Type | Syntax | Description & C# Backing | Example |
|---|---|---|---|---|
| `DOTCL-INTERNAL::%ADD-LOCAL-NICKNAME` | Function | `(%add-local-nickname nickname actual package)` | Underlying implementation of `add-package-local-nickname` in `Runtime.Packages.cs`. | `(%add-local-nickname "A" "B" pkg)` |
| `DOTCL-INTERNAL::%CHECK-PACKAGE-LOCK` | Function | `(%check-package-lock symbol context)` | Validates package locks. Signals a package-lock error if package is locked and `*package-locks-disabled*` is `nil`. | `(%check-package-lock 'car "DEFUN")` |

---

## 5. Array & Structure Internals

These functions perform low-level memory offset writes and size allocations for Lisp structures and arrays.

| Symbol | Type | Syntax | Description & C# Backing | Example |
|---|---|---|---|---|
| `DOTCL-INTERNAL::%AREF-SET` | Function | `(%aref-set array indices value)` | Writes a value into a multidimensional array. | `(%aref-set arr '(0 1) 42)` |
| `DOTCL-INTERNAL::%CHAR-SET` | Function | `(%char-set string index char)` | Writes a character directly into a mutable string/vector. | `(%char-set str 0 #\a)` |
| `DOTCL-INTERNAL::%COPY-STRUCT` | Function | `(%copy-struct structure)` | Creates a shallow copy of a structure instance. | `(%copy-struct my-struct)` |
| `DOTCL-INTERNAL::%MAKE-STRUCT` | Function | `(%make-struct type size)` | Allocates a structure object with the specified size slots. | `(%make-struct 'my-struct 5)` |
| `DOTCL-INTERNAL::%SET-FILL-POINTER` | Function | `(%set-fill-pointer vector index)` | Directly modifies the active fill pointer of a vector. | `(%set-fill-pointer vec 10)` |
| `DOTCL-INTERNAL::%SET-ROW-MAJOR-AREF` | Function | `(%set-row-major-aref array index value)` | Assigns a value using row-major flat index. | `(%set-row-major-aref arr 2 99)` |
| `DOTCL-INTERNAL::%STRUCT-REF` | Function | `(%struct-ref structure index)` | Accesses structure slot value at the specified slot index. | `(%struct-ref s 2)` |
| `DOTCL-INTERNAL::%STRUCT-SET` | Function | `(%struct-set structure index value)` | Writes a value into a structure slot at the specified slot index. | `(%struct-set s 2 42)` |
| `DOTCL-INTERNAL::%STRUCT-TYPEP` | Function | `(%struct-typep object type)` | Fast structure type validation predicate. | `(%struct-typep obj 'my-struct)` |
| `DOTCL-INTERNAL::%SET-SUBSEQ` | Function | `(%set-subseq sequence start end value)` | Writes values into a subsequence. | `(%set-subseq seq 0 3 "abc")` |

---

## 6. Load-Time-Value (LTV) Caching

LTV caching optimizes literal constants by caching them in static array slots during compilation and assembly loading.

| Symbol | Type | Syntax | Description & C# Backing | Example |
|---|---|---|---|---|
| `DOTCL-INTERNAL::%GET-LTV-SLOT` | Function | `(%get-ltv-slot index)` | Retrieves a cached load-time-value from the module's LTV array. | `(%get-ltv-slot 0)` |
| `DOTCL-INTERNAL::%GET-LTV-SLOT-IN` | Function | `(%get-ltv-slot-in module index)` | Retrieves a cached LTV from the specified module. | `(%get-ltv-slot-in mod 0)` |
| `DOTCL-INTERNAL::%HAS-LTV-SLOT` | Function | `(%has-ltv-slot index)` | Returns `t` if the LTV slot has been populated. | `(%has-ltv-slot 0)` |
| `DOTCL-INTERNAL::%HAS-LTV-SLOT-IN` | Function | `(%has-ltv-slot-in module index)` | Checks if a module LTV slot is populated. | `(%has-ltv-slot-in mod 0)` |
| `DOTCL-INTERNAL::%SET-LTV-SLOT` | Function | `(%set-ltv-slot index value)` | Caches a load-time-value in the current module LTV array. | `(%set-ltv-slot 0 val)` |
| `DOTCL-INTERNAL::%SET-LTV-SLOT-IN` | Function | `(%set-ltv-slot-in module index value)` | Caches an LTV in the specified module. | `(%set-ltv-slot-in mod 0 val)` |

---

## 7. Pretty Printer & Circularity Handling

Used to handle indentation and circular reference checking during standard formatting and printing.

| Symbol | Type | Syntax / Value | Description |
|---|---|---|---|
| `DOTCL-INTERNAL::*%PPRINT-LEVEL*` | Variable | Integer | Tracks nesting level during pretty printing. |
| `DOTCL-INTERNAL::%PPRINT-CIRCLE-CHECK` | Function | `(%pprint-circle-check obj stream)` | Verifies if an object is circular. |
| `DOTCL-INTERNAL::%PPRINT-CIRCLE-END` | Function | `(%pprint-circle-end stream)` | Finishes circular print scope. |
| `DOTCL-INTERNAL::%PPRINT-CIRCLE-SCAN` | Function | `(%pprint-circle-scan obj stream)` | Recursively scans an object for circular references. |
| `DOTCL-INTERNAL::%PPRINT-END-BLOCK` | Function | `(%pprint-end-block stream)` | Terminates pretty-print indentation block. |
| `DOTCL-INTERNAL::%PPRINT-START-BLOCK` | Function | `(%pprint-start-block stream prefix suffix)` | Begins pretty-print block with prefix/suffix. |

---

## 8. Loop Macro Context & AST Structure

These symbols are used by the extensible ANSI loop macro implementation in [loop.lisp](file:///home/dfields/src/cl/dotcl/compiler/loop.lisp).

* **Loop Keywords:** The following symbols are parsed as loop grammar keywords:
  `ABOVE`, `ACROSS`, `ALWAYS`, `APPENDING`, `AS`, `BEING`, `BELOW`, `BY`, `COLLECT`, `COLLECTING`, `COUNTING`, `DOWNFROM`, `DOWNTO`, `FINALLY`, `FOR`, `FROM`, `IN`, `INCLUSIVE-PERMITTED`, `INITIALLY`, `MAXIMIZE`, `MAXIMIZING`, `MINIMIZE`, `MINIMIZING`, `NAMED`, `NCONCING`, `NEVER`, `ON`, `REPEAT`, `SUM`, `SUMMING`, `THEREIS`, `TO`, `UNTIL`, `UPFROM`, `UPTO`, `WHILE`, `WITH`.

* **Loop Special State Variables:**
  `*LOOP-AFTER-BODY*`, `*LOOP-AFTER-EPILOGUE*`, `*LOOP-ANSI-UNIVERSE*`, `*LOOP-BEFORE-LOOP*`, `*LOOP-BIND-STACK*`, `*LOOP-BODY*`, `*LOOP-COLLECTION-CRUFT*`, `*LOOP-DECLARATIONS*`, `*LOOP-DESETQ-CROCKS*`, `*LOOP-DESETQ-TEMPORARY*`, `*LOOP-DESTRUCTURING-HOOKS*`, `*LOOP-DUPLICATE-CODE*`, `*LOOP-EMITTED-BODY*`, `*LOOP-EPILOGUE*`, `*LOOP-FINAL-VALUE-CULPRIT*`, `*LOOP-GENTEMP*`, `*LOOP-INSIDE-CONDITIONAL*`, `*LOOP-INTERNAL-MACROS*`, `*LOOP-ITERATION-FLAG-VARIABLE*`, `*LOOP-ITERATION-VARIABLES*`, `*LOOP-MACRO-ENVIRONMENT*`, `*LOOP-MINIMAX-TYPE-INFINITIES-ALIST*`, `*LOOP-NAMED-VARIABLES*`, `*LOOP-NAMES*`, `*LOOP-NEVER-STEPPED-VARIABLE*`, `*LOOP-NODECLARE*`, `*LOOP-ORIGINAL-SOURCE-CODE*`, `*LOOP-PROLOGUE*`, `*LOOP-REAL-DATA-TYPE*`, `*LOOP-SOURCE-CODE*`, `*LOOP-SOURCE-CONTEXT*`, `*LOOP-UNIVERSE*`, `*LOOP-VARIABLES*`, `*LOOP-WHEN-IT-VARIABLE*`, `*LOOP-WRAPPERS*`.

* **Loop Structure Setters (Mutators):**
  `(SETF LOOP-COLLECTOR-CLASS)`, `(SETF LOOP-COLLECTOR-DATA)`, `(SETF LOOP-COLLECTOR-DTYPE)`, `(SETF LOOP-COLLECTOR-HISTORY)`, `(SETF LOOP-COLLECTOR-NAME)`, `(SETF LOOP-COLLECTOR-TEMPVARS)`, `(SETF LOOP-MINIMAX-ANSWER-VARIABLE)`, `(SETF LOOP-MINIMAX-FLAG-VARIABLE)`, `(SETF LOOP-MINIMAX-INFINITY-DATA)`, `(SETF LOOP-MINIMAX-OPERATIONS)`, `(SETF LOOP-MINIMAX-TEMP-VARIABLE)`, `(SETF LOOP-MINIMAX-TYPE)`, `(SETF LOOP-PATH-FUNCTION)`, `(SETF LOOP-PATH-INCLUSIVE-PERMITTED)`, `(SETF LOOP-PATH-NAMES)`, `(SETF LOOP-PATH-PREPOSITION-GROUPS)`, `(SETF LOOP-PATH-USER-DATA)`, `(SETF LOOP-UNIVERSE-ANSI)`, `(SETF LOOP-UNIVERSE-FOR-KEYWORDS)`, `(SETF LOOP-UNIVERSE-IMPLICIT-FOR-REQUIRED)`, `(SETF LOOP-UNIVERSE-ITERATION-KEYWORDS)`, `(SETF LOOP-UNIVERSE-KEYWORDS)`, `(SETF LOOP-UNIVERSE-PATH-KEYWORDS)`, `(SETF LOOP-UNIVERSE-TYPE-KEYWORDS)`, `(SETF LOOP-UNIVERSE-TYPE-SYMBOLS)`.

* **Loop Evaluation & Accumulation Functions:**
  * `LOOP-ACCUMULATE-MINIMAX-VALUE`: Accumulates minimized/maximized values.
  * `LOOP-COLLECT-ANSWER`: Finalizes loop values accumulation.
  * `LOOP-COLLECT-RPLACD`: Updates tail of list during list collections.
  * `LOOP-REALLY-DESETQ`: Destructuring variable assignments.
  * `LOOP-STORE-TABLE-DATA`: Saves internal loop tracking tables.
  * `WITH-LOOP-LIST-COLLECTION-HEAD`: Macro providing list collection binding contexts.
  * `WITH-MINIMAX-VALUE`: Macro managing minimax state variables.

---

## 9. Miscellaneous Internal Functions & Variables

| Symbol | Type | Syntax / Description |
|---|---|---|
| `DOTCL-INTERNAL::*%MINI-EVAL-DEPTH*` | Variable | Counter tracking mini-evaluation depths. |
| `DOTCL-INTERNAL::%ASSOCIATE-CONDITION-RESTARTS` | Function | Links active restarts to the condition object. |
| `DOTCL-INTERNAL::%DISASSOCIATE-CONDITION-RESTARTS` | Function | Unlinks restarts. |
| `DOTCL-INTERNAL::%GET-VARIABLE-DOCUMENTATION` | Function | Retrieves variable documentation strings. |
| `DOTCL-INTERNAL::%GETENV` | Function | Fetches an environment variable. |
| `DOTCL-INTERNAL::%INLINE-CS-SPLICED` | Function | Splicing C# inline code strings into assembler forms. |
| `DOTCL-INTERNAL::%OBJECT-ID` | Function | Returns unique integer ID for an object (like GetHashCode). |
| `DOTCL-INTERNAL::%PACKAGE-ALL-SYMBOLS` | Function | Gathers all symbols present in a package. |
| `DOTCL-INTERNAL::%PACKAGE-EXTERNAL-SYMBOLS` | Function | Gathers exported symbols. |
| `DOTCL-INTERNAL::%PUTF` | Function | Directly updates property list values. |
| `DOTCL-INTERNAL::%REGISTER-COMPILER-MACRO-RT` | Function | Registers a compiler macro. |
| `DOTCL-INTERNAL::%REGISTER-LONG-METHOD-COMBINATION` | Function | Registers custom long-form method combinations. |
| `DOTCL-INTERNAL::%REGISTER-MACRO-FUNCTION-RT` | Function | Registers macro function. |
| `DOTCL-INTERNAL::%REGISTER-METHOD-COMBINATION` | Function | Registers standard combinations. |
| `DOTCL-INTERNAL::%REGISTER-SYMBOL-MACRO-RT` | Function | Registers symbol macros. |
| `DOTCL-INTERNAL::%REGISTER-TYPE-EXPANDER` | Function | Registers custom type declarations. |
| `DOTCL-INTERNAL::%SET-FDEFINITION` | Function | Binds function definitions globally. |
| `DOTCL-INTERNAL::%SET-LOGICAL-PATHNAME-TRANSLATIONS` | Function | Sets logical translations. |
| `DOTCL-INTERNAL::%SET-READTABLE-CASE` | Function | Configures readtable cases (`:upcase`, `:downcase`). |
| `DOTCL-INTERNAL::%SET-SYMBOL-VALUE` | Function | Direct global symbol value writer. |
| `DOTCL-INTERNAL::%STACK-SPACE-AVAILABLE-P` | Function | Checks recursion stack limits. |
| `DOTCL-INTERNAL::%SYMBOL-SPECIAL-P` | Function | Checks if symbol is dynamic/special. |
| `DOTCL-INTERNAL::%TOP-CLUSTER-RESTARTS` | Function | Returns list of restarts. |
| `DOTCL-INTERNAL::%TRACE` | Function | Direct symbol tracing hook. |
| `DOTCL-INTERNAL::%UNREGISTER-MACRO-FUNCTION-RT` | Function | Removes macro definitions. |
| `DOTCL-INTERNAL::%UNTRACE` | Function | Direct symbol untracing. |
| `DOTCL-INTERNAL::(SETF COMMON-LISP:DOCUMENTATION)` | Function | Modifies documentation strings. |
| `DOTCL-INTERNAL::*DOCUMENTATION-TABLE*` | Variable | Hash table storing symbols documentation strings. |
| `DOTCL-INTERNAL::DOTCL-DELETE-DIRECTORY` | Function | Recursively deletes folders from filesystem. |
| `DOTCL-INTERNAL::INTERACTIVE-INTERRUPT` | Condition | Error signaled on thread interruption signals. |
| `DOTCL-INTERNAL::MAKE-RANDOM-STATE-FROM-SEEDS` | Function | Seeds custom random state arrays. |
| `DOTCL-INTERNAL::MAKE-STRING-OUTPUT-STREAM-TO-STRING` | Function | Resolves string stream buffers. |
| `DOTCL-INTERNAL::RUN-WITH-TIMEOUT` | Function | Runs block within timeout limits. |
| `DOTCL-INTERNAL::SET-SYMBOL-CONSTANT` | Function | Marks a symbol as constant globally. |
| `DOTCL-INTERNAL::SYMBOL-CONSTANT-P` | Function | Returns `t` if symbol is constant, else `nil`. |
| `DOTCL-INTERNAL::TYPEXPAND-1` | Function | Expands type definitions. |
