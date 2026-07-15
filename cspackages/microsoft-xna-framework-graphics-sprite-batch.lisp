;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteBatch
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-batch)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteBatch"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteBatch")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new (graphics-device cl:&optional (capacity cl:nil supplied-capacity))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch constructor overloads. Dispatches at runtime.

new(GraphicsDevice)

new(GraphicsDevice, Int32)
"
  (cl:cond
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) supplied-capacity (cl:numberp capacity))
     (dotnet:new <type-str> graphics-device capacity))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:not supplied-capacity))
     (dotnet:new <type-str> graphics-device))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :graphics-device graphics-device) (cl:when supplied-capacity (cl:list :capacity capacity)))))))

(cl:defun begin (obj! cl:&key (sort-mode (dotnet:enum-or "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Deferred") supplied-sort-mode) (blend-state cl:nil supplied-blend-state) (sampler-state cl:nil supplied-sampler-state) (depth-stencil-state cl:nil supplied-depth-stencil-state) (rasterizer-state cl:nil supplied-rasterizer-state) (effect cl:nil supplied-effect) (transform-matrix cl:nil supplied-transform-matrix))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.Begin overloads. Dispatches at runtime.

Begin(SpriteSortMode = Deferred, BlendState = null, SamplerState = null, DepthStencilState = null, RasterizerState = null, Effect = null, Matrix] = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-sort-mode) (cl:or (cl:null sort-mode) (dotnet:is-instance-of sort-mode "Microsoft.Xna.Framework.Graphics.SpriteSortMode"))) (cl:or (cl:not supplied-blend-state) (cl:or (cl:null blend-state) (dotnet:is-instance-of blend-state "Microsoft.Xna.Framework.Graphics.BlendState"))) (cl:or (cl:not supplied-sampler-state) (cl:or (cl:null sampler-state) (dotnet:is-instance-of sampler-state "Microsoft.Xna.Framework.Graphics.SamplerState"))) (cl:or (cl:not supplied-depth-stencil-state) (cl:or (cl:null depth-stencil-state) (dotnet:is-instance-of depth-stencil-state "Microsoft.Xna.Framework.Graphics.DepthStencilState"))) (cl:or (cl:not supplied-rasterizer-state) (cl:or (cl:null rasterizer-state) (dotnet:is-instance-of rasterizer-state "Microsoft.Xna.Framework.Graphics.RasterizerState"))) (cl:or (cl:not supplied-effect) (cl:or (cl:null effect) (dotnet:is-instance-of effect "Microsoft.Xna.Framework.Graphics.Effect"))) (cl:or (cl:not supplied-transform-matrix) (cl:or (cl:null transform-matrix) (dotnet:is-instance-of transform-matrix "System.Nullable`1[Microsoft.Xna.Framework.Matrix]"))))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Begin" (cl:if supplied-sort-mode sort-mode (dotnet:enum-or "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Deferred")) (cl:if supplied-blend-state blend-state cl:nil) (cl:if supplied-sampler-state sampler-state cl:nil) (cl:if supplied-depth-stencil-state depth-stencil-state cl:nil) (cl:if supplied-rasterizer-state rasterizer-state cl:nil) (cl:if supplied-effect effect cl:nil) (cl:if supplied-transform-matrix transform-matrix cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "Begin"
                    :supplied-args (cl:append (cl:when supplied-sort-mode (cl:list :sort-mode sort-mode)) (cl:when supplied-blend-state (cl:list :blend-state blend-state)) (cl:when supplied-sampler-state (cl:list :sampler-state sampler-state)) (cl:when supplied-depth-stencil-state (cl:list :depth-stencil-state depth-stencil-state)) (cl:when supplied-rasterizer-state (cl:list :rasterizer-state rasterizer-state)) (cl:when supplied-effect (cl:list :effect effect)) (cl:when supplied-transform-matrix (cl:list :transform-matrix transform-matrix)))))))

(cl:defun dispose (obj! disposing)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Dispose" disposing))

(cl:defun draw (obj! texture position color cl:&optional (color2 cl:nil supplied-color2) (rotation cl:nil supplied-rotation) (origin cl:nil supplied-origin) (effects cl:nil supplied-effects) (layer-depth cl:nil supplied-layer-depth) (layer-depth2 cl:nil supplied-layer-depth2))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.Draw overloads. Dispatches at runtime.

Draw(Texture2D, Vector2, Color) -> Void

Draw(Texture2D, Rectangle, Color) -> Void

Draw(Texture2D, Vector2, Rectangle], Color) -> Void

Draw(Texture2D, Rectangle, Rectangle], Color) -> Void

Draw(Texture2D, Rectangle, Rectangle], Color, Single, Vector2, SpriteEffects, Single) -> Void

Draw(Texture2D, Vector2, Rectangle], Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void

Draw(Texture2D, Vector2, Rectangle], Color, Single, Vector2, Single, SpriteEffects, Single) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "System.Nullable`1[Microsoft.Xna.Framework.Rectangle]")) supplied-color2 (cl:or (cl:null color2) (dotnet:is-instance-of color2 "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Vector2")) supplied-layer-depth (cl:or (cl:null layer-depth) (dotnet:is-instance-of layer-depth "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth2 (cl:numberp layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color color2 rotation origin effects layer-depth layer-depth2))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "System.Nullable`1[Microsoft.Xna.Framework.Rectangle]")) supplied-color2 (cl:or (cl:null color2) (dotnet:is-instance-of color2 "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:numberp effects) supplied-layer-depth (cl:or (cl:null layer-depth) (dotnet:is-instance-of layer-depth "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth2 (cl:numberp layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color color2 rotation origin effects layer-depth layer-depth2))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Rectangle")) (cl:or (cl:null color) (dotnet:is-instance-of color "System.Nullable`1[Microsoft.Xna.Framework.Rectangle]")) supplied-color2 (cl:or (cl:null color2) (dotnet:is-instance-of color2 "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color color2 rotation origin effects layer-depth))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "System.Nullable`1[Microsoft.Xna.Framework.Rectangle]")) supplied-color2 (cl:or (cl:null color2) (dotnet:is-instance-of color2 "Microsoft.Xna.Framework.Color")) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color color2))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Rectangle")) (cl:or (cl:null color) (dotnet:is-instance-of color "System.Nullable`1[Microsoft.Xna.Framework.Rectangle]")) supplied-color2 (cl:or (cl:null color2) (dotnet:is-instance-of color2 "Microsoft.Xna.Framework.Color")) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color color2))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) (cl:not supplied-color2) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color))
    ((cl:and (cl:or (cl:null texture) (dotnet:is-instance-of texture "Microsoft.Xna.Framework.Graphics.Texture2D")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Rectangle")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) (cl:not supplied-color2) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-layer-depth2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "Draw" texture position color))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "Draw"
                    :supplied-args (cl:append (cl:list :texture texture) (cl:list :position position) (cl:list :color color) (cl:when supplied-color2 (cl:list :color2 color2)) (cl:when supplied-rotation (cl:list :rotation rotation)) (cl:when supplied-origin (cl:list :origin origin)) (cl:when supplied-effects (cl:list :effects effects)) (cl:when supplied-layer-depth (cl:list :layer-depth layer-depth)) (cl:when supplied-layer-depth2 (cl:list :layer-depth2 layer-depth2)))))))

(cl:defun draw-string (obj! sprite-font text position color cl:&optional (rotation cl:nil supplied-rotation) (origin cl:nil supplied-origin) (scale cl:nil supplied-scale) (effects cl:nil supplied-effects) (layer-depth cl:nil supplied-layer-depth) (rtl cl:nil supplied-rtl))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.SpriteBatch.DrawString overloads. Dispatches at runtime.

DrawString(SpriteFont, String, Vector2, Color) -> Void

DrawString(SpriteFont, StringBuilder, Vector2, Color) -> Void

DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void

DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void

DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Single, SpriteEffects, Single) -> Void

DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single) -> Void

DrawString(SpriteFont, String, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void

DrawString(SpriteFont, StringBuilder, Vector2, Color, Single, Vector2, Vector2, SpriteEffects, Single, Boolean) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:stringp text) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:or (cl:null scale) (dotnet:is-instance-of scale "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) supplied-rtl (cl:typep rtl 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:or (cl:null text) (dotnet:is-instance-of text "System.Text.StringBuilder")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:or (cl:null scale) (dotnet:is-instance-of scale "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) supplied-rtl (cl:typep rtl 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth rtl))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:stringp text) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:numberp scale) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:stringp text) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:or (cl:null scale) (dotnet:is-instance-of scale "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:or (cl:null text) (dotnet:is-instance-of text "System.Text.StringBuilder")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:numberp scale) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:or (cl:null text) (dotnet:is-instance-of text "System.Text.StringBuilder")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) supplied-rotation (cl:numberp rotation) supplied-origin (cl:or (cl:null origin) (dotnet:is-instance-of origin "Microsoft.Xna.Framework.Vector2")) supplied-scale (cl:or (cl:null scale) (dotnet:is-instance-of scale "Microsoft.Xna.Framework.Vector2")) supplied-effects (cl:or (cl:null effects) (dotnet:is-instance-of effects "Microsoft.Xna.Framework.Graphics.SpriteEffects")) supplied-layer-depth (cl:numberp layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color rotation origin scale effects layer-depth))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:stringp text) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-scale) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color))
    ((cl:and (cl:or (cl:null sprite-font) (dotnet:is-instance-of sprite-font "Microsoft.Xna.Framework.Graphics.SpriteFont")) (cl:or (cl:null text) (dotnet:is-instance-of text "System.Text.StringBuilder")) (cl:or (cl:null position) (dotnet:is-instance-of position "Microsoft.Xna.Framework.Vector2")) (cl:or (cl:null color) (dotnet:is-instance-of color "Microsoft.Xna.Framework.Color")) (cl:not supplied-rotation) (cl:not supplied-origin) (cl:not supplied-scale) (cl:not supplied-effects) (cl:not supplied-layer-depth) (cl:not supplied-rtl))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "DrawString" sprite-font text position color))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-SPRITE-BATCH"
                    :class-name <type-str>
                    :method-name "DrawString"
                    :supplied-args (cl:append (cl:list :sprite-font sprite-font) (cl:list :text text) (cl:list :position position) (cl:list :color color) (cl:when supplied-rotation (cl:list :rotation rotation)) (cl:when supplied-origin (cl:list :origin origin)) (cl:when supplied-scale (cl:list :scale scale)) (cl:when supplied-effects (cl:list :effects effects)) (cl:when supplied-layer-depth (cl:list :layer-depth layer-depth)) (cl:when supplied-rtl (cl:list :rtl rtl)))))))

(cl:defun end (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteBatch") obj!) "End"))

