;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GameWindow
;;; Generator Version: 18
;;; Creation Date: 2026-07-03T01:18:26Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-game-window
  (:use :cl)
  (:shadow
   #:position
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:allow-alt-f4
   #:allow-user-resizing
   #:client-bounds
   #:current-orientation
   #:handle
   #:borderless?
   #:position
   #:screen-device-name
   #:title
   #:begin-screen-device-change
   #:end-screen-device-change
   #:end-screen-device-change-string
   #:end-screen-device-change-string-int32-int32
   #:on-activated
   #:on-deactivated
   #:on-orientation-changed
   #:on-paint
   #:on-screen-device-name-changed
   #:set-supported-orientations
   #:set-title
  ))

(cl:in-package :microsoft-xna-framework-game-window)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GameWindow"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.GameWindow")
(cl:defconstant <creation> "2026-07-03T01:18:26Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GameWindow")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun allow-alt-f4 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_AllowAltF4"))

(cl:defun (cl:setf allow-alt-f4) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_AllowAltF4" new-value))

(cl:defun allow-user-resizing (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_AllowUserResizing"))

(cl:defun (cl:setf allow-user-resizing) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_AllowUserResizing" new-value))

(cl:defun client-bounds (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_ClientBounds"))

(cl:defun current-orientation (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_CurrentOrientation"))

(cl:defun handle (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Handle"))

(cl:defun borderless? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_IsBorderless"))

(cl:defun (cl:setf borderless?) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_IsBorderless" new-value))

(cl:defun position (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Position"))

(cl:defun (cl:setf position) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_Position" new-value))

(cl:defun screen-device-name (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_ScreenDeviceName"))

(cl:defun title (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Title"))

(cl:defun (cl:setf title) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_Title" new-value))

(cl:defun begin-screen-device-change (obj will-be-full-screen)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "BeginScreenDeviceChange" will-be-full-screen))

(cl:defun end-screen-device-change (obj screen-device-name cl:&optional (client-width cl:nil supplied-client-width) (client-height cl:nil supplied-client-height))
  "Master wrapper for Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp screen-device-name) supplied-client-width (cl:numberp client-width) supplied-client-height (cl:numberp client-height))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name client-width client-height))
    ((cl:and (cl:stringp screen-device-name) (cl:not supplied-client-width) (cl:not supplied-client-height))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GAME-WINDOW"
                    :class-name <type-str>
                    :method-name "EndScreenDeviceChange"
                    :supplied-args (cl:append (cl:list :screen-device-name screen-device-name) (cl:when supplied-client-width (cl:list :client-width client-width)) (cl:when supplied-client-height (cl:list :client-height client-height)))))))

(cl:defun end-screen-device-change-string (obj screen-device-name)
  "Calls Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange EndScreenDeviceChange(String) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name))

(cl:defun end-screen-device-change-string-int32-int32 (obj screen-device-name client-width client-height)
  "Calls Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange EndScreenDeviceChange(String, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name client-width client-height))

(cl:defun on-activated (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnActivated"))

(cl:defun on-deactivated (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnDeactivated"))

(cl:defun on-orientation-changed (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnOrientationChanged"))

(cl:defun on-paint (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnPaint"))

(cl:defun on-screen-device-name-changed (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnScreenDeviceNameChanged"))

(cl:defun set-supported-orientations (obj orientations)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "SetSupportedOrientations" orientations))

(cl:defun set-title (obj title)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "SetTitle" title))

