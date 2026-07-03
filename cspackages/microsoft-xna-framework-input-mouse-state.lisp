;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.MouseState
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-input-mouse-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.MouseState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.MouseState")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.MouseState")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.MouseState. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state (x y scroll-wheel left-button middle-button right-button x-button1 x-button2)
  "Calls Microsoft.Xna.Framework.Input.MouseState constructor new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState)"
  (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2))

(cl:defun new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state-int32 (x y scroll-wheel left-button middle-button right-button x-button1 x-button2 horizontal-scroll-wheel)
  "Calls Microsoft.Xna.Framework.Input.MouseState constructor new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState, Int32)"
  (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2 horizontal-scroll-wheel))

(cl:defun horizontal-scroll-wheel-value (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_HorizontalScrollWheelValue"))

(cl:defun left-button (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_LeftButton"))

(cl:defun middle-button (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_MiddleButton"))

(cl:defun position (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_Position"))

(cl:defun right-button (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_RightButton"))

(cl:defun scroll-wheel-value (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_ScrollWheelValue"))

(cl:defun x (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_X"))

(cl:defun x-button1 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_XButton1"))

(cl:defun x-button2 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_XButton2"))

(cl:defun y (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "get_Y"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(cl:defun equals (obj obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj) "ToString"))

