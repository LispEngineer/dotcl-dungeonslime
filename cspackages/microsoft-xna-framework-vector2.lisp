;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Vector2
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T01:32:04Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-vector2
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

(in-package :microsoft-xna-framework-vector2)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Vector2"))
(defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
(defconstant <creation> "2026-06-28T01:32:04Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Vector2. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-single (value)
  "Calls Microsoft.Xna.Framework.Vector2 constructor new(Single)"
  (dotnet:new <type-str> value))

(defun new-single-single (x y)
  "Calls Microsoft.Xna.Framework.Vector2 constructor new(Single, Single)"
  (dotnet:new <type-str> x y))

(defconstant +one+ (dotnet:static <type-str> "One"))

(defconstant +unit-x+ (dotnet:static <type-str> "UnitX"))

(defconstant +unit-y+ (dotnet:static <type-str> "UnitY"))

(defconstant +zero+ (dotnet:static <type-str> "Zero"))

(defun - (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.- overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "-" args))

(defun --vector2 (value)
  "Calls Microsoft.Xna.Framework.Vector2.- -(Vector2) -> Vector2"
  (dotnet:static <type-str> "op_UnaryNegation" (the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

(defun --vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.- -(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Subtraction" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun * (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.* overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "*" args))

(defun *-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun *-vector2-single (value scale-factor)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "Microsoft.Xna.Framework.Vector2") value) (the (dotnet "System.Single") scale-factor)))

(defun *-single-vector2 (scale-factor value)
  "Calls Microsoft.Xna.Framework.Vector2.* *(Single, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "System.Single") scale-factor) (the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

(defun / (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2./ overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "/" args))

(defun /-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2./ /(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "op_Division" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun /-vector2-single (value1 divider)
  "Calls Microsoft.Xna.Framework.Vector2./ /(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "op_Division" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "System.Single") divider)))

(defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun add (value1 value2)
  (dotnet:static <type-str> "Add" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Add also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Add(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(defun barycentric (value1 value2 value3 amount1 amount2)
  (dotnet:static <type-str> "Barycentric" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "Microsoft.Xna.Framework.Vector2") value3) (the (dotnet "System.Single") amount1) (the (dotnet "System.Single") amount2)))

;; Note: Microsoft.Xna.Framework.Vector2.Barycentric also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Barycentric(ref Vector2&, ref Vector2&, ref Vector2&, Single, Single, out Vector2&) -> Void

(defun catmull-rom (value1 value2 value3 value4 amount)
  (dotnet:static <type-str> "CatmullRom" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "Microsoft.Xna.Framework.Vector2") value3) (the (dotnet "Microsoft.Xna.Framework.Vector2") value4) (the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.CatmullRom also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   CatmullRom(ref Vector2&, ref Vector2&, ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(defun ceiling (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Ceiling overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Ceiling" args))

(defun ceiling (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Ceiling Ceiling() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Ceiling"))

(defun ceiling-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Vector2.Ceiling Ceiling(Vector2) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Ceiling" value))

;; Note: Microsoft.Xna.Framework.Vector2.Ceiling also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Ceiling(ref Vector2&, out Vector2&) -> Void

(defun clamp (value1 min max)
  (dotnet:static <type-str> "Clamp" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") min) (the (dotnet "Microsoft.Xna.Framework.Vector2") max)))

;; Note: Microsoft.Xna.Framework.Vector2.Clamp also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Clamp(ref Vector2&, ref Vector2&, ref Vector2&, out Vector2&) -> Void

;; The following C# Microsoft.Xna.Framework.Vector2.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Single&, out Single&) -> Void

(defun distance (value1 value2)
  (dotnet:static <type-str> "Distance" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Distance also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Distance(ref Vector2&, ref Vector2&, out Single&) -> Void

(defun distance-squared (value1 value2)
  (dotnet:static <type-str> "DistanceSquared" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.DistanceSquared also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   DistanceSquared(ref Vector2&, ref Vector2&, out Single&) -> Void

(defun divide (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Divide overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "Divide" args))

(defun divide-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.Divide Divide(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "Divide" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun divide-vector2-single (value1 divider)
  "Calls Microsoft.Xna.Framework.Vector2.Divide Divide(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "Divide" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "System.Single") divider)))

;; Note: Microsoft.Xna.Framework.Vector2.Divide also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Divide(ref Vector2&, ref Vector2&, out Vector2&) -> Void
;;   Divide(ref Vector2&, Single, out Vector2&) -> Void

(defun dot (value1 value2)
  (dotnet:static <type-str> "Dot" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Dot also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Dot(ref Vector2&, ref Vector2&, out Single&) -> Void

(defun equals (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" args))

(defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Vector2.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" obj))

(defun equals-vector2 (obj other)
  "Calls Microsoft.Xna.Framework.Vector2.Equals Equals(Vector2) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Equals" other))

(defun floor (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Floor overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Floor" args))

(defun floor (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Floor Floor() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Floor"))

(defun floor-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Vector2.Floor Floor(Vector2) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Floor" value))

;; Note: Microsoft.Xna.Framework.Vector2.Floor also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Floor(ref Vector2&, out Vector2&) -> Void

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "GetHashCode"))

(defun hermite (value1 tangent1 value2 tangent2 amount)
  (dotnet:static <type-str> "Hermite" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") tangent1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "Microsoft.Xna.Framework.Vector2") tangent2) (the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.Hermite also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Hermite(ref Vector2&, ref Vector2&, ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" (the (dotnet "System.Numerics.Vector2") value)))

(defun length (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Length"))

(defun length-squared (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "LengthSquared"))

(defun lerp (value1 value2 amount)
  (dotnet:static <type-str> "Lerp" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.Lerp also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Lerp(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(defun lerp-precise (value1 value2 amount)
  (dotnet:static <type-str> "LerpPrecise" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.LerpPrecise also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   LerpPrecise(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(defun max (value1 value2)
  (dotnet:static <type-str> "Max" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Max also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Max(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(defun min (value1 value2)
  (dotnet:static <type-str> "Min" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Min also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Min(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(defun multiply (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Multiply overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "Multiply" args))

(defun multiply-vector2-vector2 (value1 value2)
  "Calls Microsoft.Xna.Framework.Vector2.Multiply Multiply(Vector2, Vector2) -> Vector2"
  (dotnet:static <type-str> "Multiply" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun multiply-vector2-single (value1 scale-factor)
  "Calls Microsoft.Xna.Framework.Vector2.Multiply Multiply(Vector2, Single) -> Vector2"
  (dotnet:static <type-str> "Multiply" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "System.Single") scale-factor)))

;; Note: Microsoft.Xna.Framework.Vector2.Multiply also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Multiply(ref Vector2&, ref Vector2&, out Vector2&) -> Void
;;   Multiply(ref Vector2&, Single, out Vector2&) -> Void

(defun negate (value)
  (dotnet:static <type-str> "Negate" (the (dotnet "Microsoft.Xna.Framework.Vector2") value)))

;; Note: Microsoft.Xna.Framework.Vector2.Negate also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Negate(ref Vector2&, out Vector2&) -> Void

(defun normalize (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Normalize overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Normalize" args))

(defun normalize (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Normalize Normalize() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Normalize"))

(defun normalize-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Vector2.Normalize Normalize(Vector2) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Normalize" value))

;; Note: Microsoft.Xna.Framework.Vector2.Normalize also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Normalize(ref Vector2&, out Vector2&) -> Void

(defun not= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

(defun reflect (vector normal)
  (dotnet:static <type-str> "Reflect" (the (dotnet "Microsoft.Xna.Framework.Vector2") vector) (the (dotnet "Microsoft.Xna.Framework.Vector2") normal)))

;; Note: Microsoft.Xna.Framework.Vector2.Reflect also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Reflect(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(defun rotate (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Rotate overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Rotate" args))

(defun rotate-single (obj radians)
  "Calls Microsoft.Xna.Framework.Vector2.Rotate Rotate(Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Rotate" radians))

(defun rotate-vector2-single (obj value radians)
  "Calls Microsoft.Xna.Framework.Vector2.Rotate Rotate(Vector2, Single) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Rotate" value radians))

(defun rotate-around (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.RotateAround overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "RotateAround" args))

(defun rotate-around-vector2-single (obj origin radians)
  "Calls Microsoft.Xna.Framework.Vector2.RotateAround RotateAround(Vector2, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "RotateAround" origin radians))

(defun rotate-around-vector2-vector2-single (obj value origin radians)
  "Calls Microsoft.Xna.Framework.Vector2.RotateAround RotateAround(Vector2, Vector2, Single) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "RotateAround" value origin radians))

(defun round (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Round overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Round" args))

(defun round (obj)
  "Calls Microsoft.Xna.Framework.Vector2.Round Round() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Round"))

(defun round-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Vector2.Round Round(Vector2) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "Round" value))

;; Note: Microsoft.Xna.Framework.Vector2.Round also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Round(ref Vector2&, out Vector2&) -> Void

(defun smooth-step (value1 value2 amount)
  (dotnet:static <type-str> "SmoothStep" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2) (the (dotnet "System.Single") amount)))

;; Note: Microsoft.Xna.Framework.Vector2.SmoothStep also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   SmoothStep(ref Vector2&, ref Vector2&, Single, out Vector2&) -> Void

(defun subtract (value1 value2)
  (dotnet:static <type-str> "Subtract" (the (dotnet "Microsoft.Xna.Framework.Vector2") value1) (the (dotnet "Microsoft.Xna.Framework.Vector2") value2)))

;; Note: Microsoft.Xna.Framework.Vector2.Subtract also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Subtract(ref Vector2&, ref Vector2&, out Vector2&) -> Void

(defun to-numerics (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToNumerics"))

(defun to-point (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToPoint"))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Vector2") obj) "ToString"))

(defun transform (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Vector2.Transform overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "Transform" args))

(defun transform-vector2-matrix (position matrix)
  "Calls Microsoft.Xna.Framework.Vector2.Transform Transform(Vector2, Matrix) -> Vector2"
  (dotnet:static <type-str> "Transform" (the (dotnet "Microsoft.Xna.Framework.Vector2") position) (the (dotnet "Microsoft.Xna.Framework.Matrix") matrix)))

(defun transform-vector2-quaternion (value rotation)
  "Calls Microsoft.Xna.Framework.Vector2.Transform Transform(Vector2, Quaternion) -> Vector2"
  (dotnet:static <type-str> "Transform" (the (dotnet "Microsoft.Xna.Framework.Vector2") value) (the (dotnet "Microsoft.Xna.Framework.Quaternion") rotation)))

;; Note: Microsoft.Xna.Framework.Vector2.Transform also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Transform(ref Vector2&, ref Matrix&, out Vector2&) -> Void
;;   Transform(ref Vector2&, ref Quaternion&, out Vector2&) -> Void
;;   Transform(Vector2[], ref Matrix&, Vector2[]) -> Void
;;   Transform(Vector2[], ref Quaternion&, Vector2[]) -> Void
;;   Transform(Vector2[], Int32, ref Matrix&, Vector2[], Int32, Int32) -> Void
;;   Transform(Vector2[], Int32, ref Quaternion&, Vector2[], Int32, Int32) -> Void

(defun transform-normal (normal matrix)
  (dotnet:static <type-str> "TransformNormal" (the (dotnet "Microsoft.Xna.Framework.Vector2") normal) (the (dotnet "Microsoft.Xna.Framework.Matrix") matrix)))

;; Note: Microsoft.Xna.Framework.Vector2.TransformNormal also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   TransformNormal(ref Vector2&, ref Matrix&, out Vector2&) -> Void
;;   TransformNormal(Vector2[], ref Matrix&, Vector2[]) -> Void
;;   TransformNormal(Vector2[], Int32, ref Matrix&, Vector2[], Int32, Int32) -> Void

