;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.PresentationParameters
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:44Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-presentation-parameters
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+default-present-rate+
   #:back-buffer-format
   #:back-buffer-height
   #:back-buffer-width
   #:bounds
   #:depth-stencil-format
   #:device-window-handle
   #:display-orientation
   #:hardware-mode-switch
   #:is-full-screen
   #:multi-sample-count
   #:presentation-interval
   #:render-target-usage
   #:clear
   #:clone
  ))

(cl:in-package :microsoft-xna-framework-graphics-presentation-parameters)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.PresentationParameters"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.PresentationParameters")
(cl:defconstant <creation> "2026-06-29T01:13:44Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.PresentationParameters")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defconstant +default-present-rate+ (dotnet:static <type-str> "DefaultPresentRate"))

(cl:defun back-buffer-format (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferFormat"))

(cl:defun (cl:setf back-buffer-format) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferFormat" new-value))

(cl:defun back-buffer-height (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferHeight"))

(cl:defun (cl:setf back-buffer-height) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferHeight" new-value))

(cl:defun back-buffer-width (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferWidth"))

(cl:defun (cl:setf back-buffer-width) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferWidth" new-value))

(cl:defun bounds (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_Bounds"))

(cl:defun depth-stencil-format (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DepthStencilFormat"))

(cl:defun (cl:setf depth-stencil-format) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DepthStencilFormat" new-value))

(cl:defun device-window-handle (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DeviceWindowHandle"))

(cl:defun (cl:setf device-window-handle) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DeviceWindowHandle" new-value))

(cl:defun display-orientation (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DisplayOrientation"))

(cl:defun (cl:setf display-orientation) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DisplayOrientation" new-value))

(cl:defun hardware-mode-switch (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_HardwareModeSwitch"))

(cl:defun (cl:setf hardware-mode-switch) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_HardwareModeSwitch" new-value))

(cl:defun is-full-screen (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_IsFullScreen"))

(cl:defun (cl:setf is-full-screen) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_IsFullScreen" new-value))

(cl:defun multi-sample-count (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_MultiSampleCount"))

(cl:defun (cl:setf multi-sample-count) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_MultiSampleCount" new-value))

(cl:defun presentation-interval (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_PresentationInterval"))

(cl:defun (cl:setf presentation-interval) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_PresentationInterval" new-value))

(cl:defun render-target-usage (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_RenderTargetUsage"))

(cl:defun (cl:setf render-target-usage) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_RenderTargetUsage" new-value))

(cl:defun clear (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "Clear"))

(cl:defun clone (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "Clone"))

