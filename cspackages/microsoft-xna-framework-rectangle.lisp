;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Rectangle
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:17Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-rectangle
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+empty+
   #:bottom
   #:center
   #:is-empty
   #:left
   #:location
   #:right
   #:size
   #:top
   #:=
   #:get-hash-code
   #:not=
   #:to-string
  ))

(in-package :microsoft-xna-framework-rectangle)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Rectangle"))
(defconstant <type-str> "Microsoft.Xna.Framework.Rectangle")
(defconstant <creation> "2026-06-20T20:20:17Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

(defconstant +empty+ (dotnet:static <type-str> "Empty"))

(defun bottom (obj)
  (dotnet:invoke obj "get_Bottom"))

(defun center (obj)
  (dotnet:invoke obj "get_Center"))

(defun is-empty (obj)
  (dotnet:invoke obj "get_IsEmpty"))

(defun left (obj)
  (dotnet:invoke obj "get_Left"))

(defun location (obj)
  (dotnet:invoke obj "get_Location"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf location) (new-value obj)
  (dotnet:invoke obj "set_Location" new-value))

(defun right (obj)
  (dotnet:invoke obj "get_Right"))

(defun size (obj)
  (dotnet:invoke obj "get_Size"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf size) (new-value obj)
  (dotnet:invoke obj "set_Size" new-value))

(defun top (obj)
  (dotnet:invoke obj "get_Top"))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" a b))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" a b))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

