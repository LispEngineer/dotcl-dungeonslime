;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.GestureSample
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-touch-gesture-sample
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
   #:new-gesture-type-time-span-vector2-vector2-vector2-vector2
   #:delta
   #:delta2
   #:gesture-type
   #:position
   #:position2
   #:timestamp
  ))

(cl:in-package :microsoft-xna-framework-input-touch-gesture-sample)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Touch.GestureSample"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.GestureSample")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

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

