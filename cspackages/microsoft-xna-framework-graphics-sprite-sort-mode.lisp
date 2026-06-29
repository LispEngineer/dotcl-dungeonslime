;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteSortMode
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:36Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-sprite-sort-mode
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

(cl:in-package :microsoft-xna-framework-graphics-sprite-sort-mode)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteSortMode")
(cl:defconstant <creation> "2026-06-29T01:13:36Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode")))

(cl:defconstant +back-to-front+ (dotnet:static <type-str> "BackToFront"))

(cl:defconstant +deferred+ (dotnet:static <type-str> "Deferred"))

(cl:defconstant +front-to-back+ (dotnet:static <type-str> "FrontToBack"))

(cl:defconstant +immediate+ (dotnet:static <type-str> "Immediate"))

(cl:defconstant +texture+ (dotnet:static <type-str> "Texture"))

