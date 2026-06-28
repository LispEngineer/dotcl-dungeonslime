;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GameWindow
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:20Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-game-window
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
   #:is-borderless
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

(in-package :microsoft-xna-framework-game-window)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GameWindow"))
(defconstant <type-str> "Microsoft.Xna.Framework.GameWindow")
(defconstant <creation> "2026-06-28T22:57:20Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GameWindow")))

(defun new ()
  (dotnet:new <type-str>))

(defun allow-alt-f4 (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_AllowAltF4"))

(defun (setf allow-alt-f4) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_AllowAltF4" new-value))

(defun allow-user-resizing (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_AllowUserResizing"))

(defun (setf allow-user-resizing) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_AllowUserResizing" new-value))

(defun client-bounds (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_ClientBounds"))

(defun current-orientation (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_CurrentOrientation"))

(defun handle (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Handle"))

(defun is-borderless (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_IsBorderless"))

(defun (setf is-borderless) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_IsBorderless" new-value))

(defun position (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Position"))

(defun (setf position) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_Position" new-value))

(defun screen-device-name (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_ScreenDeviceName"))

(defun title (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "get_Title"))

(defun (setf title) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "set_Title" new-value))

(defun begin-screen-device-change (obj will-be-full-screen)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "BeginScreenDeviceChange" will-be-full-screen))

(defun end-screen-device-change (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" args))

(defun end-screen-device-change-string (obj screen-device-name)
  "Calls Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange EndScreenDeviceChange(String) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name))

(defun end-screen-device-change-string-int32-int32 (obj screen-device-name client-width client-height)
  "Calls Microsoft.Xna.Framework.GameWindow.EndScreenDeviceChange EndScreenDeviceChange(String, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "EndScreenDeviceChange" screen-device-name client-width client-height))

(defun on-activated (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnActivated"))

(defun on-deactivated (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnDeactivated"))

(defun on-orientation-changed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnOrientationChanged"))

(defun on-paint (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnPaint"))

(defun on-screen-device-name-changed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "OnScreenDeviceNameChanged"))

(defun set-supported-orientations (obj orientations)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "SetSupportedOrientations" orientations))

(defun set-title (obj title)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameWindow") obj) "SetTitle" title))

