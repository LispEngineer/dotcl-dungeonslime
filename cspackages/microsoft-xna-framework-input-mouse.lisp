;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Mouse
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-mouse
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

(cl:in-package :microsoft-xna-framework-input-mouse)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Mouse"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Mouse")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Mouse")))

(cl:defun get-state (cl:&optional (window cl:nil supplied-window))
  "Master wrapper for Microsoft.Xna.Framework.Input.Mouse.GetState overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-window (cl:or (cl:null window) (monoutils:dotnet-p window)))
     (dotnet:static <type-str> "GetState" window))
    ((cl:and (cl:not supplied-window))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-MOUSE"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-window (cl:list :window window)))))))

(cl:defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Mouse.GetState GetState() -> MouseState"
  (dotnet:static <type-str> "GetState"))

(cl:defun get-state-game-window (window)
  "Calls Microsoft.Xna.Framework.Input.Mouse.GetState GetState(GameWindow) -> MouseState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") window)))

(cl:defun set-cursor (cursor)
  (dotnet:static <type-str> "SetCursor" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseCursor") cursor)))

(cl:defun set-position (x y)
  (dotnet:static <type-str> "SetPosition" (cl:the (dotnet "System.Int32") x) (cl:the (dotnet "System.Int32") y)))

