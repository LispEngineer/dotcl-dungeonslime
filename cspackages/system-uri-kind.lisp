;;; Generated automatically. Do not edit.
;;; Class: System.UriKind
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :system-uri-kind)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.UriKind"))
(cl:defconstant <type-str> "System.UriKind")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.UriKind")))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %absolute-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +absolute+
  (cl:if (cl:eq %absolute-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %absolute-cache% (dotnet:static <type-str> "Absolute"))
      %absolute-cache%))
(cl:setf (cl:documentation (cl:quote +absolute+) (cl:quote cl:variable)) "The URI is absolute.")

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %relative-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +relative+
  (cl:if (cl:eq %relative-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %relative-cache% (dotnet:static <type-str> "Relative"))
      %relative-cache%))
(cl:setf (cl:documentation (cl:quote +relative+) (cl:quote cl:variable)) "The URI is relative.")

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %relative-or-absolute-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +relative-or-absolute+
  (cl:if (cl:eq %relative-or-absolute-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %relative-or-absolute-cache% (dotnet:static <type-str> "RelativeOrAbsolute"))
      %relative-or-absolute-cache%))
(cl:setf (cl:documentation (cl:quote +relative-or-absolute+) (cl:quote cl:variable)) "The URI kind is indeterminate.")

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "System.UriKind") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "System.UriKind") obj!) "value__") new-value))

