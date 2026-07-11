;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.Renderer
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :rendering-library-graphics-renderer)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Graphics.Renderer"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.Renderer")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro custom-effect-manager (dotnet:static <type-str> "CustomEffectManager"))

(cl:define-symbol-macro self (dotnet:static <type-str> "Self"))

(cl:define-symbol-macro using-effect (dotnet:static <type-str> "UsingEffect"))

(cl:defun apply-camera-zoom-on-world-translation ()
  (dotnet:static <type-str> "ApplyCameraZoomOnWorldTranslation"))

(cl:defun (cl:setf apply-camera-zoom-on-world-translation) (new-value)
  (cl:setf (dotnet:static <type-str> "ApplyCameraZoomOnWorldTranslation") new-value))

(cl:defun linearize-textures ()
  (dotnet:static <type-str> "LinearizeTextures"))

(cl:defun (cl:setf linearize-textures) (new-value)
  (cl:setf (dotnet:static <type-str> "LinearizeTextures") new-value))

(cl:defun normal-blend-state ()
  (dotnet:static <type-str> "NormalBlendState"))

(cl:defun (cl:setf normal-blend-state) (new-value)
  (cl:setf (dotnet:static <type-str> "NormalBlendState") new-value))

(cl:defun texture-filter ()
  (dotnet:static <type-str> "TextureFilter"))

(cl:defun (cl:setf texture-filter) (new-value)
  (cl:setf (dotnet:static <type-str> "TextureFilter") new-value))

(cl:defun use-basic-effect-rendering ()
  (dotnet:static <type-str> "UseBasicEffectRendering"))

(cl:defun (cl:setf use-basic-effect-rendering) (new-value)
  (cl:setf (dotnet:static <type-str> "UseBasicEffectRendering") new-value))

(cl:defun use-custom-effect-rendering ()
  (dotnet:static <type-str> "UseCustomEffectRendering"))

(cl:defun (cl:setf use-custom-effect-rendering) (new-value)
  (cl:setf (dotnet:static <type-str> "UseCustomEffectRendering") new-value))

(cl:defun camera (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_Camera"))

(cl:defun dotted-line-texture (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_DottedLineTexture"))

(cl:defun graphics-device (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_GraphicsDevice"))

(cl:defun using-premultiplied-alpha? (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_IsUsingPremultipliedAlpha"))

(cl:defun (cl:setf using-premultiplied-alpha?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "set_IsUsingPremultipliedAlpha" new-value))

(cl:defun layers (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_Layers"))

(cl:defun main-layer (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_MainLayer"))

(cl:defun single-pixel-texture (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_SinglePixelTexture"))

(cl:defun (cl:setf single-pixel-texture) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "set_SinglePixelTexture" new-value))

(cl:defun sprite-renderer (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "get_SpriteRenderer"))

(cl:defun single-pixel-source-rectangle (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "SinglePixelSourceRectangle"))

(cl:defun (cl:setf single-pixel-source-rectangle) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "SinglePixelSourceRectangle") new-value))

(cl:defun lock-object ()
  (dotnet:static <type-str> "LockObject"))

(cl:defun (cl:setf lock-object) (new-value)
  (cl:setf (dotnet:static <type-str> "LockObject") new-value))

(cl:defun render-using-hierarchy ()
  (dotnet:static <type-str> "RenderUsingHierarchy"))

(cl:defun (cl:setf render-using-hierarchy) (new-value)
  (cl:setf (dotnet:static <type-str> "RenderUsingHierarchy") new-value))

(cl:defun add-layer (obj! cl:&optional (layer cl:nil supplied-layer))
  "Master wrapper for RenderingLibrary.Graphics.Renderer.AddLayer overloads. Dispatches at runtime.

AddLayer() -> Layer

AddLayer(Layer) -> Void
"
  (cl:cond
    ((cl:and supplied-layer (cl:or (cl:null layer) (dotnet:object-type layer)))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "AddLayer" layer))
    ((cl:and (cl:not supplied-layer))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "AddLayer"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "RENDERING-LIBRARY-GRAPHICS-RENDERER"
                    :class-name <type-str>
                    :method-name "AddLayer"
                    :supplied-args (cl:append (cl:when supplied-layer (cl:list :layer layer)))))))

(cl:defun begin (obj! cl:&key (sprite-batch-matrix cl:nil supplied-sprite-batch-matrix))
  "Master wrapper for RenderingLibrary.Graphics.Renderer.Begin overloads. Dispatches at runtime.

Begin(Matrix]) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null sprite-batch-matrix) (dotnet:object-type sprite-batch-matrix)))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Begin" sprite-batch-matrix))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "RENDERING-LIBRARY-GRAPHICS-RENDERER"
                    :class-name <type-str>
                    :method-name "Begin"
                    :supplied-args (cl:append (cl:when supplied-sprite-batch-matrix (cl:list :sprite-batch-matrix sprite-batch-matrix)))))))

;; Note: RenderingLibrary.Graphics.Renderer.Begin also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Begin(Matrix]) -> Void

(cl:defun clear-performance-recording-variables (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "ClearPerformanceRecordingVariables"))

(cl:defun draw (obj! managers cl:&optional (layer cl:nil supplied-layer))
  "Master wrapper for RenderingLibrary.Graphics.Renderer.Draw overloads. Dispatches at runtime.

Draw(SystemManagers) -> Void

Draw(IRenderableIpso) -> Void

Draw(SystemManagers, Layer) -> Void

Draw(SystemManagers, Layer]) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null managers) (dotnet:object-type managers)) supplied-layer (cl:or (cl:null layer) (dotnet:object-type layer)))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Draw" managers layer))
    ((cl:and (cl:or (cl:null managers) (dotnet:object-type managers)) supplied-layer (cl:or (cl:null layer) (dotnet:object-type layer)))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Draw" managers layer))
    ((cl:and (cl:or (cl:null managers) (dotnet:object-type managers)) (cl:not supplied-layer))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Draw" managers))
    ((cl:and (cl:or (cl:null managers) (dotnet:object-type managers)) (cl:not supplied-layer))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Draw" managers))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "RENDERING-LIBRARY-GRAPHICS-RENDERER"
                    :class-name <type-str>
                    :method-name "Draw"
                    :supplied-args (cl:append (cl:list :managers managers) (cl:when supplied-layer (cl:list :layer layer)))))))

(cl:defun end (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "End"))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Equals" obj))

(cl:defun force-end (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "ForceEnd"))

(cl:defun initialize (obj! graphics-device managers)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Initialize" graphics-device managers))

(cl:defun insert-layer (obj! index layer)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "InsertLayer" index layer))

(cl:defun remove-layer (obj! layer)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "RemoveLayer" layer))

(cl:defun remove-renderable (obj! renderable)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "RemoveRenderable" renderable))

(cl:defun try-get-single-pixel-texture (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "TryGetSinglePixelTexture"))

(cl:defun uninitialize (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.Renderer") obj!) "Uninitialize"))

