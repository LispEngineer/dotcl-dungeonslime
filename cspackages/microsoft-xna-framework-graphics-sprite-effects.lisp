;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteEffects
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-sprite-effects
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+flip-horizontally+
   #:+flip-vertically+
   #:+none+
  ))

(cl:in-package :microsoft-xna-framework-graphics-sprite-effects)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteEffects"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteEffects")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteEffects")))

(cl:defconstant +flip-horizontally+ (dotnet:static <type-str> "FlipHorizontally"))

(cl:defconstant +flip-vertically+ (dotnet:static <type-str> "FlipVertically"))

(cl:defconstant +none+ (dotnet:static <type-str> "None"))

