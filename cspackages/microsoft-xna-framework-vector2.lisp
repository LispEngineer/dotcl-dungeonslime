;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Vector2
;;; Generator Version: 3
;;; Creation Date: 2026-06-14T12:27:24Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-vector2
  (:use :cl)
  (:shadow
   #:/=
   #:+
   #:=
   #:length
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:one
   #:unit-x
   #:unit-y
   #:zero
   #:/=
   #:+
   #:=
   #:get-hash-code
   #:length
   #:length-squared
   #:to-numerics
   #:to-point
   #:to-string
  ))

(in-package :microsoft-xna-framework-vector2)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Vector2"))
(defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
(defconstant <creation> "2026-06-14T12:27:24Z")
(defconstant <version> 3)

(define-symbol-macro one (dotnet:static <type-str> "One"))

(define-symbol-macro unit-x (dotnet:static <type-str> "UnitX"))

(define-symbol-macro unit-y (dotnet:static <type-str> "UnitY"))

(define-symbol-macro zero (dotnet:static <type-str> "Zero"))

(defun /= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" value1 value2))

(defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" value1 value2))

(defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" value1 value2))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun length (obj)
  (dotnet:invoke obj "Length"))

(defun length-squared (obj)
  (dotnet:invoke obj "LengthSquared"))

(defun to-numerics (obj)
  (dotnet:invoke obj "ToNumerics"))

(defun to-point (obj)
  (dotnet:invoke obj "ToPoint"))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

