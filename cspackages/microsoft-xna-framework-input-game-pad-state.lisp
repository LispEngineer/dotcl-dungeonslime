;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Generator Version: 10
;;; Creation Date: 2026-06-20T21:52:45Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-state
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+default+
   #:buttons
   #:d-pad
   #:is-connected
   #:packet-number
   #:thumb-sticks
   #:triggers
   #:=
   #:equals
   #:get-hash-code
   #:is-button-down
   #:is-button-up
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadState")
(defconstant <creation> "2026-06-20T21:52:45Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadState")))

(defconstant +default+ (dotnet:static <type-str> "Default"))

(defun buttons (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Buttons"))

(defun d-pad (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_DPad"))

(defun is-connected (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_IsConnected"))

(defun packet-number (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_PacketNumber"))

(defun thumb-sticks (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_ThumbSticks"))

(defun triggers (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "get_Triggers"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "GetHashCode"))

(defun is-button-down (obj button)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonDown" button))

(defun is-button-up (obj button)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "IsButtonUp" button))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadState") obj) "ToString"))

