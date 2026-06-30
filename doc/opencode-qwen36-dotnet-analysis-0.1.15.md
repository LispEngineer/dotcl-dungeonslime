# DotCL v0.1.15 `dotnet` Package Analysis

* Author: OpenCode (Qwen3.6-35B-A3B-MTP-GGUF)
* Based on: DotCL repository at `../dotcl`, v0.1.15-0-g9bab172
* Date: 2025-06-26

This document provides a comprehensive analysis of every public function
and macro in the DotCL `dotnet` package as of v0.1.15. The `dotnet` package
is the primary interface for Common Lisp code to interact with .NET types,
objects, methods, and assemblies.

## Architecture Overview

The `dotnet` package is implemented as an unusual amalgam of C# and Common Lisp:

- **C# side** (`Runtime.DotNet.cs`, `Runtime.FFI.cs`, `Runtime.NuGet.cs`):
  All public functions are implemented as static C# methods in the
  `Runtime` partial class. These are registered at startup via
  `RegisterFunction` calls in `Startup.cs`. Each C# method receives a
  `LispObject[] args` array and returns a `LispObject`.

- **Lisp side** (`cil-macros.lisp`, `cil-stdlib.lisp`):
  Setf expanders for `(setf (dotnet:invoke ...))` and
  `(setf (dotnet:static ...))` are registered, along with compiler macros
  for type declaration optimization (`the (dotnet "TypeName") ...`).

- **Marshalling layer**:
  `DotNetToLisp` converts .NET objects back to Lisp objects.
  `LispToDotNet` converts Lisp values to .NET types using declared
  parameter types for overload resolution.

## Category 1: Object Construction

### dotnet:new

**Signature:** `(dotnet:new type-name &rest args)`

**Description:** Create a new instance of a .NET type by resolving the type
and invoking an appropriate constructor.

**Arguments:**
- `type-name` -- A string or symbol naming the type to instantiate, or a
  `System.Type` wrapped in a `LispDotNetObject`. Can also be the result of
  `dotnet:make-generic-type`.
- `args` -- Zero or more arguments to pass to the constructor.

**How it works:**
1. If the first argument is already a wrapped `System.Type`, uses it directly.
   Otherwise resolves the type name via `ResolveDotNetType`.
2. With zero args: if the type is a value type or has a parameterless ctor,
   calls `Activator.CreateInstance`. Otherwise looks for a constructor where
   all parameters are optional (C# default params) and fills them with
   their defaults.
3. With one or more args: finds constructors whose parameter count fits
   between the supplied arg count and the total param count, with any
   omitted trailing params all being optional. Scores constructors by
   type match quality (exact match = 20 points, assignable = 10, int = 10,
   double = 10, string = 10) and picks the highest-scoring one, breaking ties
   by fewest filled-in optionals (closest arity).
4. Marshals each argument to the constructor parameter's declared type using
   `LispToDotNet`. For omitted params, uses the declared default value or
   `Type.Missing`.
5. Invokes the constructor via `ConstructorInfo.Invoke` and returns the result.

**Example:**
```lisp
;; Create a new Vector2
(dotnet:new "Microsoft.Xna.Framework.Vector2" 10.0f0 20.0f0)

;; Create a new String (parameterless)
(dotnet:new "System.String")

;; Create using a generic type
(dotnet:new (dotnet:make-generic-type "System.Collections.Generic.List"
                       '("System.String"))
            )
```

---

### dotnet:new-array

**Signature:** `(dotnet:new-array element-type &rest elements)`

**Description:** Create a typed .NET array filled with marshalled elements.

**Arguments:**
- `element-type` -- A string, symbol, or resolved `System.Type` naming the
  element type (e.g., `"System.String"` or `"System.Int32"`).
- `elements` -- Zero or more elements to place in the array. Each is
  marshalled to `element-type` via `LispToDotNet`.

**How it works:**
1. Resolves the element type.
2. Creates a 1-D array via `System.Array.CreateInstance(elemType, n)` where
   `n` is the number of elements.
3. Sets each element using `LispToDotNet` for marshalling.
4. Returns the array wrapped in a `LispDotNetObject`.

**Example:**
```lisp
;; Create a string array: ["a" "b" "c"]
(dotnet:new-array "System.String" "a" "b" "c")

;; From a list:
(apply #'dotnet:new-array "System.Int32" '(1 2 3 4 5))
```

---

### dotnet:make-array

**Signature:** `(dotnet:make-array element-type &rest dimensions)`

**Description:** Create a typed .NET array with specified dimensions, filled
with the element type's default value.

**Arguments:**
- `element-type` -- The element type name (string/symbol/Type).
- `dimensions` -- One or more non-negative fixnums specifying the size of
  each dimension. One dimension gives a 1-D array; several give a
  multi-dimensional array (via `Array.CreateInstance`).

**How it works:**
1. Resolves element type.
2. Validates each dimension is a non-negative fixnum.
3. Creates array via `System.Array.CreateInstance(elemType, dims...)`.
4. Elements are initialized to the type's default (e.g., 0 for Int32, nil
   for reference types).

**Example:**
```lisp
;; 1-D array of 100 Int32 values (all zero)
(dotnet:make-array "System.Int32" 100)

;; 2-D array: 10x20 Single values
(dotnet:make-array "System.Single" 10 20)

;; Access elements with get_Item/set_Item:
(dotnet:invoke arr "get_Item" 5)  ; read index 5
(dotnet:invoke arr "set_Item" 5 42)  ; write index 5 = 42
```


## Category 2: Method, Property & Field Access

### dotnet:invoke

**Signature:** `(dotnet:invoke object "Member" &rest args)`

**Description:** Read-side entry point for instance methods, properties,
fields, and COM IDispatch members. Routes through `Type.InvokeMember`
which handles both managed and `__ComObject` targets transparently.

**Arguments:**
- `object` -- A wrapped .NET object (`LispDotNetObject`). Not a type name.
- `Member` -- A string naming the method, property, or field to access.
- `args` -- Zero or more arguments to pass to the method. For property
  access, indexer arguments precede the member name.

**How it works:**
The function employs a multi-stage lookup with three fallback chains:

1. **Array special case:** If the target is a `System.Array` and the member
   name is `"get_Item"` or `"set_Item"`, routes to `Array.GetValue` /
   `Array.SetValue` instead (C# arrays don't expose these as named methods).

2. **Nil-aware marshalling:** If any argument is Lisp `NIL`, first tries
   `TryInvokeWithMarshalledArgs` which marshals each arg against the
   declared parameter types of candidate methods. This is needed because
   Lisp NIL is ambiguous between .NET null and value-type defaults (e.g.,
   `bool` false). Without this, `(setf (dotnet:invoke obj "IsChecked" nil))`
   would set `IsChecked` to null instead of false for `bool?` params.

3. **Cache lookup:** Checks `TryCachedInvoke` which maintains a
   `ConcurrentDictionary<InvokeKey, MethodInfo>` keyed by (runtime Type,
   member name, argument runtime types). If found, invokes directly via
   `MethodInfo.Invoke` which .NET 8+ backs with a cached fast invoker stub.
   Cacheable only for plain fixed-arity methods with no null args, no
   params/by-ref, no COM targets.

4. **InvokeMember:** Falls through to `Type.InvokeMember` with
   `InstanceReadFlags` (Public + Instance + InvokeMethod + GetProperty +
   GetField).

5. **MissingMethodException fallback chain:**
   a. `TryInvokeWithOptionalDefaults` -- finds a method with more params
      than supplied, where all trailing params are optional, and fills
      them with defaults. This enables omitting C# optional params like
      `SpriteBatch.Begin()`.
   b. `TryInvokeWithMarshalledArgs` -- finds a same-name, same-arity
      method whose declared param types each supplied arg marshals to
      via `LispToDotNet`. Prefers candidates with array params to resolve
      Lisp list -> T[] cases.
   c. Extension method fallback -- scans all loaded assemblies for static
      methods marked `[Extension]` whose first parameter accepts the
      receiver type. Handles non-generic and single-type-parameter generic
      extensions (inferring the type arg from `IEnumerable<T>`).

6. **Error handling:** A `TargetInvocationException` is converted to a
   `LispErrorException` with the inner CLR exception's type stored on the
   condition as `ClrExceptionType` for `dotnet:handler-bind` dispatch.

**Return value:** The method's return value or property value, marshalled
to Lisp via `DotNetToLisp`. For void methods, returns `NIL`.

**Example:**
```lisp
;; Call a method
(dotnet:invoke obj "SetTitle" "My Game")

;; Read a property
(dotnet:invoke obj "Width")

;; Write a property via setf
(setf (dotnet:invoke obj "Title") "New Title")

;; C# optional params (omit the second arg)
(dotnet:invoke sb "Begin")

;; Extension methods (LINQ)
(dotnet:invoke list "Where" (lambda (x) (> x 3)))
```

---

### dotnet:%set-invoke

**Signature:** `(dotnet:%set-invoke object "Member" &rest indexer-args value)`

**Description:** Write-side entry point for instance properties and fields.
The last argument is the value to assign; preceding arguments (if any)
are indexer arguments.

**Arguments:**
- `object` -- A wrapped .NET object.
- `Member` -- String naming the property or field to set.
- `indexer-args` -- Indexer arguments for indexed properties.
- `value` -- The value to assign.

**How it works:**
1. Validates the first argument is a `LispDotNetObject`.
2. Resolves the member name and the target's runtime type.
3. Marshalls all args (including value) to the target type using
   `LispArgsToDotNetGeneric`.
4. Calls `Type.InvokeMember` with `InstanceWriteFlags`
   (Public + Instance + SetProperty + SetField).
5. Returns the value argument.

**Example:**
```lisp
;; Set a property
(dotnet:%set-invoke obj "Title" "Hello")

;; Set via setf (the setf expander rewrites this)
(setf (dotnet:invoke obj "Title") "Hello")
```

---

### dotnet:static

**Signature:** `(dotnet:static "TypeName" "Member" &rest args)`

**Description:** Read-side entry point for static methods, properties, and
fields. The type argument is a name string, not a wrapped object.

**Arguments:**
- `TypeName` -- A string or symbol naming the .NET type.
- `Member` -- A string naming the static member.
- `args` -- Arguments to pass to the method.

**How it works:**
Same multi-stage lookup as `dotnet:invoke` but for static members:
1. Nil-aware marshalling via `TryInvokeWithMarshalledArgs`.
2. Cache lookup via `TryCachedInvoke` (static version).
3. `Type.InvokeMember` with `StaticReadFlags`
   (Public + Static + InvokeMethod + GetProperty + GetField).
4. Same three fallback chains as invoke.
5. Error handling wraps `TargetInvocationException`.

**Example:**
```lisp
;; Call a static method
(dotnet:static "System.Console" "WriteLine" "Hello")

;; Read a static property
(dotnet:static "System.Math" "PI")

;; Set via setf
(setf (dotnet:static "System.DateTime" "Now") ...)  ; read-only, throws
```

---

### dotnet:%set-static

**Signature:** `(dotnet:%set-static "TypeName" "Member" &rest indexer-args value)`

**Description:** Write-side entry point for static properties and fields.
Last argument is the value; preceding args (if any) are indexer arguments.

**Arguments:**
- `TypeName` -- A string or symbol naming the .NET type.
- `Member` -- A string naming the static member.
- `indexer-args` -- Indexer arguments.
- `value` -- The value to assign.

**How it works:**
1. Resolves the type via `ResolveDotNetType`.
2. Marshalls all args including value using `LispArgsToDotNetGeneric`.
3. Calls `Type.InvokeMember` with `StaticWriteFlags`.
4. Returns the value argument.

**Example:**
```lisp
;; Set a static property
(dotnet:%set-static "MyApp.Settings" "MaxRetries" 5)
```


## Category 3: Generic Method Invocation

### dotnet:static-generic

**Signature:** `(dotnet:static-generic "TypeName" "MethodName" type-args-list &rest args)`

**Description:** Invoke a generic static method with explicit type arguments.

**Arguments:**
- `TypeName` -- String or symbol naming the type containing the method.
- `MethodName` -- String naming the generic method.
- `type-args-list` -- A Lisp list (cons cell chain ending in NIL) of
  type-name strings, e.g., `("System.String" "System.Int32")`.
- `args` -- Arguments to pass to the concrete method after type
  instantiation.

**How it works:**
1. Resolves the type and parses the type-arg list into strings.
2. Finds the generic method definition on the type: must match the name,
   be a generic method definition (`IsGenericMethodDefinition`), have
   the same number of type parameters as the list, and have the same
   number of regular parameters as the arg count.
3. Instantiates the method via `MakeGenericMethod` with resolved types.
4. Marshals each argument to the concrete parameter type using
   `LispToDotNet` (which supports LispFunction -> delegate marshalling).
5. Invokes via `MethodInfo.Invoke(null, callArgs)`.
6. Wraps errors as `LispErrorException` with inner CLR exception info.

**Example:**
```lisp
;; LINQ Where on integers
(dotnet:static-generic "System.Linq.Enumerable" "Where"
  '("System.Int32")
  my-int-list
  (lambda (x) (> x 3)))

;; Convert a list to an array
(dotnet:static-generic "System.Linq.Enumerable" "ToArray"
  '("System.String")
  my-string-list)
```

---

### dotnet:invoke-generic

**Signature:** `(dotnet:invoke-generic object "MethodName" type-args-list &rest args)`

**Description:** Instance counterpart of `dotnet:static-generic`: invoke a
generic instance method on OBJECT, instantiating it with the given
type-argument names before the call.

**Arguments:**
- `object` -- A wrapped .NET object (receiver).
- `MethodName` -- String naming the generic method.
- `type-args-list` -- Lisp list of type-name strings.
- `args` -- Arguments to pass to the concrete method.

**How it works:**
Same as `dotnet:static-generic` but:
- Validates the first argument is a `LispDotNetObject`.
- Uses `InstanceReadFlags` to find the method on the target's runtime
  type.
- Invokes via `MethodInfo.Invoke(target, callArgs)` with the receiver.

**Example:**
```lisp
;; ContentManager.Load<Texture2D>
(dotnet:invoke-generic content "Load"
  '("Microsoft.Xna.Framework.Graphics.Texture2D")
  "images/atlas")

;; List<T>.Contains
(dotnet:invoke-generic my-list "Contains"
  '("System.String")
  "needle")
```

## Category 4: Out/Ref Parameter Methods

### dotnet:call-out

**Signature:** `(dotnet:call-out type-or-obj "Method" &rest in-args)`

**Description:** Call a .NET method that has `out` or `ref` parameters.
Supply only the non-out (in) arguments; out positions are filled
automatically by the .NET runtime.

**Return:** Multiple values: the method's return value (T for void
methods), followed by each out/ref parameter value in declaration order.

**Arguments:**
- `type-or-obj` -- A type-name string for static calls, or a wrapped
  .NET object for instance calls.
- `Method` -- String naming the method.
- `in-args` -- Only the non-out parameters.

**How it works:**
1. Resolves the method on the type: finds a method named `Method` whose
   non-out parameter count matches `in-args` length.
2. Builds a full argument array, filling out/ref positions with null
   placeholders.
3. Invokes via `MethodInfo.Invoke(target, callArgs)`.
4. Collects return value (T for void) and each out/ref parameter value.
5. Returns all via `MultipleValues.Values`.

**Example:**
```lisp
;; TryParse returns (multiple values success-p parsed-value)
(multiple-value-bind (ok n)
    (dotnet:call-out "System.Int32" "TryParse" "42")
  (if ok (format t "Parsed: ~a~%" n)
      (format t "Failed~%")))

;; DateTime.TryParseExact
(multiple-value-bind (success dt)
    (dotnet:call-out "System.DateTime" "TryParseExact"
                     "2025-01-15" "yyyy-MM-dd")
  ...)
```

---

### dotnet:call-out-generic

**Signature:** `(dotnet:call-out-generic type-or-obj "Method" type-args-list &rest in-args)`

**Description:** Generic counterpart of `dotnet:call-out`: resolve an open
generic method definition with explicit type arguments via
`MakeGenericMethod`, then invoke it handling out/ref parameters.

**Arguments:**
- `type-or-obj` -- Type name string or wrapped object.
- `Method` -- String naming the generic method.
- `type-args-list` -- Lisp list of type-name strings for type arguments.
- `in-args` -- Only non-out parameters.

**How it works:**
1. Finds the open generic method definition: matches name, generic arity
   equal to type-args list length, and in-param count (excluding out/ref)
   equal to `in-args` length.
2. Instantiates via `MakeGenericMethod`.
3. Same out/ref handling as `call-out`.

**Example:**
```lisp
;; Enum.TryParse for a specific enum type
(multiple-value-bind (ok day)
    (dotnet:call-out-generic "System.Enum" "TryParse"
      '("System.DayOfWeek")
      "Monday")
  ...)
```

## Category 5: Base Class Calls

### dotnet:call-base

**Signature:** `(dotnet:call-base self "Method" &rest args)`

**Description:** Call the base class implementation of a virtual method
non-virtually, equivalent to C# `base.Method(args)`.

**Arguments:**
- `self` -- A `LispDotNetObject` which is an instance of a
  `dotnet:%define-class`-defined class (has a CLR base type).
- `Method` -- String naming the virtual method on the base type.
- `args` -- Arguments to pass.

**How it works:**
1. Requires the emitting runtime (DOTCL_EMIT build flag); throws if
   unavailable.
2. Resolves the base type from `self.GetType().BaseType`.
3. Finds the best-matching method on the base type by name and arg count.
4. Converts args using `Convert.ChangeType` to match parameter types.
5. Creates or retrieves a cached `DynamicMethod` that emits IL to call
   the base method non-virtually (`OpCodes.Call` instead of
   `OpCodes.Callvirt`). The cache key is (self type, method name, param
   type signature).
6. Invokes the `DynamicMethod` with target + converted args.
7. Caches the `DynamicMethod` by key for subsequent calls.

**Example:**
```lisp
;; In a %define-class method, call the base class's Update
(dotnet:call-base self "Update" game-time)

;; Equivalent to C#: base.Update(gameTime)
```


## Category 6: Type Resolution & Introspection

### dotnet:resolve-type

**Signature:** `(dotnet:resolve-type type-name-string)`

**Description:** Resolve a .NET `System.Type` by name, searching loaded
assemblies, loading by namespace prefix, and COM ProgIDs on Windows.
Returns the type wrapped as a `LispDotNetObject`. Signals an error if not
found.

**Arguments:**
- `type-name-string` -- A string naming the type. Can be a full name like
  `"System.Collections.Generic.Dictionary`2"` or a ProgID like
  `"Excel.Application"`.

**How it works:**
The resolution follows a cascading fallback chain:

1. `Type.GetType(typeName)` -- handles BCL types known to the runtime.
2. Strip ", AssemblyName" suffix, then iterate all loaded assemblies
   calling `asm.GetType(bareTypeName)`.
3. Try loading the assembly by namespace prefix: for `"System.Net.IPAddress"`,
   tries loading `"System.Net"`, `"System"`, etc.
4. Try BCL facade assemblies: `"mscorlib"` and `"netstandard"` via
   `Type.GetType("TypeName, mscorlib")` -- crucial for types whose actual
   assembly differs from their namespace (e.g., `System.Collections.Queue`
   lives in `System.Collections.NonGeneric`).
5. COM ProgID lookup via `Type.GetTypeFromProgID` -- skipped for names
   starting with `"System."` to avoid legacy .NET Framework COM collisions.
6. Case-insensitive lookup in dynamically-defined types (from
   `%define-class`).

**Example:**
```lisp
;; Resolve a type for use with dotnet:new, dotnet:make-generic-type, etc.
(dotnet:resolve-type "System.String")
;; => #<DOTNET System.String System.String>

;; Can be used to get a Type for dotnet:new:
(let ((string-type (dotnet:resolve-type "System.String")))
  (dotnet:new string-type))
```

---

### dotnet:make-generic-type

**Signature:** `(dotnet:make-generic-type open-type type-args-list)`

**Description:** Construct a closed (instantiated) generic `System.Type`
from an open generic type definition and a list of type arguments.

**Arguments:**
- `open-type` -- The open definition name, with or without the CLR
  backtick-arity suffix (e.g., `"System.Collections.Generic.Dictionary`2"`
  or just `"System.Collections.Generic.Dictionary"` -- the arity is
  inferred from `type-args-list`).
- `type-args-list` -- A non-empty Lisp list of type-name strings.

**How it works:**
1. Parses the type-arg list, resolving each string to a `System.Type`.
2. Resolves the open generic definition: first tries the name as-is, then
   if not found and no backtick suffix, appends "`N" where N is the arg
   count.
3. Validates the resolved type is a generic type definition and that the
   arity matches.
4. Calls `openType.MakeGenericType(typeArgs)`.

**Example:**
```lisp
;; Make Dictionary<string, int>
(let ((dict-type (dotnet:make-generic-type
                   "System.Collections.Generic.Dictionary"
                   '("System.String" "System.Int32"))))
  (dotnet:new dict-type))

;; Make List<string>
(dotnet:make-generic-type "System.Collections.Generic.List"
  '("System.String"))

;; With explicit arity
(dotnet:make-generic-type "System.Collections.Generic.Dictionary`2"
  '("System.String" "System.String"))
```

---

### dotnet:object-type

**Signature:** `(dotnet:object-type obj)`

**Description:** Return the actual runtime type (`value.GetType()`) of a
wrapped .NET object as a `System.Type`, or NIL if `obj` is not a .NET
object.

**Arguments:**
- `obj` -- A Lisp object. If it is a `LispDotNetObject`, returns its
  `Type`; otherwise returns NIL.

**Note:** For a `dotnet:box` value, this returns the boxed value's real
type, which may differ from `dotnet:hint-type` (the hint type used for
overload resolution).

**Example:**
```lisp
(let ((obj (dotnet:new "System.String" "hello")))
  (dotnet:object-type obj))
;; => #<DOTNET System.String System.String>

;; Non-.NET value
(dotnet:object-type "hello")  ;; plain Lisp string
;; => NIL

;; Boxed value: hint type vs. runtime type
(let ((boxed (dotnet:box 42 "System.Int32")))
  (values (dotnet:object-type boxed)     ; actual runtime type
          (dotnet:hint-type boxed)))     ; hint type
;; => #<DOTNET System.Int32 System.Int32>  #<DOTNET System.Int32 System.Int32>
```

---

### dotnet:is-instance-of

**Signature:** `(dotnet:is-instance-of obj type)`

**Description:** Return T if `obj` is an instance of `type`, else NIL.
`type` is a type-name string, symbol, or resolved `System.Type`. `obj`
may be a wrapped .NET object or a plain Lisp value (marshalled to its
natural .NET type first).

**Arguments:**
- `obj` -- The object to check.
- `type` -- The type to check against.

**How it works:**
1. Resolves `type` via `ResolveElementTypeArg`.
2. Converts `obj` via `LispToDotNetGeneric` (bare marshalling, no declared
   type).
3. Calls `type.IsInstanceOfType(val)`.

**Example:**
```lisp
;; Check a wrapped object
(let ((obj (dotnet:new "System.String" "hello")))
  (dotnet:is-instance-of obj "System.String"))  ; => T
  (dotnet:is-instance-of obj "System.Int32"))  ; => NIL

;; Check a plain Lisp value (marshalled to its natural type)
(dotnet:is-instance-of "hello" "System.String")  ; => T
(dotnet:is-instance-of 42 "System.Int32")        ; => T
```

---

### dotnet:cast

**Signature:** `(dotnet:cast obj type)`

**Description:** Reference cast: verify `obj` is an instance of `type`
(signalling an error if not, like a C# cast) and return it re-wrapped
carrying `type` as its static hint, so subsequent `dotnet:invoke` /
`dotnet:new` overload resolution treats it as `type` (e.g., upcast to a
base class or interface).

**Arguments:**
- `obj` -- The object to cast.
- `type` -- The target type.

**How it works:**
1. Resolves `type` and converts `obj` via `LispToDotNetGeneric`.
2. If `obj` is null/NIL, signals an error (can't cast null).
3. Checks `type.IsInstanceOfType(val)` -- if false, signals error.
4. Returns a `LispDotNetBoxed` wrapping `val` with `type` as the hint
   type.

**Note:** For value-type conversions, use `dotnet:box` instead (cast
only works for reference types since value types can't be "upcast" in the
same way).

**Example:**
```lisp
;; Upcast: List<string> to IEnumerable<string>
(let ((list (dotnet:new "System.Collections.Generic.List`1" "System.String")))
  (dotnet:cast list "System.Collections.Generic.IEnumerable`1[System.String]"))

;; Downcast: fails if wrong type
(dotnet:cast (dotnet:new "System.Object") "System.String")  ; => ERROR
```

---

## Category 7: Boxing & Marshalling

### dotnet:box

**Signature:** `(dotnet:box value type-name)`

**Description:** Wrap a Lisp value in a `LispDotNetBoxed` carrying a type
hint. The hint type is used by `LispToDotNet` and overload resolution to
choose the correct method when multiple overloads accept compatible types.

**Arguments:**
- `value` -- The value to box. Can be any Lisp object.
- `type-name` -- A string or symbol naming the .NET type to use as the
  hint.

**How it works:**
1. Resolves the type name to a `System.Type`.
2. Marshals the value to the type using `LispToDotNet(value, type)`.
3. Returns a `LispDotNetBoxed` wrapping the marshalled value and the hint
   type.

**Example:**
```lisp
;; Box an int as System.Object so overload resolution picks the (object)
;; overload instead of (int)
(dotnet:box 42 "System.Object")

;; Box a delegate with explicit signature
(dotnet:box my-lisp-fn "System.Func`2[System.String,System.Boolean]")
```

---

### dotnet:hint-type

**Signature:** `(dotnet:hint-type obj)`

**Description:** For a value produced by `dotnet:box`, return its hint
type (the user-supplied static type used to choose overloads) as a
`System.Type`. Returns NIL for any object that carries no hint (an
ordinary .NET object, or a non-.NET value).

**Arguments:**
- `obj` -- The object to inspect.

**How it works:**
Returns the `HintType` field of a `LispDotNetBoxed`, or NIL if the
argument is not a `LispDotNetBoxed`.

**Example:**
```lisp
(let ((boxed (dotnet:box 42 "System.Int32")))
  (dotnet:hint-type boxed))
;; => #<DOTNET System.Int32 System.Int32>

;; Plain .NET object has no hint
(dotnet:hint-type (dotnet:new "System.String" "hello"))
;; => NIL
```

---

### dotnet:null

**Signature:** `(dotnet:null)`

**Description:** Return a singleton marker value that marshals to an
explicit .NET null, distinct from Lisp NIL (which maps to `false` for
`bool` and `bool?` parameters, or `null` for reference types).

**Arguments:** None.

**How it works:**
Returns `LispDotNetNull.Instance`, a singleton object. In `LispToDotNet`,
this marker is checked first and returns `null` for any target type
(reference or `Nullable<T>`).

**Example:**
```lisp
;; Explicit null for a boolean? parameter (nil would give false)
(dotnet:invoke cb "set_IsChecked" (dotnet:null))

;; Explicit null for a reference type
(dotnet:new "MyApp.Settings" (dotnet:null))  ; constructor with Uri? param
```


## Category 8: Enum Operations

### dotnet:enum-or

**Signature:** `(dotnet:enum-or enum-type &rest members)`

**Description:** Combine `[Flags]` enum members with bitwise OR and return
the resulting enum value.

**Arguments:**
- `enum-type` -- A type-name string, symbol, or resolved `System.Type`
  naming the enum type.
- `members` -- One or more member identifiers. Each can be: a member-name
  string/symbol (parsed via `Enum.Parse`, case-insensitive), an integer
  (used as the underlying value), or an existing enum value of the type.

**How it works:**
1. Resolves the enum type and validates it is an enum.
2. Starts with accumulator `acc = 0`.
3. For each member:
   - If it is a `Fixnum`, ORs the value into `acc`.
   - If it is a wrapped enum value of the exact type, converts to int64
     and ORs.
   - Otherwise, parses as a string/symbol via `Enum.Parse` (case-
     insensitive) and ORs the result.
4. Returns `Enum.ToObject(type, acc)` marshalled to Lisp.

**Example:**
```lisp
;; Combine FileAccess.Read and FileAccess.Write
(dotnet:enum-or "System.IO.FileAccess" "Read" "Write")
;; => System.IO.FileAccess.ReadWrite

;; With integer values
(dotnet:enum-or "System.IO.FileAccess" 1 2)

;; With existing enum values
(let ((read (dotnet:static "System.IO.FileAccess" "Read")))
  (dotnet:enum-or "System.IO.FileAccess" read "Write"))
```

## Category 9: Delegate Creation

### dotnet:make-delegate

**Signature:** `(dotnet:make-delegate type-name function)`

**Description:** Wrap a Lisp function as a .NET delegate of the specified
type. The delegate can be passed to any .NET method expecting that delegate
type. LispFunction arguments are auto-converted via `dotnet:call` when the
target parameter type is a delegate (though explicit wrapping is often
clearer).

**Arguments:**
- `type-name` -- A string or symbol naming the delegate type, e.g.,
  `"System.Func`2[System.String,System.Boolean]"`, or a resolved
  `System.Type`.
- `function` -- A Lisp function (callable with `funcall`).

**How it works:**
1. Validates the second argument is a `LispFunction`.
2. Resolves the delegate type (accepts both string and wrapped `Type`).
3. Validates the type is assignable from `Delegate`.
4. Calls `CreateLispDelegate(fn, delegateType)` which:
   a. Gets the delegate's `Invoke` method signature (parameter types,
      return type).
   b. Builds an `Expression.Lambda` that:
      - Boxes each .NET argument to `object`, converts via `DotNetToLisp`
        to `LispObject`.
      - Calls `Runtime.InvokeForeignCallback(fn, argsArray)`.
      - For non-void delegates, converts the `LispObject` result back via
        `LispToDotNet` to the return type.
   c. Compiles the expression tree to a `Delegate`.
5. Returns the delegate wrapped in a `LispDotNetObject`.

**Example:**
```lisp
;; Create a Func<string, bool> predicate
(let ((pred (dotnet:make-delegate
              "System.Func`2[System.String,System.Boolean]"
              (lambda (s) (> (length s) 5)))))
  ;; Pass to LINQ Where
  (dotnet:static-generic "System.Linq.Enumerable" "Where"
    '("System.String") my-list pred))

;; Create an EventHandler
(dotnet:make-delegate
  "System.EventHandler"
  (lambda (sender e) (format t "Clicked!~%")))
```

## Category 10: Runtime Class Definition

### dotnet:%define-class

**Signature:** `(dotnet:%define-class full-name &optional base-type-name
  field-specs attr-specs method-specs ctor-body property-specs
  interface-specs event-specs ctor-param-types base-ctor-arg-indices
  ctor-specs-list)`

**Description:** Emit a named public .NET class at runtime using
`System.Reflection.Emit.TypeBuilder`. Accepts fields, methods,
properties, interfaces, events, and constructors.

**Arguments:**
- `full-name` -- String naming the new class.
- `base-type-name` -- Optional string/symbol naming the base class.
- `field-specs` -- Optional list of `(name type-name)` pairs for fields.
- `attr-specs` -- Optional list of `(type-name ctor-args...)` for
  custom attributes.
- `method-spec` -- Optional list of method specs: `(name return-type
  (param-types...) body-lambda &optional override-flag
  method-attr-specs...)`. The `override-flag` when truthy emits the
  method as an override of a matching base virtual method.
- `ctor-body` -- Optional 1-arg Lisp function called after the base
  constructor.
- `property-specs` -- Optional list of `(name type-name &optional notify)`
  for auto-properties. `notify` when truthy emits `OnPropertyChanged`
  calls, requiring a matching `PropertyChanged` event in `event-specs`.
- `interface-specs` -- Optional list of interface type names; methods
  whose name+signature match an interface method are emitted as implicit
  implementations.
- `event-specs` -- Optional list of `(name delegate-type-name)` for events;
  emits a private delegate field + public `add_`/`remove_` accessors.
- `ctor-param-types` -- Optional list of constructor parameter types.
- `base-ctor-arg-indices` -- Optional list of integers indicating which
  Lisp args map to base constructor params.
- `ctor-specs-list` -- Optional list of `(lambda param-types
  base-arg-indices)` triples for custom constructors.

**How it works:**
1. Parses all specification lists from Lisp cons cells, resolving type
   names via `ResolveDotNetType`.
2. For attributes: finds a constructor on the attribute type matching the
   arg count and builds a `CustomAttributeBuilder`.
3. For methods: each method spec creates a `DynamicClassBuilder.MethodSpec`
   with the name, return type, parameter types, and a Lisp function body.
   The body function receives the method arguments as LispObject values.
4. Registers the type in `_dotNetDynTypeByUpperName` for case-insensitive
   resolution from Lisp symbols, and calls `EnsureDotNetTypeClass` so
   `class-of`/`type-of`/`find-class` work on instances.
5. Returns the full name as a `LispString`.

**Example:**
```lisp
;; Define a simple class with a method
(dotnet:%define-class "MyApp.MyClass"
  "System.Object"
  ;; fields
  Nil
  ;; attrs
  Nil
  ;; methods
  (list
    (list "Greet" "System.String"
          '("System.String")
          (lambda (name)
            (format nil "Hello, ~a!" name))))
  ;; ctor-body
  Nil
  ;; properties
  Nil
  ;; interfaces
  Nil)
```

## Category 11: Async Operations

### dotnet:await

**Signature:** `(dotnet:await awaitable)`

**Description:** Block the current thread until a .NET `Task`,
`Task<T>`, `ValueTask`, or `ValueTask<T>` completes, returning the
result marshalled to Lisp (NIL for a non-generic/void awaitable).

**Arguments:**
- `awaitable` -- A .NET object that is a `Task`, `Task<T>`, `ValueTask`,
  or `ValueTask<T>`.

**How it works:**
1. Calls `ToTask` to unwrap the awaitable to a `System.Threading.Tasks.Task`.
   Handles `ValueTask` and `ValueTask<T>` by calling their `AsTask`
   methods.
2. Calls `task.GetAwaiter().GetResult()` which blocks the calling thread
   and unwraps `AggregateException` to the inner exception.
3. Calls `TaskResultToLisp`:
   - For generic tasks, extracts the `Result` property and marshals via
     `DotNetToLisp`.
   - Special-cases `Task<VoidTaskResult>` (non-generic Task) to return
     NIL.
4. If the task was faulted, the inner exception is re-thrown (not wrapped
   in `AggregateException`), so `handler-case` sees the real condition.

**Important:** This is a blocking operation. The calling thread is held.
When used in a game loop or responsive application, run it on a worker
thread (e.g., `bordeaux-threads`) to avoid blocking.

**Example:**
```lisp
(let ((task (dotnet:new "System.Threading.Tasks.Task"
               (dotnet:make-delegate
                 "System.Func`1[System.Int32]"
                 (lambda () (+ 1 2))))))
  (dotnet:await task))  ; => 3
```

## Category 12: Assembly Loading

### dotnet:load-assembly

**Signature:** `(dotnet:load-assembly path)`

**Description:** Load a .NET assembly from a file path or assembly name.

**Arguments:**
- `path` -- A string naming the assembly. If it contains no path
  separators and no `.dll` extension, it is treated as an assembly name
  to search for.

**How it works:**
1. If the path contains no `/`, `\`, or `.dll`:
   a. Tries `Assembly.Load(path)` (base runtime).
   b. If that fails, searches shared framework directories (go up two
      levels from the runtime directory to reach `shared/`, then iterates
      framework directories) looking for `{path}.dll`.
   c. If found, loads via `Assembly.LoadFrom`.
2. Otherwise, loads via `Assembly.LoadFrom(System.IO.Path.GetFullPath(path))`
   so transitive references in the same directory resolve automatically.
3. Returns the assembly's full name as a `LispString`.

**Example:**
```lisp
;; Load by file path
(dotnet:load-assembly "/path/to/MyLibrary.dll")

;; Load by assembly name
(dotnet:load-assembly "System.Management")

;; Load a shared framework assembly
(dotnet:load-assembly "System.Windows.Forms")
```


## Category 13: Exception Handling

### dotnet:exception-type

**Signature:** `(dotnet:exception-type condition)`

**Description:** For a condition that wraps a raw .NET exception (e.g., one
caught in `handler-case`), return the original CLR exception
`System.Type`. Returns NIL for an ordinary Lisp condition.

**Arguments:**
- `condition` -- A Lisp condition object.

**How it works:**
Checks if the condition is a `LispCondition` and has a non-null
`ClrExceptionType` field, which is set when `DotNetInvokeError` or
`ConditionFromException` wraps a raw .NET exception.

**Example:**
```lisp
(handler-case
    (dotnet:static "System.Int32" "Parse" "not-a-number")
  (error (e)
    (let ((clr-type (dotnet:exception-type e)))
      (if clr-type
          (format t "CLR exception: ~a~%" (dotnet:invoke clr-type "FullName"))
          (format t "Lisp error: ~a~%" e)))))
```

---

### dotnet:exception-typep

**Signature:** `(dotnet:exception-typep condition type)`

**Description:** Return T if `condition` wraps a raw .NET exception whose
CLR type is `type` or a subtype of it (`Type.IsAssignableFrom`), else
NIL. `type` is a type-name string, symbol, or `System.Type`.

**Arguments:**
- `condition` -- A Lisp condition object.
- `type` -- The exception type to check against.

**How it works:**
1. Checks if the condition has a `ClrExceptionType`.
2. Resolves `type` via `ResolveElementTypeArg`.
3. Calls `want.IsAssignableFrom(ct)`.

**Example:**
```lisp
;; Used with dotnet:handler-bind to dispatch on specific .NET exception types
(dotnet:handler-bind
    ((dotnet:exception-typep "System.DivideByZeroException")
     (lambda (e) (format t "Divide by zero~%")))
  (dotnet:static "System.Int32" "Parse" "bad"))
```

## Category 14: FFI (Foreign Function Interface)

### dotnet:ffi

**Signature:** `(dotnet:ffi dll func :args '(type ...) :ret type arg1 arg2 ...)`

**Description:** Call a native library function via the Foreign Function
Interface. Loads a native DLL and calls a function with type-safe marshalling.

**Arguments:**
- `dll` -- String naming the native DLL (e.g., `"libm.so"` or `"kernel32"`).
- `func` -- String naming the function in the DLL.
- `:args` -- List of type keywords: `:ptr`, `:int32`, `:uint32`,
  `:int64`, `:uint64`, `:float`, `:double`, `:int16`, `:uint16`,
  `:int8`, `:uint8`.
- `:ret` -- Return type keyword (same set).
- `arg1`, `arg2`, ... -- Arguments matching the `:args` types.

**How it works:**
1. Converts each Lisp argument to a native type via `LispToDotNet`.
2. Loads the DLL via `LoadLibrary` / `dlopen`.
3. Gets the function pointer via `GetProcAddress` / `dlsym`.
4. Creates a delegate matching the signature.
5. Invokes the delegate and converts the return value.

**Example:**
```lisp
;; Call pow from libm.so on Linux
(dotnet:ffi "libm.so" "pow" :args '(:double :double) :ret :double
            2.0d0 10.0d0)
;; => 1024.0d0
```

### dotnet:%ffi-call-ptr

**Signature:** `(dotnet:%ffi-call-ptr func-ptr :args '(type ...) :ret type arg1 arg2 ...)`

**Description:** Like `dotnet:ffi` but takes an explicit function pointer
instead of loading from a DLL by name.

**Example:**
```lisp
(let ((ptr (dotnet:ffi-get-sym "libm.so" "pow")))
  (dotnet:%ffi-call-ptr ptr :args '(:double :double) :ret :double
   2.0d0 3.0d0))
```

## Category 15: Stream Conversion

### dotnet:to-stream

**Signature:** `(dotnet:to-stream stream &key binary bivalent)`

**Description:** Convert a .NET `System.IO.Stream` to a Lisp bidirectional
stream for reading and writing.

**Arguments:**
- `stream` -- A wrapped `System.IO.Stream`.
- `binary` -- If non-NIL, returns a `LispBinaryStream` wrapping the .NET
  stream for byte-oriented I/O.
- `bivalent` -- If non-NIL, returns a `LispBidirectionalStream` that
  simultaneously supports character I/O (via `StreamReader`/`StreamWriter`
  with BOM-less UTF-8) and byte I/O (`read-byte`/`write-byte`) on the
  same underlying stream. No read-ahead, so char and byte reads stay
  coordinated.

**How it works:**
1. For `:binary`: wraps the stream in `LispBinaryStream`.
2. For `:bivalent`: wraps in `LispBidirectionalStream` with
   `BivalentStreamReader` and `BivalentStreamWriter` (SBCL-style
   character stream that also serves `read-byte`/`write-byte`).
3. Otherwise: wraps in `LispBidirectionalStream` with `StreamReader`
   (UTF-8, no BOM, leaveOpen: true) and `StreamWriter`
   (UTF-8, no BOM, AutoFlush: false, leaveOpen: true). The no-BOM option
   prevents corrupting the head of network/protocol responses.

**Example:**
```lisp
;; Read text from a network stream
(let ((net-stream (dotnet:invoke socket "GetStream")))
  (with-open-stream (s (dotnet:to-stream net-stream))
    (read-line s)))

;; Binary I/O
(with-open-stream (s (dotnet:to-stream net-stream :binary t))
  (write-byte 42 s))

;; Bivalent: char + byte I/O on the same stream
(with-open-stream (s (dotnet:to-stream net-stream :bivalent t))
  (write-line "HTTP/1.1 200 OK" s)
  (write-byte #x0a s))  ; newline via byte
```

