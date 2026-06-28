;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.ButtonState
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T01:32:16Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-button-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+pressed+
   #:+released+
  ))

(in-package :microsoft-xna-framework-input-button-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.ButtonState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.ButtonState")
(defconstant <creation> "2026-06-28T01:32:16Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.ButtonState")))

(defconstant +pressed+ (dotnet:static <type-str> "Pressed"))

(defconstant +released+ (dotnet:static <type-str> "Released"))

