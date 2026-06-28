;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.MouseState
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T14:09:43Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-mouse-state
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state
   #:new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state-int32
   #:horizontal-scroll-wheel-value
   #:left-button
   #:middle-button
   #:position
   #:right-button
   #:scroll-wheel-value
   #:x
   #:x-button1
   #:x-button2
   #:y
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-mouse-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.MouseState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.MouseState")
(defconstant <creation> "2026-06-28T14:09:43Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.MouseState")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.MouseState. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state (x y scroll-wheel left-button middle-button right-button x-button1 x-button2)
  "Calls Microsoft.Xna.Framework.Input.MouseState constructor new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState)"
  (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2))

(defun new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state-int32 (x y scroll-wheel left-button middle-button right-button x-button1 x-button2 horizontal-scroll-wheel)
  "Calls Microsoft.Xna.Framework.Input.MouseState constructor new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState, Int32)"
  (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2 horizontal-scroll-wheel))

(defun horizontal-scroll-wheel-value (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_HorizontalScrollWheelValue"))

(defun left-button (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_LeftButton"))

(defun middle-button (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_MiddleButton"))

(defun position (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_Position"))

(defun right-button (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_RightButton"))

(defun scroll-wheel-value (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_ScrollWheelValue"))

(defun x (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_X"))

(defun x-button1 (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_XButton1"))

(defun x-button2 (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_XButton2"))

(defun y (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_Y"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "ToString"))

