;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.DefaultVisualsVersion
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :gum-forms-default-visuals-version)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.DefaultVisualsVersion"))
(cl:defconstant <type-str> "Gum.Forms.DefaultVisualsVersion")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Gum.Forms.DefaultVisualsVersion is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %newest-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +newest+
  (cl:if (cl:eq %newest-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %newest-cache% (dotnet:static <type-str> "Newest"))
      %newest-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Gum.Forms.DefaultVisualsVersion is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %v1-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +v1+
  (cl:if (cl:eq %v1-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %v1-cache% (dotnet:static <type-str> "V1"))
      %v1-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Gum.Forms.DefaultVisualsVersion is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %v2-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +v2+
  (cl:if (cl:eq %v2-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %v2-cache% (dotnet:static <type-str> "V2"))
      %v2-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Gum.Forms.DefaultVisualsVersion is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %v3-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +v3+
  (cl:if (cl:eq %v3-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %v3-cache% (dotnet:static <type-str> "V3"))
      %v3-cache%))

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.DefaultVisualsVersion") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.DefaultVisualsVersion") obj!) "value__") new-value))

