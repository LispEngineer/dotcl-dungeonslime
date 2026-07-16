;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-font)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (texture glyph-bounds cropping characters line-spacing spacing kerning default-character)
  (dotnet:new <type-str> texture glyph-bounds cropping characters line-spacing spacing kerning default-character))

(cl:defun characters (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_Characters"))

(cl:defun default-character (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_DefaultCharacter"))

(cl:defun (cl:setf default-character) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "set_DefaultCharacter" new-value))

(cl:defun glyphs (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_Glyphs"))

(cl:defun line-spacing (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_LineSpacing"))

(cl:defun (cl:setf line-spacing) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "set_LineSpacing" new-value))

(cl:defun spacing (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_Spacing"))

(cl:defun (cl:setf spacing) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "set_Spacing" new-value))

(cl:defun texture (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "get_Texture"))

(cl:defun get-glyphs (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "GetGlyphs"))

(cl:defun measure-string (obj! text)
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString overloads. Dispatches at runtime.

MeasureString(String) -> Vector2

MeasureString(StringBuilder) -> Vector2
"
  (cl:cond
    ((cl:and (cl:stringp text))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "MeasureString" text))
    ((cl:and (cl:or (cl:null text) (dotnet:is-instance-of text "System.Text.StringBuilder")))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj!) "MeasureString" text))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-FONT"
                    :class-name <type-str>
                    :method-name "MeasureString"
                    :supplied-args (cl:append (cl:list :text text))))))

