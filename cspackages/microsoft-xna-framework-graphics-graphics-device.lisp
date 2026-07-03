;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.GraphicsDevice
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-graphics-device
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-graphics-adapter-graphics-profile-presentation-parameters
   #:new-graphics-adapter-graphics-profile-boolean-presentation-parameters
   #:adapter
   #:blend-factor
   #:blend-state
   #:depth-stencil-state
   #:display-mode
   #:graphics-debug
   #:graphics-device-status
   #:graphics-profile
   #:indices
   #:content-lost?
   #:disposed?
   #:metrics
   #:presentation-parameters
   #:rasterizer-state
   #:render-target-count
   #:resources-lost
   #:sampler-states
   #:scissor-rectangle
   #:textures
   #:use-half-pixel-offset
   #:vertex-sampler-states
   #:vertex-textures
   #:viewport
   #:clear
   #:clear-color
   #:clear-clear-options-color-single-int32
   #:clear-clear-options-vector4-single-int32
   #:dispose
   #:dispose-boolean
   #:draw-indexed-primitives
   #:draw-indexed-primitives-primitive-type-int32-int32-int32
   #:draw-indexed-primitives-primitive-type-int32-int32-int32-int32-int32
   #:draw-instanced-primitives
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32-int32
   #:draw-primitives
   #:draw-user-indexed-primitives
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32-vertex-declaration
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32-vertex-declaration
   #:draw-user-primitives
   #:draw-user-primitives-primitive-type-t[]-int32-int32
   #:draw-user-primitives-primitive-type-t[]-int32-int32-vertex-declaration
   #:finalize
   #:get-back-buffer-data
   #:get-back-buffer-data-t[]
   #:get-back-buffer-data-t[]-int32-int32
   #:get-back-buffer-data-rectangle]-t[]-int32-int32
   #:get-render-targets
   #:get-render-targets-render-target-binding[]
   #:present
   #:reset
   #:reset-presentation-parameters
   #:set-render-target
   #:set-render-target-render-target2-d
   #:set-render-target-render-target-cube-cube-map-face
   #:set-vertex-buffer
   #:set-vertex-buffer-vertex-buffer
   #:set-vertex-buffer-vertex-buffer-int32
  ))

(cl:in-package :microsoft-xna-framework-graphics-graphics-device)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.GraphicsDevice")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Graphics.GraphicsDevice. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-graphics-adapter-graphics-profile-presentation-parameters (adapter graphics-profile presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice constructor new(GraphicsAdapter, GraphicsProfile, PresentationParameters)"
  (dotnet:new <type-str> adapter graphics-profile presentation-parameters))

(cl:defun new-graphics-adapter-graphics-profile-boolean-presentation-parameters (adapter graphics-profile prefer-half-pixel-offset presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice constructor new(GraphicsAdapter, GraphicsProfile, Boolean, PresentationParameters)"
  (dotnet:new <type-str> adapter graphics-profile prefer-half-pixel-offset presentation-parameters))

(cl:defun adapter (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Adapter"))

(cl:defun blend-factor (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_BlendFactor"))

(cl:defun (cl:setf blend-factor) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_BlendFactor" new-value))

(cl:defun blend-state (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_BlendState"))

(cl:defun (cl:setf blend-state) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_BlendState" new-value))

(cl:defun depth-stencil-state (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_DepthStencilState"))

(cl:defun (cl:setf depth-stencil-state) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_DepthStencilState" new-value))

(cl:defun display-mode (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_DisplayMode"))

(cl:defun graphics-debug (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsDebug"))

(cl:defun (cl:setf graphics-debug) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_GraphicsDebug" new-value))

(cl:defun graphics-device-status (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsDeviceStatus"))

(cl:defun graphics-profile (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsProfile"))

(cl:defun indices (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Indices"))

(cl:defun (cl:setf indices) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Indices" new-value))

(cl:defun content-lost? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_IsContentLost"))

(cl:defun disposed? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_IsDisposed"))

(cl:defun metrics (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Metrics"))

(cl:defun (cl:setf metrics) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Metrics" new-value))

(cl:defun presentation-parameters (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_PresentationParameters"))

(cl:defun rasterizer-state (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_RasterizerState"))

(cl:defun (cl:setf rasterizer-state) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_RasterizerState" new-value))

(cl:defun render-target-count (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_RenderTargetCount"))

(cl:defun resources-lost (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_ResourcesLost"))

(cl:defun (cl:setf resources-lost) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_ResourcesLost" new-value))

(cl:defun sampler-states (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_SamplerStates"))

(cl:defun scissor-rectangle (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_ScissorRectangle"))

(cl:defun (cl:setf scissor-rectangle) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_ScissorRectangle" new-value))

(cl:defun textures (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Textures"))

(cl:defun use-half-pixel-offset (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_UseHalfPixelOffset"))

(cl:defun vertex-sampler-states (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_VertexSamplerStates"))

(cl:defun vertex-textures (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_VertexTextures"))

(cl:defun viewport (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Viewport"))

(cl:defun (cl:setf viewport) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Viewport" new-value))

(cl:defun clear (obj color cl:&optional (color cl:nil supplied-color) (depth cl:nil supplied-depth) (stencil cl:nil supplied-stencil))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null color) (monoutils:dotnet-p color)) supplied-color (cl:or (cl:null color) (monoutils:dotnet-p color)) supplied-depth (cl:numberp depth) supplied-stencil (cl:numberp stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" color color depth stencil))
    ((cl:and (cl:or (cl:null color) (monoutils:dotnet-p color)) supplied-color (cl:or (cl:null color) (monoutils:dotnet-p color)) supplied-depth (cl:numberp depth) supplied-stencil (cl:numberp stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" color color depth stencil))
    ((cl:and (cl:or (cl:null color) (monoutils:dotnet-p color)) (cl:not supplied-color) (cl:not supplied-depth) (cl:not supplied-stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" color))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Clear"
                    :supplied-args (cl:append (cl:list :color color) (cl:when supplied-color (cl:list :color color)) (cl:when supplied-depth (cl:list :depth depth)) (cl:when supplied-stencil (cl:list :stencil stencil)))))))

(cl:defun clear-color (obj color)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(Color) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" color))

(cl:defun clear-clear-options-color-single-int32 (obj options color depth stencil)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(ClearOptions, Color, Single, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" options color depth stencil))

(cl:defun clear-clear-options-vector4-single-int32 (obj options color depth stencil)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(ClearOptions, Vector4, Single, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" options color depth stencil))

(cl:defun dispose (obj cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

(cl:defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose Dispose() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose"))

(cl:defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose" disposing))

(cl:defun draw-indexed-primitives (obj primitive-type base-vertex start-index primitive-count cl:&optional (start-index cl:nil supplied-start-index) (primitive-count cl:nil supplied-primitive-count))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) supplied-start-index (cl:numberp start-index) supplied-primitive-count (cl:numberp primitive-count))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count start-index primitive-count))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:not supplied-start-index) (cl:not supplied-primitive-count))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawIndexedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :base-vertex base-vertex) (cl:list :start-index start-index) (cl:list :primitive-count primitive-count) (cl:when supplied-start-index (cl:list :start-index start-index)) (cl:when supplied-primitive-count (cl:list :primitive-count primitive-count)))))))

(cl:defun draw-indexed-primitives-primitive-type-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count))

(cl:defun draw-indexed-primitives-primitive-type-int32-int32-int32-int32-int32 (obj primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count))

(cl:defun draw-instanced-primitives (obj primitive-type base-vertex start-index primitive-count instance-count cl:&optional (instance-count cl:nil supplied-instance-count) (instance-count cl:nil supplied-instance-count))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) supplied-instance-count (cl:numberp instance-count) supplied-instance-count (cl:numberp instance-count))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count instance-count instance-count))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) supplied-instance-count (cl:numberp instance-count) (cl:not supplied-instance-count))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count instance-count))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) (cl:not supplied-instance-count) (cl:not supplied-instance-count))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawInstancedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :base-vertex base-vertex) (cl:list :start-index start-index) (cl:list :primitive-count primitive-count) (cl:list :instance-count instance-count) (cl:when supplied-instance-count (cl:list :instance-count instance-count)) (cl:when supplied-instance-count (cl:list :instance-count instance-count)))))))

(cl:defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count))

(cl:defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count base-instance instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count base-instance instance-count))

(cl:defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32-int32 (obj primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count instance-count))

(cl:defun draw-primitives (obj primitive-type vertex-start primitive-count)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawPrimitives" primitive-type vertex-start primitive-count))

(cl:defun draw-user-indexed-primitives (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count cl:&optional (vertex-declaration cl:nil supplied-vertex-declaration))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (monoutils:dotnet-p index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (monoutils:dotnet-p vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (monoutils:dotnet-p index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (monoutils:dotnet-p vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (monoutils:dotnet-p index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (monoutils:dotnet-p index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawUserIndexedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :vertex-data vertex-data) (cl:list :vertex-offset vertex-offset) (cl:list :num-vertices num-vertices) (cl:list :index-data index-data) (cl:list :index-offset index-offset) (cl:list :primitive-count primitive-count) (cl:when supplied-vertex-declaration (cl:list :vertex-declaration vertex-declaration)))))))

(cl:defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32 (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))

(cl:defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32 (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))

(cl:defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))

(cl:defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))

(cl:defun draw-user-primitives (type obj primitive-type vertex-data vertex-offset primitive-count cl:&optional (vertex-declaration cl:nil supplied-vertex-declaration))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (monoutils:dotnet-p vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (monoutils:dotnet-p primitive-type)) (cl:or (cl:null vertex-data) (monoutils:dotnet-p vertex-data)) (cl:numberp vertex-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawUserPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :vertex-data vertex-data) (cl:list :vertex-offset vertex-offset) (cl:list :primitive-count primitive-count) (cl:when supplied-vertex-declaration (cl:list :vertex-declaration vertex-declaration)))))))

(cl:defun draw-user-primitives-primitive-type-t[]-int32-int32 (type obj primitive-type vertex-data vertex-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives DrawUserPrimitives(PrimitiveType, T[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count))

(cl:defun draw-user-primitives-primitive-type-t[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives DrawUserPrimitives(PrimitiveType, T[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count vertex-declaration))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Finalize"))

(cl:defun get-back-buffer-data (type obj data cl:&optional (start-index cl:nil supplied-start-index) (element-count cl:nil supplied-element-count) (element-count cl:nil supplied-element-count))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null data) (monoutils:dotnet-p data)) supplied-start-index (cl:or (cl:null start-index) (monoutils:dotnet-p start-index)) supplied-element-count (cl:numberp element-count) supplied-element-count (cl:numberp element-count))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) data start-index element-count element-count))
    ((cl:and (cl:or (cl:null data) (monoutils:dotnet-p data)) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:numberp element-count) (cl:not supplied-element-count))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) data start-index element-count))
    ((cl:and (cl:or (cl:null data) (monoutils:dotnet-p data)) (cl:not supplied-start-index) (cl:not supplied-element-count) (cl:not supplied-element-count))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) data))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "GetBackBufferData"
                    :supplied-args (cl:append (cl:list :data data) (cl:when supplied-start-index (cl:list :start-index start-index)) (cl:when supplied-element-count (cl:list :element-count element-count)) (cl:when supplied-element-count (cl:list :element-count element-count)))))))

(cl:defun get-back-buffer-data-t[] (type obj data)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData GetBackBufferData(T[]) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) data))

(cl:defun get-back-buffer-data-t[]-int32-int32 (type obj data start-index element-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData GetBackBufferData(T[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) data start-index element-count))

(cl:defun get-back-buffer-data-rectangle]-t[]-int32-int32 (type obj rect data start-index element-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData GetBackBufferData(Rectangle], T[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (cl:list type) rect data start-index element-count))

(cl:defun get-render-targets (obj cl:&optional (out-targets cl:nil supplied-out-targets))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-out-targets (cl:or (cl:null out-targets) (monoutils:dotnet-p out-targets)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets" out-targets))
    ((cl:and (cl:not supplied-out-targets))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "GetRenderTargets"
                    :supplied-args (cl:append (cl:when supplied-out-targets (cl:list :out-targets out-targets)))))))

(cl:defun get-render-targets (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets GetRenderTargets() -> RenderTargetBinding[]"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets"))

(cl:defun get-render-targets-render-target-binding[] (obj out-targets)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets GetRenderTargets(RenderTargetBinding[]) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets" out-targets))

(cl:defun present (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Present"))

(cl:defun reset (obj cl:&optional (presentation-parameters cl:nil supplied-presentation-parameters))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-presentation-parameters (cl:or (cl:null presentation-parameters) (monoutils:dotnet-p presentation-parameters)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset" presentation-parameters))
    ((cl:and (cl:not supplied-presentation-parameters))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Reset"
                    :supplied-args (cl:append (cl:when supplied-presentation-parameters (cl:list :presentation-parameters presentation-parameters)))))))

(cl:defun reset (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset Reset() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset"))

(cl:defun reset-presentation-parameters (obj presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset Reset(PresentationParameters) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset" presentation-parameters))

(cl:defun set-render-target (obj render-target cl:&optional (cube-map-face cl:nil supplied-cube-map-face))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null render-target) (monoutils:dotnet-p render-target)) supplied-cube-map-face (cl:or (cl:null cube-map-face) (monoutils:dotnet-p cube-map-face)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target cube-map-face))
    ((cl:and (cl:or (cl:null render-target) (monoutils:dotnet-p render-target)) (cl:not supplied-cube-map-face))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "SetRenderTarget"
                    :supplied-args (cl:append (cl:list :render-target render-target) (cl:when supplied-cube-map-face (cl:list :cube-map-face cube-map-face)))))))

(cl:defun set-render-target-render-target2-d (obj render-target)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget SetRenderTarget(RenderTarget2D) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target))

(cl:defun set-render-target-render-target-cube-cube-map-face (obj render-target cube-map-face)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget SetRenderTarget(RenderTargetCube, CubeMapFace) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target cube-map-face))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTargets overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetRenderTargets(params RenderTargetBinding[]) -> Void

(cl:defun set-vertex-buffer (obj vertex-buffer cl:&optional (vertex-offset cl:nil supplied-vertex-offset))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null vertex-buffer) (monoutils:dotnet-p vertex-buffer)) supplied-vertex-offset (cl:numberp vertex-offset))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer vertex-offset))
    ((cl:and (cl:or (cl:null vertex-buffer) (monoutils:dotnet-p vertex-buffer)) (cl:not supplied-vertex-offset))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "SetVertexBuffer"
                    :supplied-args (cl:append (cl:list :vertex-buffer vertex-buffer) (cl:when supplied-vertex-offset (cl:list :vertex-offset vertex-offset)))))))

(cl:defun set-vertex-buffer-vertex-buffer (obj vertex-buffer)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer SetVertexBuffer(VertexBuffer) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer))

(cl:defun set-vertex-buffer-vertex-buffer-int32 (obj vertex-buffer vertex-offset)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer SetVertexBuffer(VertexBuffer, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer vertex-offset))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffers overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetVertexBuffers(params VertexBufferBinding[]) -> Void

