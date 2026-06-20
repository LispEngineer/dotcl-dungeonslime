;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:27Z

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
(defconstant <creation> "2026-06-20T20:20:27Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad")))

(defun down (obj)
  (dotnet:invoke obj "get_Down"))

(defun left (obj)
  (dotnet:invoke obj "get_Left"))

(defun right (obj)
  (dotnet:invoke obj "get_Right"))

(defun up (obj)
  (dotnet:invoke obj "get_Up"))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" left right))

(defun equals (obj obj)
  (dotnet:invoke obj "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" left right))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

