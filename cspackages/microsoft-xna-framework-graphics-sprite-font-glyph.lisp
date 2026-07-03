;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-sprite-font-glyph
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:empty
   #:to-string
  ))

(cl:in-package :microsoft-xna-framework-graphics-sprite-font-glyph)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro empty (dotnet:static <type-str> "Empty"))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj) "ToString"))

