;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.MouseState
;;; Generator Version: 9
;;; Creation Date: 2026-06-18T02:00:16Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-mouse-state
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:horizontal-scroll-wheel-value
   #:left-button
   #:middle-button
   #:position
   #:right-button
   #:scroll-wheel-value
   #:x
   #:x-button1
   #:x-button2
   #:y
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-mouse-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.MouseState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.MouseState")
(defconstant <creation> "2026-06-18T02:00:16Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.MouseState")))

(defun horizontal-scroll-wheel-value (obj)
  (dotnet:invoke obj "get_HorizontalScrollWheelValue"))

(defun left-button (obj)
  (dotnet:invoke obj "get_LeftButton"))

(defun middle-button (obj)
  (dotnet:invoke obj "get_MiddleButton"))

(defun position (obj)
  (dotnet:invoke obj "get_Position"))

(defun right-button (obj)
  (dotnet:invoke obj "get_RightButton"))

(defun scroll-wheel-value (obj)
  (dotnet:invoke obj "get_ScrollWheelValue"))

(defun x (obj)
  (dotnet:invoke obj "get_X"))

(defun x-button1 (obj)
  (dotnet:invoke obj "get_XButton1"))

(defun x-button2 (obj)
  (dotnet:invoke obj "get_XButton2"))

(defun y (obj)
  (dotnet:invoke obj "get_Y"))

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

