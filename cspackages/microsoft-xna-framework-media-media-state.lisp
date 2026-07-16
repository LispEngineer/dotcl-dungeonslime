;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.MediaState
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-media-media-state)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.MediaState")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Media.MediaState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %paused-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +paused+
  (cl:if (cl:eq %paused-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %paused-cache% (dotnet:static <type-str> "Paused"))
      %paused-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Media.MediaState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %playing-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +playing+
  (cl:if (cl:eq %playing-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %playing-cache% (dotnet:static <type-str> "Playing"))
      %playing-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Media.MediaState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %stopped-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +stopped+
  (cl:if (cl:eq %stopped-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %stopped-cache% (dotnet:static <type-str> "Stopped"))
      %stopped-cache%))

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.MediaState") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.MediaState") obj!) "value__") new-value))

