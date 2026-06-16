;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Mouse
;;; Generator Version: 3
;;; Creation Date: 2026-06-16T12:41:35Z

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
(defconstant <creation> "2026-06-16T12:41:35Z")
(defconstant <version> 3)

(defun set-cursor (cursor)
  (dotnet:static <type-str> "SetCursor" cursor))

(defun set-position (x y)
  (dotnet:static <type-str> "SetPosition" x y))

