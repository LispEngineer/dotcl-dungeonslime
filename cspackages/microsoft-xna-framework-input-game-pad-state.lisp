;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 11
;;; Creation Date: 2026-06-26T00:57:13Z

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
   #:new
   #:new-game-pad-thumb-sticks-game-pad-triggers-game-pad-buttons-game-pad-d-pad
   #:new-vector2-vector2-single-single-buttons
   #:new-vector2-vector2-single-single-buttons[]
   #:+default+
   #:buttons
   #:d-pad
   #:is-connected
   #:packet-number
   #:thumb-sticks
   #:triggers
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
(defconstant <creation> "2026-06-26T00:57:13Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadState")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadState. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-game-pad-thumb-sticks-game-pad-triggers-game-pad-buttons-game-pad-d-pad (thumb-sticks triggers buttons d-pad)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(GamePadThumbSticks, GamePadTriggers, GamePadButtons, GamePadDPad)"
  (dotnet:new <type-str> thumb-sticks triggers buttons d-pad))

(defun new-vector2-vector2-single-single-buttons (left-thumb-stick right-thumb-stick left-trigger right-trigger button)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(Vector2, Vector2, Single, Single, Buttons)"
  (dotnet:new <type-str> left-thumb-stick right-thumb-stick left-trigger right-trigger button))

(defun new-vector2-vector2-single-single-buttons[] (left-thumb-stick right-thumb-stick left-trigger right-trigger buttons)
  "Calls Microsoft.Xna.Framework.Input.GamePadState constructor new(Vector2, Vector2, Single, Single, Buttons[])"
  (dotnet:new <type-str> left-thumb-stick right-thumb-stick left-trigger right-trigger buttons))

(defconstant +default+ (dotnet:static <type-str> "Default"))

(defun buttons (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Buttons"))

(defun d-pad (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_DPad"))

(defun is-connected (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_IsConnected"))

(defun packet-number (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_PacketNumber"))

(defun thumb-sticks (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_ThumbSticks"))

(defun triggers (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Triggers"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "GetHashCode"))

(defun is-button-down (obj button)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonDown" button))

(defun is-button-up (obj button)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonUp" button))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "ToString"))

