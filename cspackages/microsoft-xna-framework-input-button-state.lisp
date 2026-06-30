;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.ButtonState
;;; Generator Version: 16
;;; Creation Date: 2026-06-30T03:11:05Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-button-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+pressed+
   #:+released+
  ))

(cl:in-package :microsoft-xna-framework-input-button-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.ButtonState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.ButtonState")
(cl:defconstant <creation> "2026-06-30T03:11:05Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.ButtonState")))

(cl:defconstant +pressed+ (dotnet:static <type-str> "Pressed"))

(cl:defconstant +released+ (dotnet:static <type-str> "Released"))

