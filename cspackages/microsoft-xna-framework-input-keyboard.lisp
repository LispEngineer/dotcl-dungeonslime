;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-keyboard
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-state
   #:get-state-player-index
  ))

(cl:in-package :microsoft-xna-framework-input-keyboard)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Keyboard"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard")))

(cl:defun get-state (cl:&optional (player-index cl:nil supplied-player-index))
  "Master wrapper for Microsoft.Xna.Framework.Input.Keyboard.GetState overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-player-index (cl:or (cl:null player-index) (monoutils:dotnet-p player-index)))
     (dotnet:static <type-str> "GetState" player-index))
    ((cl:and (cl:not supplied-player-index))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-KEYBOARD"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-player-index (cl:list :player-index player-index)))))))

(cl:defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState() -> KeyboardState"
  (dotnet:static <type-str> "GetState"))

(cl:defun get-state-player-index (player-index)
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState(PlayerIndex) -> KeyboardState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index)))

