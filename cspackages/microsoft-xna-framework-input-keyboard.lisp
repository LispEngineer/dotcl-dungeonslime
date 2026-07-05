;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 37
;;; Creation Date: 2026-07-05T18:56:35Z

(cl:in-package :microsoft-xna-framework-input-keyboard)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(cl:defconstant <creation> "2026-07-05T18:56:35Z")
(cl:defconstant <version> 37)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard")))

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

