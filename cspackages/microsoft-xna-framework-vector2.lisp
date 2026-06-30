;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Vector2
;;; Generator Version: 17
;;; Creation Date: 2026-06-30T03:58:38Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-vector2
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:=
   #:ceiling
   #:floor
   #:length
   #:max
   #:min
   #:round
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-single
   #:new-single-single
   #:+one+
   #:+unit-x+
   #:+unit-y+
   #:+zero+
   #:-
   #:--vector2
   #:--vector2-vector2
   #:*
   #:*-vector2-vector2
   #:*-vector2-single
   #:*-single-vector2
   #:/
   #:/-vector2-vector2
   #:/-vector2-single
   #:+
   #:=
   #:add
   #:barycentric
   #:catmull-rom
   #:ceiling
   #:ceiling-vector2
   #:clamp
   #:distance
   #:distance-squared
   #:divide
   #:divide-vector2-vector2
   #:divide-vector2-single
   #:dot
   #:equals
   #:equals-object
   #:equals-vector2
   #:floor
   #:floor-vector2
   #:get-hash-code
   #:hermite
   #:implicit-cast
   #:length
   #:length-squared
   #:lerp
   #:lerp-precise
   #:max
   #:min
   #:multiply
   #:multiply-vector2-vector2
   #:multiply-vector2-single
   #:negate
   #:normalize
   #:normalize-vector2
   #:not=
   #:reflect
   #:rotate
   #:rotate-single
   #:rotate-vector2-single
   #:rotate-around
   #:rotate-around-vector2-single
   #:rotate-around-vector2-vector2-single
   #:round
   #:round-vector2
   #:smooth-step
   #:subtract
   #:to-numerics
   #:to-point
   #:to-string
   #:transform
   #:transform-vector2-matrix
   #:transform-vector2-quaternion
   #:transform-normal
  ))

(cl:in-package :microsoft-xna-framework-vector2)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Vector2"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
(cl:defconstant <creation> "2026-06-30T03:58:38Z")
(cl:defconstant <version> 17)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Vector2. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-single (value)
  "Calls Microsoft.Xna.Framework.Vector2 constructor new(Single)"
  (dotnet:new <type-str> value))

(cl:defun new-single-single (x y)
  "Calls Microsoft.Xna.Framework.Vector2 constructor new(Single, Single)"
  (dotnet:new <type-str> x y))

(cl:defconstant +one+ (dotnet:static <type-str> "One"))

(cl:defconstant +unit-x+ (dotnet:static <type-str> "UnitX"))

(cl:defconstant +unit-y+ (dotnet:static <type-str> "UnitY"))

(cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))

(cl:defun - (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.- overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 1) (monoutils:dotnet-p (cl:nth 0 args)))
     (cl:apply (cl:function --vector2) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function --vector2-vector2) args))
    (cl:t (cl:error "Microsoft.Xna.Framework.Vector2.-: no matching overload found for args: ~S" args))))

(cl:defun --vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.- -(Vector2) -> Vector2"
  (dotnet:static <type-str> "op_UnaryNegation" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

(cl:defun --vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.- -(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Subtraction" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun * (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.* overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function *-vector2-vector2) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (cl:numberp (cl:nth 1 args)))
     (cl:apply (cl:function *-vector2-single) args))
    ((cl:and (cl:= (cl:length args) 2) (cl:numberp (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function *-single-vector2) args))
    (cl:t (cl:error "Microsoft.Xna.Framework.Vector2.*: no matching overload found for args: ~S" args))))

(cl:defun *-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun *-vector2-single (value scale-factor)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "System.Single") scale-factor)))

(cl:defun *-single-vector2 (scale-factor value)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Single, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.Single") scale-factor) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

(cl:defun / (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2./ overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function /-vector2-vector2) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (cl:numberp (cl:nth 1 args)))
     (cl:apply (cl:function /-vector2-single) args))
    (cl:t (cl:error "Microsoft.Xna.Framework.Vector2./: no matching overload found for args: ~S" args))))

(cl:defun /-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2./ /(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Division" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun /-vector2-single (value1 divider)
  "Calls Microsoft.Xna.Framework.Vector2./ /(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "op_Division" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "System.Single") divider)))

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

(cl:defun ceiling (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Ceiling overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Ceiling" args))

(cl:defun ceiling (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Ceiling Ceiling() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Ceiling"))

(cl:defun ceiling-vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.Ceiling Ceiling(Vector2) -> Vector2"
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

(cl:defun divide (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Divide overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Divide" args))

(cl:defun divide-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.Divide Divide(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "Divide" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun divide-vector2-single (value1 divider)
  "Calls Microsoft.Xna.Framework.Vector2.Divide Divide(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "Divide" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "System.Single") divider)))

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

(cl:defun equals (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Equals overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" args))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Vector2.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" obj))

(cl:defun equals-vector2 (obj other)
  "Calls Microsoft.Xna.Framework.Vector2.Equals Equals(Vector2) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" other))

(cl:defun floor (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Floor overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Floor" args))

(cl:defun floor (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Floor Floor() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Floor"))

(cl:defun floor-vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.Floor Floor(Vector2) -> Vector2"
  (dotnet:static <type-str> "Floor" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Floor also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Floor(ref Vector2&, out Vector2&) -> Void

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "GetHashCode"))

(cl:defun hermite (value1 tangent1 value2 tangent2 amount)
  (dotnet:static <type-str> "Hermite" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") tangent1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") tangent2) (cl:the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.Hermite also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Hermite(ref Vector2&, ref Vector2&, ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(cl:defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" (cl:the (dotnet "System.Numerics.Vector2") value)))

(cl:defun length (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Length"))

(cl:defun length-squared (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "LengthSquared"))

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

(cl:defun multiply (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Multiply overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Multiply" args))

(cl:defun multiply-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.Multiply Multiply(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(cl:defun multiply-vector2-single (value1 scale-factor)
  "Calls Microsoft.Xna.Framework.Vector2.Multiply Multiply(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (cl:the (dotnet "System.Single") scale-factor)))

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

(cl:defun normalize (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Normalize overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Normalize" args))

(cl:defun normalize (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Normalize Normalize() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Normalize"))

(cl:defun normalize-vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.Normalize Normalize(Vector2) -> Vector2"
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

(cl:defun rotate (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Rotate overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Rotate" args))

(cl:defun rotate-single (obj radians)
  "Calls Microsoft.Xna.Framework.Vector2.Rotate Rotate(Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Rotate" radians))

(cl:defun rotate-vector2-single (value radians)
  "Calls Microsoft.Xna.Framework.Vector2.Rotate Rotate(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "Rotate" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "System.Single") radians)))

(cl:defun rotate-around (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.RotateAround overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "RotateAround" args))

(cl:defun rotate-around-vector2-single (obj origin radians)
  "Calls Microsoft.Xna.Framework.Vector2.RotateAround RotateAround(Vector2, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "RotateAround" origin radians))

(cl:defun rotate-around-vector2-vector2-single (value origin radians)
  "Calls Microsoft.Xna.Framework.Vector2.RotateAround RotateAround(Vector2, Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "RotateAround" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") origin) (cl:the (dotnet "System.Single") radians)))

(cl:defun round (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Round overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Round" args))

(cl:defun round (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Round Round() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Round"))

(cl:defun round-vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.Round Round(Vector2) -> Vector2"
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

(cl:defun to-numerics (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToNumerics"))

(cl:defun to-point (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToPoint"))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToString"))

(cl:defun transform (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Transform overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Transform" args))

(cl:defun transform-vector2-matrix (position matrix)
  "Calls Microsoft.Xna.Framework.Vector2.Transform Transform(Vector2, Matrix) -> Vector2"
  (dotnet:static <type-str> "Transform" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") position) (cl:the (dotnet "Microsoft.Xna.Framework.Matrix") matrix)))

(cl:defun transform-vector2-quaternion (value rotation)
  "Calls Microsoft.Xna.Framework.Vector2.Transform Transform(Vector2, Quaternion) -> Vector2"
  (dotnet:static <type-str> "Transform" (cl:the (dotnet "Microsoft.Xna.Framework.Vector2") value) (cl:the (dotnet "Microsoft.Xna.Framework.Quaternion") rotation)))

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

