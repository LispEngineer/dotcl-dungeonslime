;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteSortMode
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:30:57Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sprite-sort-mode
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+back-to-front+
   #:+deferred+
   #:+front-to-back+
   #:+immediate+
   #:+texture+
  ))

(in-package :microsoft-xna-framework-graphics-sprite-sort-mode)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteSortMode")
(defconstant <creation> "2026-06-28T22:30:57Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode")))

(defconstant +back-to-front+ (dotnet:static <type-str> "BackToFront"))

(defconstant +deferred+ (dotnet:static <type-str> "Deferred"))

(defconstant +front-to-back+ (dotnet:static <type-str> "FrontToBack"))

(defconstant +immediate+ (dotnet:static <type-str> "Immediate"))

(defconstant +texture+ (dotnet:static <type-str> "Texture"))

