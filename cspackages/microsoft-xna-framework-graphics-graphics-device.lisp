;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.GraphicsDevice
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:41Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-graphics-device
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
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
   #:draw-primitives
   #:finalize
   #:present
  ))

(in-package :microsoft-xna-framework-graphics-graphics-device)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.GraphicsDevice")
(defconstant <creation> "2026-06-20T20:20:41Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.GraphicsDevice")))

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

(defun draw-primitives (obj primitive-type vertex-start primitive-count)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "DrawPrimitives" primitive-type vertex-start primitive-count))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Finalize"))

(defun present (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.GraphicsDevice") obj) "Present"))

