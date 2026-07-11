;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Color
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :microsoft-xna-framework-color)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Color"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Color")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Color")))

(cl:defun new (cl:&optional (packed-value cl:nil supplied-packed-value) (alpha cl:nil supplied-alpha) (b cl:nil supplied-b) (alpha2 cl:nil supplied-alpha2))
  "Master wrapper for Microsoft.Xna.Framework.Color constructor overloads. Dispatches at runtime.

new()

new(UInt32)

new(Vector4)

new(Vector3)

new(Color, Int32)

new(Color, Single)

new(Single, Single, Single)

new(Int32, Int32, Int32)

new(Single, Single, Single, Single)

new(Int32, Int32, Int32, Int32)

new(Byte, Byte, Byte, Byte)
"
  (cl:cond
    ((cl:and supplied-packed-value (cl:numberp packed-value) supplied-alpha (cl:numberp alpha) supplied-b (cl:numberp b) supplied-alpha2 (cl:numberp alpha2))
     (dotnet:new <type-str> packed-value alpha b alpha2))
    ((cl:and supplied-packed-value (cl:numberp packed-value) supplied-alpha (cl:numberp alpha) supplied-b (cl:numberp b) supplied-alpha2 (cl:numberp alpha2))
     (dotnet:new <type-str> packed-value alpha b alpha2))
    ((cl:and supplied-packed-value (cl:numberp packed-value) supplied-alpha (cl:numberp alpha) supplied-b (cl:numberp b) supplied-alpha2 (cl:numberp alpha2))
     (dotnet:new <type-str> packed-value alpha b alpha2))
    ((cl:and supplied-packed-value (cl:numberp packed-value) supplied-alpha (cl:numberp alpha) supplied-b (cl:numberp b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value alpha b))
    ((cl:and supplied-packed-value (cl:numberp packed-value) supplied-alpha (cl:numberp alpha) supplied-b (cl:numberp b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value alpha b))
    ((cl:and supplied-packed-value (cl:or (cl:null packed-value) (dotnet:object-type packed-value)) supplied-alpha (cl:numberp alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value alpha))
    ((cl:and supplied-packed-value (cl:or (cl:null packed-value) (dotnet:object-type packed-value)) supplied-alpha (cl:numberp alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value alpha))
    ((cl:and supplied-packed-value (cl:or (cl:null packed-value) (dotnet:object-type packed-value)) (cl:not supplied-alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value))
    ((cl:and supplied-packed-value (cl:or (cl:null packed-value) (dotnet:object-type packed-value)) (cl:not supplied-alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value))
    ((cl:and supplied-packed-value (cl:or (cl:null packed-value) (dotnet:object-type packed-value)) (cl:not supplied-alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str> packed-value))
    ((cl:and (cl:not supplied-packed-value) (cl:not supplied-alpha) (cl:not supplied-b) (cl:not supplied-alpha2))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-packed-value (cl:list :packed-value packed-value)) (cl:when supplied-alpha (cl:list :alpha alpha)) (cl:when supplied-b (cl:list :b b)) (cl:when supplied-alpha2 (cl:list :alpha2 alpha2)))))))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +alice-blue+ (dotnet:static <type-str> "AliceBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +antique-white+ (dotnet:static <type-str> "AntiqueWhite"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +aqua+ (dotnet:static <type-str> "Aqua"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +aquamarine+ (dotnet:static <type-str> "Aquamarine"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +azure+ (dotnet:static <type-str> "Azure"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +beige+ (dotnet:static <type-str> "Beige"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +bisque+ (dotnet:static <type-str> "Bisque"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +black+ (dotnet:static <type-str> "Black"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +blanched-almond+ (dotnet:static <type-str> "BlanchedAlmond"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +blue+ (dotnet:static <type-str> "Blue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +blue-violet+ (dotnet:static <type-str> "BlueViolet"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +brown+ (dotnet:static <type-str> "Brown"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +burly-wood+ (dotnet:static <type-str> "BurlyWood"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +cadet-blue+ (dotnet:static <type-str> "CadetBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +chartreuse+ (dotnet:static <type-str> "Chartreuse"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +chocolate+ (dotnet:static <type-str> "Chocolate"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +coral+ (dotnet:static <type-str> "Coral"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +cornflower-blue+ (dotnet:static <type-str> "CornflowerBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +cornsilk+ (dotnet:static <type-str> "Cornsilk"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +crimson+ (dotnet:static <type-str> "Crimson"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +cyan+ (dotnet:static <type-str> "Cyan"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-blue+ (dotnet:static <type-str> "DarkBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-cyan+ (dotnet:static <type-str> "DarkCyan"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-goldenrod+ (dotnet:static <type-str> "DarkGoldenrod"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-gray+ (dotnet:static <type-str> "DarkGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-green+ (dotnet:static <type-str> "DarkGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-khaki+ (dotnet:static <type-str> "DarkKhaki"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-magenta+ (dotnet:static <type-str> "DarkMagenta"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-olive-green+ (dotnet:static <type-str> "DarkOliveGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-orange+ (dotnet:static <type-str> "DarkOrange"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-orchid+ (dotnet:static <type-str> "DarkOrchid"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-red+ (dotnet:static <type-str> "DarkRed"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-salmon+ (dotnet:static <type-str> "DarkSalmon"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-sea-green+ (dotnet:static <type-str> "DarkSeaGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-slate-blue+ (dotnet:static <type-str> "DarkSlateBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-slate-gray+ (dotnet:static <type-str> "DarkSlateGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-turquoise+ (dotnet:static <type-str> "DarkTurquoise"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dark-violet+ (dotnet:static <type-str> "DarkViolet"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +deep-pink+ (dotnet:static <type-str> "DeepPink"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +deep-sky-blue+ (dotnet:static <type-str> "DeepSkyBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dim-gray+ (dotnet:static <type-str> "DimGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +dodger-blue+ (dotnet:static <type-str> "DodgerBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +firebrick+ (dotnet:static <type-str> "Firebrick"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +floral-white+ (dotnet:static <type-str> "FloralWhite"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +forest-green+ (dotnet:static <type-str> "ForestGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +fuchsia+ (dotnet:static <type-str> "Fuchsia"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +gainsboro+ (dotnet:static <type-str> "Gainsboro"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +ghost-white+ (dotnet:static <type-str> "GhostWhite"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +gold+ (dotnet:static <type-str> "Gold"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +goldenrod+ (dotnet:static <type-str> "Goldenrod"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +gray+ (dotnet:static <type-str> "Gray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +green+ (dotnet:static <type-str> "Green"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +green-yellow+ (dotnet:static <type-str> "GreenYellow"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +honeydew+ (dotnet:static <type-str> "Honeydew"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +hot-pink+ (dotnet:static <type-str> "HotPink"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +indian-red+ (dotnet:static <type-str> "IndianRed"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +indigo+ (dotnet:static <type-str> "Indigo"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +ivory+ (dotnet:static <type-str> "Ivory"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +khaki+ (dotnet:static <type-str> "Khaki"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lavender+ (dotnet:static <type-str> "Lavender"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lavender-blush+ (dotnet:static <type-str> "LavenderBlush"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lawn-green+ (dotnet:static <type-str> "LawnGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lemon-chiffon+ (dotnet:static <type-str> "LemonChiffon"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-blue+ (dotnet:static <type-str> "LightBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-coral+ (dotnet:static <type-str> "LightCoral"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-cyan+ (dotnet:static <type-str> "LightCyan"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-goldenrod-yellow+ (dotnet:static <type-str> "LightGoldenrodYellow"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-gray+ (dotnet:static <type-str> "LightGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-green+ (dotnet:static <type-str> "LightGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-pink+ (dotnet:static <type-str> "LightPink"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-salmon+ (dotnet:static <type-str> "LightSalmon"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-sea-green+ (dotnet:static <type-str> "LightSeaGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-sky-blue+ (dotnet:static <type-str> "LightSkyBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-slate-gray+ (dotnet:static <type-str> "LightSlateGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-steel-blue+ (dotnet:static <type-str> "LightSteelBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +light-yellow+ (dotnet:static <type-str> "LightYellow"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lime+ (dotnet:static <type-str> "Lime"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +lime-green+ (dotnet:static <type-str> "LimeGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +linen+ (dotnet:static <type-str> "Linen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +magenta+ (dotnet:static <type-str> "Magenta"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +maroon+ (dotnet:static <type-str> "Maroon"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-aquamarine+ (dotnet:static <type-str> "MediumAquamarine"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-blue+ (dotnet:static <type-str> "MediumBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-orchid+ (dotnet:static <type-str> "MediumOrchid"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-purple+ (dotnet:static <type-str> "MediumPurple"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-sea-green+ (dotnet:static <type-str> "MediumSeaGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-slate-blue+ (dotnet:static <type-str> "MediumSlateBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-spring-green+ (dotnet:static <type-str> "MediumSpringGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-turquoise+ (dotnet:static <type-str> "MediumTurquoise"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +medium-violet-red+ (dotnet:static <type-str> "MediumVioletRed"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +midnight-blue+ (dotnet:static <type-str> "MidnightBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +mint-cream+ (dotnet:static <type-str> "MintCream"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +misty-rose+ (dotnet:static <type-str> "MistyRose"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +moccasin+ (dotnet:static <type-str> "Moccasin"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +mono-game-orange+ (dotnet:static <type-str> "MonoGameOrange"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +navajo-white+ (dotnet:static <type-str> "NavajoWhite"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +navy+ (dotnet:static <type-str> "Navy"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +old-lace+ (dotnet:static <type-str> "OldLace"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +olive+ (dotnet:static <type-str> "Olive"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +olive-drab+ (dotnet:static <type-str> "OliveDrab"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +orange+ (dotnet:static <type-str> "Orange"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +orange-red+ (dotnet:static <type-str> "OrangeRed"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +orchid+ (dotnet:static <type-str> "Orchid"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +pale-goldenrod+ (dotnet:static <type-str> "PaleGoldenrod"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +pale-green+ (dotnet:static <type-str> "PaleGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +pale-turquoise+ (dotnet:static <type-str> "PaleTurquoise"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +pale-violet-red+ (dotnet:static <type-str> "PaleVioletRed"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +papaya-whip+ (dotnet:static <type-str> "PapayaWhip"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +peach-puff+ (dotnet:static <type-str> "PeachPuff"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +peru+ (dotnet:static <type-str> "Peru"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +pink+ (dotnet:static <type-str> "Pink"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +plum+ (dotnet:static <type-str> "Plum"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +powder-blue+ (dotnet:static <type-str> "PowderBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +purple+ (dotnet:static <type-str> "Purple"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +red+ (dotnet:static <type-str> "Red"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +rosy-brown+ (dotnet:static <type-str> "RosyBrown"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +royal-blue+ (dotnet:static <type-str> "RoyalBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +saddle-brown+ (dotnet:static <type-str> "SaddleBrown"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +salmon+ (dotnet:static <type-str> "Salmon"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +sandy-brown+ (dotnet:static <type-str> "SandyBrown"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +sea-green+ (dotnet:static <type-str> "SeaGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +sea-shell+ (dotnet:static <type-str> "SeaShell"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +sienna+ (dotnet:static <type-str> "Sienna"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +silver+ (dotnet:static <type-str> "Silver"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +sky-blue+ (dotnet:static <type-str> "SkyBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +slate-blue+ (dotnet:static <type-str> "SlateBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +slate-gray+ (dotnet:static <type-str> "SlateGray"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +snow+ (dotnet:static <type-str> "Snow"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +spring-green+ (dotnet:static <type-str> "SpringGreen"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +steel-blue+ (dotnet:static <type-str> "SteelBlue"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +tan+ (dotnet:static <type-str> "Tan"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +teal+ (dotnet:static <type-str> "Teal"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +thistle+ (dotnet:static <type-str> "Thistle"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +tomato+ (dotnet:static <type-str> "Tomato"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +transparent+ (dotnet:static <type-str> "Transparent"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +turquoise+ (dotnet:static <type-str> "Turquoise"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +violet+ (dotnet:static <type-str> "Violet"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +wheat+ (dotnet:static <type-str> "Wheat"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +white+ (dotnet:static <type-str> "White"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +white-smoke+ (dotnet:static <type-str> "WhiteSmoke"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +yellow+ (dotnet:static <type-str> "Yellow"))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +yellow-green+ (dotnet:static <type-str> "YellowGreen"))

(cl:defun a (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_A"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf a) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_A" new-value))

(cl:defun b (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_B"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf b) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_B" new-value))

(cl:defun g (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_G"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf g) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_G" new-value))

(cl:defun packed-value (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_PackedValue"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf packed-value) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_PackedValue" new-value))

(cl:defun r (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_R"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf r) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_R" new-value))

(cl:defun * (value scale)
  "Master wrapper for Microsoft.Xna.Framework.Color.* overloads. Dispatches at runtime.

*(Color, Single) -> Color

*(Single, Color) -> Color

*(Color, Color) -> Color
"
  (cl:cond
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:numberp scale))
     (dotnet:static <type-str> "op_Multiply" value scale))
    ((cl:and (cl:numberp value) (cl:or (cl:null scale) (dotnet:object-type scale)))
     (dotnet:static <type-str> "op_Multiply" value scale))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:or (cl:null scale) (dotnet:object-type scale)))
     (dotnet:static <type-str> "op_Multiply" value scale))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "*"
                    :supplied-args (cl:append (cl:list :value value) (cl:list :scale scale))))))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Color") a) (cl:the (dotnet "Microsoft.Xna.Framework.Color") b)))

;; The following C# Microsoft.Xna.Framework.Color.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Byte&, out Byte&, out Byte&) -> Void
;;   Deconstruct(out Single&, out Single&, out Single&) -> Void
;;   Deconstruct(out Byte&, out Byte&, out Byte&, out Byte&) -> Void
;;   Deconstruct(out Single&, out Single&, out Single&, out Single&) -> Void

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Color.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(Color) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun from-non-premultiplied (vector cl:&optional (g cl:nil supplied-g) (b cl:nil supplied-b) (a cl:nil supplied-a))
  "Master wrapper for Microsoft.Xna.Framework.Color.FromNonPremultiplied overloads. Dispatches at runtime.

FromNonPremultiplied(Vector4) -> Color

FromNonPremultiplied(Int32, Int32, Int32, Int32) -> Color
"
  (cl:cond
    ((cl:and (cl:numberp vector) supplied-g (cl:numberp g) supplied-b (cl:numberp b) supplied-a (cl:numberp a))
     (dotnet:static <type-str> "FromNonPremultiplied" vector g b a))
    ((cl:and (cl:or (cl:null vector) (dotnet:object-type vector)) (cl:not supplied-g) (cl:not supplied-b) (cl:not supplied-a))
     (dotnet:static <type-str> "FromNonPremultiplied" vector))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "FromNonPremultiplied"
                    :supplied-args (cl:append (cl:list :vector vector) (cl:when supplied-g (cl:list :g g)) (cl:when supplied-b (cl:list :b b)) (cl:when supplied-a (cl:list :a a)))))))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "GetHashCode"))

(cl:defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" (cl:the (dotnet "System.Numerics.Vector4") value)))

(cl:defun lerp (value1 value2 amount)
  (dotnet:static <type-str> "Lerp" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Color") value2) (cl:the (dotnet "System.Single") amount)))

(cl:defun lerp-precise (value1 value2 amount)
  (dotnet:static <type-str> "LerpPrecise" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Color") value2) (cl:the (dotnet "System.Single") amount)))

(cl:defun multiply (value scale)
  (dotnet:static <type-str> "Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value) (cl:the (dotnet "System.Single") scale)))

(cl:defun multiply-alpha (value scale)
  (dotnet:static <type-str> "MultiplyAlpha" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value) (cl:the (dotnet "System.Single") scale)))

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Color") a) (cl:the (dotnet "Microsoft.Xna.Framework.Color") b)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "ToString"))

(cl:defun to-vector3 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "ToVector3"))

(cl:defun to-vector4 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "ToVector4"))

;; Extension methods (exact match on this == Microsoft.Xna.Framework.Color):
(cl:defun adjust (obj! amount)
  "Extension method from Gum.Forms.DefaultVisuals.V3.ColorExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.DefaultVisuals.V3.ColorExtensions" "Adjust" obj! amount))

(cl:defun to-grayscale (obj!)
  "Extension method from Gum.Forms.DefaultVisuals.V3.ColorExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.DefaultVisuals.V3.ColorExtensions" "ToGrayscale" obj!))

(cl:defun to-system-drawing (obj!)
  "Extension method from RenderingLibrary.Graphics.XNAExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "RenderingLibrary.Graphics.XNAExtensions" "ToSystemDrawing" obj!))


