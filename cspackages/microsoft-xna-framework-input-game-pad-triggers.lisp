;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 10
;;; Creation Date: 2026-06-20T21:52:49Z

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
(defconstant <creation> "2026-06-20T21:52:49Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers")))

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

