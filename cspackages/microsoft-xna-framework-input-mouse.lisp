;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Mouse
;;; Generator Version: 32
;;; Creation Date: 2026-07-05T03:51:54Z

(cl:in-package :microsoft-xna-framework-input-mouse)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Mouse"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Mouse")
(cl:defconstant <creation> "2026-07-05T03:51:54Z")
(cl:defconstant <version> 32)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Mouse")))

(cl:defun window-handle ()
  (dotnet:static <type-str> "WindowHandle"))

(cl:defun (cl:setf window-handle) (new-value)
  (cl:setf (dotnet:static <type-str> "WindowHandle") new-value))

(cl:defun get-state (cl:&optional (window cl:nil supplied-window))
  "Master wrapper for Microsoft.Xna.Framework.Input.Mouse.GetState overloads. Dispatches at runtime.

GetState() -> MouseState

GetState(GameWindow) -> MouseState
"
  (cl:cond
    ((cl:and supplied-window (cl:or (cl:null window) (dotnet:object-type window)))
     (dotnet:static <type-str> "GetState" window))
    ((cl:and (cl:not supplied-window))
     (dotnet:static <type-str> "GetState"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-MOUSE"
                    :class-name <type-str>
                    :method-name "GetState"
                    :supplied-args (cl:append (cl:when supplied-window (cl:list :window window)))))))

(cl:defun set-cursor (cursor)
  (dotnet:static <type-str> "SetCursor" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseCursor") cursor)))

(cl:defun set-position (x y)
  (dotnet:static <type-str> "SetPosition" (cl:the (dotnet "System.Int32") x) (cl:the (dotnet "System.Int32") y)))

