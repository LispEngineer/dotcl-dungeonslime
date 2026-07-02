;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.ButtonState
;;; Generator Version: 18
;;; Creation Date: 2026-07-02T19:02:55Z

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
(cl:defconstant <creation> "2026-07-02T19:02:55Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.ButtonState")))

(cl:defconstant +pressed+ (dotnet:static <type-str> "Pressed"))

(cl:defconstant +released+ (dotnet:static <type-str> "Released"))

