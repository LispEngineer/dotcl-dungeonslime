;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-game-pad-d-pad
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

(cl:in-package :microsoft-xna-framework-input-game-pad-d-pad)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadDPad. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-button-state-button-state-button-state-button-state (up-value down-value left-value right-value)
  "Calls Microsoft.Xna.Framework.Input.GamePadDPad constructor new(ButtonState, ButtonState, ButtonState, ButtonState)"
  (dotnet:new <type-str> up-value down-value left-value right-value))

(cl:defun down (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Down"))

(cl:defun left (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Left"))

(cl:defun right (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Right"))

(cl:defun up (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Up"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(cl:defun equals (obj obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "ToString"))

