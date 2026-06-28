;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T14:09:39Z

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
   #:new
   #:caps-lock
   #:item
   #:num-lock
   #:=
   #:equals
   #:get-hash-code
   #:get-pressed-key-count
   #:get-pressed-keys
   #:get-pressed-keys-keys[]
   #:is-key-down
   #:is-key-up
   #:not=
  ))

(in-package :microsoft-xna-framework-input-keyboard-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.KeyboardState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.KeyboardState")
(defconstant <creation> "2026-06-28T14:09:39Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.KeyboardState")))

(defun new ()
  (dotnet:new <type-str>))

;; Note: Microsoft.Xna.Framework.Input.KeyboardState also has the following constructors with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   new(params Keys[])
;;   new(Keys[], Boolean, Boolean)

(defun caps-lock (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "get_CapsLock"))

(defun item (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "get_Item"))

(defun num-lock (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "get_NumLock"))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") a) (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") b)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "GetHashCode"))

(defun get-pressed-key-count (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "GetPressedKeyCount"))

(defun get-pressed-keys (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.KeyboardState.GetPressedKeys overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "GetPressedKeys" args))

(defun get-pressed-keys (obj)
  "Calls Microsoft.Xna.Framework.Input.KeyboardState.GetPressedKeys GetPressedKeys() -> Keys[]"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "GetPressedKeys"))

(defun get-pressed-keys-keys[] (obj keys)
  "Calls Microsoft.Xna.Framework.Input.KeyboardState.GetPressedKeys GetPressedKeys(Keys[]) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "GetPressedKeys" keys))

(defun is-key-down (obj key)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "IsKeyDown" key))

(defun is-key-up (obj key)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj) "IsKeyUp" key))

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") a) (the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") b)))

