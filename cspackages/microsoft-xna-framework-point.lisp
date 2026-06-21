;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Point
;;; Generator Version: 10
;;; Creation Date: 2026-06-21T22:33:34Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-point
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+zero+
   #:-
   #:*
   #:/
   #:+
   #:=
   #:equals
   #:equals-object
   #:equals-point
   #:get-hash-code
   #:not=
   #:to-string
   #:to-vector2
  ))

(in-package :microsoft-xna-framework-point)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Point"))
(defconstant <type-str> "Microsoft.Xna.Framework.Point")
(defconstant <creation> "2026-06-21T22:33:34Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Point")))

(defconstant +zero+ (dotnet:static <type-str> "Zero"))

(defun - (value1 value2)
  (dotnet:static <type-str> "op_Subtraction" (the (dotnet "Microsoft.Xna.Framework.Point") value1) (the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(defun * (value1 value2)
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "Microsoft.Xna.Framework.Point") value1) (the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(defun / (source divisor)
  (dotnet:static <type-str> "op_Division" (the (dotnet "Microsoft.Xna.Framework.Point") source) (the (dotnet "Microsoft.Xna.Framework.Point") divisor)))

(defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" (the (dotnet "Microsoft.Xna.Framework.Point") value1) (the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Point") a) (the (dotnet "Microsoft.Xna.Framework.Point") b)))

;; The following C# Microsoft.Xna.Framework.Point.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Int32&, out Int32&) -> Void

(defun equals (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Point.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" args))

(defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Point.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" obj))

(defun equals-point (obj other)
  "Calls Microsoft.Xna.Framework.Point.Equals Equals(Point) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" other))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "GetHashCode"))

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Point") a) (the (dotnet "Microsoft.Xna.Framework.Point") b)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "ToString"))

(defun to-vector2 (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Point") obj) "ToVector2"))

