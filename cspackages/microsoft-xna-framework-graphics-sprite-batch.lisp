;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteBatch
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-batch)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteBatch"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteBatch")
(cl:defconstant <creation> "2026-07-03T13:50:10Z")
(cl:defconstant <version> 23)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteBatch")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Graphics.SpriteBatch. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-graphics-device (graphics-device)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch constructor new(GraphicsDevice)"
  (dotnet:new <type-str> graphics-device))

(cl:defun new-graphics-device-int32 (graphics-device capacity)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch constructor new(GraphicsDevice, Int32)"
  (dotnet:new <type-str> graphics-device capacity))

(cl:defun begin (obj cl:&key (sort-mode cl:nil supplied-sort-mode) (blend-state cl:nil supplied-blend-state) (sampler-state cl:nil supplied-sampler-state) (depth-stencil-state cl:nil supplied-depth-stencil-state) (rasterizer-state cl:nil supplied-rasterizer-state) (effect cl:nil supplied-effect) (transform-matrix cl:nil supplied-transform-matrix))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.Begin overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null sort-mode) (dotnet:object-type sort-mode)) (cl:or (cl:null blend-state) (dotnet:object-type blend-state)) (cl:or (cl:null sampler-state) (dotnet:object-type sampler-state)) (cl:or (cl:null depth-stencil-state) (dotnet:object-type depth-stencil-state)) (cl:or (cl:null rasterizer-state) (dotnet:object-type rasterizer-state)) (cl:or (cl:null effect) (dotnet:object-type effect)) (cl:or (cl:null transform-matrix) (dotnet:object-type transform-matrix)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Begin" sort-mode blend-state sampler-state depth-stencil-state rasterizer-state effect transform-matrix))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "Begin"
                    :supplied-args (cl:append (cl:when supplied-sort-mode (cl:list :sort-mode sort-mode)) (cl:when supplied-blend-state (cl:list :blend-state blend-state)) (cl:when supplied-sampler-state (cl:list :sampler-state sampler-state)) (cl:when supplied-depth-stencil-state (cl:list :depth-stencil-state depth-stencil-state)) (cl:when supplied-rasterizer-state (cl:list :rasterizer-state rasterizer-state)) (cl:when supplied-effect (cl:list :effect effect)) (cl:when supplied-transform-matrix (cl:list :transform-matrix transform-matrix)))))))

;; Note: Microsoft.Xna.Framework.Graphics.SpriteBatch.Begin also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Begin(SpriteSortMode, BlendState, SamplerState, DepthStencilState, RasterizerState, Effect, Matrix]) -> Void

(cl:defun dispose (obj disposing)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Dispose" disposing))

(cl:defun draw (obj texture position color cl:&optional (color cl:nil supplied-color) (rotation cl:nil supplied-rotation) (origin cl:nil supplied-origin) (effects cl:nil supplied-effects) (layer-depth cl:nil supplied-layer-depth) (layer-depth cl:nil supplied-layer-depth))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-color (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:or (cl:null layer-depth) (dotnet:object-type layer-depth)) supplied-layer-depth (cl:numberp layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color color rotation origin effects layer-depth layer-depth))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-color (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-effects (cl:numberp effects) supplied-layer-depth (cl:or (cl:null layer-depth) (dotnet:object-type layer-depth)) supplied-layer-depth (cl:numberp layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color color rotation origin effects layer-depth layer-depth))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-color (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color color rotation origin effects layer-depth))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-color (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color color))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-color (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color color))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-color) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color))
    ((cl:and (cl:or (cl:null texture) (dotnet:object-type texture)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-color) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "Draw"
                    :supplied-args (cl:append (cl:list :texture texture) (cl:list :position position) (cl:list :color color) (cl:when supplied-color (cl:list :color color)) (cl:when supplied-rotation (cl:list :rotation rotation)) (cl:when supplied-origin (cl:list :origin origin)) (cl:when supplied-effects (cl:list :effects effects)) (cl:when supplied-layer-depth (cl:list :layer-depth layer-depth)) (cl:when supplied-layer-depth (cl:list :layer-depth layer-depth)))))))

(cl:defun draw-texture2-d-vector2-color (obj texture position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Vector2, Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position color))

(cl:defun draw-texture2-d-rectangle-color (obj texture destination-rectangle color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Rectangle, Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture destination-rectangle color))

(cl:defun draw-texture2-d-vector2-rectangle]-color (obj texture position source-rectangle color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Vector2, Rectangle], Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position source-rectangle color))

(cl:defun draw-texture2-d-rectangle-rectangle]-color (obj texture destination-rectangle source-rectangle color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Rectangle, Rectangle], Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture destination-rectangle source-rectangle color))

(cl:defun draw-texture2-d-rectangle-rectangle]-color-single-vector2-sprite-effects-single (obj texture destination-rectangle source-rectangle color rotation origin effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Rectangle, Rectangle], Color, Single, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture destination-rectangle source-rectangle color rotation origin effects layer-depth))

(cl:defun draw-texture2-d-vector2-rectangle]-color-single-vector2-vector2-sprite-effects-single (obj texture position source-rectangle color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Vector2, Rectangle], Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position source-rectangle color rotation origin scale effects layer-depth))

(cl:defun draw-texture2-d-vector2-rectangle]-color-single-vector2-single-sprite-effects-single (obj texture position source-rectangle color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw Draw(Texture2D, Vector2, Rectangle], Color, Single, Vector2, Single, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "Draw" texture position source-rectangle color rotation origin scale effects layer-depth))

(cl:defun draw-string (obj sprite-font text position color cl:&optional (rotation cl:nil supplied-rotation) (origin cl:nil supplied-origin) (scale cl:nil supplied-scale) (effects cl:nil supplied-effects) (layer-depth cl:nil supplied-layer-depth) (rtl cl:nil supplied-rtl))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:stringp text) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:or (cl:null scale) (dotnet:object-type scale)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) supplied-rtl (cl:typep rtl 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:or (cl:null text) (dotnet:object-type text)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:or (cl:null scale) (dotnet:object-type scale)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) supplied-rtl (cl:typep rtl 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:stringp text) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:numberp scale) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:stringp text) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:or (cl:null scale) (dotnet:object-type scale)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:or (cl:null text) (dotnet:object-type text)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:numberp scale) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:or (cl:null text) (dotnet:object-type text)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:object-type origin)) supplied-scale (cl:or (cl:null scale) (dotnet:object-type scale)) supplied-effects (cl:or (cl:null effects) (dotnet:object-type effects)) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:stringp text) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-scale) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:object-type sprite-font)) (cl:or (cl:null text) (dotnet:object-type text)) (cl:or (cl:null position) (dotnet:object-type position)) (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-scale) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "DrawString"
                    :supplied-args (cl:append (cl:list :sprite-font sprite-font) (cl:list :text text) (cl:list :position position) (cl:list :color color) (cl:when supplied-rotation (cl:list :rotation rotation)) (cl:when supplied-origin (cl:list :origin origin)) (cl:when supplied-scale (cl:list :scale scale)) (cl:when supplied-effects (cl:list :effects effects)) (cl:when supplied-layer-depth (cl:list :layer-depth layer-depth)) (cl:when supplied-rtl (cl:list :rtl rtl)))))))

(cl:defun draw-string-sprite-font-string-vector2-color (obj sprite-font text position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))

(cl:defun draw-string-sprite-font-string-builder-vector2-color (obj sprite-font text position color)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color))

(cl:defun draw-string-sprite-font-string-vector2-color-single-vector2-single-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(cl:defun draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(cl:defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-single-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(cl:defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single (obj sprite-font text position color rotation origin scale effects layer-depth)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))

(cl:defun draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single-boolean (obj sprite-font text position color rotation origin scale effects layer-depth rtl)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))

(cl:defun draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single-boolean (obj sprite-font text position color rotation origin scale effects layer-depth rtl)
  "Calls Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))

(cl:defun end (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj) "End"))

