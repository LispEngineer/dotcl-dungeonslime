;;; Generated automatically. Do not edit.
;;; Class: System.UriKind
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :system-uri-kind)

(cl:defconstant <type> (dotnet:resolve-type "System.UriKind"))
(cl:defconstant <type-str> "System.UriKind")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.UriKind")))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +absolute+ (dotnet:static <type-str> "Absolute"))
(cl:setf (cl:documentation (cl:quote +absolute+) (cl:quote cl:variable)) "The URI is absolute.")

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +relative+ (dotnet:static <type-str> "Relative"))
(cl:setf (cl:documentation (cl:quote +relative+) (cl:quote cl:variable)) "The URI is relative.")

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If System.UriKind is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +relative-or-absolute+ (dotnet:static <type-str> "RelativeOrAbsolute"))
(cl:setf (cl:documentation (cl:quote +relative-or-absolute+) (cl:quote cl:variable)) "The URI kind is indeterminate.")

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "System.UriKind") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "System.UriKind") obj!) "value__") new-value))

