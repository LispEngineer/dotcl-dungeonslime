;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePad
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :microsoft-xna-framework-input-game-pad)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePad"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePad")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePad")))

(cl:define-symbol-macro maximum-game-pad-count (dotnet:static <type-str> "MaximumGamePadCount"))

(cl:defun get-capabilities (player-index)
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePad.GetCapabilities overloads. Dispatches at runtime.

GetCapabilities(PlayerIndex) -> GamePadCapabilities

GetCapabilities(Int32) -> GamePadCapabilities
"
  (cl:cond
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)))
     (dotnet:static <type-str> "GetCapabilities" player-index))
    ((cl:and (cl:numberp player-index))
     (dotnet:static <type-str> "GetCapabilities" player-index))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD"
                    :class-name <type-str>
                    :method-name "GetCapabilities"
                    :supplied-args (cl:append (cl:list :player-index player-index))))))

(cl:defun get-state (player-index cl:&optional (dead-zone-mode cl:nil supplied-dead-zone-mode) (right-dead-zone-mode cl:nil supplied-right-dead-zone-mode))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePad.GetState overloads. Dispatches at runtime.

GetState(PlayerIndex) -> GamePadState

GetState(Int32) -> GamePadState

GetState(PlayerIndex, GamePadDeadZone) -> GamePadState

GetState(Int32, GamePadDeadZone) -> GamePadState

GetState(PlayerIndex, GamePadDeadZone, GamePadDeadZone) -> GamePadState

GetState(Int32, GamePadDeadZone, GamePadDeadZone) -> GamePadState
"
  (cl:cond
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)) supplied-dead-zone-mode (cl:or (cl:null dead-zone-mode) (dotnet:object-type dead-zone-mode)) supplied-right-dead-zone-mode (cl:or (cl:null right-dead-zone-mode) (dotnet:object-type right-dead-zone-mode)))
     (dotnet:static <type-str> "GetState" player-index dead-zone-mode right-dead-zone-mode))
    ((cl:and (cl:numberp player-index) supplied-dead-zone-mode (cl:or (cl:null dead-zone-mode) (dotnet:object-type dead-zone-mode)) supplied-right-dead-zone-mode (cl:or (cl:null right-dead-zone-mode) (dotnet:object-type right-dead-zone-mode)))
     (dotnet:static <type-str> "GetState" player-index dead-zone-mode right-dead-zone-mode))
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)) supplied-dead-zone-mode (cl:or (cl:null dead-zone-mode) (dotnet:object-type dead-zone-mode)) (cl:not supplied-right-dead-zone-mode))
     (dotnet:static <type-str> "GetState" player-index dead-zone-mode))
    ((cl:and (cl:numberp player-index) supplied-dead-zone-mode (cl:or (cl:null dead-zone-mode) (dotnet:object-type dead-zone-mode)) (cl:not supplied-right-dead-zone-mode))
     (dotnet:static <type-str> "GetState" player-index dead-zone-mode))
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)) (cl:not supplied-dead-zone-mode) (cl:not supplied-right-dead-zone-mode))
     (dotnet:static <type-str> "GetState" player-index))
    ((cl:and (cl:numberp player-index) (cl:not supplied-dead-zone-mode) (cl:not supplied-right-dead-zone-mode))
     (dotnet:static <type-str> "GetState" player-index))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:list :player-index player-index) (cl:when supplied-dead-zone-mode (cl:list :dead-zone-mode dead-zone-mode)) (cl:when supplied-right-dead-zone-mode (cl:list :right-dead-zone-mode right-dead-zone-mode)))))))

(cl:defun set-vibration (player-index left-motor right-motor cl:&optional (left-trigger cl:nil supplied-left-trigger) (right-trigger cl:nil supplied-right-trigger))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePad.SetVibration overloads. Dispatches at runtime.

SetVibration(PlayerIndex, Single, Single) -> Boolean

SetVibration(Int32, Single, Single) -> Boolean

SetVibration(PlayerIndex, Single, Single, Single, Single) -> Boolean

SetVibration(Int32, Single, Single, Single, Single) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)) (cl:numberp left-motor) (cl:numberp right-motor) supplied-left-trigger (cl:numberp left-trigger) supplied-right-trigger (cl:numberp right-trigger))
     (dotnet:static <type-str> "SetVibration" player-index left-motor right-motor left-trigger right-trigger))
    ((cl:and (cl:numberp player-index) (cl:numberp left-motor) (cl:numberp right-motor) supplied-left-trigger (cl:numberp left-trigger) supplied-right-trigger (cl:numberp right-trigger))
     (dotnet:static <type-str> "SetVibration" player-index left-motor right-motor left-trigger right-trigger))
    ((cl:and (cl:or (cl:null player-index) (dotnet:object-type player-index)) (cl:numberp left-motor) (cl:numberp right-motor) (cl:not supplied-left-trigger) (cl:not supplied-right-trigger))
     (dotnet:static <type-str> "SetVibration" player-index left-motor right-motor))
    ((cl:and (cl:numberp player-index) (cl:numberp left-motor) (cl:numberp right-motor) (cl:not supplied-left-trigger) (cl:not supplied-right-trigger))
     (dotnet:static <type-str> "SetVibration" player-index left-motor right-motor))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD"
                    :class-name <type-str>
                    :method-name "SetVibration"
                    :supplied-args (cl:append (cl:list :player-index player-index) (cl:list :left-motor left-motor) (cl:list :right-motor right-motor) (cl:when supplied-left-trigger (cl:list :left-trigger left-trigger)) (cl:when supplied-right-trigger (cl:list :right-trigger right-trigger)))))))

