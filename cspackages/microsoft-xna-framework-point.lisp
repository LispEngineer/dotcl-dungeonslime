;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Point
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:18Z

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
   #:get-hash-code
   #:not=
   #:to-string
   #:to-vector2
  ))

(in-package :microsoft-xna-framework-point)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Point"))
(defconstant <type-str> "Microsoft.Xna.Framework.Point")
(defconstant <creation> "2026-06-20T20:20:18Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Point")))

(defconstant +zero+ (dotnet:static <type-str> "Zero"))

(defun - (value1 value2)
  (dotnet:static <type-str> "op_Subtraction" value1 value2))

(defun * (value1 value2)
  (dotnet:static <type-str> "op_Multiply" value1 value2))

(defun / (source divisor)
  (dotnet:static <type-str> "op_Division" source divisor))

(defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" value1 value2))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" a b))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" a b))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

(defun to-vector2 (obj)
  (dotnet:invoke obj "ToVector2"))

