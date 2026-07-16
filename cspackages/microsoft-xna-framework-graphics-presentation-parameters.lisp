;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.PresentationParameters
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-graphics-presentation-parameters)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.PresentationParameters"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.PresentationParameters")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defvar %default-present-rate-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +default-present-rate+
  (cl:if (cl:eq %default-present-rate-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %default-present-rate-cache% (dotnet:static <type-str> "DefaultPresentRate"))
      %default-present-rate-cache%))

(cl:defun back-buffer-format (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_BackBufferFormat"))

(cl:defun (cl:setf back-buffer-format) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_BackBufferFormat" new-value))

(cl:defun back-buffer-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_BackBufferHeight"))

(cl:defun (cl:setf back-buffer-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_BackBufferHeight" new-value))

(cl:defun back-buffer-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_BackBufferWidth"))

(cl:defun (cl:setf back-buffer-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_BackBufferWidth" new-value))

(cl:defun bounds (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_Bounds"))

(cl:defun depth-stencil-format (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_DepthStencilFormat"))

(cl:defun (cl:setf depth-stencil-format) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_DepthStencilFormat" new-value))

(cl:defun device-window-handle (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_DeviceWindowHandle"))

(cl:defun (cl:setf device-window-handle) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_DeviceWindowHandle" new-value))

(cl:defun display-orientation (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_DisplayOrientation"))

(cl:defun (cl:setf display-orientation) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_DisplayOrientation" new-value))

(cl:defun hardware-mode-switch (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_HardwareModeSwitch"))

(cl:defun (cl:setf hardware-mode-switch) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_HardwareModeSwitch" new-value))

(cl:defun full-screen? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_IsFullScreen"))

(cl:defun (cl:setf full-screen?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_IsFullScreen" new-value))

(cl:defun multi-sample-count (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_MultiSampleCount"))

(cl:defun (cl:setf multi-sample-count) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_MultiSampleCount" new-value))

(cl:defun presentation-interval (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_PresentationInterval"))

(cl:defun (cl:setf presentation-interval) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_PresentationInterval" new-value))

(cl:defun render-target-usage (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "get_RenderTargetUsage"))

(cl:defun (cl:setf render-target-usage) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "set_RenderTargetUsage" new-value))

(cl:defun clear (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "Clear"))

(cl:defun clone (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj!) "Clone"))

