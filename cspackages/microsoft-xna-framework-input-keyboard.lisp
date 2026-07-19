;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :microsoft-xna-framework-input-keyboard)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun get-state (cl:&optional (player-index cl:nil supplied-player-index))
  "Master wrapper for Microsoft.Xna.Framework.Input.Keyboard.GetState overloads. Dispatches at runtime.

GetState() -> KeyboardState

GetState(PlayerIndex) -> KeyboardState
  OBSOLETE: Use GetState() instead. In future versions this method can be removed.
"
  (cl:cond
    ((cl:and supplied-player-index (cl:or (cl:null player-index) (dotnet:is-instance-of player-index "Microsoft.Xna.Framework.PlayerIndex")))
     (dotnet:static <type-str> "GetState" player-index))
    ((cl:and (cl:not supplied-player-index))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-KEYBOARD"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-player-index (cl:list :player-index player-index)))))))

