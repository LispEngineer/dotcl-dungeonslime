;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.GestureSample
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-input-touch-gesture-sample)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.GestureSample"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.GestureSample")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (cl:&optional (gesture-type cl:nil supplied-gesture-type) (timestamp cl:nil supplied-timestamp) (position cl:nil supplied-position) (position2 cl:nil supplied-position2) (delta cl:nil supplied-delta) (delta2 cl:nil supplied-delta2))
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.GestureSample constructor overloads. Dispatches at runtime.

new()

new(GestureType, TimeSpan, Vector2, Vector2, Vector2, Vector2)
"
  (cl:cond
    ((cl:and supplied-gesture-type (cl:or (cl:null gesture-type) (dotnet:is-instance-of gesture-type "Microsoft.Xna.Framework.Input.Touch.GestureType")) supplied-timestamp (cl:or (cl:null timestamp) (dotnet:is-instance-of timestamp "System.TimeSpan")) supplied-position (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) supplied-position2 (cl:or (cl:null position2) (dotnet:is-instance-of position2 "Microsoft.Xna.Framework.Vector2")) supplied-delta (cl:or (cl:null delta) (dotnet:is-instance-of delta "Microsoft.Xna.Framework.Vector2")) supplied-delta2 (cl:or (cl:null delta2) (dotnet:is-instance-of delta2 "Microsoft.Xna.Framework.Vector2")))
     (dotnet:new <type-str> gesture-type timestamp position position2 delta delta2))
    ((cl:and (cl:not supplied-gesture-type) (cl:not supplied-timestamp) (cl:not supplied-position) (cl:not supplied-position2) (cl:not supplied-delta) (cl:not supplied-delta2))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-GESTURE-SAMPLE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-gesture-type (cl:list :gesture-type gesture-type)) (cl:when supplied-timestamp (cl:list :timestamp timestamp)) (cl:when supplied-position (cl:list :position position)) (cl:when supplied-position2 (cl:list :position2 position2)) (cl:when supplied-delta (cl:list :delta delta)) (cl:when supplied-delta2 (cl:list :delta2 delta2)))))))

(cl:defun delta (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_Delta"))

(cl:defun delta2 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_Delta2"))

(cl:defun gesture-type (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_GestureType"))

(cl:defun position (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_Position"))

(cl:defun position2 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_Position2"))

(cl:defun timestamp (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.GestureSample") obj!) "get_Timestamp"))

