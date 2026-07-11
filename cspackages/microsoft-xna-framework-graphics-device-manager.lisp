;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GraphicsDeviceManager
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :microsoft-xna-framework-graphics-device-manager)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.GraphicsDeviceManager"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.GraphicsDeviceManager")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GraphicsDeviceManager")))

(cl:defun new (game)
  (dotnet:new <type-str> game))

(cl:define-symbol-macro default-back-buffer-height (dotnet:static <type-str> "DefaultBackBufferHeight"))

(cl:define-symbol-macro default-back-buffer-width (dotnet:static <type-str> "DefaultBackBufferWidth"))

(cl:defun graphics-device (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_GraphicsDevice"))

(cl:defun graphics-profile (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_GraphicsProfile"))

(cl:defun (cl:setf graphics-profile) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_GraphicsProfile" new-value))

(cl:defun hardware-mode-switch (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_HardwareModeSwitch"))

(cl:defun (cl:setf hardware-mode-switch) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_HardwareModeSwitch" new-value))

(cl:defun full-screen? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_IsFullScreen"))

(cl:defun (cl:setf full-screen?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_IsFullScreen" new-value))

(cl:defun prefer-half-pixel-offset (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferHalfPixelOffset"))

(cl:defun (cl:setf prefer-half-pixel-offset) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferHalfPixelOffset" new-value))

(cl:defun prefer-multi-sampling (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferMultiSampling"))

(cl:defun (cl:setf prefer-multi-sampling) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferMultiSampling" new-value))

(cl:defun preferred-back-buffer-format (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferredBackBufferFormat"))

(cl:defun (cl:setf preferred-back-buffer-format) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferredBackBufferFormat" new-value))

(cl:defun preferred-back-buffer-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferredBackBufferHeight"))

(cl:defun (cl:setf preferred-back-buffer-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferredBackBufferHeight" new-value))

(cl:defun preferred-back-buffer-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferredBackBufferWidth"))

(cl:defun (cl:setf preferred-back-buffer-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferredBackBufferWidth" new-value))

(cl:defun preferred-depth-stencil-format (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_PreferredDepthStencilFormat"))

(cl:defun (cl:setf preferred-depth-stencil-format) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_PreferredDepthStencilFormat" new-value))

(cl:defun supported-orientations (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_SupportedOrientations"))

(cl:defun (cl:setf supported-orientations) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_SupportedOrientations" new-value))

(cl:defun synchronize-with-vertical-retrace (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "get_SynchronizeWithVerticalRetrace"))

(cl:defun (cl:setf synchronize-with-vertical-retrace) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "set_SynchronizeWithVerticalRetrace" new-value))

(cl:defun add-device-created (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceCreated" handler))

(cl:defun remove-device-created (obj! handler)
  "Pass the exact same HANDLER object given to add-device-created -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceCreated" handler))

(cl:defun add-device-disposing (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceDisposing" handler))

(cl:defun remove-device-disposing (obj! handler)
  "Pass the exact same HANDLER object given to add-device-disposing -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceDisposing" handler))

(cl:defun add-device-reset (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceReset" handler))

(cl:defun remove-device-reset (obj! handler)
  "Pass the exact same HANDLER object given to add-device-reset -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceReset" handler))

(cl:defun add-device-resetting (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceResetting" handler))

(cl:defun remove-device-resetting (obj! handler)
  "Pass the exact same HANDLER object given to add-device-resetting -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "DeviceResetting" handler))

(cl:defun add-disposed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "Disposed" handler))

(cl:defun remove-disposed (obj! handler)
  "Pass the exact same HANDLER object given to add-disposed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "Disposed" handler))

(cl:defun add-preparing-device-settings (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "PreparingDeviceSettings" handler))

(cl:defun remove-preparing-device-settings (obj! handler)
  "Pass the exact same HANDLER object given to add-preparing-device-settings -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "PreparingDeviceSettings" handler))

(cl:defun apply-changes (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "ApplyChanges"))

(cl:defun begin-draw (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "BeginDraw"))

(cl:defun dispose (obj! cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.GraphicsDeviceManager.Dispose overloads. Dispatches at runtime.

Dispose() -> Void

Dispose(Boolean) -> Void
"
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "Dispose"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-DEVICE-MANAGER"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

(cl:defun end-draw (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "EndDraw"))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "Finalize"))

(cl:defun on-device-created (obj! e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "OnDeviceCreated" e))

(cl:defun on-device-disposing (obj! e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "OnDeviceDisposing" e))

(cl:defun on-device-reset (obj! e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "OnDeviceReset" e))

(cl:defun on-device-resetting (obj! e)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "OnDeviceResetting" e))

(cl:defun toggle-full-screen (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GraphicsDeviceManager") obj!) "ToggleFullScreen"))

