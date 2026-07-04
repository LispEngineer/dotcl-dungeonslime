;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Vector2
;;; Generator Version: 31
;;; Creation Date: 2026-07-04T20:26:18Z

(cl:in-package :microsoft-xna-framework-vector2)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
(cl:defconstant <creation> "2026-07-04T20:26:18Z")
(cl:defconstant <version> 31)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

(cl:defun new (cl:&optional (value cl:nil supplied-value) (y cl:nil supplied-y))
  "Master wrapper for Microsoft.Xna.Framework.Vector2 constructor overloads. Dispatches at runtime.

new()

new(Single)

new(Single, Single)
"
  (cl:cond
    ((cl:and supplied-value (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:new <type-str> value y))
    ((cl:and supplied-value (cl:numberp value) (cl:not supplied-y))
     (dotnet:new <type-str> value))
    ((cl:and (cl:not supplied-value) (cl:not supplied-y))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-value (cl:list :value value)) (cl:when supplied-y (cl:list :y y)))))))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Vector2 is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +one+ (dotnet:static <type-str> "One"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Vector2 is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +unit-x+ (dotnet:static <type-str> "UnitX"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Vector2 is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +unit-y+ (dotnet:static <type-str> "UnitY"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Vector2 is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "X"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf x) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "X") new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Y"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf y) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Y") new-value))

(cl:defun - (value cl:&optional (value2 cl:nil supplied-value2))
  "Master wrapper for Microsoft.Xna.Framework.Vector2.- overloads. Dispatches at runtime.

-(Vector2) -> Vector2

-(Vector2, Vector2) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) supplied-value2 (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "op_Subtraction" value value2))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-value2))
     (dotnet:static <type-str> "op_UnaryNegation" value))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "-"
                    :supplied-args (cl:append (cl:list :value value) (cl:when supplied-value2 (cl:list :value2 value2)))))))

(cl:defun * (value1 value2)
  "Master wrapper for Microsoft.Xna.Framework.Vector2.* overloads. Dispatches at runtime.

*(Vector2, Vector2) -> Vector2

*(Vector2, Single) -> Vector2

*(Single, Vector2) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:numberp value2))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    ((cl:and (cl:numberp value1) (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "*"
                    :supplied-args (cl:append (cl:list :value1 value1) (cl:list :value2 value2))))))

(cl:defun / (value1 value2)
  "Master wrapper for Microsoft.Xna.Framework.Vector2./ overloads. Dispatches at runtime.

/(Vector2, Vector2) -> Vector2

/(Vector2, Single) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "op_Division" value1 value2))
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:numberp value2))
     (dotnet:static <type-str> "op_Division" value1 value2))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "/"
                    :supplied-args (cl:append (cl:list :value1 value1) (cl:list :value2 value2))))))

(cl:defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun add (value1 value2)
  (dotnet:static <type-str> "Add" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Add also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Add(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(cl:defun barycentric (value1 value2 value3 amount1 amount2)
  (dotnet:static <type-str> "Barycentric" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value3) (cl:the (dotnet "System.Single") amount1) (cl:the (dotnet "System.Single") amount2)))

;; Note: Microsoft.Xna.Framework.Vector2.Barycentric also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Barycentric(ref Vector2&, ref Vector2&, ref Vector2&, Single, Single, out Vector2&) -> Void

(cl:defun catmull-rom (value1 value2 value3 value4 amount)
  (dotnet:static <type-str> "CatmullRom" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value3) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value4) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.CatmullRom also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   CatmullRom(ref Vector2&, ref Vector2&, ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun ceiling (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Ceiling"))

(cl:defun ceiling* (value)
  (dotnet:static <type-str> "Ceiling" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Ceiling also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Ceiling(ref Vector2&, out Vector2&) -> Void

(cl:defun clamp (value1 min max)
  (dotnet:static <type-str> "Clamp" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") min) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") max)))

;; Note: Microsoft.Xna.Framework.Vector2.Clamp also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Clamp(ref Vector2&, ref Vector2&, ref Vector2&, out Vector2&) -> Void

;; The following C# Microsoft.Xna.Framework.Vector2.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Single&, out Single&) -> Void

(cl:defun distance (value1 value2)
  (dotnet:static <type-str> "Distance" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Distance also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Distance(ref Vector2&, ref Vector2&, out Single&) -> Void

(cl:defun distance-squared (value1 value2)
  (dotnet:static <type-str> "DistanceSquared" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.DistanceSquared also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   DistanceSquared(ref Vector2&, ref Vector2&, out Single&) -> Void

(cl:defun divide (value1 value2)
  "Master wrapper for Microsoft.Xna.Framework.Vector2.Divide overloads. Dispatches at runtime.

Divide(Vector2, Vector2) -> Vector2

Divide(Vector2, Single) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "Divide" value1 value2))
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:numberp value2))
     (dotnet:static <type-str> "Divide" value1 value2))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "Divide"
                    :supplied-args (cl:append (cl:list :value1 value1) (cl:list :value2 value2))))))

;; Note: Microsoft.Xna.Framework.Vector2.Divide also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Divide(ref Vector2&, ref Vector2&, out Vector2&) -> Void
;;   Divide(ref Vector2&, Single, out Vector2&) -> Void

(cl:defun dot (value1 value2)
  (dotnet:static <type-str> "Dot" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Dot also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Dot(ref Vector2&, ref Vector2&, out Single&) -> Void

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Vector2.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(Vector2) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun floor (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Floor"))

(cl:defun floor* (value)
  (dotnet:static <type-str> "Floor" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Floor also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Floor(ref Vector2&, out Vector2&) -> Void

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "GetHashCode"))

(cl:defun hermite (value1 tangent1 value2 tangent2 amount)
  (dotnet:static <type-str> "Hermite" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") tangent1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") tangent2) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.Hermite also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Hermite(ref Vector2&, ref Vector2&, ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" (cl:the (dotnet "System.Numerics.Vector2") value)))

(cl:defun length (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Length"))

(cl:defun length-squared (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "LengthSquared"))

(cl:defun lerp (value1 value2 amount)
  (dotnet:static <type-str> "Lerp" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.Lerp also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Lerp(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun lerp-precise (value1 value2 amount)
  (dotnet:static <type-str> "LerpPrecise" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.LerpPrecise also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   LerpPrecise(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun max (value1 value2)
  (dotnet:static <type-str> "Max" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Max also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Max(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(cl:defun min (value1 value2)
  (dotnet:static <type-str> "Min" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Min also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Min(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(cl:defun multiply (value1 value2)
  "Master wrapper for Microsoft.Xna.Framework.Vector2.Multiply overloads. Dispatches at runtime.

Multiply(Vector2, Vector2) -> Vector2

Multiply(Vector2, Single) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:or (cl:null value2) (dotnet:object-type value2)))
     (dotnet:static <type-str> "Multiply" value1 value2))
    ((cl:and (cl:or (cl:null value1) (dotnet:object-type value1)) (cl:numberp value2))
     (dotnet:static <type-str> "Multiply" value1 value2))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "Multiply"
                    :supplied-args (cl:append (cl:list :value1 value1) (cl:list :value2 value2))))))

;; Note: Microsoft.Xna.Framework.Vector2.Multiply also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Multiply(ref Vector2&, ref Vector2&, out Vector2&) -> Void
;;   Multiply(ref Vector2&, Single, out Vector2&) -> Void

(cl:defun negate (value)
  (dotnet:static <type-str> "Negate" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Negate also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Negate(ref Vector2&, out Vector2&) -> Void

(cl:defun normalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Normalize"))

(cl:defun normalize* (value)
  (dotnet:static <type-str> "Normalize" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Normalize also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Normalize(ref Vector2&, out Vector2&) -> Void

(cl:defun not= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun reflect (vector normal)
  (dotnet:static <type-str> "Reflect" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") vector) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") normal)))

;; Note: Microsoft.Xna.Framework.Vector2.Reflect also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Reflect(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(cl:defun rotate (obj! radians)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Rotate" radians))

(cl:defun rotate* (value radians)
  (dotnet:static <type-str> "Rotate" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "System.Single") radians)))

(cl:defun rotate-around (obj! origin radians)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "RotateAround" origin radians))

(cl:defun rotate-around* (value origin radians)
  (dotnet:static <type-str> "RotateAround" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") origin) (cl:the (dotnet "System.Single") radians)))

(cl:defun round (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "Round"))

(cl:defun round* (value)
  (dotnet:static <type-str> "Round" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Round also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Round(ref Vector2&, out Vector2&) -> Void

(cl:defun smooth-step (value1 value2 amount)
  (dotnet:static <type-str> "SmoothStep" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.SmoothStep also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   SmoothStep(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun subtract (value1 value2)
  (dotnet:static <type-str> "Subtract" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Subtract also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Subtract(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(cl:defun to-numerics (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "ToNumerics"))

(cl:defun to-point (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "ToPoint"))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj!) "ToString"))

(cl:defun transform (position matrix)
  "Master wrapper for Microsoft.Xna.Framework.Vector2.Transform overloads. Dispatches at runtime.

Transform(Vector2, Matrix) -> Vector2

Transform(Vector2, Quaternion) -> Vector2
"
  (cl:cond
    ((cl:and (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null matrix) (dotnet:object-type matrix)))
     (dotnet:static <type-str> "Transform" position matrix))
    ((cl:and (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null matrix) (dotnet:object-type matrix)))
     (dotnet:static <type-str> "Transform" position matrix))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-VECTOR2"
                    :class-name <type-str>
                    :method-name "Transform"
                    :supplied-args (cl:append (cl:list :position position) (cl:list :matrix matrix))))))

;; Note: Microsoft.Xna.Framework.Vector2.Transform also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Transform(ref Vector2&, ref Matrix&, out Vector2&) -> Void
;;   Transform(ref Vector2&, ref Quaternion&, out Vector2&) -> Void
;;   Transform(Vector2[], ref Matrix&, Vector2[]) -> Void
;;   Transform(Vector2[], ref Quaternion&, Vector2[]) -> Void
;;   Transform(Vector2[], Int32, ref Matrix&, Vector2[], Int32, Int32) -> Void
;;   Transform(Vector2[], Int32, ref Quaternion&, Vector2[], Int32, Int32) -> Void

(cl:defun transform-normal (normal matrix)
  (dotnet:static <type-str> "TransformNormal" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") normal) (cl:the (dotnet "Microsoft.Xna.Framework.Matrix") matrix)))

;; Note: Microsoft.Xna.Framework.Vector2.TransformNormal also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   TransformNormal(ref Vector2&, ref Matrix&, out Vector2&) -> Void
;;   TransformNormal(Vector2[], ref Matrix&, Vector2[]) -> Void
;;   TransformNormal(Vector2[], Int32, ref Matrix&, Vector2[], Int32, Int32) -> Void

