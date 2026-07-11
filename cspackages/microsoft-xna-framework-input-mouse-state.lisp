;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.MouseState
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :microsoft-xna-framework-input-mouse-state)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.MouseState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.MouseState")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.MouseState")))

(cl:defun new (cl:&optional (x cl:nil supplied-x) (y cl:nil supplied-y) (scroll-wheel cl:nil supplied-scroll-wheel) (left-button cl:nil supplied-left-button) (middle-button cl:nil supplied-middle-button) (right-button cl:nil supplied-right-button) (x-button1 cl:nil supplied-x-button1) (x-button2 cl:nil supplied-x-button2) (horizontal-scroll-wheel cl:nil supplied-horizontal-scroll-wheel))
  "Master wrapper for Microsoft.Xna.Framework.Input.MouseState constructor overloads. Dispatches at runtime.

new()

new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState)

new(Int32, Int32, Int32, ButtonState, ButtonState, ButtonState, ButtonState, ButtonState, Int32)
"
  (cl:cond
    ((cl:and supplied-x (cl:numberp x) supplied-y (cl:numberp y) supplied-scroll-wheel (cl:numberp scroll-wheel) supplied-left-button (cl:or (cl:null left-button) (dotnet:object-type left-button)) supplied-middle-button (cl:or (cl:null middle-button) (dotnet:object-type middle-button)) supplied-right-button (cl:or (cl:null right-button) (dotnet:object-type right-button)) supplied-x-button1 (cl:or (cl:null x-button1) (dotnet:object-type x-button1)) supplied-x-button2 (cl:or (cl:null x-button2) (dotnet:object-type x-button2)) supplied-horizontal-scroll-wheel (cl:numberp horizontal-scroll-wheel))
     (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2 horizontal-scroll-wheel))
    ((cl:and supplied-x (cl:numberp x) supplied-y (cl:numberp y) supplied-scroll-wheel (cl:numberp scroll-wheel) supplied-left-button (cl:or (cl:null left-button) (dotnet:object-type left-button)) supplied-middle-button (cl:or (cl:null middle-button) (dotnet:object-type middle-button)) supplied-right-button (cl:or (cl:null right-button) (dotnet:object-type right-button)) supplied-x-button1 (cl:or (cl:null x-button1) (dotnet:object-type x-button1)) supplied-x-button2 (cl:or (cl:null x-button2) (dotnet:object-type x-button2)) (cl:not supplied-horizontal-scroll-wheel))
     (dotnet:new <type-str> x y scroll-wheel left-button middle-button right-button x-button1 x-button2))
    ((cl:and (cl:not supplied-x) (cl:not supplied-y) (cl:not supplied-scroll-wheel) (cl:not supplied-left-button) (cl:not supplied-middle-button) (cl:not supplied-right-button) (cl:not supplied-x-button1) (cl:not supplied-x-button2) (cl:not supplied-horizontal-scroll-wheel))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-MOUSE-STATE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-x (cl:list :x x)) (cl:when supplied-y (cl:list :y y)) (cl:when supplied-scroll-wheel (cl:list :scroll-wheel scroll-wheel)) (cl:when supplied-left-button (cl:list :left-button left-button)) (cl:when supplied-middle-button (cl:list :middle-button middle-button)) (cl:when supplied-right-button (cl:list :right-button right-button)) (cl:when supplied-x-button1 (cl:list :x-button1 x-button1)) (cl:when supplied-x-button2 (cl:list :x-button2 x-button2)) (cl:when supplied-horizontal-scroll-wheel (cl:list :horizontal-scroll-wheel horizontal-scroll-wheel)))))))

(cl:defun horizontal-scroll-wheel-value (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_HorizontalScrollWheelValue"))

(cl:defun left-button (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_LeftButton"))

(cl:defun middle-button (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_MiddleButton"))

(cl:defun position (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_Position"))

(cl:defun right-button (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_RightButton"))

(cl:defun scroll-wheel-value (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_ScrollWheelValue"))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_X"))

(cl:defun x-button1 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_XButton1"))

(cl:defun x-button2 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_XButton2"))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "get_Y"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") right)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.MouseState") obj!) "ToString"))

