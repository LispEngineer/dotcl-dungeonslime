;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :microsoft-xna-framework-input-keyboard)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

(cl:defun get-state (cl:&optional (player-index cl:nil supplied-player-index))
  "Master wrapper for Microsoft.Xna.Framework.Input.Keyboard.GetState overloads. Dispatches at runtime.

GetState() -> KeyboardState

GetState(PlayerIndex) -> KeyboardState
"
  (cl:cond
    ((cl:and supplied-player-index (cl:or (cl:null player-index) (dotnet:object-type player-index)))
     (dotnet:static <type-str> "GetState" player-index))
    ((cl:and (cl:not supplied-player-index))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-KEYBOARD"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-player-index (cl:list :player-index player-index)))))))

