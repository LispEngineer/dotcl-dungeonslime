;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Generator Version: 6
;;; Creation Date: 2026-06-17T03:38:23Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-keyboard
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
  ))

(in-package :microsoft-xna-framework-input-keyboard)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Keyboard"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.Keyboard")
(defconstant <creation> "2026-06-17T03:38:23Z")
(defconstant <version> 6)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Keyboard")))

