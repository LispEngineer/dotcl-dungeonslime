;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:45Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sampler-state
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

(in-package :microsoft-xna-framework-graphics-sampler-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(defconstant <creation> "2026-06-28T22:57:45Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState")))

(defun new ()
  (dotnet:new <type-str>))

(defconstant +anisotropic-clamp+ (dotnet:static <type-str> "AnisotropicClamp"))

(defconstant +anisotropic-wrap+ (dotnet:static <type-str> "AnisotropicWrap"))

(defconstant +linear-clamp+ (dotnet:static <type-str> "LinearClamp"))

(defconstant +linear-wrap+ (dotnet:static <type-str> "LinearWrap"))

(defconstant +point-clamp+ (dotnet:static <type-str> "PointClamp"))

(defconstant +point-wrap+ (dotnet:static <type-str> "PointWrap"))

(defun address-u (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressU"))

(defun (setf address-u) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressU" new-value))

(defun address-v (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressV"))

(defun (setf address-v) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressV" new-value))

(defun address-w (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_AddressW"))

(defun (setf address-w) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_AddressW" new-value))

(defun border-color (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_BorderColor"))

(defun (setf border-color) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_BorderColor" new-value))

(defun comparison-function (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_ComparisonFunction"))

(defun (setf comparison-function) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_ComparisonFunction" new-value))

(defun filter (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_Filter"))

(defun (setf filter) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_Filter" new-value))

(defun filter-mode (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_FilterMode"))

(defun (setf filter-mode) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_FilterMode" new-value))

(defun max-anisotropy (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MaxAnisotropy"))

(defun (setf max-anisotropy) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MaxAnisotropy" new-value))

(defun max-mip-level (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MaxMipLevel"))

(defun (setf max-mip-level) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MaxMipLevel" new-value))

(defun mip-map-level-of-detail-bias (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "get_MipMapLevelOfDetailBias"))

(defun (setf mip-map-level-of-detail-bias) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "set_MipMapLevelOfDetailBias" new-value))

(defun dispose (obj disposing)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj) "Dispose" disposing))

