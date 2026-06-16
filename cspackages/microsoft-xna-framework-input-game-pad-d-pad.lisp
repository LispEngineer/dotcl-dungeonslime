;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 3
;;; Creation Date: 2026-06-16T12:41:41Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad-d-pad
  (:use :cl)
  (:shadow
   #:/=
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:/=
   #:=
   #:equals
   #:get-hash-code
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-d-pad)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(defconstant <creation> "2026-06-16T12:41:41Z")
(defconstant <version> 3)

(defun /= (left right)
  (dotnet:static <type-str> "op_Inequality" left right))

(defun = (left right)
  (dotnet:static <type-str> "op_Equality" left right))

(defun equals (obj obj)
  (dotnet:invoke obj "Equals" obj))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

