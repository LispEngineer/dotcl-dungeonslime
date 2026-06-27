;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Mouse
;;; Generator Version: 11
;;; Creation Date: 2026-06-27T13:31:47Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-mouse
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-state
   #:get-state-game-window
   #:set-cursor
   #:set-position
  ))

(in-package :microsoft-xna-framework-input-mouse)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Mouse"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.Mouse")
(defconstant <creation> "2026-06-27T13:31:47Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Mouse")))

(defun get-state (&rest args)
  "Passthrough for Microsoft.Xna.Framework.Input.Mouse.GetState overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "GetState" args))

(defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Mouse.GetState GetState() -> MouseState"
  (dotnet:static <type-str> "GetState"))

(defun get-state-game-window (window)
  "Calls Microsoft.Xna.Framework.Input.Mouse.GetState GetState(GameWindow) -> MouseState"
  (dotnet:static <type-str> "GetState" (the (dotnet "Microsoft.Xna.Framework.GameWindow") window)))

(defun set-cursor (cursor)
  (dotnet:static <type-str> "SetCursor" (the (dotnet "Microsoft.Xna.Framework.Input.MouseCursor") cursor)))

(defun set-position (x y)
  (dotnet:static <type-str> "SetPosition" (the (dotnet "System.Int32") x) (the (dotnet "System.Int32") y)))

