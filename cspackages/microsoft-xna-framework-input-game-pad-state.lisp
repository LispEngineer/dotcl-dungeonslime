;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :microsoft-xna-framework-input-game-pad-state)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadState")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new (cl:&optional (thumb-sticks cl:nil supplied-thumb-sticks) (triggers cl:nil supplied-triggers) (buttons cl:nil supplied-buttons) (d-pad cl:nil supplied-d-pad) (button cl:nil supplied-button))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePadState constructor overloads. Dispatches at runtime.

new()

new(GamePadThumbSticks, GamePadTriggers, GamePadButtons, GamePadDPad)

new(Vector2, Vector2, Single, Single, Buttons)

new(Vector2, Vector2, Single, Single, Buttons[])
"
  (cl:cond
    ((cl:and supplied-thumb-sticks (cl:or (cl:null thumb-sticks) (dotnet:is-instance-of thumb-sticks "Microsoft.Xna.Framework.Vector2")) supplied-triggers (cl:or (cl:null triggers) (dotnet:is-instance-of triggers "Microsoft.Xna.Framework.Vector2")) supplied-buttons (cl:numberp buttons) supplied-d-pad (cl:numberp d-pad) supplied-button (cl:or (cl:null button) (dotnet:is-instance-of button "Microsoft.Xna.Framework.Input.Buttons")))
     (dotnet:new <type-str> thumb-sticks triggers buttons d-pad button))
    ((cl:and supplied-thumb-sticks (cl:or (cl:null thumb-sticks) (dotnet:is-instance-of thumb-sticks "Microsoft.Xna.Framework.Vector2")) supplied-triggers (cl:or (cl:null triggers) (dotnet:is-instance-of triggers "Microsoft.Xna.Framework.Vector2")) supplied-buttons (cl:numberp buttons) supplied-d-pad (cl:numberp d-pad) supplied-button (cl:or (cl:null button) (dotnet:is-instance-of button "Microsoft.Xna.Framework.Input.Buttons[]")))
     (dotnet:new <type-str> thumb-sticks triggers buttons d-pad button))
    ((cl:and supplied-thumb-sticks (cl:or (cl:null thumb-sticks) (dotnet:is-instance-of thumb-sticks "Microsoft.Xna.Framework.Input.GamePadThumbSticks")) supplied-triggers (cl:or (cl:null triggers) (dotnet:is-instance-of triggers "Microsoft.Xna.Framework.Input.GamePadTriggers")) supplied-buttons (cl:or (cl:null buttons) (dotnet:is-instance-of buttons "Microsoft.Xna.Framework.Input.GamePadButtons")) supplied-d-pad (cl:or (cl:null d-pad) (dotnet:is-instance-of d-pad "Microsoft.Xna.Framework.Input.GamePadDPad")) (cl:not supplied-button))
     (dotnet:new <type-str> thumb-sticks triggers buttons d-pad))
    ((cl:and (cl:not supplied-thumb-sticks) (cl:not supplied-triggers) (cl:not supplied-buttons) (cl:not supplied-d-pad) (cl:not supplied-button))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD-STATE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-thumb-sticks (cl:list :thumb-sticks thumb-sticks)) (cl:when supplied-triggers (cl:list :triggers triggers)) (cl:when supplied-buttons (cl:list :buttons buttons)) (cl:when supplied-d-pad (cl:list :d-pad d-pad)) (cl:when supplied-button (cl:list :button button)))))))

(cl:define-symbol-macro default (dotnet:static <type-str> "Default"))

(cl:defun buttons (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_Buttons"))

(cl:defun d-pad (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_DPad"))

(cl:defun connected? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_IsConnected"))

(cl:defun packet-number (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_PacketNumber"))

(cl:defun thumb-sticks (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_ThumbSticks"))

(cl:defun triggers (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "get_Triggers"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "GetHashCode"))

(cl:defun button-down? (obj! button)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "IsButtonDown" button))

(cl:defun button-up? (obj! button)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "IsButtonUp" button))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj!) "ToString"))

