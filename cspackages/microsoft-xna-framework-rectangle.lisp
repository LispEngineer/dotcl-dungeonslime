;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Rectangle
;;; Generator Version: 10
;;; Creation Date: 2026-06-21T22:33:33Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-rectangle
  (:use :cl)
  (:shadow
   #:=
   #:union
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+empty+
   #:bottom
   #:center
   #:is-empty
   #:left
   #:location
   #:right
   #:size
   #:top
   #:=
   #:contains
   #:contains-point
   #:contains-vector2
   #:contains-rectangle
   #:contains-int32-int32
   #:contains-single-single
   #:equals
   #:equals-object
   #:equals-rectangle
   #:get-hash-code
   #:inflate
   #:inflate-int32-int32
   #:inflate-single-single
   #:intersect
   #:intersects
   #:not=
   #:offset
   #:offset-point
   #:offset-vector2
   #:offset-int32-int32
   #:offset-single-single
   #:to-string
   #:union
  ))

(in-package :microsoft-xna-framework-rectangle)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Rectangle"))
(defconstant <type-str> "Microsoft.Xna.Framework.Rectangle")
(defconstant <creation> "2026-06-21T22:33:33Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

(defconstant +empty+ (dotnet:static <type-str> "Empty"))

(defun bottom (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Bottom"))

(defun center (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Center"))

(defun is-empty (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_IsEmpty"))

(defun left (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Left"))

(defun location (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Location"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf location) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "set_Location" new-value))

(defun right (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Right"))

(defun size (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Size"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf size) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "set_Size" new-value))

(defun top (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Top"))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(defun contains (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Rectangle.Contains overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" args))

(defun contains-point (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Point) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(defun contains-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Vector2) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(defun contains-rectangle (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Rectangle) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(defun contains-int32-int32 (obj x y)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Int32, Int32) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" x y))

(defun contains-single-single (obj x y)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Single, Single) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" x y))

;; Note: Microsoft.Xna.Framework.Rectangle.Contains also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Contains(ref Point&, out Boolean&) -> Void
;;   Contains(ref Vector2&, out Boolean&) -> Void
;;   Contains(ref Rectangle&, out Boolean&) -> Void

;; The following C# Microsoft.Xna.Framework.Rectangle.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Int32&, out Int32&, out Int32&, out Int32&) -> Void

(defun equals (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Rectangle.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" args))

(defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Rectangle.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" obj))

(defun equals-rectangle (obj other)
  "Calls Microsoft.Xna.Framework.Rectangle.Equals Equals(Rectangle) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" other))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "GetHashCode"))

(defun inflate (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Rectangle.Inflate overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" args))

(defun inflate-int32-int32 (obj horizontal-amount vertical-amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Inflate Inflate(Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))

(defun inflate-single-single (obj horizontal-amount vertical-amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Inflate Inflate(Single, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))

(defun intersect (value1 value2)
  (dotnet:static <type-str> "Intersect" (the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersect also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersect(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

(defun intersects (obj value)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Intersects" value))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersects also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersects(ref Rectangle&, out Boolean&) -> Void

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(defun offset (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Rectangle.Offset overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" args))

(defun offset-point (obj amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Point) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))

(defun offset-vector2 (obj amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Vector2) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))

(defun offset-int32-int32 (obj offset-x offset-y)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" offset-x offset-y))

(defun offset-single-single (obj offset-x offset-y)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Single, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" offset-x offset-y))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "ToString"))

(defun union (value1 value2)
  (dotnet:static <type-str> "Union" (the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Union also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Union(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

