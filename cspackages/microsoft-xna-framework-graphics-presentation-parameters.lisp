;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.PresentationParameters
;;; Generator Version: 11
;;; Creation Date: 2026-06-27T13:32:28Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-presentation-parameters
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

(in-package :microsoft-xna-framework-graphics-presentation-parameters)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.PresentationParameters"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.PresentationParameters")
(defconstant <creation> "2026-06-27T13:32:28Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.PresentationParameters")))

(defun new ()
  (dotnet:new <type-str>))

(defconstant +default-present-rate+ (dotnet:static <type-str> "DefaultPresentRate"))

(defun back-buffer-format (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferFormat"))

(defun (setf back-buffer-format) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferFormat" new-value))

(defun back-buffer-height (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferHeight"))

(defun (setf back-buffer-height) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferHeight" new-value))

(defun back-buffer-width (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_BackBufferWidth"))

(defun (setf back-buffer-width) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_BackBufferWidth" new-value))

(defun bounds (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_Bounds"))

(defun depth-stencil-format (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DepthStencilFormat"))

(defun (setf depth-stencil-format) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DepthStencilFormat" new-value))

(defun device-window-handle (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DeviceWindowHandle"))

(defun (setf device-window-handle) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DeviceWindowHandle" new-value))

(defun display-orientation (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_DisplayOrientation"))

(defun (setf display-orientation) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_DisplayOrientation" new-value))

(defun hardware-mode-switch (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_HardwareModeSwitch"))

(defun (setf hardware-mode-switch) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_HardwareModeSwitch" new-value))

(defun is-full-screen (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_IsFullScreen"))

(defun (setf is-full-screen) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_IsFullScreen" new-value))

(defun multi-sample-count (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_MultiSampleCount"))

(defun (setf multi-sample-count) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_MultiSampleCount" new-value))

(defun presentation-interval (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_PresentationInterval"))

(defun (setf presentation-interval) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_PresentationInterval" new-value))

(defun render-target-usage (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "get_RenderTargetUsage"))

(defun (setf render-target-usage) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "set_RenderTargetUsage" new-value))

(defun clear (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "Clear"))

(defun clone (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.PresentationParameters") obj) "Clone"))

