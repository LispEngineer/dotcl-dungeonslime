;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.PlayerIndex
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :microsoft-xna-framework-player-index)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.PlayerIndex"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.PlayerIndex")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.PlayerIndex is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %four-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +four+
  (cl:if (cl:eq %four-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %four-cache% (dotnet:static <type-str> "Four"))
      %four-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.PlayerIndex is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %one-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +one+
  (cl:if (cl:eq %one-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %one-cache% (dotnet:static <type-str> "One"))
      %one-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.PlayerIndex is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %three-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +three+
  (cl:if (cl:eq %three-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %three-cache% (dotnet:static <type-str> "Three"))
      %three-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.PlayerIndex is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %two-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +two+
  (cl:if (cl:eq %two-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %two-cache% (dotnet:static <type-str> "Two"))
      %two-cache%))

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.PlayerIndex") obj!) "value__") new-value))

