;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.GraphicsDevice
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :microsoft-xna-framework-graphics-graphics-device)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.GraphicsDevice")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice")))

(cl:defun new (adapter graphics-profile presentation-parameters cl:&optional (presentation-parameters2 cl:nil supplied-presentation-parameters2))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice constructor overloads. Dispatches at runtime.

new(GraphicsAdapter, GraphicsProfile, PresentationParameters)

new(GraphicsAdapter, GraphicsProfile, Boolean, PresentationParameters)
"
  (cl:cond
    ((cl:and (cl:or (cl:null adapter) (dotnet:object-type adapter)) (cl:or (cl:null graphics-profile) (dotnet:object-type graphics-profile)) (cl:typep presentation-parameters 'cl:boolean) supplied-presentation-parameters2 (cl:or (cl:null presentation-parameters2) (dotnet:object-type presentation-parameters2)))
     (dotnet:new <type-str> adapter graphics-profile presentation-parameters presentation-parameters2))
    ((cl:and (cl:or (cl:null adapter) (dotnet:object-type adapter)) (cl:or (cl:null graphics-profile) (dotnet:object-type graphics-profile)) (cl:or (cl:null presentation-parameters) (dotnet:object-type presentation-parameters)) (cl:not supplied-presentation-parameters2))
     (dotnet:new <type-str> adapter graphics-profile presentation-parameters))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :adapter adapter) (cl:list :graphics-profile graphics-profile) (cl:list :presentation-parameters presentation-parameters) (cl:when supplied-presentation-parameters2 (cl:list :presentation-parameters2 presentation-parameters2)))))))

(cl:defun discard-color ()
  (dotnet:static <type-str> "DiscardColor"))

(cl:defun (cl:setf discard-color) (new-value)
  (cl:setf (dotnet:static <type-str> "DiscardColor") new-value))

(cl:defun adapter (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_Adapter"))

(cl:defun blend-factor (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_BlendFactor"))

(cl:defun (cl:setf blend-factor) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_BlendFactor" new-value))

(cl:defun blend-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_BlendState"))

(cl:defun (cl:setf blend-state) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_BlendState" new-value))

(cl:defun depth-stencil-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_DepthStencilState"))

(cl:defun (cl:setf depth-stencil-state) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_DepthStencilState" new-value))

(cl:defun display-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_DisplayMode"))

(cl:defun graphics-debug (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_GraphicsDebug"))

(cl:defun (cl:setf graphics-debug) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_GraphicsDebug" new-value))

(cl:defun graphics-device-status (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_GraphicsDeviceStatus"))

(cl:defun graphics-profile (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_GraphicsProfile"))

(cl:defun indices (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_Indices"))

(cl:defun (cl:setf indices) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_Indices" new-value))

(cl:defun content-lost? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_IsContentLost"))

(cl:defun disposed? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_IsDisposed"))

(cl:defun metrics (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_Metrics"))

(cl:defun (cl:setf metrics) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_Metrics" new-value))

(cl:defun presentation-parameters (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_PresentationParameters"))

(cl:defun rasterizer-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_RasterizerState"))

(cl:defun (cl:setf rasterizer-state) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_RasterizerState" new-value))

(cl:defun render-target-count (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_RenderTargetCount"))

(cl:defun resources-lost (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_ResourcesLost"))

(cl:defun (cl:setf resources-lost) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_ResourcesLost" new-value))

(cl:defun sampler-states (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_SamplerStates"))

(cl:defun scissor-rectangle (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_ScissorRectangle"))

(cl:defun (cl:setf scissor-rectangle) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_ScissorRectangle" new-value))

(cl:defun textures (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_Textures"))

(cl:defun use-half-pixel-offset (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_UseHalfPixelOffset"))

(cl:defun vertex-sampler-states (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_VertexSamplerStates"))

(cl:defun vertex-textures (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_VertexTextures"))

(cl:defun viewport (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "get_Viewport"))

(cl:defun (cl:setf viewport) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "set_Viewport" new-value))

(cl:defun add-device-lost (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceLost" handler))

(cl:defun remove-device-lost (obj! handler)
  "Pass the exact same HANDLER object given to add-device-lost -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceLost" handler))

(cl:defun add-device-reset (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceReset" handler))

(cl:defun remove-device-reset (obj! handler)
  "Pass the exact same HANDLER object given to add-device-reset -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceReset" handler))

(cl:defun add-device-resetting (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceResetting" handler))

(cl:defun remove-device-resetting (obj! handler)
  "Pass the exact same HANDLER object given to add-device-resetting -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DeviceResetting" handler))

(cl:defun add-disposing (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Disposing" handler))

(cl:defun remove-disposing (obj! handler)
  "Pass the exact same HANDLER object given to add-disposing -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Disposing" handler))

(cl:defun add-resource-created (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "ResourceCreated" handler))

(cl:defun remove-resource-created (obj! handler)
  "Pass the exact same HANDLER object given to add-resource-created -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "ResourceCreated" handler))

(cl:defun add-resource-destroyed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "ResourceDestroyed" handler))

(cl:defun remove-resource-destroyed (obj! handler)
  "Pass the exact same HANDLER object given to add-resource-destroyed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "ResourceDestroyed" handler))

(cl:defun clear (obj! color cl:&optional (color2 cl:nil supplied-color2) (depth cl:nil supplied-depth) (stencil cl:nil supplied-stencil))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Clear overloads. Dispatches at runtime.

Clear(Color) -> Void

Clear(ClearOptions, Color, Single, Int32) -> Void

Clear(ClearOptions, Vector4, Single, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null color) (dotnet:object-type color)) supplied-color2 (cl:or (cl:null color2) (dotnet:object-type color2)) supplied-depth (cl:numberp depth) supplied-stencil (cl:numberp stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Clear" color color2 depth stencil))
    ((cl:and (cl:or (cl:null color) (dotnet:object-type color)) supplied-color2 (cl:or (cl:null color2) (dotnet:object-type color2)) supplied-depth (cl:numberp depth) supplied-stencil (cl:numberp stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Clear" color color2 depth stencil))
    ((cl:and (cl:or (cl:null color) (dotnet:object-type color)) (cl:not supplied-color2) (cl:not supplied-depth) (cl:not supplied-stencil))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Clear" color))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Clear"
                    :supplied-args (cl:append (cl:list :color color) (cl:when supplied-color2 (cl:list :color2 color2)) (cl:when supplied-depth (cl:list :depth depth)) (cl:when supplied-stencil (cl:list :stencil stencil)))))))

(cl:defun dispose (obj! cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Dispose overloads. Dispatches at runtime.

Dispose() -> Void

Dispose(Boolean) -> Void
"
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Dispose"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

(cl:defun draw-indexed-primitives (obj! primitive-type base-vertex start-index primitive-count cl:&optional (start-index2 cl:nil supplied-start-index2) (primitive-count2 cl:nil supplied-primitive-count2))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawIndexedPrimitives overloads. Dispatches at runtime.

DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32) -> Void

DrawIndexedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) supplied-start-index2 (cl:numberp start-index2) supplied-primitive-count2 (cl:numberp primitive-count2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count start-index2 primitive-count2))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:not supplied-start-index2) (cl:not supplied-primitive-count2))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawIndexedPrimitives" primitive-type base-vertex start-index primitive-count))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawIndexedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :base-vertex base-vertex) (cl:list :start-index start-index) (cl:list :primitive-count primitive-count) (cl:when supplied-start-index2 (cl:list :start-index2 start-index2)) (cl:when supplied-primitive-count2 (cl:list :primitive-count2 primitive-count2)))))))

(cl:defun draw-instanced-primitives (obj! primitive-type base-vertex start-index primitive-count instance-count cl:&optional (instance-count2 cl:nil supplied-instance-count2) (instance-count3 cl:nil supplied-instance-count3))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawInstancedPrimitives overloads. Dispatches at runtime.

DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32) -> Void

DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32) -> Void

DrawInstancedPrimitives(PrimitiveType, Int32, Int32, Int32, Int32, Int32, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) supplied-instance-count2 (cl:numberp instance-count2) supplied-instance-count3 (cl:numberp instance-count3))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count instance-count2 instance-count3))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) supplied-instance-count2 (cl:numberp instance-count2) (cl:not supplied-instance-count3))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count instance-count2))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:numberp base-vertex) (cl:numberp start-index) (cl:numberp primitive-count) (cl:numberp instance-count) (cl:not supplied-instance-count2) (cl:not supplied-instance-count3))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawInstancedPrimitives" primitive-type base-vertex start-index primitive-count instance-count))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawInstancedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :base-vertex base-vertex) (cl:list :start-index start-index) (cl:list :primitive-count primitive-count) (cl:list :instance-count instance-count) (cl:when supplied-instance-count2 (cl:list :instance-count2 instance-count2)) (cl:when supplied-instance-count3 (cl:list :instance-count3 instance-count3)))))))

(cl:defun draw-primitives (obj! primitive-type vertex-start primitive-count)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawPrimitives" primitive-type vertex-start primitive-count))

(cl:defun draw-user-indexed-primitives (type obj! primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count cl:&optional (vertex-declaration cl:nil supplied-vertex-declaration))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserIndexedPrimitives overloads. Dispatches at runtime.

DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32) -> Void

DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32) -> Void

DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int16[], Int32, Int32, VertexDeclaration) -> Void

DrawUserIndexedPrimitives(PrimitiveType, T[], Int32, Int32, Int32[], Int32, Int32, VertexDeclaration) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (dotnet:object-type index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (dotnet:object-type vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (dotnet:object-type index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (dotnet:object-type vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (dotnet:object-type index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp num-vertices) (cl:or (cl:null index-data) (dotnet:object-type index-data)) (cl:numberp index-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserIndexedPrimitives" (cl:list type) primitive-type vertex-data vertex-offset num-vertices index-data index-offset primitive-count))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawUserIndexedPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :vertex-data vertex-data) (cl:list :vertex-offset vertex-offset) (cl:list :num-vertices num-vertices) (cl:list :index-data index-data) (cl:list :index-offset index-offset) (cl:list :primitive-count primitive-count) (cl:when supplied-vertex-declaration (cl:list :vertex-declaration vertex-declaration)))))))

(cl:defun draw-user-primitives (type obj! primitive-type vertex-data vertex-offset primitive-count cl:&optional (vertex-declaration cl:nil supplied-vertex-declaration))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.DrawUserPrimitives overloads. Dispatches at runtime.

DrawUserPrimitives(PrimitiveType, T[], Int32, Int32) -> Void

DrawUserPrimitives(PrimitiveType, T[], Int32, Int32, VertexDeclaration) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp primitive-count) supplied-vertex-declaration (cl:or (cl:null vertex-declaration) (dotnet:object-type vertex-declaration)))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count vertex-declaration))
    ((cl:and (cl:or (cl:null primitive-type) (dotnet:object-type primitive-type)) (cl:or (cl:null vertex-data) (dotnet:object-type vertex-data)) (cl:numberp vertex-offset) (cl:numberp primitive-count) (cl:not supplied-vertex-declaration))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "DrawUserPrimitives" (cl:list type) primitive-type vertex-data vertex-offset primitive-count))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "DrawUserPrimitives"
                    :supplied-args (cl:append (cl:list :primitive-type primitive-type) (cl:list :vertex-data vertex-data) (cl:list :vertex-offset vertex-offset) (cl:list :primitive-count primitive-count) (cl:when supplied-vertex-declaration (cl:list :vertex-declaration vertex-declaration)))))))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Finalize"))

(cl:defun get-back-buffer-data (type obj! data cl:&optional (start-index cl:nil supplied-start-index) (element-count cl:nil supplied-element-count) (element-count2 cl:nil supplied-element-count2))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetBackBufferData overloads. Dispatches at runtime.

GetBackBufferData(T[]) -> Void

GetBackBufferData(T[], Int32, Int32) -> Void

GetBackBufferData(Rectangle], T[], Int32, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null data) (dotnet:object-type data)) supplied-start-index (cl:or (cl:null start-index) (dotnet:object-type start-index)) supplied-element-count (cl:numberp element-count) supplied-element-count2 (cl:numberp element-count2))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "GetBackBufferData" (cl:list type) data start-index element-count element-count2))
    ((cl:and (cl:or (cl:null data) (dotnet:object-type data)) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:numberp element-count) (cl:not supplied-element-count2))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "GetBackBufferData" (cl:list type) data start-index element-count))
    ((cl:and (cl:or (cl:null data) (dotnet:object-type data)) (cl:not supplied-start-index) (cl:not supplied-element-count) (cl:not supplied-element-count2))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "GetBackBufferData" (cl:list type) data))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "GetBackBufferData"
                    :supplied-args (cl:append (cl:list :data data) (cl:when supplied-start-index (cl:list :start-index start-index)) (cl:when supplied-element-count (cl:list :element-count element-count)) (cl:when supplied-element-count2 (cl:list :element-count2 element-count2)))))))

(cl:defun get-render-targets (obj! cl:&optional (out-targets cl:nil supplied-out-targets))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.GetRenderTargets overloads. Dispatches at runtime.

GetRenderTargets() -> RenderTargetBinding[]

GetRenderTargets(RenderTargetBinding[]) -> Void
"
  (cl:cond
    ((cl:and supplied-out-targets (cl:or (cl:null out-targets) (dotnet:object-type out-targets)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "GetRenderTargets" out-targets))
    ((cl:and (cl:not supplied-out-targets))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "GetRenderTargets"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "GetRenderTargets"
                    :supplied-args (cl:append (cl:when supplied-out-targets (cl:list :out-targets out-targets)))))))

(cl:defun present (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Present"))

(cl:defun reset (obj! cl:&optional (presentation-parameters cl:nil supplied-presentation-parameters))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.Reset overloads. Dispatches at runtime.

Reset() -> Void

Reset(PresentationParameters) -> Void
"
  (cl:cond
    ((cl:and supplied-presentation-parameters (cl:or (cl:null presentation-parameters) (dotnet:object-type presentation-parameters)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Reset" presentation-parameters))
    ((cl:and (cl:not supplied-presentation-parameters))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "Reset"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "Reset"
                    :supplied-args (cl:append (cl:when supplied-presentation-parameters (cl:list :presentation-parameters presentation-parameters)))))))

(cl:defun set-render-target (obj! render-target cl:&optional (cube-map-face cl:nil supplied-cube-map-face))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTarget overloads. Dispatches at runtime.

SetRenderTarget(RenderTarget2D) -> Void

SetRenderTarget(RenderTargetCube, CubeMapFace) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null render-target) (dotnet:object-type render-target)) supplied-cube-map-face (cl:or (cl:null cube-map-face) (dotnet:object-type cube-map-face)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "SetRenderTarget" render-target cube-map-face))
    ((cl:and (cl:or (cl:null render-target) (dotnet:object-type render-target)) (cl:not supplied-cube-map-face))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "SetRenderTarget" render-target))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "SetRenderTarget"
                    :supplied-args (cl:append (cl:list :render-target render-target) (cl:when supplied-cube-map-face (cl:list :cube-map-face cube-map-face)))))))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetRenderTargets overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetRenderTargets(params RenderTargetBinding[]) -> Void

(cl:defun set-vertex-buffer (obj! vertex-buffer cl:&optional (vertex-offset cl:nil supplied-vertex-offset))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffer overloads. Dispatches at runtime.

SetVertexBuffer(VertexBuffer) -> Void

SetVertexBuffer(VertexBuffer, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null vertex-buffer) (dotnet:object-type vertex-buffer)) supplied-vertex-offset (cl:numberp vertex-offset))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "SetVertexBuffer" vertex-buffer vertex-offset))
    ((cl:and (cl:or (cl:null vertex-buffer) (dotnet:object-type vertex-buffer)) (cl:not supplied-vertex-offset))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj!) "SetVertexBuffer" vertex-buffer))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-GRAPHICS-DEVICE"
                    :class-name <type-str>
                    :method-name "SetVertexBuffer"
                    :supplied-args (cl:append (cl:list :vertex-buffer vertex-buffer) (cl:when supplied-vertex-offset (cl:list :vertex-offset vertex-offset)))))))

;; The following C# Microsoft.Xna.Framework.Graphics.GraphicsDevice.SetVertexBuffers overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   SetVertexBuffers(params VertexBufferBinding[]) -> Void

