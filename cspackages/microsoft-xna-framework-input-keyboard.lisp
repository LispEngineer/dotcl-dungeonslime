;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 11
;;; Creation Date: 2026-06-28T01:13:24Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-keyboard
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-state
   #:get-state-player-index
  ))

(in-package :microsoft-xna-framework-input-keyboard)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Keyboard"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(defconstant <creation> "2026-06-28T01:13:24Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard")))

(defun get-state (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.Keyboard.GetState overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "GetState" args))

(defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState() -> KeyboardState"
  (dotnet:static <type-str> "GetState"))

(defun get-state-player-index (player-index)
  "Calls Microsoft.Xna.Framework.Input.Keyboard.GetState GetState(PlayerIndex) -> KeyboardState"
  (dotnet:static <type-str> "GetState" (the (dotnet "Microsoft.Xna.Framework.PlayerIndex") player-index)))

