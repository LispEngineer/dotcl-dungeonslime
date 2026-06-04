# Package Documentation for `dotcl-mop`

This document provides detailed documentation for the symbols exported by the `DOTCL-MOP` package in the DotCL Common Lisp environment. These symbols expose DotCL's Metaobject Protocol (MOP) and CLOS introspection capabilities. This allows external CLOS-introspection libraries (such as `closer-mop`) to interface cleanly with DotCL's object model.

Functions that only act as API placeholders or are not yet supported for custom user extensions are documented as **stubs**. Calling them will register a warning or error. Fully functional introspection functions are mapped directly to properties and methods inside `dotcl`'s C# CLOS implementation.

---

## Index of Symbols

### Metaobject Classes (Types)
* [`DOTCL-MOP:DIRECT-SLOT-DEFINITION`](#dotcl-mopdirect-slot-definition)
* [`DOTCL-MOP:EFFECTIVE-SLOT-DEFINITION`](#dotcl-mopeffective-slot-definition)
* [`DOTCL-MOP:EQL-SPECIALIZER`](#dotcl-mopeql-specializer)
* [`DOTCL-MOP:FORWARD-REFERENCED-CLASS`](#dotcl-mopforward-referenced-class)
* [`DOTCL-MOP:FUNCALLABLE-STANDARD-CLASS`](#dotcl-mopfuncallable-standard-class)
* [`DOTCL-MOP:FUNCALLABLE-STANDARD-OBJECT`](#dotcl-mopfuncallable-standard-object)
* [`DOTCL-MOP:METAOBJECT`](#dotcl-mopmetaobject)
* [`DOTCL-MOP:SLOT-DEFINITION`](#dotcl-mopslot-definition)
* [`DOTCL-MOP:SPECIALIZER`](#dotcl-mopspecializer)
* [`DOTCL-MOP:STANDARD-ACCESSOR-METHOD`](#dotcl-mopstandard-accessor-method)
* [`DOTCL-MOP:STANDARD-DIRECT-SLOT-DEFINITION`](#dotcl-mopstandard-direct-slot-definition)
* [`DOTCL-MOP:STANDARD-EFFECTIVE-SLOT-DEFINITION`](#dotcl-mopstandard-effective-slot-definition)
* [`DOTCL-MOP:STANDARD-READER-METHOD`](#dotcl-mopstandard-reader-method)
* [`DOTCL-MOP:STANDARD-SLOT-DEFINITION`](#dotcl-mopstandard-slot-definition)
* [`DOTCL-MOP:STANDARD-WRITER-METHOD`](#dotcl-mopstandard-writer-method)

### Protocol Functions and Generic Functions
* [`DOTCL-MOP:ACCESSOR-METHOD-SLOT-DEFINITION`](#dotcl-mopaccessor-method-slot-definition)
* [`DOTCL-MOP:ADD-DEPENDENT`](#dotcl-mopadd-dependent)
* [`DOTCL-MOP:ADD-DIRECT-METHOD`](#dotcl-mopadd-direct-method)
* [`DOTCL-MOP:ADD-DIRECT-SUBCLASS`](#dotcl-mopadd-direct-subclass)
* [`DOTCL-MOP:CLASS-DEFAULT-INITARGS`](#dotcl-mopclass-default-initargs)
* [`DOTCL-MOP:CLASS-DIRECT-DEFAULT-INITARGS`](#dotcl-mopclass-direct-default-initargs)
* [`DOTCL-MOP:CLASS-DIRECT-SLOTS`](#dotcl-mopclass-direct-slots)
* [`DOTCL-MOP:CLASS-DIRECT-SUBCLASSES`](#dotcl-mopclass-direct-subclasses)
* [`DOTCL-MOP:CLASS-DIRECT-SUPERCLASSES`](#dotcl-mopclass-direct-superclasses)
* [`DOTCL-MOP:CLASS-FINALIZED-P`](#dotcl-mopclass-finalized-p)
* [`DOTCL-MOP:CLASS-PRECEDENCE-LIST`](#dotcl-mopclass-precedence-list)
* [`DOTCL-MOP:CLASS-PROTOTYPE`](#dotcl-mopclass-prototype)
* [`DOTCL-MOP:CLASS-SLOTS`](#dotcl-mopclass-slots)
* [`DOTCL-MOP:CLASSP`](#dotcl-mopclassp)
* [`DOTCL-MOP:COMPUTE-APPLICABLE-METHODS-USING-CLASSES`](#dotcl-mopcompute-applicable-methods-using-classes)
* [`DOTCL-MOP:COMPUTE-CLASS-PRECEDENCE-LIST`](#dotcl-mopcompute-class-precedence-list)
* [`DOTCL-MOP:COMPUTE-DEFAULT-INITARGS`](#dotcl-mopcompute-default-initargs)
* [`DOTCL-MOP:COMPUTE-DISCRIMINATING-FUNCTION`](#dotcl-mopcompute-discriminating-function)
* [`DOTCL-MOP:COMPUTE-EFFECTIVE-METHOD`](#dotcl-mopcompute-effective-method)
* [`DOTCL-MOP:COMPUTE-EFFECTIVE-METHOD-FUNCTION`](#dotcl-mopcompute-effective-method-function)
* [`DOTCL-MOP:COMPUTE-EFFECTIVE-SLOT-DEFINITION`](#dotcl-mopcompute-effective-slot-definition)
* [`DOTCL-MOP:COMPUTE-SLOTS`](#dotcl-mopcompute-slots)
* [`DOTCL-MOP:DIRECT-SLOT-DEFINITION-CLASS`](#dotcl-mopdirect-slot-definition-class)
* [`DOTCL-MOP:EFFECTIVE-SLOT-DEFINITION-CLASS`](#dotcl-mopeffective-slot-definition-class)
* [`DOTCL-MOP:ENSURE-CLASS`](#dotcl-mopensure-class)
* [`DOTCL-MOP:ENSURE-CLASS-USING-CLASS`](#dotcl-mopensure-class-using-class)
* [`DOTCL-MOP:ENSURE-FINALIZED`](#dotcl-mopensure-finalized)
* [`DOTCL-MOP:ENSURE-GENERIC-FUNCTION-USING-CLASS`](#dotcl-mopensure-generic-function-using-class)
* [`DOTCL-MOP:EQL-SPECIALIZER-OBJECT`](#dotcl-mopeql-specializer-object)
* [`DOTCL-MOP:EXTRACT-LAMBDA-LIST`](#dotcl-mopextract-lambda-list)
* [`DOTCL-MOP:EXTRACT-SPECIALIZER-NAMES`](#dotcl-mopextract-specializer-names)
* [`DOTCL-MOP:FINALIZE-INHERITANCE`](#dotcl-mopfinalize-inheritance)
* [`DOTCL-MOP:FIND-METHOD-COMBINATION`](#dotcl-mopfind-method-combination)
* [`DOTCL-MOP:FUNCALLABLE-STANDARD-INSTANCE-ACCESS`](#dotcl-mopfuncallable-standard-instance-access)
* [`DOTCL-MOP:GENERIC-FUNCTION-ARGUMENT-PRECEDENCE-ORDER`](#dotcl-mopgeneric-function-argument-precedence-order)
* [`DOTCL-MOP:GENERIC-FUNCTION-DECLARATIONS`](#dotcl-mopgeneric-function-declarations)
* [`DOTCL-MOP:GENERIC-FUNCTION-LAMBDA-LIST`](#dotcl-mopgeneric-function-lambda-list)
* [`DOTCL-MOP:GENERIC-FUNCTION-METHOD-CLASS`](#dotcl-mopgeneric-function-method-class)
* [`DOTCL-MOP:GENERIC-FUNCTION-METHOD-COMBINATION`](#dotcl-mopgeneric-function-method-combination)
* [`DOTCL-MOP:GENERIC-FUNCTION-METHODS`](#dotcl-mopgeneric-function-methods)
* [`DOTCL-MOP:GENERIC-FUNCTION-NAME`](#dotcl-mopgeneric-function-name)
* [`DOTCL-MOP:INTERN-EQL-SPECIALIZER`](#dotcl-mopintern-eql-specializer)
* [`DOTCL-MOP:MAKE-METHOD-LAMBDA`](#dotcl-mopmake-method-lambda)
* [`DOTCL-MOP:MAP-DEPENDENTS`](#dotcl-mopmap-dependents)
* [`DOTCL-MOP:METHOD-FUNCTION`](#dotcl-mopmethod-function)
* [`DOTCL-MOP:METHOD-GENERIC-FUNCTION`](#dotcl-mopmethod-generic-function)
* [`DOTCL-MOP:METHOD-LAMBDA-LIST`](#dotcl-mopmethod-lambda-list)
* [`DOTCL-MOP:METHOD-QUALIFIERS`](#dotcl-mopmethod-qualifiers)
* [`DOTCL-MOP:METHOD-SPECIALIZERS`](#dotcl-mopmethod-specializers)
* [`DOTCL-MOP:READER-METHOD-CLASS`](#dotcl-mopreader-method-class)
* [`DOTCL-MOP:REMOVE-DEPENDENT`](#dotcl-mopremove-dependent)
* [`DOTCL-MOP:REMOVE-DIRECT-METHOD`](#dotcl-mopremove-direct-method)
* [`DOTCL-MOP:REMOVE-DIRECT-SUBCLASS`](#dotcl-mopremove-direct-subclass)
* [`DOTCL-MOP:REQUIRED-ARGS`](#dotcl-moprequired-args)
* [`DOTCL-MOP:SET-FUNCALLABLE-INSTANCE-FUNCTION`](#dotcl-mopset-funcallable-instance-function)
* [`DOTCL-MOP:SLOT-BOUNDP-USING-CLASS`](#dotcl-mopslot-boundp-using-class)
* [`DOTCL-MOP:SLOT-DEFINITION-ALLOCATION`](#dotcl-mopslot-definition-allocation)
* [`DOTCL-MOP:SLOT-DEFINITION-INITARGS`](#dotcl-mopslot-definition-initargs)
* [`DOTCL-MOP:SLOT-DEFINITION-INITFORM`](#dotcl-mopslot-definition-initform)
* [`DOTCL-MOP:SLOT-DEFINITION-INITFUNCTION`](#dotcl-mopslot-definition-initfunction)
* [`DOTCL-MOP:SLOT-DEFINITION-LOCATION`](#dotcl-mopslot-definition-location)
* [`DOTCL-MOP:SLOT-DEFINITION-NAME`](#dotcl-mopslot-definition-name)
* [`DOTCL-MOP:SLOT-DEFINITION-READERS`](#dotcl-mopslot-definition-readers)
* [`DOTCL-MOP:SLOT-DEFINITION-TYPE`](#dotcl-mopslot-definition-type)
* [`DOTCL-MOP:SLOT-DEFINITION-WRITERS`](#dotcl-mopslot-definition-writers)
* [`DOTCL-MOP:SLOT-MAKUNBOUND-USING-CLASS`](#dotcl-mopslot-makunbound-using-class)
* [`DOTCL-MOP:SLOT-VALUE-USING-CLASS`](#dotcl-mopslot-value-using-class)
* [`DOTCL-MOP:SPECIALIZER-DIRECT-GENERIC-FUNCTIONS`](#dotcl-mopspecializer-direct-generic-functions)
* [`DOTCL-MOP:SPECIALIZER-DIRECT-METHODS`](#dotcl-mopspecializer-direct-methods)
* [`DOTCL-MOP:STANDARD-INSTANCE-ACCESS`](#dotcl-mopstandard-instance-access)
* [`DOTCL-MOP:SUBCLASSP`](#dotcl-mopsubclassp)
* [`DOTCL-MOP:UPDATE-DEPENDENT`](#dotcl-mopupdate-dependent)
* [`DOTCL-MOP:VALIDATE-SUPERCLASS`](#dotcl-mopvalidate-superclass)
* [`DOTCL-MOP:WRITER-METHOD-CLASS`](#dotcl-mopwriter-method-class)

---

## Metaobject Classes (Types)

The following symbols represent the CLOS metaobject class types interned and exported by `dotcl-mop`. They are registered at startup in `Mop.cs` to satisfy package import specifications in libraries like `closer-mop`.

* **`DOTCL-MOP:DIRECT-SLOT-DEFINITION`**
* **`DOTCL-MOP:EFFECTIVE-SLOT-DEFINITION`**
* **`DOTCL-MOP:EQL-SPECIALIZER`**
* **`DOTCL-MOP:FORWARD-REFERENCED-CLASS`**
* **`DOTCL-MOP:FUNCALLABLE-STANDARD-CLASS`**
* **`DOTCL-MOP:FUNCALLABLE-STANDARD-OBJECT`**
* **`DOTCL-MOP:METAOBJECT`**
* **`DOTCL-MOP:SLOT-DEFINITION`**
* **`DOTCL-MOP:SPECIALIZER`**
* **`DOTCL-MOP:STANDARD-ACCESSOR-METHOD`**
* **`DOTCL-MOP:STANDARD-DIRECT-SLOT-DEFINITION`**
* **`DOTCL-MOP:STANDARD-EFFECTIVE-SLOT-DEFINITION`**
* **`DOTCL-MOP:STANDARD-READER-METHOD`**
* **`DOTCL-MOP:STANDARD-SLOT-DEFINITION`**
* **`DOTCL-MOP:STANDARD-WRITER-METHOD`**

---

## Protocol Functions and Generic Functions

### `DOTCL-MOP:ACCESSOR-METHOD-SLOT-DEFINITION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:accessor-method-slot-definition method)`
* **Description:** Accesses the slot definition associated with an accessor method. Currently exported as a stub symbol.

### `DOTCL-MOP:ADD-DEPENDENT`
* **Type:** Generic Function (Stub)
* **Syntax:** `(dotcl-mop:add-dependent metaobject dependent)`
* **Description:** Registers a dependent to be notified of updates to `metaobject`. Currently returns `nil` and performs no action.
* **Under the Hood:** Mapped as standard MOP GF with default receiver in `Mop.cs`.

### `DOTCL-MOP:ADD-DIRECT-METHOD`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:add-direct-method class method)`
* **Description:** Statically binds a method directly on the class's method list. Exported stub.

### `DOTCL-MOP:ADD-DIRECT-SUBCLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:add-direct-subclass superclass subclass)`
* **Description:** Binds a direct subclass relation. Exported stub.

### `DOTCL-MOP:CLASS-DEFAULT-INITARGS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-default-initargs class)`
* **Description:** Returns an alist of default initialization arguments and their evaluation thunks for the target class.
* **Under the Hood:** Backed by `Mop.cs`. Extracts default initargs from the C# `LispClass` object, mapping them to lists of `(name nil thunk)`.
* **Usage Example:**
  ```lisp
  (dotcl-mop:class-default-initargs (find-class 'my-class))
  ```

### `DOTCL-MOP:CLASS-DIRECT-DEFAULT-INITARGS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-direct-default-initargs class)`
* **Description:** Returns a list of default initarg specs defined directly on the class (excluding inherited ones).
* **Under the Hood:** Extracts `DirectDefaultInitargs` from `LispClass` in C#.

### `DOTCL-MOP:CLASS-DIRECT-SLOTS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-direct-slots class)`
* **Description:** Returns a list of the direct slot definitions defined directly on the class.
* **Under the Hood:** Returns the `DirectSlots` list of the `LispClass` metaobject.

### `DOTCL-MOP:CLASS-DIRECT-SUBCLASSES`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-direct-subclasses class)`
* **Description:** Scans the active Lisp class registry dynamically to identify all classes that claim the target class as a direct parent.
* **Under the Hood:** Iterates through `Runtime.AllClasses()` and matches direct superclass references.
* **Usage Example:**
  ```lisp
  (dotcl-mop:class-direct-subclasses (find-class 'standard-object))
  ```

### `DOTCL-MOP:CLASS-DIRECT-SUPERCLASSES`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-direct-superclasses class)`
* **Description:** Returns the list of direct superclasses configured for the class.
* **Under the Hood:** Accesses the `DirectSuperclasses` array from the C# `LispClass` instance.

### `DOTCL-MOP:CLASS-FINALIZED-P`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-finalized-p class)`
* **Description:** Returns `t` if the class has finalized its inheritance and layout details.
* **Under the Hood:** Because DotCL finalizes eagerly upon `defclass`, this returns `t` for any existing class that is not forward-referenced.

### `DOTCL-MOP:CLASS-PRECEDENCE-LIST`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-precedence-list class)`
* **Description:** Returns the ordered Class Precedence List (CPL) for the class, sorting from most specific to least specific.
* **Under the Hood:** Returns the `ClassPrecedenceList` array of the `LispClass` instance.
* **Usage Example:**
  ```lisp
  (dotcl-mop:class-precedence-list (find-class 'my-subclass))
  ```

### `DOTCL-MOP:CLASS-PROTOTYPE`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-prototype class)`
* **Description:** Returns a default prototype instance of the class without running any constructor or initialization protocols.
* **Under the Hood:** Instantiates and returns a raw, uninitialized `LispInstance` mapping to the target class.

### `DOTCL-MOP:CLASS-SLOTS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:class-slots class)`
* **Description:** Returns the complete list of effective slot definitions (including inherited slots) for the class.
* **Under the Hood:** Returns the `EffectiveSlots` list of the `LispClass` metaobject.

### `DOTCL-MOP:CLASSP`
* **Type:** Function
* **Syntax:** `(dotcl-mop:classp object)`
* **Description:** Predicate returning `t` if the object is a CLOS class, otherwise `nil`.
* **Under the Hood:** Evaluates `args[0] is LispClass`.

### `DOTCL-MOP:COMPUTE-APPLICABLE-METHODS-USING-CLASSES`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-applicable-methods-using-classes generic-function classes)`
* **Description:** Identifies applicable methods using specialized classes. Exported stub.

### `DOTCL-MOP:COMPUTE-CLASS-PRECEDENCE-LIST`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-class-precedence-list class superclasses)`
* **Description:** Sorts class precedence topologically. Exported stub.

### `DOTCL-MOP:COMPUTE-DEFAULT-INITARGS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-default-initargs class default-initargs)`
* **Description:** Resolves defaults. Exported stub.

### `DOTCL-MOP:COMPUTE-DISCRIMINATING-FUNCTION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-discriminating-function generic-function)`
* **Description:** Resolves method dispatch. Exported stub.

### `DOTCL-MOP:COMPUTE-EFFECTIVE-METHOD`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-effective-method generic-function combination methods)`
* **Description:** Combines methods into an executable unit. Exported stub.

### `DOTCL-MOP:COMPUTE-EFFECTIVE-METHOD-FUNCTION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-effective-method-function generic-function methods)`
* **Description:** Emits execution logic. Exported stub.

### `DOTCL-MOP:COMPUTE-EFFECTIVE-SLOT-DEFINITION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-effective-slot-definition class name direct-slots)`
* **Description:** Merges direct slot specs. Exported stub.

### `DOTCL-MOP:COMPUTE-SLOTS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:compute-slots class)`
* **Description:** Computes final slot layouts. Exported stub.

### `DOTCL-MOP:DIRECT-SLOT-DEFINITION-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:direct-slot-definition-class class &rest initargs)`
* **Description:** Resolves direct slot types. Exported stub.

### `DOTCL-MOP:EFFECTIVE-SLOT-DEFINITION-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:effective-slot-definition-class class &rest initargs)`
* **Description:** Resolves effective slot types. Exported stub.

### `DOTCL-MOP:ENSURE-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:ensure-class name &rest keys)`
* **Description:** Dynamically defines/registers a class. Exported stub.

### `DOTCL-MOP:ENSURE-CLASS-USING-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:ensure-class-using-class class name &rest keys)`
* **Description:** Underlies ensure-class. Exported stub.

### `DOTCL-MOP:ENSURE-FINALIZED`
* **Type:** Function
* **Syntax:** `(dotcl-mop:ensure-finalized class &optional errorp)`
* **Description:** Guarantees class layout is complete. In DotCL, this simply returns the class object since layout finalization is eager.

### `DOTCL-MOP:ENSURE-GENERIC-FUNCTION-USING-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:ensure-generic-function-using-class gf name &rest keys)`
* **Description:** Updates generic functions dynamically. Exported stub.

### `DOTCL-MOP:EQL-SPECIALIZER-OBJECT`
* **Type:** Function
* **Syntax:** `(dotcl-mop:eql-specializer-object eql-specializer)`
* **Description:** Returns the value that the `eql-specializer` is specialized on.
* **Under the Hood:** Because DotCL represents `eql` specializers as a Lisp Cons list of the format `(eql X)`, this function extracts the second element (`c.Cdr.Car`).
* **Usage Example:**
  ```lisp
  (dotcl-mop:eql-specializer-object '(eql 42)) ; Returns 42
  ```

### `DOTCL-MOP:EXTRACT-LAMBDA-LIST`
* **Type:** Function
* **Syntax:** `(dotcl-mop:extract-lambda-list specialized-lambda-list)`
* **Description:** Strips specializer parameters to return a clean lambda-list of parameter names.
* **Under the Hood:** Traverses the Cons list and strips tuples like `(x my-class)` to `x`.
* **Usage Example:**
  ```lisp
  (dotcl-mop:extract-lambda-list '((x class) &optional y)) ; Returns (X &OPTIONAL Y)
  ```

### `DOTCL-MOP:EXTRACT-SPECIALIZER-NAMES`
* **Type:** Function
* **Syntax:** `(dotcl-mop:extract-specializer-names specialized-lambda-list)`
* **Description:** Extracts the specialized classes from the lambda list, defaulting to `t` for non-specialized parameters.
* **Usage Example:**
  ```lisp
  (dotcl-mop:extract-specializer-names '((x integer) y)) ; Returns (INTEGER T)
  ```

### `DOTCL-MOP:FINALIZE-INHERITANCE`
* **Type:** Generic Function
* **Syntax:** `(dotcl-mop:finalize-inheritance class)`
* **Description:** finalizes class layouts. Since DotCL does this at compile/definition time, the standard method is a no-op returning `nil`.

### `DOTCL-MOP:FIND-METHOD-COMBINATION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:find-method-combination generic-function type options)`
* **Description:** Resolves method combination rules. Exported stub.

### `DOTCL-MOP:FUNCALLABLE-STANDARD-INSTANCE-ACCESS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:funcallable-standard-instance-access instance location)`
* **Description:** Directly accesses slot index values in funcallable standard objects. Exported stub.

### `DOTCL-MOP:GENERIC-FUNCTION-ARGUMENT-PRECEDENCE-ORDER`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-argument-precedence-order generic-function)`
* **Description:** Returns the parameter list ordering indicating how arguments are evaluated during dispatch checks.
* **Under the Hood:** Collects positional parameters from the generic function's lambda-list.

### `DOTCL-MOP:GENERIC-FUNCTION-DECLARATIONS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:generic-function-declarations generic-function)`
* **Description:** Returns declarations. Exported stub.

### `DOTCL-MOP:GENERIC-FUNCTION-LAMBDA-LIST`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-lambda-list generic-function)`
* **Description:** Returns the lambda-list configured for the generic function. If none was stored, reconstructs a placeholder using the arity metadata.
* **Under the Hood:** Checks `StoredLambdaList` on `GenericFunction` or falls back to arity properties.

### `DOTCL-MOP:GENERIC-FUNCTION-METHOD-CLASS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-method-class generic-function)`
* **Description:** Returns the class object used to instantiate methods for this generic function. Always returns the `STANDARD-METHOD` class in DotCL.

### `DOTCL-MOP:GENERIC-FUNCTION-METHOD-COMBINATION`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-method-combination generic-function)`
* **Description:** Returns the method combination configuration (defaults to the symbol `STANDARD`).

### `DOTCL-MOP:GENERIC-FUNCTION-METHODS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-methods generic-function)`
* **Description:** Returns the list of `LispMethod` objects registered under the generic function.
* **Under the Hood:** Converts the generic function's internal `Methods` list to a Lisp list.

### `DOTCL-MOP:GENERIC-FUNCTION-NAME`
* **Type:** Function
* **Syntax:** `(dotcl-mop:generic-function-name generic-function)`
* **Description:** Returns the name symbol or function-spec list of the generic function.

### `DOTCL-MOP:INTERN-EQL-SPECIALIZER`
* **Type:** Function
* **Syntax:** `(dotcl-mop:intern-eql-specializer object)`
* **Description:** Builds and returns an EQL specializer form representing the target object.
* **Under the Hood:** Returns the Lisp Cons `(eql object)`.

### `DOTCL-MOP:MAKE-METHOD-LAMBDA`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:make-method-lambda generic-function method lambda-expression environment)`
* **Description:** Rewrites method code at compile time. Exported stub.

### `DOTCL-MOP:MAP-DEPENDENTS`
* **Type:** Generic Function (Stub)
* **Syntax:** `(dotcl-mop:map-dependents metaobject function)`
* **Description:** Runs function across dependents. Returns `nil`.

### `DOTCL-MOP:METHOD-FUNCTION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:method-function method)`
* **Description:** Returns the executable function containing the method's code body. Exported stub.

### `DOTCL-MOP:METHOD-GENERIC-FUNCTION`
* **Type:** Function
* **Syntax:** `(dotcl-mop:method-generic-function method)`
* **Description:** Returns the parent `GenericFunction` object containing this method, or `nil` if unassociated.

### `DOTCL-MOP:METHOD-LAMBDA-LIST`
* **Type:** Function
* **Syntax:** `(dotcl-mop:method-lambda-list method)`
* **Description:** Returns the parameter list layout for the method.

### `DOTCL-MOP:METHOD-QUALIFIERS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:method-qualifiers method)`
* **Description:** Returns qualifiers (e.g. `:before`, `:after`, `:around`). Exported stub.

### `DOTCL-MOP:METHOD-SPECIALIZERS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:method-specializers method)`
* **Description:** Returns the list of specializer objects/classes of the method. Exported stub.

### `DOTCL-MOP:READER-METHOD-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:reader-method-class class slot &rest initargs)`
* **Description:** Resolves class for reader methods. Exported stub.

### `DOTCL-MOP:REMOVE-DEPENDENT`
* **Type:** Generic Function (Stub)
* **Syntax:** `(dotcl-mop:remove-dependent metaobject dependent)`
* **Description:** Removes a dependent. Returns `nil`.

### `DOTCL-MOP:REMOVE-DIRECT-METHOD`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:remove-direct-method class method)`
* **Description:** Deregisters a method. Exported stub.

### `DOTCL-MOP:REMOVE-DIRECT-SUBCLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:remove-direct-subclass superclass subclass)`
* **Description:** Deregisters a subclass. Exported stub.

### `DOTCL-MOP:REQUIRED-ARGS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:required-args lambda-list)`
* **Description:** Returns positional parameters from a lambda list, ignoring keywords or optional qualifiers.
* **Usage Example:**
  ```lisp
  (dotcl-mop:required-args '(x y &optional z)) ; Returns (X Y)
  ```

### `DOTCL-MOP:SET-FUNCALLABLE-INSTANCE-FUNCTION`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:set-funcallable-instance-function instance function)`
* **Description:** Configures execution behaviors. Exported stub.

### `DOTCL-MOP:SLOT-BOUNDP-USING-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:slot-boundp-using-class class instance slot-definition)`
* **Description:** Underlies slot-boundp. Exported stub.

### `DOTCL-MOP:SLOT-DEFINITION-ALLOCATION`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-allocation slot-definition)`
* **Description:** Returns the allocation scope of the slot (returns keyword `:instance` or `:class`).

### `DOTCL-MOP:SLOT-DEFINITION-INITARGS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-initargs slot-definition)`
* **Description:** Returns the list of initialization argument keywords defined for the slot.

### `DOTCL-MOP:SLOT-DEFINITION-INITFORM`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-initform slot-definition)`
* **Description:** Returns the default initialization form. (DotCL does not preserve the source form; returns `nil`).

### `DOTCL-MOP:SLOT-DEFINITION-INITFUNCTION`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-initfunction slot-definition)`
* **Description:** Returns the compiled zero-argument thunk function evaluated to produce the slot's default value.

### `DOTCL-MOP:SLOT-DEFINITION-LOCATION`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-location slot-definition)`
* **Description:** Returns the layout index of the slot, or `nil` if class-allocated.

### `DOTCL-MOP:SLOT-DEFINITION-NAME`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-name slot-definition)`
* **Description:** Returns the symbol naming the slot.

### `DOTCL-MOP:SLOT-DEFINITION-READERS`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-readers slot-definition)`
* **Description:** Returns reader functions. (Not tracked, returns `nil`).

### `DOTCL-MOP:SLOT-DEFINITION-TYPE`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-type slot-definition)`
* **Description:** Returns declared type. (Not tracked, returns `t`).

### `DOTCL-MOP:slot-definition-writers`
* **Type:** Function
* **Syntax:** `(dotcl-mop:slot-definition-writers slot-definition)`
* **Description:** Returns writer functions. (Not tracked, returns `nil`).

### `DOTCL-MOP:SLOT-MAKUNBOUND-USING-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:slot-makunbound-using-class class instance slot-definition)`
* **Description:** Underlies slot-makunbound. Exported stub.

### `DOTCL-MOP:SLOT-VALUE-USING-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:slot-value-using-class class instance slot-definition)`
* **Description:** Underlies slot-value. Exported stub.

### `DOTCL-MOP:SPECIALIZER-DIRECT-GENERIC-FUNCTIONS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:specializer-direct-generic-functions specializer)`
* **Description:** Returns direct generic functions. Exported stub.

### `DOTCL-MOP:SPECIALIZER-DIRECT-METHODS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:specializer-direct-methods specializer)`
* **Description:** Returns direct methods specializing on this. Exported stub.

### `DOTCL-MOP:STANDARD-INSTANCE-ACCESS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:standard-instance-access instance location)`
* **Description:** Directly accesses instance slot values. Exported stub.

### `DOTCL-MOP:SUBCLASSP`
* **Type:** Function
* **Syntax:** `(dotcl-mop:subclassp class1 class2)`
* **Description:** Predicate returning `t` if `class1` is a subclass of `class2`, otherwise `nil`.
* **Usage Example:**
  ```lisp
  (dotcl-mop:subclassp (find-class 'my-class) (find-class 'standard-object))
  ```

### `DOTCL-MOP:UPDATE-DEPENDENT`
* **Type:** Generic Function (Stub)
* **Syntax:** `(dotcl-mop:update-dependent metaobject dependent &rest args)`
* **Description:** Notifies dependents. Returns `nil`.

### `DOTCL-MOP:VALIDATE-SUPERCLASS`
* **Type:** Generic Function
* **Syntax:** `(dotcl-mop:validate-superclass class superclass)`
* **Description:** Returns `t` if `superclass` is valid to serve as parent to `class`. The default standard method returns `t` if both are standard classes, otherwise `nil`.

### `DOTCL-MOP:WRITER-METHOD-CLASS`
* **Type:** Function (Stub)
* **Syntax:** `(dotcl-mop:writer-method-class class slot &rest initargs)`
* **Description:** Resolves class for writer methods. Exported stub.
