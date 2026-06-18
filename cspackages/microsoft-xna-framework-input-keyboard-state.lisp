;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Generator Version: 9
;;; Creation Date: 2026-06-18T02:00:11Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-keyboard-state
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:caps-lock
   #:item
   #:num-lock
   #:=
   #:equals
   #:get-hash-code
   #:get-pressed-key-count
   #:is-key-down
   #:is-key-up
   #:not=
  ))

(in-package :microsoft-xna-framework-input-keyboard-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.KeyboardState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.KeyboardState")
(defconstant <creation> "2026-06-18T02:00:11Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.KeyboardState")))

(defun caps-lock (obj)
  (dotnet:invoke obj "get_CapsLock"))

(defun item (obj)
  (dotnet:invoke obj "get_Item"))

(defun num-lock (obj)
  (dotnet:invoke obj "get_NumLock"))

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

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" a b))

