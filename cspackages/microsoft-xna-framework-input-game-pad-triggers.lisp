;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-game-pad-triggers
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
   #:new-single-single
   #:left
   #:right
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(cl:in-package :microsoft-xna-framework-input-game-pad-triggers)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadTriggers"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadTriggers")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadTriggers. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-single-single (left-trigger right-trigger)
  "Calls Microsoft.Xna.Framework.Input.GamePadTriggers constructor new(Single, Single)"
  (dotnet:new <type-str> left-trigger right-trigger))

(cl:defun left (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "get_Left"))

(cl:defun right (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "get_Right"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(cl:defun equals (obj obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "ToString"))

