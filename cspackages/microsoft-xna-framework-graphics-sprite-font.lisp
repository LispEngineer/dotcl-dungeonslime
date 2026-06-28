;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T14:10:05Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sprite-font
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:characters
   #:default-character
   #:glyphs
   #:line-spacing
   #:spacing
   #:texture
   #:measure-string
   #:measure-string-string
   #:measure-string-string-builder
  ))

(in-package :microsoft-xna-framework-graphics-sprite-font)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteFont"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont")
(defconstant <creation> "2026-06-28T14:10:05Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont")))

(defun characters (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Characters"))

(defun default-character (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_DefaultCharacter"))

(defun (setf default-character) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_DefaultCharacter" new-value))

(defun glyphs (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Glyphs"))

(defun line-spacing (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_LineSpacing"))

(defun (setf line-spacing) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_LineSpacing" new-value))

(defun spacing (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Spacing"))

(defun (setf spacing) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "set_Spacing" new-value))

(defun texture (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "get_Texture"))

(defun measure-string (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" args))

(defun measure-string-string (obj text)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString MeasureString(String) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))

(defun measure-string-string-builder (obj text)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteFont.MeasureString MeasureString(StringBuilder) -> Vector2"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont") obj) "MeasureString" text))

