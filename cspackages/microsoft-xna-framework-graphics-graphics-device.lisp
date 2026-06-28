;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.GraphicsDevice
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T01:32:42Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-graphics-device
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
   #:is-content-lost
   #:is-disposed
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

(in-package :microsoft-xna-framework-graphics-graphics-device)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.GraphicsDevice")
(defconstant <creation> "2026-06-28T01:32:42Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Graphics.GraphicsDevice. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-graphics-adapter-graphics-profile-presentation-parameters (adapter graphics-profile presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice constructor new(GraphicsAdapter, GraphicsProfile, PresentationParameters)"
  (dotnet:new <type-str> adapter graphics-profile presentation-parameters))

(defun new-graphics-adapter-graphics-profile-boolean-presentation-parameters (adapter graphics-profile prefer-half-pixel-offset presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice constructor new(GraphicsAdapter, GraphicsProfile, Boolean, PresentationParameters)"
  (dotnet:new <type-str> adapter graphics-profile prefer-half-pixel-offset presentation-parameters))

(defun adapter (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Adapter"))

(defun blend-factor (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_BlendFactor"))

(defun (setf blend-factor) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_BlendFactor" new-value))

(defun blend-state (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_BlendState"))

(defun (setf blend-state) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_BlendState" new-value))

(defun depth-stencil-state (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_DepthStencilState"))

(defun (setf depth-stencil-state) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_DepthStencilState" new-value))

(defun display-mode (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_DisplayMode"))

(defun graphics-debug (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsDebug"))

(defun (setf graphics-debug) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_GraphicsDebug" new-value))

(defun graphics-device-status (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsDeviceStatus"))

(defun graphics-profile (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_GraphicsProfile"))

(defun indices (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Indices"))

(defun (setf indices) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Indices" new-value))

(defun is-content-lost (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_IsContentLost"))

(defun is-disposed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_IsDisposed"))

(defun metrics (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Metrics"))

(defun (setf metrics) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Metrics" new-value))

(defun presentation-parameters (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_PresentationParameters"))

(defun rasterizer-state (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_RasterizerState"))

(defun (setf rasterizer-state) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_RasterizerState" new-value))

(defun render-target-count (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_RenderTargetCount"))

(defun resources-lost (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_ResourcesLost"))

(defun (setf resources-lost) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_ResourcesLost" new-value))

(defun sampler-states (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_SamplerStates"))

(defun scissor-rectangle (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_ScissorRectangle"))

(defun (setf scissor-rectangle) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_ScissorRectangle" new-value))

(defun textures (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Textures"))

(defun use-half-pixel-offset (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_UseHalfPixelOffset"))

(defun vertex-sampler-states (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_VertexSamplerStates"))

(defun vertex-textures (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_VertexTextures"))

(defun viewport (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "get_Viewport"))

(defun (setf viewport) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "set_Viewport" new-value))

(defun clear (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" args))

(defun clear-color (obj color)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(Color) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" color))

(defun clear-clear-options-color-single-int32 (obj options color depth stencil)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(ClearOptions, Color, Single, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" options color depth stencil))

(defun clear-clear-options-vector4-single-int32 (obj options color depth stencil)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear Clear(ClearOptions, Vector4, Single, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Clear" options color depth stencil))

(defun dispose (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose" args))

(defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose Dispose() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose"))

(defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Dispose" disposing))

(defun draw-indexed-primitives (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" args))

(defun draw-indexed-primitives-primitive-type-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count))

(defun draw-indexed-primitives-primitive-type-int32-int32-int32-int32-int32 (obj primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawIndexedPrimitives" primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count))

(defun draw-instanced-primitives (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" args))

(defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count))

(defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32 (obj primitive-type base-vertex start-index primitive-count base-instance instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count base-instance instance-count))

(defun draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32-int32 (obj primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count instance-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawInstancedPrimitives" primitive-type base-vertex min-vertex-index num-vertices start-index primitive-count instance-count))

(defun draw-primitives (obj primitive-type vertex-start primitive-count)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawPrimitives" primitive-type vertex-start primitive-count))

(defun draw-user-indexed-primitives (type obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives overloads. Dispatches at runtime."
  (apply #'dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (list type) args))

(defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32 (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))

(defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32 (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))

(defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))

(defun draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserIndexedPrimitives" (list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))

(defun draw-user-primitives (type obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives overloads. Dispatches at runtime."
  (apply #'dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (list type) args))

(defun draw-user-primitives-primitive-type-t[]-int32-int32 (type obj primitive-type vertex-data vertex-offset primitive-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives DrawUserPrimitives(PrimitiveType, T[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (list type) primitive-type vertex-data vertex-offset primitive-count))

(defun draw-user-primitives-primitive-type-t[]-int32-int32-vertex-declaration (type obj primitive-type vertex-data vertex-offset primitive-count vertex-declaration)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives DrawUserPrimitives(PrimitiveType, T[], Int32, Int32, VertexDeclaration) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawUserPrimitives" (list type) primitive-type vertex-data vertex-offset primitive-count vertex-declaration))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Finalize"))

(defun get-back-buffer-data (type obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData overloads. Dispatches at runtime."
  (apply #'dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (list type) args))

(defun get-back-buffer-data-t[] (type obj data)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData GetBackBufferData(T[]) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (list type) data))

(defun get-back-buffer-data-t[]-int32-int32 (type obj data start-index element-count)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData GetBackBufferData(T[], Int32, Int32) -> Void"
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetBackBufferData" (list type) data start-index element-count))

(defun get-render-targets (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets" args))

(defun get-render-targets (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets GetRenderTargets() -> RenderTargetBinding[]"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets"))

(defun get-render-targets-render-target-binding[] (obj out-targets)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets GetRenderTargets(RenderTargetBinding[]) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "GetRenderTargets" out-targets))

(defun present (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Present"))

(defun reset (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset" args))

(defun reset (obj)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset Reset() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset"))

(defun reset-presentation-parameters (obj presentation-parameters)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset Reset(PresentationParameters) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Reset" presentation-parameters))

(defun set-render-target (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" args))

(defun set-render-target-render-target2-d (obj render-target)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget SetRenderTarget(RenderTarget2D) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target))

(defun set-render-target-render-target-cube-cube-map-face (obj render-target cube-map-face)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget SetRenderTarget(RenderTargetCube, CubeMapFace) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetRenderTarget" render-target cube-map-face))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTargets overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetRenderTargets(params RenderTargetBinding[]) -> Void

(defun set-vertex-buffer (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" args))

(defun set-vertex-buffer-vertex-buffer (obj vertex-buffer)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer SetVertexBuffer(VertexBuffer) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer))

(defun set-vertex-buffer-vertex-buffer-int32 (obj vertex-buffer vertex-offset)
  "Calls Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer SetVertexBuffer(VertexBuffer, Int32) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "SetVertexBuffer" vertex-buffer vertex-offset))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffers overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetVertexBuffers(params VertexBufferBinding[]) -> Void

