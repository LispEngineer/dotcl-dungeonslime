;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T15:34:33Z

(cl:in-package :microsoft-xna-framework-graphics-sampler-state)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(cl:defconstant <creation> "2026-07-04T15:34:33Z")
(cl:defconstant <version> 30)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState")))

(cl:defun new ()
  (dotnet:new <type-str>))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +anisotropic-clamp+ (dotnet:static <type-str> "AnisotropicClamp"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +anisotropic-wrap+ (dotnet:static <type-str> "AnisotropicWrap"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +linear-clamp+ (dotnet:static <type-str> "LinearClamp"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +linear-wrap+ (dotnet:static <type-str> "LinearWrap"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +point-clamp+ (dotnet:static <type-str> "PointClamp"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +point-wrap+ (dotnet:static <type-str> "PointWrap"))

(cl:defun address-u (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_AddressU"))

(cl:defun (cl:setf address-u) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_AddressU" new-value))

(cl:defun address-v (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_AddressV"))

(cl:defun (cl:setf address-v) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_AddressV" new-value))

(cl:defun address-w (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_AddressW"))

(cl:defun (cl:setf address-w) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_AddressW" new-value))

(cl:defun border-color (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_BorderColor"))

(cl:defun (cl:setf border-color) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_BorderColor" new-value))

(cl:defun comparison-function (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_ComparisonFunction"))

(cl:defun (cl:setf comparison-function) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_ComparisonFunction" new-value))

(cl:defun filter (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_Filter"))

(cl:defun (cl:setf filter) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_Filter" new-value))

(cl:defun filter-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_FilterMode"))

(cl:defun (cl:setf filter-mode) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_FilterMode" new-value))

(cl:defun max-anisotropy (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_MaxAnisotropy"))

(cl:defun (cl:setf max-anisotropy) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_MaxAnisotropy" new-value))

(cl:defun max-mip-level (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_MaxMipLevel"))

(cl:defun (cl:setf max-mip-level) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_MaxMipLevel" new-value))

(cl:defun mip-map-level-of-detail-bias (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "get_MipMapLevelOfDetailBias"))

(cl:defun (cl:setf mip-map-level-of-detail-bias) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "set_MipMapLevelOfDetailBias" new-value))

(cl:defun dispose (obj! disposing)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SamplerState") obj!) "Dispose" disposing))

