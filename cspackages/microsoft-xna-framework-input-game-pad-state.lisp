;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 6
;;; Creation Date: 2026-06-17T18:02:40Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-state
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+default+
   #:=
   #:equals
   #:get-hash-code
   #:is-button-down
   #:is-button-up
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadState")
(defconstant <creation> "2026-06-17T18:02:40Z")
(defconstant <version> 6)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadState")))

(defconstant +default+ (dotnet:static <type-str> "Default"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" left right))

(defun equals (obj obj)
  (dotnet:invoke obj "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun is-button-down (obj button)
  (dotnet:invoke obj "IsButtonDown" button))

(defun is-button-up (obj button)
  (dotnet:invoke obj "IsButtonUp" button))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" left right))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

