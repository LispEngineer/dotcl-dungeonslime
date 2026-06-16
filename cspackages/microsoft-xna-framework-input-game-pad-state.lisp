;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 3
;;; Creation Date: 2026-06-16T12:41:40Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-state
  (:use :cl)
  (:shadow
   #:/=
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:default
   #:/=
   #:=
   #:equals
   #:get-hash-code
   #:is-button-down
   #:is-button-up
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadState")
(defconstant <creation> "2026-06-16T12:41:40Z")
(defconstant <version> 3)

(define-symbol-macro default (dotnet:static <type-str> "Default"))

(defun /= (left right)
  (dotnet:static <type-str> "op_Inequality" left right))

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

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

