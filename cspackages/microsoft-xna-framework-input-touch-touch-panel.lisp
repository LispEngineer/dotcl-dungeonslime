;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchPanel
;;; Generator Version: 47
;;; Creation Date: 2026-07-11T23:07:59Z

(cl:in-package :microsoft-xna-framework-input-touch-touch-panel)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchPanel"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchPanel")
(cl:defconstant <creation> "2026-07-11T23:07:59Z")
(cl:defconstant <version> 47)

(cl:define-symbol-macro gesture-available? (dotnet:static <type-str> "IsGestureAvailable"))

(cl:defun display-height ()
  (dotnet:static <type-str> "DisplayHeight"))

(cl:defun (cl:setf display-height) (new-value)
  (cl:setf (dotnet:static <type-str> "DisplayHeight") new-value))

(cl:defun display-orientation ()
  (dotnet:static <type-str> "DisplayOrientation"))

(cl:defun (cl:setf display-orientation) (new-value)
  (cl:setf (dotnet:static <type-str> "DisplayOrientation") new-value))

(cl:defun display-width ()
  (dotnet:static <type-str> "DisplayWidth"))

(cl:defun (cl:setf display-width) (new-value)
  (cl:setf (dotnet:static <type-str> "DisplayWidth") new-value))

(cl:defun enabled-gestures ()
  (dotnet:static <type-str> "EnabledGestures"))

(cl:defun (cl:setf enabled-gestures) (new-value)
  (cl:setf (dotnet:static <type-str> "EnabledGestures") new-value))

(cl:defun enable-high-frequency-touch ()
  (dotnet:static <type-str> "EnableHighFrequencyTouch"))

(cl:defun (cl:setf enable-high-frequency-touch) (new-value)
  (cl:setf (dotnet:static <type-str> "EnableHighFrequencyTouch") new-value))

(cl:defun enable-mouse-gestures ()
  (dotnet:static <type-str> "EnableMouseGestures"))

(cl:defun (cl:setf enable-mouse-gestures) (new-value)
  (cl:setf (dotnet:static <type-str> "EnableMouseGestures") new-value))

(cl:defun enable-mouse-touch-point ()
  (dotnet:static <type-str> "EnableMouseTouchPoint"))

(cl:defun (cl:setf enable-mouse-touch-point) (new-value)
  (cl:setf (dotnet:static <type-str> "EnableMouseTouchPoint") new-value))

(cl:defun window-handle ()
  (dotnet:static <type-str> "WindowHandle"))

(cl:defun (cl:setf window-handle) (new-value)
  (cl:setf (dotnet:static <type-str> "WindowHandle") new-value))

(cl:defun get-capabilities ()
  (dotnet:static <type-str> "GetCapabilities"))

(cl:defun get-state (cl:&optional (window cl:nil supplied-window))
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchPanel.GetState overloads. Dispatches at runtime.

GetState() -> TouchCollection

GetState(GameWindow) -> TouchPanelState
"
  (cl:cond
    ((cl:and supplied-window (cl:or (cl:null window) (dotnet:object-type window)))
     (dotnet:static <type-str> "GetState" window))
    ((cl:and (cl:not supplied-window))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-PANEL"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-window (cl:list :window window)))))))

(cl:defun read-gesture ()
  (dotnet:static <type-str> "ReadGesture"))

