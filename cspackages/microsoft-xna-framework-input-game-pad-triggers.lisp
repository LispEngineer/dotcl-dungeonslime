;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:32Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-triggers
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

(in-package :microsoft-xna-framework-input-game-pad-triggers)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadTriggers"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadTriggers")
(defconstant <creation> "2026-06-28T22:57:32Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.GamePadTriggers. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-single-single (left-trigger right-trigger)
  "Calls Microsoft.Xna.Framework.Input.GamePadTriggers constructor new(Single, Single)"
  (dotnet:new <type-str> left-trigger right-trigger))

(defun left (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "get_Left"))

(defun right (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "get_Right"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj) "ToString"))

