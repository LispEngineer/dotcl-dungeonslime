;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteSortMode
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :microsoft-xna-framework-graphics-sprite-sort-mode)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteSortMode"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteSortMode")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SpriteSortMode is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %back-to-front-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +back-to-front+
  (cl:if (cl:eq %back-to-front-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %back-to-front-cache% (dotnet:static <type-str> "BackToFront"))
      %back-to-front-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SpriteSortMode is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %deferred-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +deferred+
  (cl:if (cl:eq %deferred-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %deferred-cache% (dotnet:static <type-str> "Deferred"))
      %deferred-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SpriteSortMode is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %front-to-back-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +front-to-back+
  (cl:if (cl:eq %front-to-back-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %front-to-back-cache% (dotnet:static <type-str> "FrontToBack"))
      %front-to-back-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SpriteSortMode is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %immediate-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +immediate+
  (cl:if (cl:eq %immediate-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %immediate-cache% (dotnet:static <type-str> "Immediate"))
      %immediate-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Graphics.SpriteSortMode is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %texture-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +texture+
  (cl:if (cl:eq %texture-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %texture-cache% (dotnet:static <type-str> "Texture"))
      %texture-cache%))

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteSortMode") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteSortMode") obj!) "value__") new-value))

