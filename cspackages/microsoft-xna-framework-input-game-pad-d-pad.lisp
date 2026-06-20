;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 10
;;; Creation Date: 2026-06-20T21:52:47Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-d-pad
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:down
   #:left
   #:right
   #:up
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-d-pad)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(defconstant <creation> "2026-06-20T21:52:47Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad")))

(defun down (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Down"))

(defun left (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Left"))

(defun right (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Right"))

(defun up (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "get_Up"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(defun equals (obj obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(defun to-string (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj) "ToString"))

