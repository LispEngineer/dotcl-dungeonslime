;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Mouse
;;; Generator Version: 9
;;; Creation Date: 2026-06-18T02:00:14Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-mouse
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:set-cursor
   #:set-position
  ))

(in-package :microsoft-xna-framework-input-mouse)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Mouse"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.Mouse")
(defconstant <creation> "2026-06-18T02:00:14Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Mouse")))

(defun set-cursor (cursor)
  (dotnet:static <type-str> "SetCursor" cursor))

(defun set-position (x y)
  (dotnet:static <type-str> "SetPosition" x y))

