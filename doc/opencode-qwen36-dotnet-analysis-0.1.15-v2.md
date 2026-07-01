# DotCL v0.1.15 `dotnet` Package Analysis

* Author: OpenCode (Qwen3.6-27B-MTP-GGUF-UD-Q8_K_XL)
* Based on: DotCL repository at `../dotcl`, v0.1.15
* Date: 2026-06-30
* Supersedes: `doc/opencode-qwen36-dotnet-analysis-0.1.15.md` (incomplete v1)

This document provides a comprehensive analysis of every public function,
macro, and special variable in the DotCL `dotnet` package as of v0.1.15.
The `dotnet` package is the primary interface for Common Lisp code to
interact with .NET types, objects, methods, and assemblies.

## Architecture Overview

The `dotnet` package is implemented as an unusual amalgam of C# and Common Lisp:

- **C# side** (`Runtime.DotNet.cs`, `Runtime.FFI.cs`, `Runtime.NuGet.cs`,
  `Runtime.Memory.cs`, `Runtime.Events.cs`, `Runtime.WinForms.cs`):
  All public functions are implemented as static C# methods in the
  `Runtime` partial class or related internal classes. These are registered
  at startup via `RegisterDotNet` calls in `Startup.cs`. Each C# method
  receives a `LispObject[] args` array and returns a `LispObject`.

- **Lisp side** (`cil-macros.lisp`, `cil-stdlib.lisp`):
  Setf expanders for `(setf (dotnet:invoke ...))` and
  `(setf (dotnet:static ...))` are registered, along with a compiler macro
  for `dotnet:invoke` that optimizes fully type-declared calls to direct
  IL callvirt instructions.

- **Contrib packages** (`contrib/dotnet-class/`, `contrib/dotnet-ffi/`):
  Higher-level macros (`define-class`, `define-ffi`, `ref`, `using`)
  and the `*type-aliases*` special variable are exported to the `dotnet`
  package from contrib modules.

- **Marshalling layer**:
  `DotNetToLisp` converts .NET objects back to Lisp objects.
  `LispToDotNet` converts Lisp values to .NET types using declared
  parameter types for overload resolution.

## Registry Source

All C#-implemented functions are registered in `Startup.cs` lines 1928-2032
through `RegisterDotNet` calls. Conditional compilation gates some functions:
`#if !DOTCL_NO_JSON` gates `require`; `#if !DOTCL_NO_WINFORMS` gates
`ui-invoke` and `ui-post`; `#if DOTCL_EMIT` gates `%ffi-call` and `ffi`.

---

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

**Return value:** The constructed object wrapped in a `LispDotNetObject`.

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
                   '("System.String")))
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

**Return value:** The array wrapped in a `LispDotNetObject`.

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

**Return value:** The array wrapped in a `LispDotNetObject`.

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

---

## Category 2: Method, Property & Field Access

### dotnet:invoke

**Signature:** `(dotnet:invoke object "Member" &rest args)`

**Description:** Read-side entry point for instance methods, properties,
fields, and COM IDispatch members. Routes through `Type.InvokeMember`
which handles both managed and `__ComObject` targets transparently.

**Arguments:**
- `object` -- A wrapped .NET object (`LispDotNetObject`). Not a type name.
- `"Member"` -- A string naming the method, property, or field to access.
- `args` -- Zero or more arguments to pass to the method. For property
  access, indexer arguments precede the member name.

**Return value:** The method's return value or property value, marshalled
to Lisp via `DotNetToLisp`. For void methods, returns `NIL`.

**How it works:**
The function employs a multi-stage lookup with three fallback chains:

1. **Array special case:** If the target is a `System.Array` and the member
   name is `"get_Item"` or `"set_Item"`, routes to `Array.GetValue` /
   `Array.SetValue` instead (C# arrays do not expose these as named methods).

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

**Compiler optimization:** A compiler macro (`%dotnet-invoke-direct-cm`)
rewrites fully type-declared `dotnet:invoke` calls to `%dotnet-call-direct`
for direct callvirt IL emission. This requires the receiver and all
arguments to have statically resolvable types (via `THE`, `dotnet:box`,
`dotnet:new`, or compiler-local type inference from `let`/`let*` init
forms). The lowering is optimistic: when the assembler cannot resolve
the exact overload, it silently falls back to the dynamic path.

**Setf:** `(setf (dotnet:invoke obj "Prop") value)` expands to
`(dotnet:%set-invoke obj "Prop" value)` via the setf expander in
`cil-macros.lisp`.

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
are indexer arguments. Typically called through `(setf (dotnet:invoke ...))`.

**Arguments:**
- `object` -- A wrapped .NET object.
- `"Member"` -- String naming the property or field to set.
- `indexer-args` -- Indexer arguments for indexed properties.
- `value` -- The value to assign.

**Return value:** The value argument.

**How it works:**
1. Validates the first argument is a `LispDotNetObject`.
2. Resolves the member name and the target's runtime type.
3. Marshals all args (including value) to the target type using
   `LispArgsToDotNetGeneric`.
4. Calls `Type.InvokeMember` with `InstanceWriteFlags`
   (Public + Instance + SetProperty + SetField).
5. Returns the value argument.

**Example:**
```lisp
;; Set a property directly
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
- `"TypeName"` -- A string or symbol naming the .NET type.
- `"Member"` -- A string naming the static member.
- `args` -- Arguments to pass to the method.

**Return value:** The member's value marshalled to Lisp.

**How it works:**
Same multi-stage lookup as `dotnet:invoke` but for static members:
1. Nil-aware marshalling via `TryInvokeWithMarshalledArgs`.
2. Cache lookup via `TryCachedInvoke` (static version).
3. `Type.InvokeMember` with `StaticReadFlags`
   (Public + Static + InvokeMethod + GetProperty + GetField).
4. Same three fallback chains as invoke.
5. Error handling wraps `TargetInvocationException`.

**Setf:** `(setf (dotnet:static "Type" "Field") value)` expands to
`(dotnet:%set-static "Type" "Field" value)`.

**Example:**
```lisp
;; Call a static method
(dotnet:static "System.Console" "WriteLine" "Hello")

;; Read a static property
(dotnet:static "System.Math" "PI")

;; Set a static field via setf
(setf (dotnet:static "MyApp.Settings" "MaxRetries") 5)
```

---

### dotnet:%set-static

**Signature:** `(dotnet:%set-static "TypeName" "Member" &rest indexer-args value)`

**Description:** Write-side entry point for static properties and fields.
Last argument is the value; preceding args (if any) are indexer arguments.

**Arguments:**
- `"TypeName"` -- A string or symbol naming the .NET type.
- `"Member"` -- A string naming the static member.
- `indexer-args` -- Indexer arguments.
- `value` -- The value to assign.

**Return value:** The value argument.

**How it works:**
1. Resolves the type via `ResolveDotNetType`.
2. Marshals all args including value using `LispArgsToDotNetGeneric`.
3. Calls `Type.InvokeMember` with `StaticWriteFlags`.
4. Returns the value argument.

**Example:**
```lisp
;; Set a static property
(dotnet:%set-static "MyApp.Settings" "MaxRetries" 5)
```

---

## Category 3: Generic Method Invocation

### dotnet:static-generic

**Signature:** `(dotnet:static-generic "TypeName" "MethodName" type-args-list &rest args)`

**Description:** Invoke a generic static method with explicit type arguments.

**Arguments:**
- `"TypeName"` -- String or symbol naming the type containing the method.
- `"MethodName"` -- String naming the generic method.
- `type-args-list` -- A Lisp list (cons cell chain ending in NIL) of
  type-name strings, e.g., `("System.String" "System.Int32")`.
- `args` -- Arguments to pass to the concrete method after type
  instantiation.

**Return value:** The method's return value marshalled to Lisp.

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
- `"MethodName"` -- String naming the generic method.
- `type-args-list` -- Lisp list of type-name strings.
- `args` -- Arguments to pass to the concrete method.

**Return value:** The method's return value marshalled to Lisp.

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

---

## Category 4: Out/Ref Parameter Methods

### dotnet:call-out

**Signature:** `(dotnet:call-out type-or-obj "Method" &rest in-args)`

**Description:** Call a .NET method that has `out` or `ref` parameters.
Supply only the non-out (in) arguments; out positions are filled
automatically by the .NET runtime.

**Return values:** Multiple values: the method's return value (T for void
methods), followed by each out/ref parameter value in declaration order.

**Arguments:**
- `type-or-obj` -- A type-name string for static calls, or a wrapped
  .NET object for instance calls.
- `"Method"` -- String naming the method.
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

**Return values:** Multiple values: return value followed by out/ref params.

**Arguments:**
- `type-or-obj` -- Type name string or wrapped object.
- `"Method"` -- String naming the generic method.
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

---

## Category 5: Base Class Calls

### dotnet:call-base

**Signature:** `(dotnet:call-base self "Method" &rest args)`

**Description:** Call the base class implementation of a virtual method
non-virtually, equivalent to C# `base.Method(args)`.

**Arguments:**
- `self` -- A `LispDotNetObject` which is an instance of a
  `dotnet:%define-class`-defined class (has a CLR base type).
- `"Method"` -- String naming the virtual method on the base type.
- `args` -- Arguments to pass.

**Return value:** The base method's return value marshalled to Lisp.

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

---

## Category 6: Type Resolution & Introspection

### dotnet:resolve-type

**Signature:** `(dotnet:resolve-type type-name-string)`

**Description:** Resolve a .NET `System.Type` by name, searching loaded
assemblies, loading by namespace prefix, and COM ProgIDs on Windows.
Returns the type wrapped as a `LispDotNetObject`. Signals an error if not
found.

**Arguments:**
- `type-name-string` -- A string naming the type. Can be a full name like
  `"System.Collections.Generic.Dictionary\`2"` or a ProgID like
  `"Excel.Application"`.

**Return value:** The resolved type wrapped as a `LispDotNetObject`, or
signals an error.

**How it works:**
The resolution follows a cascading fallback chain:

1. `Type.GetType(typeName)` -- handles BCL types known to the runtime.
2. Strip ", AssemblyName" suffix, then iterate all loaded assemblies
   calling `asm.GetType(bareTypeName)`.
3. Try loading the assembly by namespace prefix: for
   `"System.Net.IPAddress"`, tries loading `"System.Net"`, `"System"`, etc.
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
  backtick-arity suffix (e.g., ``"System.Collections.Generic.Dictionary`2"``
  or just `"System.Collections.Generic.Dictionary"` -- the arity is
  inferred from `type-args-list`).
- `type-args-list` -- A non-empty Lisp list of type-name strings.

**Return value:** The closed generic type wrapped as a `LispDotNetObject`.

**How it works:**
1. Parses the type-arg list, resolving each string to a `System.Type`.
2. Resolves the open generic definition: first tries the name as-is, then
   if not found and no backtick suffix, appends "\`N" where N is the arg
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

**Return value:** The type wrapped as a `LispDotNetObject`, or NIL.

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

**Return value:** T or NIL.

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

**Return value:** The object wrapped in a `LispDotNetBoxed` with the hint
type set to `type`.

**How it works:**
1. Resolves `type` and converts `obj` via `LispToDotNetGeneric`.
2. If `obj` is null/NIL, signals an error (cannot cast null).
3. Checks `type.IsInstanceOfType(val)` -- if false, signals error.
4. Returns a `LispDotNetBoxed` wrapping `val` with `type` as the hint
   type.

**Note:** For value-type conversions, use `dotnet:box` instead (cast
only works for reference types since value types cannot be "upcast" in the
same way).

**Example:**
```lisp
;; Upcast: List<string> to IEnumerable<string>
(let ((list (dotnet:new "System.Collections.Generic.List`1"
                        "System.String")))
  (dotnet:cast list
    "System.Collections.Generic.IEnumerable`1[System.String]"))

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

**Return value:** A `LispDotNetBoxed` wrapping the marshalled value.

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
(dotnet:box my-lisp-fn
  "System.Func`2[System.String,System.Boolean]")
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

**Return value:** The hint type wrapped as a `LispDotNetObject`, or NIL.

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

**Return value:** The singleton `LispDotNetNull.Instance` marker.

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

---

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

**Return value:** The combined enum value wrapped as a `LispDotNetObject`.

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

---

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
  `"System.Func\`2[System.String,System.Boolean]"`, or a resolved
  `System.Type` wrapped in a `LispDotNetObject`.
- `function` -- A Lisp function (callable with `funcall`).

**Return value:** The delegate wrapped in a `LispDotNetObject`.

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

---

## Category 10: Runtime Class Definition

### dotnet:%define-class

**Signature:** `(dotnet:%define-class full-name &optional base-type-name
  field-specs attr-specs method-specs ctor-body property-specs
  interface-specs event-specs ctor-param-types base-ctor-arg-indices
  ctor-specs-list)`

**Description:** Emit a named public .NET class at runtime using
`System.Reflection.Emit.TypeBuilder`. Accepts fields, methods,
properties, interfaces, events, and constructors. This is the low-level
primitive; use `dotnet:define-class` macro for a friendlier API.

**Arguments:**
- `full-name` -- String naming the new class.
- `base-type-name` -- Optional string/symbol naming the base class.
- `field-specs` -- Optional list of `(name type-name)` pairs for fields.
- `attr-specs` -- Optional list of `(type-name ctor-args...)` for
  custom attributes.
- `method-specs` -- Optional list of method specs: `(name return-type
  (param-types...) body-lambda &optional override-flag
  method-attr-specs...)`. The `override-flag` when truthy emits the
  method as an override of a matching base virtual method.
- `ctor-body` -- Optional 1-arg Lisp function called after the base
  constructor (legacy interface, superseded by `ctor-specs-list`).
- `property-specs` -- Optional list of `(name type-name &optional notify)`
  for auto-properties. `notify` when truthy emits `OnPropertyChanged`
  calls, requiring a matching `PropertyChanged` event in `event-specs`.
- `interface-specs` -- Optional list of interface type names; methods
  whose name+signature match an interface method are emitted as implicit
  implementations.
- `event-specs` -- Optional list of `(name delegate-type-name)` for events;
  emits a private delegate field + public `add_`/`remove_` accessors.
- `ctor-param-types` -- Optional list of constructor parameter types
  (legacy interface).
- `base-ctor-arg-indices` -- Optional list of integers indicating which
  Lisp args map to base constructor params (legacy interface).
- `ctor-specs-list` -- Optional list of `(lambda param-types
  base-arg-indices)` triples for custom constructors.

**Return value:** The full name as a `LispString`.

**How it works:**
1. Parses all specification lists from Lisp cons cells, resolving type
   names via `ResolveDotNetType`.
2. For attributes: finds a constructor on the attribute type matching the
   arg count and builds a `CustomAttributeBuilder`.
3. For methods: each method spec creates a
   `DynamicClassBuilder.MethodSpec` with the name, return type, parameter
   types, and a Lisp function body. The body function receives the method
   arguments as LispObject values.
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
  nil
  ;; attrs
  nil
  ;; methods
  (list
    (list "Greet" "System.String"
          '("System.String")
          (lambda (name)
            (format nil "Hello, ~a!" name))))
  ;; ctor-body
  nil
  ;; properties
  nil
  ;; interfaces
  nil)
```

---

## Category 11: Async Operations

### dotnet:await

**Signature:** `(dotnet:await awaitable)`

**Description:** Block the current thread until a .NET `Task`,
`Task<T>`, `ValueTask`, or `ValueTask<T>` completes, returning the
result marshalled to Lisp (NIL for a non-generic/void awaitable).

**Arguments:**
- `awaitable` -- A .NET object that is a `Task`, `Task<T>`, `ValueTask`,
  or `ValueTask<T>`.

**Return value:** The task result marshalled to Lisp, or NIL for void
tasks.

**How it works:**
1. Calls `ToTask` to unwrap the awaitable to a
   `System.Threading.Tasks.Task`. Handles `ValueTask` and `ValueTask<T>`
   by calling their `AsTask` methods.
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

---

## Category 12: Assembly Loading

### dotnet:load-assembly

**Signature:** `(dotnet:load-assembly path)`

**Description:** Load a .NET assembly from a file path or assembly name.

**Arguments:**
- `path` -- A string naming the assembly. If it contains no path
  separators and no `.dll` extension, it is treated as an assembly name
  to search for.

**Return value:** The assembly's full name as a `LispString`.

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

---

## Category 13: Exception Handling

### dotnet:exception-type

**Signature:** `(dotnet:exception-type condition)`

**Description:** For a condition that wraps a raw .NET exception (e.g., one
caught in `handler-case`), return the original CLR exception
`System.Type`. Returns NIL for an ordinary Lisp condition.

**Arguments:**
- `condition` -- A Lisp condition object.

**Return value:** The CLR exception type wrapped as a `LispDotNetObject`,
or NIL.

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
          (format t "CLR exception: ~a~%"
                  (dotnet:invoke clr-type "FullName"))
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

**Return value:** T or NIL.

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

---

### dotnet:handler-bind (Macro)

**Signature:** `(dotnet:handler-bind (clause ...) body...)`

**Description:** Macro that dispatches on specific .NET CLR exception types,
as opposed to CL condition types. Each clause is:
`("Type.Name" (var) body...)`. When a condition wraps a raw .NET
exception whose CLR type is the named type or a subtype
(`dotnet:exception-typep`), the matching clause runs.

**Arguments:**
- `clause` -- A list of the form:
  `("Fully.Qualified.Type.Name" (var) form...)`
  where the string is the CLR exception type name, `var` is the
  binding for the condition, and `form...` is the handler body.
- `body` -- The protected forms to execute.

**Return value:** The value of the body forms, or the handler body if an
exception is caught.

**How it works:**
Expands to a `handler-bind` with a single `error` clause that contains
a `cond` over all the supplied clauses. Each clause tests the condition
with `dotnet:exception-typep` against the named CLR type. The macro is
registered at load time via `find-package`/`intern` rather than a literal
`dotnet:` prefix, so the SBCL cross-compile host (which has no DOTNET
package) compiles it fine.

**Example:**
```lisp
(dotnet:handler-bind
    (("System.FormatException" (e)
      (format t "Bad format: ~a~%" e)
      (invoke-restart 'abort))
     (("System.DivideByZeroException" (e)
      (format t "Division by zero!~%")
      nil))
  (dotnet:static "System.Int32" "Parse" bad-string))
```

---

## Category 14: NuGet Package Management

### dotnet:require

**Signature:** `(dotnet:require package &optional version)`

**Description:** Download (if needed) and load a NuGet package, making its
assemblies available for type resolution and method calls. Only available
in builds compiled without `DOTCL_NO_JSON` (inherently incompatible with
AOT/IL2CPP/WebGL builds).

**Arguments:**
- `package` -- String naming the NuGet package (e.g., `"System.Management"`).
- `version` -- Optional string specifying the version. If omitted,
  resolves to the latest stable version.

**Return value:** A string of the form `"Package/Version"`.

**How it works:**
1. Determines the global NuGet packages folder from `NUGET_PACKAGES`
   env var or `~/.nuget/packages`.
2. If `version` is not given, fetches the latest version from the NuGet
   API (`api.nuget.org/v3-flatcontainer/{id}/index.json`), preferring the
   latest stable (non-prerelease) version. Checks local cache first.
3. If the version directory does not exist locally, downloads the `.nupkg`
   file and extracts it. Only extracts `lib/` and `runtimes/` subtrees.
4. Finds compatible DLLs with TFM preference order: newest .NET first
   (`net10.0`, `net9.0`, ...), then `netstandard` fallbacks
   (`netstandard2.1`, `netstandard2.0`, ...). On Windows, RID-specific
   `runtimes/win/lib/` takes precedence.
5. Loads each DLL via `Assembly.LoadFrom`.
6. Returns a string `"Package/Version"`.

**Error conditions:** Signals an error if no compatible DLL is found, or
if the NuGet API request fails.

**Example:**
```lisp
;; Load latest stable System.Management
(dotnet:require "System.Management")

;; Load specific version
(dotnet:require "System.Management" "8.0.0")
```

---

## Category 15: UI Thread Support (WinForms)

**Availability:** Only in builds compiled without `DOTCL_NO_WINFORMS`.

### dotnet:ui-invoke

**Signature:** `(dotnet:ui-invoke fn)`

**Description:** Run FN on the UI (message-loop) thread and wait for it,
returning its value. Use for code that must touch UI controls from a
background thread.

**Arguments:**
- `fn` -- A zero-argument Lisp function.

**Return value:** The return value of FN, or NIL if FN returns NIL.

**How it works:**
1. On first call, creates a background STA thread (`_uiThread`) that
   calls `Application.EnableVisualStyles()`,
   `Application.SetCompatibleTextRenderingDefault(false)`, creates a
   `WindowsFormsSynchronizationContext`, and calls `Application.Run()`.
   The thread waits up to 10 seconds for the context to be ready.
2. Subsequent calls use `_uiContext.Send()` which blocks until the lambda
   completes on the UI thread.
3. Errors are captured via `ExceptionDispatchInfo` and rethrown on the
   calling thread.

**Example:**
```lisp
;; Show a form from a background thread
(dotnet:ui-invoke (lambda ()
                    (dotnet:invoke form "Show")
                    form))
```

---

### dotnet:ui-post

**Signature:** `(dotnet:ui-post fn)`

**Description:** Queue FN to run on the UI (message-loop) thread
asynchronously and return immediately without waiting for the result.

**Arguments:**
- `fn` -- A zero-argument Lisp function.

**Return value:** NIL.

**How it works:**
Same UI thread initialization as `ui-invoke`, but uses
`_uiContext.Post()` (fire-and-forget). Errors in the posted function
are silently swallowed, matching the fire-and-forget semantics.

**Example:**
```lisp
;; Fire-and-forget: update UI label
(dotnet:ui-post (lambda ()
                  (dotnet:invoke label "set_Text" "Done!")))
```

---

## Category 16: Event Handling

### dotnet:add-event

**Signature:** `(dotnet:add-event object "EventName" handler)`

**Description:** Subscribe HANDLER (a Lisp function) to a .NET event on
OBJECT. The handler is called with the event's arguments marshalled to
Lisp values.

**Arguments:**
- `object` -- A wrapped .NET object that has the event.
- `"EventName"` -- String naming the event (e.g., `"Click"`,
  `"PropertyChanged"`).
- `handler` -- A Lisp function (closure). The function receives the
  event arguments as parameters.

**Return value:** NIL.

**How it works:**
1. Validates the target is a `LispDotNetObject`.
2. Resolves the event via `target.GetType().GetEvent(eventName)`.
3. Calls `MakeDelegate(ev.EventHandlerType, handler)` which:
   a. Uses a `ConditionalWeakTable<LispObject, Dictionary<Type, Delegate>>`
      to cache delegates per (handler, delegate type) pair. The weak-keyed
      table allows the delegate pool to GC when the handler becomes
      unreachable.
   b. Builds an `Expression.Lambda` matching the delegate's `Invoke`
      signature that marshals arguments to Lisp and calls
      `DotNetEvents.DispatchEvent(fn, args)`.
   c. Compiles and caches the delegate.
4. Calls `ev.GetAddMethod().Invoke(target, new[] { del })`.

**Important:** The delegate cache enables `dotnet:remove-event` to locate
the same delegate instance using the original Lisp handler, so bare Lisp
lambdas passed to `remove-event` correctly detach what `add-event`
installed.

**Error handling in event dispatch:** Lisp errors in the handler are
routed through `dotcl:*foreign-callback-handler*`. Non-Lisp .NET
exceptions on the event thread are caught and printed to stderr as a
safety net.

**Example:**
```lisp
;; Subscribe to a button click
(dotnet:add-event button "Click"
  (lambda (sender e)
    (format t "Button clicked!~%")))

;; Subscribe to PropertyChanged
(dotnet:add-event viewModel "PropertyChanged"
  (lambda (sender e)
    (format t "Property changed: ~a~%"
      (dotnet:invoke e "PropertyName"))))
```

---

### dotnet:remove-event

**Signature:** `(dotnet:remove-event object "EventName" handler)`

**Description:** Unsubscribe a HANDLER previously attached with
`dotnet:add-event`.

**Arguments:**
- `object` -- The same wrapped .NET object used in `add-event`.
- `"EventName"` -- The same event name.
- `handler` -- The same Lisp function object, or a `LispDotNetObject`
  wrapping a Delegate (legacy path).

**Return value:** NIL.

**How it works:**
1. Validates the target and resolves the event.
2. If the handler is a `LispDotNetObject` wrapping a `Delegate`, uses
   it directly.
3. Otherwise, looks up the cached delegate from
   `_delegateCache[handler][eventHandlerType]`.
4. If found, calls `ev.GetRemoveMethod().Invoke(target, new[] { del })`.

**Example:**
```lisp
(let ((my-handler (lambda (s e) (format t "Click!~%"))))
  (dotnet:add-event button "Click" my-handler)
  ;; ... later ...
  (dotnet:remove-event button "Click" my-handler))
```

---

## Category 17: FFI (Foreign Function Interface)

**Availability:** `ffi` and `%ffi-call` require `DOTCL_EMIT` build flag.
`%ffi-call-ptr` also requires `DOTCL_EMIT`.

### dotnet:ffi

**Signature:** `(dotnet:ffi dll func :args '(type ...) :ret type arg1 arg2 ...)`

**Description:** Call a native library function via the Foreign Function
Interface. Loads a native DLL and calls a function with type-safe
marshalling using `DynamicMethod` + `calli` IL emission.

**Arguments:**
- `dll` -- String naming the native DLL (e.g., `"libm.so"` or
  `"kernel32.dll"`).
- `func` -- String naming the function in the DLL.
- `:args` -- List of type keywords: `:ptr`, `:int32`, `:uint32`,
  `:int64`, `:uint64`, `:float`, `:double`, `:int16`, `:uint16`,
  `:int8`, `:uint8`, `:bool`, `:void`.
- `:ret` -- Return type keyword (same set), or NIL for void.
- `arg1`, `arg2`, ... -- Arguments matching the `:args` types.

**Return value:** The function's return value converted to a Lisp value.

**Supported type keywords and conversions:**
- `:ptr` / `:pointer` -- `IntPtr`. Lisp strings are marshalled via
  `Marshal.StringToHGlobalAnsi`. NIL maps to `IntPtr.Zero`.
- `:int` / `:int32` -- `int`
- `:uint` / `:uint32` -- `uint`
- `:int64` / `:long` -- `long`
- `:uint64` / `:ulong` -- `ulong`
- `:float` -- `float`
- `:double` -- `double`
- `:int16` / `:short` -- `short`
- `:uint16` / `:ushort` -- `ushort`
- `:int8` -- `sbyte`
- `:uint8` / `:char` -- `byte`
- `:bool` / `:boolean` -- `int` (Win32 BOOL = int)
- `:void` -- `void`
- `:string` / `:lpcstr` -- `IntPtr` (manual marshalling)

**How it works:**
1. Parses keyword args (`:args`, `:ret`) from the argument list.
2. Delegates to `NativeFFI.Call()` which:
   a. Ensures emit is allowed via `Emitter.CilAssembler.EnsureEmitAllowed`.
   b. Converts each type keyword to a .NET `Type` via `KeyToType`.
   c. Builds or reuses a cached `DynamicMethod` keyed by
      `(dll, func, signature)`. The `DynamicMethod` emits IL that
      pushes native args then calls `calli` with `StdCall` convention.
   d. Loads the DLL via `NativeLibrary.Load`, gets the function pointer
      via `NativeLibrary.GetExport`.
   e. Converts each Lisp argument to its native type via `ConvertArg`.
   f. Invokes the `DynamicMethod` and converts the return value via
      `ConvertReturn`.

**Caching:** `DynamicMethod`s are cached by `(dll, func, sigKey)` so
repeated calls with the same signature reuse the generated IL. Library
handles are cached by DLL name.

**Example:**
```lisp
;; Call pow from libm.so on Linux
(dotnet:ffi "libm.so.6" "pow" :args '(:double :double) :ret :double
            2.0d0 10.0d0)
;; => 1024.0d0

;; Call kernel32 on Windows
(dotnet:ffi "kernel32.dll" "GetModuleHandleA"
  :args '(:ptr) :ret :ptr
  nil)
```

---

### dotnet:%ffi-call

**Signature:** `(dotnet:%ffi-call dll func arg-types ret-type &rest args)`

**Description:** Low-level FFI call without keyword parsing. DLL and func
are strings; arg-types is a list of type keywords (not quoted with
`:'()`); ret-type is a keyword or NIL for void.

**Arguments:**
- `dll` -- String naming the DLL.
- `func` -- String naming the function.
- `arg-types` -- A Lisp list of type keywords (symbols).
- `ret-type` -- A type keyword or NIL.
- `args` -- Positional arguments matching arg-types.

**Return value:** The function's return value as a Lisp value.

**How it works:**
Identical to `dotnet:ffi` but skips keyword argument parsing, taking
`arg-types` and `ret-type` as positional parameters. This is the
interface used by `dotnet:define-ffi` macro.

**Example:**
```lisp
(dotnet:%ffi-call "libm.so.6" "pow" '(:double :double) :double
  2.0d0 3.0d0)
;; => 8.0d0
```

---

### dotnet:%ffi-call-ptr

**Signature:** `(dotnet:%ffi-call-ptr func-ptr arg-types ret-type &rest args)`

**Description:** Like `%ffi-call` but takes an explicit function pointer
(integer address) instead of loading from a DLL by name. Reuses the
`DynamicMethod` infrastructure from `NativeFFI.CallPtr()`.

**Arguments:**
- `func-ptr` -- Integer address of the function (from `find-symbol` or
  similar).
- `arg-types` -- A Lisp list of type keywords.
- `ret-type` -- A type keyword or NIL.
- `args` -- Positional arguments.

**Return value:** The function's return value as a Lisp value.

**How it works:**
Same as `NativeFFI.Call()` but uses the supplied `IntPtr` directly
instead of loading a library and looking up a symbol. Cache key is
`("*ptr*", "*ptr*", sigKey)` so pointer-based calls with the same
signature share a `DynamicMethod`.

**Example:**
```lisp
(let ((ptr (dotnet:find-symbol "pow"
                 (dotnet:load-library "libm.so.6"))))
  (dotnet:%ffi-call-ptr ptr '(:double :double) :double
    2.0d0 3.0d0))
```

---

## Category 18: Native Memory Operations

These functions provide unmanaged memory allocation and typed access,
serving as the backend for `cffi-sys` compatibility.

### dotnet:alloc-mem

**Signature:** `(dotnet:alloc-mem size)`

**Description:** Allocate SIZE bytes of unmanaged memory and return a
pointer as an integer.

**Arguments:**
- `size` -- A fixnum specifying the number of bytes to allocate.

**Return value:** Integer address of the allocated memory.

**How it works:**
Calls `Marshal.AllocHGlobal(size)` and returns the `IntPtr` as a
64-bit `Fixnum`.

**Example:**
```lisp
;; Allocate 256 bytes
(dotnet:alloc-mem 256)
;; => 140234891234560  (implementation-dependent address)
```

---

### dotnet:free-mem

**Signature:** `(dotnet:free-mem pointer)`

**Description:** Free unmanaged memory previously allocated with
`dotnet:alloc-mem`.

**Arguments:**
- `pointer` -- Integer address to free.

**Return value:** NIL.

**How it works:**
Calls `Marshal.FreeHGlobal(new IntPtr(addr))`.

**Example:**
```lisp
(let ((ptr (dotnet:alloc-mem 1024)))
  ;; ... use the memory ...
  (dotnet:free-mem ptr))
```

---

### dotnet:mem-read

**Signature:** `(dotnet:mem-read type pointer &optional (offset 0))`

**Description:** Read a typed value from unmanaged memory at POINTER plus
OFFSET bytes.

**Arguments:**
- `type` -- A type keyword: `:char`, `:int8`, `:unsigned-char`, `:uint8`,
  `:short`, `:int16`, `:unsigned-short`, `:uint16`, `:int`, `:int32`,
  `:long`, `:bool`, `:boolean`, `:unsigned-int`, `:uint32`,
  `:unsigned-long`, `:long-long`, `:int64`, `:unsigned-long-long`,
  `:uint64`, `:float`, `:double`, `:pointer`, `:ptr`.
  The type name is normalized: leading colons stripped, converted to
  uppercase, hyphens replaced with underscores.
- `pointer` -- Integer address.
- `offset` -- Optional byte offset (default 0).

**Return value:** The value read, as a fixnum or float.

**How it works:**
Computes `ptr = IntPtr(addr + offset)`, then dispatches on the type name
to call the appropriate `Marshal.ReadIntN` / `Marshal.ReadByte` /
`Marshal.ReadIntPtr`. For floats, uses `Compat.Int32BitsToSingle`; for
doubles, uses `BitConverter.Int64BitsToDouble`.

**Example:**
```lisp
(let ((ptr (dotnet:alloc-mem 16)))
  (dotnet:mem-write 42 :int32 ptr)
  (dotnet:mem-read :int32 ptr)  ; => 42
  (dotnet:mem-write 3.14f0 :float ptr 4)
  (dotnet:mem-read :float ptr 4)  ; => 3.14f0
  (dotnet:free-mem ptr))
```

---

### dotnet:mem-write

**Signature:** `(dotnet:mem-write value type pointer &optional (offset 0))`

**Description:** Write VALUE as TYPE into unmanaged memory at POINTER plus
OFFSET bytes.

**Arguments:**
- `value` -- A Lisp value to write (fixnum, float).
- `type` -- Same type keywords as `mem-read`.
- `pointer` -- Integer address.
- `offset` -- Optional byte offset (default 0).

**Return value:** The value argument (echoed back).

**How it works:**
Computes `ptr = IntPtr(addr + offset)`, then dispatches on the type name
to call the appropriate `Marshal.WriteIntN` / `Marshal.WriteByte`. For
floats, accepts `DoubleFloat`, `SingleFloat`, or `Fixnum` and converts
appropriately. For pointers, writes an `IntPtr`.

**Example:**
```lisp
(let ((ptr (dotnet:alloc-mem 8)))
  (dotnet:mem-write 42 :int32 ptr)
  (dotnet:mem-write 3.14d0 :double ptr 4)
  (dotnet:free-mem ptr))
```

---

### dotnet:type-size

**Signature:** `(dotnet:type-size type)`

**Description:** Return the marshalled size in bytes of TYPE (analogous to
C `sizeof`).

**Arguments:**
- `type` -- A type keyword (same set as `mem-read`).

**Return value:** Integer byte size.

**Type sizes:**
- 1 byte: `:char`, `:int8`, `:unsigned-char`, `:uint8`
- 2 bytes: `:short`, `:int16`, `:unsigned-short`, `:uint16`
- 4 bytes: `:int`, `:int32`, `:long`, `:unsigned-int`, `:uint32`,
  `:unsigned-long`, `:bool`, `:boolean`, `:float`
- 8 bytes: `:long-long`, `:int64`, `:unsigned-long-long`, `:uint64`,
  `:double`
- `IntPtr.Size` (8 on x64): `:pointer`, `:ptr`
- 0: `:void`

**How it works:**
Looks up the normalized type name in the `_typeSizes` static dictionary.

**Example:**
```lisp
(dotnet:type-size :int32)  ; => 4
(dotnet:type-size :double)  ; => 8
(dotnet:type-size :pointer)  ; => 8 (on x64)
```

---

### dotnet:type-align

**Signature:** `(dotnet:type-align type)`

**Description:** Return the alignment requirement in bytes of TYPE
(analogous to C `alignof`).

**Arguments:**
- `type` -- A type keyword (same set as `mem-read`).

**Return value:** Integer byte alignment.

**How it works:**
On x64, alignment equals size for primitive types (maximum 8). For `:void`
(size 0), returns 1.

**Example:**
```lisp
(dotnet:type-align :int32)  ; => 4
(dotnet:type-align :double)  ; => 8
(dotnet:type-align :int8)  ; => 1
```

---

### dotnet:load-library

**Signature:** `(dotnet:load-library path)`

**Description:** Load a native shared library (.dll/.so/.dylib) by name or
path and return its handle for use with `dotnet:find-symbol` /
`dotnet:free-library`.

**Arguments:**
- `path` -- A string naming the library.

**Return value:** Integer handle for the loaded library.

**How it works:**
1. Thread-safe lookup: if the path was already loaded, returns the cached
   handle from `_cffiLibHandles`.
2. Calls `NativeLibrary.Load(path)` to load the library.
3. Caches the handle in both `_cffiLibHandles` (path -> handle) and
   `_cffiHandleToPaths` (handle -> path).

**Example:**
```lisp
(let ((handle (dotnet:load-library "libm.so.6")))
  (format t "Loaded: ~a~%" handle)
  (dotnet:free-library handle))
```

---

### dotnet:free-library

**Signature:** `(dotnet:free-library handle)`

**Description:** Unload a native library previously loaded with
`dotnet:load-library`.

**Arguments:**
- `handle` -- Integer handle from `load-library`.

**Return value:** NIL.

**How it works:**
1. Removes entries from both `_cffiLibHandles` and `_cffiHandleToPaths`.
2. Calls `NativeLibrary.Free(handle)`.

**Example:**
```lisp
(let ((handle (dotnet:load-library "kernel32.dll")))
  ;; ... use the library ...
  (dotnet:free-library handle))
```

---

### dotnet:find-symbol

**Signature:** `(dotnet:find-symbol name handle)`

**Description:** Look up exported symbol NAME in the native library HANDLE,
returning its address.

**Arguments:**
- `name` -- String naming the exported symbol.
- `handle` -- Integer handle from `load-library`.

**Return value:** Integer address, or NIL if not found.

**How it works:**
Calls `NativeLibrary.TryGetExport(handle, name, out ptr)` and returns
the pointer as a `Fixnum`, or NIL on failure.

**Example:**
```lisp
(let ((handle (dotnet:load-library "libm.so.6")))
  (let ((ptr (dotnet:find-symbol "pow" handle)))
    (if ptr
        (dotnet:%ffi-call-ptr ptr '(:double :double) :double
          2.0d0 10.0d0)
        (format t "Symbol not found~%")))
  (dotnet:free-library handle))
```

---

### dotnet:find-symbol-any

**Signature:** `(dotnet:find-symbol-any name)`

**Description:** Look up exported symbol NAME across all already-loaded
native libraries.

**Arguments:**
- `name` -- String naming the exported symbol.

**Return value:** Integer address, or NIL if not found in any library.

**How it works:**
Iterates over `_cffiLibHandles.Values` calling
`NativeLibrary.TryGetExport` on each handle. Returns the first match.

**Example:**
```lisp
;; Search all loaded libraries for a symbol
(dotnet:find-symbol-any "pow")
```

---

### dotnet:library-path

**Signature:** `(dotnet:library-path handle)`

**Description:** Return the file path of the native library identified by
HANDLE.

**Arguments:**
- `handle` -- Integer handle from `load-library`.

**Return value:** String path, or NIL if handle not found.

**How it works:**
Looks up the handle in `_cffiHandleToPaths` dictionary.

**Example:**
```lisp
(let ((handle (dotnet:load-library "libm.so.6")))
  (format t "Path: ~a~%" (dotnet:library-path handle))
  (dotnet:free-library handle))
```

---

## Category 19: Stream Conversion

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

**Return value:** A Lisp stream object.

**How it works:**
1. Validates the argument is a `LispDotNetObject` wrapping a .NET Stream.
2. Parses `:binary` and `:bivalent` keyword arguments.
3. For `:binary`: wraps the stream in `LispBinaryStream`.
4. For `:bivalent`: wraps in `LispBidirectionalStream` with
   `BivalentStreamReader` and `BivalentStreamWriter` (SBCL-style
   character stream that also serves `read-byte`/`write-byte`).
5. Otherwise: wraps in `LispBidirectionalStream` with `StreamReader`
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

---

## Category 20: Contrib Macros and Utilities

These are defined in contrib modules and exported to the `dotnet` package.
They require explicit loading via `(require "dotnet-class")` or
`(require "dotnet-ffi")`.

### dotnet:define-class (Macro)

**Source:** `contrib/dotnet-class/dotnet-class.lisp`

**Signature:**
```lisp
(dotnet:define-class "Full.TypeName" (Base)
  (:fields ...)
  (:attributes ...)
  (:ctor ...)
  (:methods ...)
  (:properties ...)
  (:implements ...)
  (:events ...))
```

**Description:** User-facing macro that wraps `dotnet:%define-class` with a
declarative syntax. Supports type short-names via `*type-aliases*`.

**Arguments:**
- `"Full.TypeName"` -- String naming the new class.
- `(Base)` -- A single-element list with the base class type spec
  (symbol or string).
- `:fields` -- List of `("FieldName" Type)` pairs.
- `:attributes` -- List of `("AttributeType" ctor-args...)` for custom
  attributes.
- `:ctor` -- Constructor specs: `(:ctor ((param Type)...) &optional
  (:base param...) body...)`. Multiple `:ctor` forms are supported for
  constructor overloading. The `(:base ...)` form specifies which params
  to forward to the base constructor.
- `:methods` -- Method specs: `("MethodName" ((param Type)...) :returns
  Type &optional :override t :attributes (...) body...)`. The `:override`
  flag emits the method as an override of a matching virtual method.
- `:properties` -- Property specs: `("Name" Type &optional :notify t)`.
  The `:notify` flag emits `OnPropertyChanged` calls in the setter.
- `:implements` -- Interface type specs to implement.
- `:events` -- Event specs: `("Name" DelegateType)`.

**Type resolution:** Type specs accept strings (used verbatim) or symbols
(resolved via `*type-aliases*`). Unknown symbols signal a compile-time
error.

**Example:**
```lisp
(require "dotnet-class")

(dotnet:define-class "MyApp.MyGame" (Game)
  (:fields
    ("Score" Int32)
    ("Name" String))
  (:ctor ((initial-score Int32))
    (setf (dotnet:invoke self "set_Name") "MyGame"))
  (:methods
    ("GetScore" () :returns Int32
      (dotnet:invoke self "get_Score"))
    ("ToString" () :returns String :override t
      (format nil "~a: ~a"
        (dotnet:invoke self "get_Name")
        (dotnet:invoke self "get_Score"))))
  (:properties
    ("Level" Int32))
  (:implements IDisposable)
  (:events
    ("ScoreChanged" EventHandler)))
```

---

### dotnet:define-ffi (Macro)

**Source:** `contrib/dotnet-ffi/dotnet-ffi.lisp`

**Signature:**
```lisp
(dotnet:define-ffi name dll func :args '(type ...) :ret type)
```

**Description:** Declarative FFI binding. Defines a named Lisp function
that wraps a `dotnet:%ffi-call` to a native function.

**Arguments:**
- `name` -- Symbol to use as the function name.
- `dll` -- String naming the DLL.
- `func` -- String naming the function.
- `:args` -- List of type keywords.
- `:ret` -- Return type keyword.

**Return value:** The macro defines a function with auto-generated
parameter names (`ARG0`, `ARG1`, ...).

**How it works:**
Generates a `defun` that calls `dotnet:%ffi-call` with the provided
arguments. Parameter names are synthesized as `ARG0`, `ARG1`, etc.

**Example:**
```lisp
(require "dotnet-ffi")

(dotnet:define-ffi set-console-mode "kernel32.dll" "SetConsoleMode"
                   :args '(:ptr :uint32) :ret :bool)
(set-console-mode handle mode)  ; => T or NIL

(dotnet:define-ffi get-module-handle "kernel32.dll" "GetModuleHandleA"
                   :args '(:ptr) :ret :ptr)
```

---

### dotnet:ref

**Source:** `contrib/dotnet-class/dotnet-class.lisp`

**Signature:** `(dotnet:ref obj &rest keys)`

**Description:** Indexer sugar: convenient accessor for .NET indexers
(`get_Item` / `set_Item`).

**Arguments:**
- `obj` -- A wrapped .NET object with an indexer.
- `keys` -- One or more index keys.

**Return value:** The indexed value.

**How it works:**
Expands to `(apply #'dotnet:invoke obj "get_Item" keys)`.

**Setf:** `(setf (dotnet:ref obj key) val)` expands to
`(dotnet:invoke obj "set_Item" key val)`.

**Example:**
```lisp
;; Read from a Dictionary
(dotnet:ref my-dict "key")

;; Write to a Dictionary
(setf (dotnet:ref my-dict "key") "value")

;; Multi-dimensional array
(dotnet:ref matrix 2 3)
```

---

### dotnet:using (Macro)

**Source:** `contrib/dotnet-class/dotnet-class.lisp`

**Signature:** `(dotnet:using ((var init-expr) ...) body...)`

**Description:** IDisposable resource cleanup macro. Binds each VAR to
INIT-EXPR and guarantees `(dotnet:invoke var "Dispose")` is called on
exit, even if BODY signals an error. Resources are disposed in
innermost-first order, matching C# `using` semantics.

**Arguments:**
- `bindings` -- List of `(var init-expr)` pairs.
- `body` -- Forms to execute.

**Return value:** The value of the body forms.

**How it works:**
Expands recursively using `unwind-protect`. Each binding wraps the body
with a `let` + `unwind-protect` that calls `Dispose` on the variable.
The recursion ensures innermost-first disposal order.

**Example:**
```lisp
(dotnet:using ((file (dotnet:new "System.IO.FileStream"
                                  "data.bin"
                                  (dotnet:static "System.IO.FileMode" "Open"))))
  (let ((stream (dotnet:to-stream file :binary t)))
    (read-byte stream)))
;; file.Dispose() is called automatically
```

---

### dotnet:*type-aliases* (Special Variable)

**Source:** `contrib/dotnet-class/dotnet-class.lisp`

**Description:** Hash-table (tested with `equal`) mapping symbol-name
strings (upper-case) to fully qualified .NET type names. Used by
`dotnet:define-class` to resolve symbol short-names. Users may extend
with their own entries.

**Pre-populated aliases:**
- Primitives: `OBJECT`, `STRING`, `VOID`, `BOOLEAN`, `BOOL`, `BYTE`,
  `SBYTE`, `CHAR`, `INT16`, `UINT16`, `INT32`, `UINT32`, `INT64`,
  `UINT64`, `INT`, `LONG`, `SINGLE`, `FLOAT`, `DOUBLE`, `DECIMAL`
- Common types: `EXCEPTION`, `EVENTARGS`, `TYPE`
- Interfaces: `IDISPOSABLE`, `ICLONEABLE`, `IFORMATTABLE`,
  `INOTIFYPROPERTYCHANGED`, `ICOMMAND`
- Delegates: `EVENTHANDLER`, `PROPERTYCHANGEDEVENTHANDLER`,
  `PROPERTYCHANGEDEVENTARGS`

**Example:**
```lisp
;; Extend with custom types
(setf (gethash "MYVECTOR" dotnet:*type-aliases*)
  "MyApp.Math.MyVector")

;; Now usable in define-class
(dotnet:define-class "MyApp.Player" (Object)
  (:fields ("Position" MyVector)))
```

---

## Summary of All Functions

| # | Function | Category | Source |
|---|----------|----------|--------|
| 1 | `dotnet:new` | Object Construction | Runtime.DotNet.cs |
| 2 | `dotnet:new-array` | Object Construction | Runtime.DotNet.cs |
| 3 | `dotnet:make-array` | Object Construction | Runtime.DotNet.cs |
| 4 | `dotnet:invoke` | Method/Property/Field | Runtime.DotNet.cs |
| 5 | `dotnet:%set-invoke` | Method/Property/Field | Runtime.DotNet.cs |
| 6 | `dotnet:static` | Method/Property/Field | Runtime.DotNet.cs |
| 7 | `dotnet:%set-static` | Method/Property/Field | Runtime.DotNet.cs |
| 8 | `dotnet:static-generic` | Generic Methods | Runtime.DotNet.cs |
| 9 | `dotnet:invoke-generic` | Generic Methods | Runtime.DotNet.cs |
| 10 | `dotnet:call-out` | Out/Ref Params | Runtime.DotNet.cs |
| 11 | `dotnet:call-out-generic` | Out/Ref Params | Runtime.DotNet.cs |
| 12 | `dotnet:call-base` | Base Class Calls | Runtime.DotNet.cs |
| 13 | `dotnet:resolve-type` | Type Resolution | Runtime.DotNet.cs |
| 14 | `dotnet:make-generic-type` | Type Resolution | Runtime.DotNet.cs |
| 15 | `dotnet:object-type` | Type Resolution | Runtime.DotNet.cs |
| 16 | `dotnet:is-instance-of` | Type Resolution | Runtime.DotNet.cs |
| 17 | `dotnet:cast` | Type Resolution | Runtime.DotNet.cs |
| 18 | `dotnet:box` | Boxing/Marshalling | Runtime.DotNet.cs |
| 19 | `dotnet:hint-type` | Boxing/Marshalling | Runtime.DotNet.cs |
| 20 | `dotnet:null` | Boxing/Marshalling | Runtime.DotNet.cs |
| 21 | `dotnet:enum-or` | Enum Operations | Runtime.DotNet.cs |
| 22 | `dotnet:make-delegate` | Delegate Creation | Runtime.DotNet.cs |
| 23 | `dotnet:%define-class` | Class Definition | Runtime.DotNet.cs |
| 24 | `dotnet:await` | Async Operations | Runtime.DotNet.cs |
| 25 | `dotnet:load-assembly` | Assembly Loading | Runtime.DotNet.cs |
| 26 | `dotnet:exception-type` | Exception Handling | Runtime.DotNet.cs |
| 27 | `dotnet:exception-typep` | Exception Handling | Runtime.DotNet.cs |
| 28 | `dotnet:handler-bind` | Exception Handling | cil-stdlib.lisp (Macro) |
| 29 | `dotnet:require` | NuGet (cond.) | Runtime.NuGet.cs |
| 30 | `dotnet:ui-invoke` | UI Thread (cond.) | Runtime.WinForms.cs |
| 31 | `dotnet:ui-post` | UI Thread (cond.) | Runtime.WinForms.cs |
| 32 | `dotnet:add-event` | Events | Runtime.Events.cs |
| 33 | `dotnet:remove-event` | Events | Runtime.Events.cs |
| 34 | `dotnet:ffi` | FFI (cond.) | Runtime.FFI.cs |
| 35 | `dotnet:%ffi-call` | FFI (cond.) | Runtime.FFI.cs |
| 36 | `dotnet:%ffi-call-ptr` | FFI | Runtime.Memory.cs |
| 37 | `dotnet:alloc-mem` | Native Memory | Runtime.Memory.cs |
| 38 | `dotnet:free-mem` | Native Memory | Runtime.Memory.cs |
| 39 | `dotnet:mem-read` | Native Memory | Runtime.Memory.cs |
| 40 | `dotnet:mem-write` | Native Memory | Runtime.Memory.cs |
| 41 | `dotnet:type-size` | Native Memory | Runtime.Memory.cs |
| 42 | `dotnet:type-align` | Native Memory | Runtime.Memory.cs |
| 43 | `dotnet:load-library` | Native Library | Runtime.Memory.cs |
| 44 | `dotnet:free-library` | Native Library | Runtime.Memory.cs |
| 45 | `dotnet:find-symbol` | Native Library | Runtime.Memory.cs |
| 46 | `dotnet:find-symbol-any` | Native Library | Runtime.Memory.cs |
| 47 | `dotnet:library-path` | Native Library | Runtime.Memory.cs |
| 48 | `dotnet:to-stream` | Stream Conversion | Runtime.DotNet.cs |
| 49 | `dotnet:define-class` | Contrib Macro | dotnet-class.lisp |
| 50 | `dotnet:define-ffi` | Contrib Macro | dotnet-ffi.lisp |
| 51 | `dotnet:ref` | Contrib Utility | dotnet-class.lisp |
| 52 | `dotnet:using` | Contrib Macro | dotnet-class.lisp |
| 53 | `dotnet:*type-aliases*` | Contrib Variable | dotnet-class.lisp |

**Total: 53 exported items (45 C# functions, 5 Lisp macros, 1 special
variable, 2 internal helpers used by macros).**

**Conditional availability:**
- `dotnet:require` -- only without `DOTCL_NO_JSON`
- `dotnet:ui-invoke`, `dotnet:ui-post` -- only without `DOTCL_NO_WINFORMS`
- `dotnet:ffi`, `dotnet:%ffi-call` -- only with `DOTCL_EMIT`
- `dotnet:%ffi-call-ptr` -- only with `DOTCL_EMIT`
- `dotnet:define-class`, `dotnet:ref`, `dotnet:using`,
  `dotnet:*type-aliases*` -- require `(require "dotnet-class")`
- `dotnet:define-ffi` -- requires `(require "dotnet-ffi")`