;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GraphicsDeviceManager
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:42Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-device-manager
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

(in-package :microsoft-xna-framework-graphics-device-manager)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GraphicsDeviceManager"))
(defconstant <type-str> "Microsoft.Xna.Framework.GraphicsDeviceManager")
(defconstant <creation> "2026-06-28T22:57:42Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GraphicsDeviceManager")))

(defun new (game)
  (dotnet:new <type-str> game))

(define-symbol-macro default-back-buffer-height (dotnet:static <type-str> "DefaultBackBufferHeight"))

(define-symbol-macro default-back-buffer-width (dotnet:static <type-str> "DefaultBackBufferWidth"))

(defun graphics-device (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_GraphicsDevice"))

(defun graphics-profile (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_GraphicsProfile"))

(defun (setf graphics-profile) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_GraphicsProfile" new-value))

(defun hardware-mode-switch (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_HardwareModeSwitch"))

(defun (setf hardware-mode-switch) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_HardwareModeSwitch" new-value))

(defun is-full-screen (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_IsFullScreen"))

(defun (setf is-full-screen) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_IsFullScreen" new-value))

(defun prefer-half-pixel-offset (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferHalfPixelOffset"))

(defun (setf prefer-half-pixel-offset) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferHalfPixelOffset" new-value))

(defun prefer-multi-sampling (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferMultiSampling"))

(defun (setf prefer-multi-sampling) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferMultiSampling" new-value))

(defun preferred-back-buffer-format (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferFormat"))

(defun (setf preferred-back-buffer-format) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferFormat" new-value))

(defun preferred-back-buffer-height (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferHeight"))

(defun (setf preferred-back-buffer-height) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferHeight" new-value))

(defun preferred-back-buffer-width (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredBackBufferWidth"))

(defun (setf preferred-back-buffer-width) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredBackBufferWidth" new-value))

(defun preferred-depth-stencil-format (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_PreferredDepthStencilFormat"))

(defun (setf preferred-depth-stencil-format) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_PreferredDepthStencilFormat" new-value))

(defun supported-orientations (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_SupportedOrientations"))

(defun (setf supported-orientations) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_SupportedOrientations" new-value))

(defun synchronize-with-vertical-retrace (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "get_SynchronizeWithVerticalRetrace"))

(defun (setf synchronize-with-vertical-retrace) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "set_SynchronizeWithVerticalRetrace" new-value))

(defun apply-changes (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "ApplyChanges"))

(defun begin-draw (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "BeginDraw"))

(defun dispose (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose" args))

(defun dispose (obj)
  "Calls Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose Dispose() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose"))

(defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Dispose" disposing))

(defun end-draw (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "EndDraw"))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "Finalize"))

(defun on-device-created (obj e)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceCreated" e))

(defun on-device-disposing (obj e)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceDisposing" e))

(defun on-device-reset (obj e)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceReset" e))

(defun on-device-resetting (obj e)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "OnDeviceResetting" e))

(defun toggle-full-screen (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj) "ToggleFullScreen"))

