;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundState
;;; Generator Version: 39
;;; Creation Date: 2026-07-06T21:35:35Z

(cl:in-package :microsoft-xna-framework-audio-sound-state)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundState")
(cl:defconstant <creation> "2026-07-06T21:35:35Z")
(cl:defconstant <version> 39)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundState")))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Audio.SoundState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +paused+ (dotnet:static <type-str> "Paused"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Audio.SoundState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +playing+ (dotnet:static <type-str> "Playing"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Audio.SoundState is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +stopped+ (dotnet:static <type-str> "Stopped"))

(cl:defun value__ (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundState") obj!) "value__"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf value__) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundState") obj!) "value__") new-value))

