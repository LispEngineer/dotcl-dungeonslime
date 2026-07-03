;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-font-glyph)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")
(cl:defconstant <creation> "2026-07-03T13:50:10Z")
(cl:defconstant <version> 23)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro empty (dotnet:static <type-str> "Empty"))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj) "ToString"))

