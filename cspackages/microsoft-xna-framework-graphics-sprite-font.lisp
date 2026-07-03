;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-sprite-font
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:characters
   #:default-character
   #:glyphs
   #:line-spacing
   #:spacing
   #:texture
   #:get-glyphs
   #:measure-string
   #:measure-string-string
   #:measure-string-string-builder
  ))

(cl:in-package :microsoft-xna-framework-graphics-sprite-font)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteFont"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont")))

(cl:defun new (texture glyph-bounds cropping characters line-spacing spacing kerning default-character)
  (dotnet:new <type-str> texture glyph-bounds cropping characters line-spacing spacing kerning default-character))

(cl:defun characters (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Characters"))

(cl:defun default-character (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_DefaultCharacter"))

(cl:defun (cl:setf default-character) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_DefaultCharacter" new-value))

(cl:defun glyphs (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Glyphs"))

(cl:defun line-spacing (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_LineSpacing"))

(cl:defun (cl:setf line-spacing) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_LineSpacing" new-value))

(cl:defun spacing (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Spacing"))

(cl:defun (cl:setf spacing) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_Spacing" new-value))

(cl:defun texture (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Texture"))

(cl:defun get-glyphs (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "GetGlyphs"))

(cl:defun measure-string (obj text)
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp text))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))
    ((cl:and (cl:or (cl:null text) (monoutils:dotnet-p text)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-FONT"
                    :class-name <type-str>
                    :method-name "MeasureString"
                    :supplied-args (cl:append (cl:list :text text))))))

(cl:defun measure-string-string (obj text)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString MeasureString(String) -> Vector2"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))

(cl:defun measure-string-string-builder (obj text)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString MeasureString(StringBuilder) -> Vector2"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))

