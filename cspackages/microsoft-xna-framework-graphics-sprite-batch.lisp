;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteBatch
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T14:10:04Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sprite-batch
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-graphics-device
   #:new-graphics-device-int32
   #:dispose
   #:draw
   #:draw-texture2-d-vector2-color
   #:draw-texture2-d-rectangle-color
   #:draw-string
   #:draw-string-sprite-font-string-vector2-color
   #:draw-string-sprite-font-string-builder-vector2-color
   #:draw-string-sprite-font-string-vector2-color-single-vector2-single-sprite-effects-single
   #:draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-single-sprite-effects-single
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single
   #:draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single-boolean
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single-boolean
   #:end
  ))

(in-package :microsoft-xna-framework-graphics-sprite-batch)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SpriteBatch"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteBatch")
(defconstant <creation> "2026-06-28T14:10:04Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteBatch")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Graphics.SpriteBatch. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-graphics-device (graphics-device)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch constructor new(GraphicsDevice)"
  (dotnet:new <type-str> graphics-device))

(defun new-graphics-device-int32 (graphics-device capacity)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch constructor new(GraphicsDevice, Int32)"
  (dotnet:new <type-str> graphics-device capacity))

(defun dispose (obj disposing)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Dispose" disposing))

(defun draw (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" args))

(defun draw-texture2-d-vector2-color (obj texture position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Vector2, Color) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color))

(defun draw-texture2-d-rectangle-color (obj texture destination-rectangle color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Rectangle, Color) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture destination-rectangle color))

(defun draw-string (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" args))

(defun draw-string-sprite-font-string-vector2-color (obj sprite-font text position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))

(defun draw-string-sprite-font-string-builder-vector2-color (obj sprite-font text position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))

(defun draw-string-sprite-font-string-vector2-color-single-vector2-single-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(defun draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-single-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(defun draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single-boolean (obj sprite-font text position color rotation origin scale effects layer-depth rtl)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))

(defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single-boolean (obj sprite-font text position color rotation origin scale effects layer-depth rtl)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))

(defun end (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "End"))

