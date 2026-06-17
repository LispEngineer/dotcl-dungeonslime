;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 6
;;; Creation Date: 2026-06-17T18:02:44Z

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
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-input-game-pad-triggers)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePadTriggers"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadTriggers")
(defconstant <creation> "2026-06-17T18:02:44Z")
(defconstant <version> 6)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers")))

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

