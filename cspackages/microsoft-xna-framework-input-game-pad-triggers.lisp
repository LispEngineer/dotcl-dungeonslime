;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:29Z

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
(defconstant <creation> "2026-06-20T20:20:29Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers")))

(defun left (obj)
  (dotnet:invoke obj "get_Left"))

(defun right (obj)
  (dotnet:invoke obj "get_Right"))

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

