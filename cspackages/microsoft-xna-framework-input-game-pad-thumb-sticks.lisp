;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadThumbSticks
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-vector2-vector2
   #:left
   #:right
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(cl:in-package :microsoft-xna-framework-input-game-pad-thumb-sticks)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadThumbSticks")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadThumbSticks. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-vector2-vector2 (left-position right-position)
  "Calls Microsoft.Xna.Framework.Input.GamePadThumbSticks constructor new(Vector2, Vector2)"
  (dotnet:new <type-str> left-position right-position))

(cl:defun left (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "get_Left"))

(cl:defun right (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "get_Right"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(cl:defun equals (obj obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "ToString"))

