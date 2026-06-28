;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:30:43Z

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
   #:new
   #:new-button-state-button-state-button-state-button-state
   #:down
   #:left
   #:right
   #:up
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-d-pad)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(defconstant <creation> "2026-06-28T22:30:43Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadDPad. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-button-state-button-state-button-state-button-state (up-value down-value left-value right-value)
  "Calls Microsoft.Xna.Framework.Input.GamePadDPad constructor new(ButtonState, ButtonState, ButtonState, ButtonState)"
  (dotnet:new <type-str> up-value down-value left-value right-value))

(defun down (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Down"))

(defun left (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Left"))

(defun right (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Right"))

(defun up (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Up"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "ToString"))

