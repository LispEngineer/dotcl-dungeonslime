;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:38Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-graphics-sampler-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+anisotropic-clamp+
   #:+anisotropic-wrap+
   #:+linear-clamp+
   #:+linear-wrap+
   #:+point-clamp+
   #:+point-wrap+
   #:address-u
   #:address-v
   #:address-w
   #:border-color
   #:comparison-function
   #:filter
   #:filter-mode
   #:max-anisotropy
   #:max-mip-level
   #:mip-map-level-of-detail-bias
   #:dispose
  ))

(cl:in-package :microsoft-xna-framework-graphics-sampler-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(cl:defconstant <creation> "2026-06-29T01:13:38Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defconstant +anisotropic-clamp+ (dotnet:static <type-str> "AnisotropicClamp"))

(cl:defconstant +anisotropic-wrap+ (dotnet:static <type-str> "AnisotropicWrap"))

(cl:defconstant +linear-clamp+ (dotnet:static <type-str> "LinearClamp"))

(cl:defconstant +linear-wrap+ (dotnet:static <type-str> "LinearWrap"))

(cl:defconstant +point-clamp+ (dotnet:static <type-str> "PointClamp"))

(cl:defconstant +point-wrap+ (dotnet:static <type-str> "PointWrap"))

(cl:defun address-u (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressU"))

(cl:defun (cl:setf address-u) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressU" new-value))

(cl:defun address-v (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressV"))

(cl:defun (cl:setf address-v) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressV" new-value))

(cl:defun address-w (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressW"))

(cl:defun (cl:setf address-w) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressW" new-value))

(cl:defun border-color (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_BorderColor"))

(cl:defun (cl:setf border-color) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_BorderColor" new-value))

(cl:defun comparison-function (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_ComparisonFunction"))

(cl:defun (cl:setf comparison-function) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_ComparisonFunction" new-value))

(cl:defun filter (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_Filter"))

(cl:defun (cl:setf filter) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_Filter" new-value))

(cl:defun filter-mode (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_FilterMode"))

(cl:defun (cl:setf filter-mode) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_FilterMode" new-value))

(cl:defun max-anisotropy (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MaxAnisotropy"))

(cl:defun (cl:setf max-anisotropy) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MaxAnisotropy" new-value))

(cl:defun max-mip-level (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MaxMipLevel"))

(cl:defun (cl:setf max-mip-level) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MaxMipLevel" new-value))

(cl:defun mip-map-level-of-detail-bias (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MipMapLevelOfDetailBias"))

(cl:defun (cl:setf mip-map-level-of-detail-bias) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MipMapLevelOfDetailBias" new-value))

(cl:defun dispose (obj disposing)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "Dispose" disposing))

