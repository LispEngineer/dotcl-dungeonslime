;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.ButtonState
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-input-button-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.ButtonState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.ButtonState")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.ButtonState")))

(cl:defconstant +pressed+ (dotnet:static <type-str> "Pressed"))

(cl:defconstant +released+ (dotnet:static <type-str> "Released"))

