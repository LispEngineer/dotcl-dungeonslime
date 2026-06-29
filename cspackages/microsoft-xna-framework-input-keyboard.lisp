;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 15
;;; Creation Date: 2026-06-29T00:58:26Z

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
(cl:defconstant <creation> "2026-06-29T00:58:26Z")
(cl:defconstant <version> 15)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard")))

(cl:defun get-state (cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.Keyboard.GetState overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "GetState" args))

(cl:defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState() -> KeyboardState"
  (dotnet:static <type-str> "GetState"))

(cl:defun get-state-player-index (player-index)
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState(PlayerIndex) -> KeyboardState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index)))

