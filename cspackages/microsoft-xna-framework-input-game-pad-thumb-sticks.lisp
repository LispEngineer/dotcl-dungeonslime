;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadThumbSticks
;;; Generator Version: 11
;;; Creation Date: 2026-06-26T02:28:11Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks
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

(in-package :microsoft-xna-framework-input-game-pad-thumb-sticks)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadThumbSticks")
(defconstant <creation> "2026-06-26T02:28:11Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadThumbSticks. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-vector2-vector2 (left-position right-position)
  "Calls Microsoft.Xna.Framework.Input.GamePadThumbSticks constructor new(Vector2, Vector2)"
  (dotnet:new <type-str> left-position right-position))

(defun left (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "get_Left"))

(defun right (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "get_Right"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj) "ToString"))

