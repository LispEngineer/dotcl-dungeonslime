;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GraphicsDeviceManager
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-device-manager
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:default-back-buffer-height
   #:default-back-buffer-width
   #:graphics-device
   #:graphics-profile
   #:hardware-mode-switch
   #:is-full-screen
   #:prefer-half-pixel-offset
   #:prefer-multi-sampling
   #:preferred-back-buffer-format
   #:preferred-back-buffer-height
   #:preferred-back-buffer-width
   #:preferred-depth-stencil-format
   #:supported-orientations
   #:synchronize-with-vertical-retrace
   #:apply-changes
   #:begin-draw
   #:dispose
   #:dispose-boolean
   #:end-draw
   #:finalize
   #:on-device-created
   #:on-device-disposing
   #:on-device-reset
   #:on-device-resetting
   #:toggle-full-screen
  ))

(cl:in-package :microsoft-xna-framework-graphics-device-manager)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GraphicsDeviceManager"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.GraphicsDeviceManager")
(cl:defconstant <creation> "2026-06-29T01:13:34Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GraphicsDeviceManager")))

(cl:defun new (game)
  (dotnet:new <type-str> game))

(cl:define-symbol-macro default-back-buffer-height (dotnet:static <type-str> "DefaultBackBufferHeight"))

(cl:define-symbol-macro default-back-buffer-width (dotnet:static <type-str> "DefaultBackBufferWidth"))

(cl:defun graphics-device (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_GraphicsDevice"))

(cl:defun graphics-profile (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_GraphicsProfile"))

(cl:defun (cl:setf graphics-profile) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_GraphicsProfile" new-value))

(cl:defun hardware-mode-switch (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_HardwareModeSwitch"))

(cl:defun (cl:setf hardware-mode-switch) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_HardwareModeSwitch" new-value))

(cl:defun is-full-screen (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_IsFullScreen"))

(cl:defun (cl:setf is-full-screen) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_IsFullScreen" new-value))

(cl:defun prefer-half-pixel-offset (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferHalfPixelOffset"))

(cl:defun (cl:setf prefer-half-pixel-offset) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferHalfPixelOffset" new-value))

(cl:defun prefer-multi-sampling (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferMultiSampling"))

(cl:defun (cl:setf prefer-multi-sampling) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferMultiSampling" new-value))

(cl:defun preferred-back-buffer-format (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferFormat"))

(cl:defun (cl:setf preferred-back-buffer-format) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferFormat" new-value))

(cl:defun preferred-back-buffer-height (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferHeight"))

(cl:defun (cl:setf preferred-back-buffer-height) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferHeight" new-value))

(cl:defun preferred-back-buffer-width (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferWidth"))

(cl:defun (cl:setf preferred-back-buffer-width) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferWidth" new-value))

(cl:defun preferred-depth-stencil-format (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredDepthStencilFormat"))

(cl:defun (cl:setf preferred-depth-stencil-format) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredDepthStencilFormat" new-value))

(cl:defun supported-orientations (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_SupportedOrientations"))

(cl:defun (cl:setf supported-orientations) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_SupportedOrientations" new-value))

(cl:defun synchronize-with-vertical-retrace (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_SynchronizeWithVerticalRetrace"))

(cl:defun (cl:setf synchronize-with-vertical-retrace) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_SynchronizeWithVerticalRetrace" new-value))

(cl:defun apply-changes (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "ApplyChanges"))

(cl:defun begin-draw (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "BeginDraw"))

(cl:defun dispose (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose" args))

(cl:defun dispose (obj)
  "Calls Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose Dispose() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose"))

(cl:defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose" disposing))

(cl:defun end-draw (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "EndDraw"))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Finalize"))

(cl:defun on-device-created (obj e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceCreated" e))

(cl:defun on-device-disposing (obj e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceDisposing" e))

(cl:defun on-device-reset (obj e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceReset" e))

(cl:defun on-device-resetting (obj e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceResetting" e))

(cl:defun toggle-full-screen (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "ToggleFullScreen"))

