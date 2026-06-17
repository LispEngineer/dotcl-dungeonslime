;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 5
;;; Creation Date: 2026-06-16T22:31:10Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-d-pad
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-d-pad)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(defconstant <creation> "2026-06-16T22:31:10Z")
(defconstant <version> 5)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad")))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" left right))

(defun equals (obj obj)
  (dotnet:invoke obj "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" left right))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

