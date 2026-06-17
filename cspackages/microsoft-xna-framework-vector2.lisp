;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Vector2
;;; Generator Version: 8
;;; Creation Date: 2026-06-17T20:33:57Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-vector2
  (:use :cl)
  (:shadow
   #:+
   #:=
   #:length
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+one+
   #:+unit-x+
   #:+unit-y+
   #:+zero+
   #:+
   #:=
   #:get-hash-code
   #:implicit-cast
   #:length
   #:length-squared
   #:not=
   #:to-numerics
   #:to-point
   #:to-string
  ))

(in-package :microsoft-xna-framework-vector2)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Vector2"))
(defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
(defconstant <creation> "2026-06-17T20:33:57Z")
(defconstant <version> 8)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))

(defconstant +one+ (dotnet:static <type-str> "One"))

(defconstant +unit-x+ (dotnet:static <type-str> "UnitX"))

(defconstant +unit-y+ (dotnet:static <type-str> "UnitY"))

(defconstant +zero+ (dotnet:static <type-str> "Zero"))

(defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" value1 value2))

(defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" value1 value2))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" value))

(defun length (obj)
  (dotnet:invoke obj "Length"))

(defun length-squared (obj)
  (dotnet:invoke obj "LengthSquared"))

(defun not= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" value1 value2))

(defun to-numerics (obj)
  (dotnet:invoke obj "ToNumerics"))

(defun to-point (obj)
  (dotnet:invoke obj "ToPoint"))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

