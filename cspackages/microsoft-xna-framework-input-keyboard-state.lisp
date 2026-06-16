;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Generator Version: 3
;;; Creation Date: 2026-06-16T12:41:34Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-keyboard-state
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
   #:/=
   #:=
   #:equals
   #:get-hash-code
   #:get-pressed-key-count
   #:is-key-down
   #:is-key-up
  ))

(in-package :microsoft-xna-framework-input-keyboard-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.KeyboardState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.KeyboardState")
(defconstant <creation> "2026-06-16T12:41:34Z")
(defconstant <version> 3)

(defun /= (a b)
  (dotnet:static <type-str> "op_Inequality" a b))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" a b))

(defun equals (obj obj)
  (dotnet:invoke obj "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun get-pressed-key-count (obj)
  (dotnet:invoke obj "GetPressedKeyCount"))

(defun is-key-down (obj key)
  (dotnet:invoke obj "IsKeyDown" key))

(defun is-key-up (obj key)
  (dotnet:invoke obj "IsKeyUp" key))

