;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :microsoft-xna-framework-graphics-sampler-state)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun new ()
  (dotnet:new <type-str>))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %anisotropic-clamp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +anisotropic-clamp+
  (cl:if (cl:eq %anisotropic-clamp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %anisotropic-clamp-cache% (dotnet:static <type-str> "AnisotropicClamp"))
      %anisotropic-clamp-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %anisotropic-wrap-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +anisotropic-wrap+
  (cl:if (cl:eq %anisotropic-wrap-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %anisotropic-wrap-cache% (dotnet:static <type-str> "AnisotropicWrap"))
      %anisotropic-wrap-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %linear-clamp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +linear-clamp+
  (cl:if (cl:eq %linear-clamp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %linear-clamp-cache% (dotnet:static <type-str> "LinearClamp"))
      %linear-clamp-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %linear-wrap-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +linear-wrap+
  (cl:if (cl:eq %linear-wrap-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %linear-wrap-cache% (dotnet:static <type-str> "LinearWrap"))
      %linear-wrap-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %point-clamp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +point-clamp+
  (cl:if (cl:eq %point-clamp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %point-clamp-cache% (dotnet:static <type-str> "PointClamp"))
      %point-clamp-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SamplerState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %point-wrap-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +point-wrap+
  (cl:if (cl:eq %point-wrap-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %point-wrap-cache% (dotnet:static <type-str> "PointWrap"))
      %point-wrap-cache%))

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

