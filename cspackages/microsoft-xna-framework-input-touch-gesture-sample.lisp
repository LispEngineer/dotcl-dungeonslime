;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.GestureSample
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

(cl:in-package :microsoft-xna-framework-input-touch-gesture-sample)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.GestureSample"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.GestureSample")
(cl:defconstant <creation> "2026-07-03T13:50:10Z")
(cl:defconstant <version> 23)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.GestureSample")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.Touch.GestureSample. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-gesture-type-time-span-vector2-vector2-vector2-vector2 (gesture-type timestamp position position2 delta delta2)
  "Calls Microsoft.Xna.Framework.Input.Touch.GestureSample constructor new(GestureType, TimeSpan, Vector2, Vector2, Vector2, Vector2)"
  (dotnet:new <type-str> gesture-type timestamp position position2 delta delta2))

(cl:defun delta (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_Delta"))

(cl:defun delta2 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_Delta2"))

(cl:defun gesture-type (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_GestureType"))

(cl:defun position (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_Position"))

(cl:defun position2 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_Position2"))

(cl:defun timestamp (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj) "get_Timestamp"))

