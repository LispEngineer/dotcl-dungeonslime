;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePad
;;; Generator Version: 15
;;; Creation Date: 2026-06-29T00:58:33Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-game-pad
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:maximum-game-pad-count
   #:get-capabilities
   #:get-capabilities-player-index
   #:get-capabilities-int32
   #:get-state
   #:get-state-player-index
   #:get-state-int32
   #:get-state-player-index-game-pad-dead-zone
   #:get-state-int32-game-pad-dead-zone
   #:get-state-player-index-game-pad-dead-zone-game-pad-dead-zone
   #:get-state-int32-game-pad-dead-zone-game-pad-dead-zone
   #:set-vibration
   #:set-vibration-player-index-single-single
   #:set-vibration-int32-single-single
   #:set-vibration-player-index-single-single-single-single
   #:set-vibration-int32-single-single-single-single
  ))

(cl:in-package :microsoft-xna-framework-input-game-pad)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePad"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePad")
(cl:defconstant <creation> "2026-06-29T00:58:33Z")
(cl:defconstant <version> 15)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePad")))

(cl:define-symbol-macro maximum-game-pad-count (dotnet:static <type-str> "MaximumGamePadCount"))

(cl:defun get-capabilities (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.GamePad.GetCapabilities overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "GetCapabilities" args))

(cl:defun get-capabilities-player-index (player-index)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetCapabilities GetCapabilities(PlayerIndex) -> GamePadCapabilities"
  (dotnet:static <type-str> "GetCapabilities" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index)))

(cl:defun get-capabilities-int32 (index)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetCapabilities GetCapabilities(Int32) -> GamePadCapabilities"
  (dotnet:static <type-str> "GetCapabilities" (cl:the (dotnet "System.Int32") index)))

(cl:defun get-state (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.GamePad.GetState overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "GetState" args))

(cl:defun get-state-player-index (player-index)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(PlayerIndex) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index)))

(cl:defun get-state-int32 (index)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(Int32) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "System.Int32") index)))

(cl:defun get-state-player-index-game-pad-dead-zone (player-index dead-zone-mode)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(PlayerIndex, GamePadDeadZone) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") dead-zone-mode)))

(cl:defun get-state-int32-game-pad-dead-zone (index dead-zone-mode)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(Int32, GamePadDeadZone) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") dead-zone-mode)))

(cl:defun get-state-player-index-game-pad-dead-zone-game-pad-dead-zone (player-index left-dead-zone-mode right-dead-zone-mode)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(PlayerIndex, GamePadDeadZone, GamePadDeadZone) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") left-dead-zone-mode) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") right-dead-zone-mode)))

(cl:defun get-state-int32-game-pad-dead-zone-game-pad-dead-zone (index left-dead-zone-mode right-dead-zone-mode)
  "Calls Microsoft.Xna.Framework.Input.GamePad.GetState GetState(Int32, GamePadDeadZone, GamePadDeadZone) -> GamePadState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") left-dead-zone-mode) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDeadZone") right-dead-zone-mode)))

(cl:defun set-vibration (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.GamePad.SetVibration overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "SetVibration" args))

(cl:defun set-vibration-player-index-single-single (player-index left-motor right-motor)
  "Calls Microsoft.Xna.Framework.Input.GamePad.SetVibration SetVibration(PlayerIndex, Single, Single) -> Boolean"
  (dotnet:static <type-str> "SetVibration" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index) (cl:the (dotnet "System.Single") left-motor) (cl:the (dotnet "System.Single") right-motor)))

(cl:defun set-vibration-int32-single-single (index left-motor right-motor)
  "Calls Microsoft.Xna.Framework.Input.GamePad.SetVibration SetVibration(Int32, Single, Single) -> Boolean"
  (dotnet:static <type-str> "SetVibration" (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "System.Single") left-motor) (cl:the (dotnet "System.Single") right-motor)))

(cl:defun set-vibration-player-index-single-single-single-single (player-index left-motor right-motor left-trigger right-trigger)
  "Calls Microsoft.Xna.Framework.Input.GamePad.SetVibration SetVibration(PlayerIndex, Single, Single, Single, Single) -> Boolean"
  (dotnet:static <type-str> "SetVibration" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index) (cl:the (dotnet "System.Single") left-motor) (cl:the (dotnet "System.Single") right-motor) (cl:the (dotnet "System.Single") left-trigger) (cl:the (dotnet "System.Single") right-trigger)))

(cl:defun set-vibration-int32-single-single-single-single (index left-motor right-motor left-trigger right-trigger)
  "Calls Microsoft.Xna.Framework.Input.GamePad.SetVibration SetVibration(Int32, Single, Single, Single, Single) -> Boolean"
  (dotnet:static <type-str> "SetVibration" (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "System.Single") left-motor) (cl:the (dotnet "System.Single") right-motor) (cl:the (dotnet "System.Single") left-trigger) (cl:the (dotnet "System.Single") right-trigger)))

