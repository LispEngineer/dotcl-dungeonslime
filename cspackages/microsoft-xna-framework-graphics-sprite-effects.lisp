;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteEffects
;;; Generator Version: 5
;;; Creation Date: 2026-06-16T22:31:21Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sprite-effects
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

(in-package :microsoft-xna-framework-graphics-sprite-effects)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteEffects"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteEffects")
(defconstant <creation> "2026-06-16T22:31:21Z")
(defconstant <version> 5)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteEffects")))

(defconstant +flip-horizontally+ (dotnet:static <type-str> "FlipHorizontally"))

(defconstant +flip-vertically+ (dotnet:static <type-str> "FlipVertically"))

(defconstant +none+ (dotnet:static <type-str> "None"))

