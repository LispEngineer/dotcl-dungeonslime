;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchPanel
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-input-touch-touch-panel)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Touch.TouchPanel"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchPanel")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchPanel")))

(cl:define-symbol-macro gesture-available? (dotnet:static <type-str> "IsGestureAvailable"))

(cl:defun get-capabilities ()
  (dotnet:static <type-str> "GetCapabilities"))

(cl:defun get-state (cl:&optional (window cl:nil supplied-window))
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchPanel.GetState overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-window (cl:or (cl:null window) (monoutils:dotnet-p window)))
     (dotnet:static <type-str> "GetState" window))
    ((cl:and (cl:not supplied-window))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-PANEL"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-window (cl:list :window window)))))))

(cl:defun get-state ()
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchPanel.GetState GetState() -> TouchCollection"
  (dotnet:static <type-str> "GetState"))

(cl:defun get-state-game-window (window)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchPanel.GetState GetState(GameWindow) -> TouchPanelState"
  (dotnet:static <type-str> "GetState" (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") window)))

(cl:defun read-gesture ()
  (dotnet:static <type-str> "ReadGesture"))

