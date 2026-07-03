;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteSortMode
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-sort-mode)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteSortMode")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode")))

(cl:defconstant +back-to-front+ (dotnet:static <type-str> "BackToFront"))

(cl:defconstant +deferred+ (dotnet:static <type-str> "Deferred"))

(cl:defconstant +front-to-back+ (dotnet:static <type-str> "FrontToBack"))

(cl:defconstant +immediate+ (dotnet:static <type-str> "Immediate"))

(cl:defconstant +texture+ (dotnet:static <type-str> "Texture"))

