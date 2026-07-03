;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-input-game-pad-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadState")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadState")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadState. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-game-pad-thumb-sticks-game-pad-triggers-game-pad-buttons-game-pad-d-pad (thumb-sticks triggers buttons d-pad)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(GamePadThumbSticks, GamePadTriggers, GamePadButtons, GamePadDPad)"
  (dotnet:new <type-str> thumb-sticks triggers buttons d-pad))

(cl:defun new-vector2-vector2-single-single-buttons (left-thumb-stick right-thumb-stick left-trigger right-trigger button)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(Vector2, Vector2, Single, Single, Buttons)"
  (dotnet:new <type-str> left-thumb-stick right-thumb-stick left-trigger right-trigger button))

(cl:defun new-vector2-vector2-single-single-buttons[] (left-thumb-stick right-thumb-stick left-trigger right-trigger buttons)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(Vector2, Vector2, Single, Single, Buttons[])"
  (dotnet:new <type-str> left-thumb-stick right-thumb-stick left-trigger right-trigger buttons))

(cl:define-symbol-macro default (dotnet:static <type-str> "Default"))

(cl:defun buttons (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Buttons"))

(cl:defun d-pad (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_DPad"))

(cl:defun connected? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_IsConnected"))

(cl:defun packet-number (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_PacketNumber"))

(cl:defun thumb-sticks (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_ThumbSticks"))

(cl:defun triggers (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Triggers"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(cl:defun equals (obj obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "GetHashCode"))

(cl:defun button-down? (obj button)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonDown" button))

(cl:defun button-up? (obj button)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonUp" button))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "ToString"))

