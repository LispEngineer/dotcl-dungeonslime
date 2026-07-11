;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Color
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :microsoft-xna-framework-color)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Color"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Color")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

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
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %alice-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +alice-blue+
  (cl:if (cl:eq %alice-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %alice-blue-cache% (dotnet:static <type-str> "AliceBlue"))
      %alice-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %antique-white-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +antique-white+
  (cl:if (cl:eq %antique-white-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %antique-white-cache% (dotnet:static <type-str> "AntiqueWhite"))
      %antique-white-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %aqua-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +aqua+
  (cl:if (cl:eq %aqua-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %aqua-cache% (dotnet:static <type-str> "Aqua"))
      %aqua-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %aquamarine-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +aquamarine+
  (cl:if (cl:eq %aquamarine-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %aquamarine-cache% (dotnet:static <type-str> "Aquamarine"))
      %aquamarine-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %azure-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +azure+
  (cl:if (cl:eq %azure-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %azure-cache% (dotnet:static <type-str> "Azure"))
      %azure-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %beige-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +beige+
  (cl:if (cl:eq %beige-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %beige-cache% (dotnet:static <type-str> "Beige"))
      %beige-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %bisque-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +bisque+
  (cl:if (cl:eq %bisque-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %bisque-cache% (dotnet:static <type-str> "Bisque"))
      %bisque-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %black-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +black+
  (cl:if (cl:eq %black-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %black-cache% (dotnet:static <type-str> "Black"))
      %black-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %blanched-almond-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +blanched-almond+
  (cl:if (cl:eq %blanched-almond-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %blanched-almond-cache% (dotnet:static <type-str> "BlanchedAlmond"))
      %blanched-almond-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +blue+
  (cl:if (cl:eq %blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %blue-cache% (dotnet:static <type-str> "Blue"))
      %blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %blue-violet-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +blue-violet+
  (cl:if (cl:eq %blue-violet-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %blue-violet-cache% (dotnet:static <type-str> "BlueViolet"))
      %blue-violet-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %brown-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +brown+
  (cl:if (cl:eq %brown-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %brown-cache% (dotnet:static <type-str> "Brown"))
      %brown-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %burly-wood-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +burly-wood+
  (cl:if (cl:eq %burly-wood-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %burly-wood-cache% (dotnet:static <type-str> "BurlyWood"))
      %burly-wood-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %cadet-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +cadet-blue+
  (cl:if (cl:eq %cadet-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %cadet-blue-cache% (dotnet:static <type-str> "CadetBlue"))
      %cadet-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %chartreuse-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +chartreuse+
  (cl:if (cl:eq %chartreuse-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %chartreuse-cache% (dotnet:static <type-str> "Chartreuse"))
      %chartreuse-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %chocolate-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +chocolate+
  (cl:if (cl:eq %chocolate-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %chocolate-cache% (dotnet:static <type-str> "Chocolate"))
      %chocolate-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %coral-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +coral+
  (cl:if (cl:eq %coral-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %coral-cache% (dotnet:static <type-str> "Coral"))
      %coral-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %cornflower-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +cornflower-blue+
  (cl:if (cl:eq %cornflower-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %cornflower-blue-cache% (dotnet:static <type-str> "CornflowerBlue"))
      %cornflower-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %cornsilk-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +cornsilk+
  (cl:if (cl:eq %cornsilk-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %cornsilk-cache% (dotnet:static <type-str> "Cornsilk"))
      %cornsilk-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %crimson-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +crimson+
  (cl:if (cl:eq %crimson-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %crimson-cache% (dotnet:static <type-str> "Crimson"))
      %crimson-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %cyan-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +cyan+
  (cl:if (cl:eq %cyan-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %cyan-cache% (dotnet:static <type-str> "Cyan"))
      %cyan-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-blue+
  (cl:if (cl:eq %dark-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-blue-cache% (dotnet:static <type-str> "DarkBlue"))
      %dark-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-cyan-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-cyan+
  (cl:if (cl:eq %dark-cyan-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-cyan-cache% (dotnet:static <type-str> "DarkCyan"))
      %dark-cyan-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-goldenrod+
  (cl:if (cl:eq %dark-goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-goldenrod-cache% (dotnet:static <type-str> "DarkGoldenrod"))
      %dark-goldenrod-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-gray+
  (cl:if (cl:eq %dark-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-gray-cache% (dotnet:static <type-str> "DarkGray"))
      %dark-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-green+
  (cl:if (cl:eq %dark-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-green-cache% (dotnet:static <type-str> "DarkGreen"))
      %dark-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-khaki-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-khaki+
  (cl:if (cl:eq %dark-khaki-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-khaki-cache% (dotnet:static <type-str> "DarkKhaki"))
      %dark-khaki-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-magenta-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-magenta+
  (cl:if (cl:eq %dark-magenta-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-magenta-cache% (dotnet:static <type-str> "DarkMagenta"))
      %dark-magenta-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-olive-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-olive-green+
  (cl:if (cl:eq %dark-olive-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-olive-green-cache% (dotnet:static <type-str> "DarkOliveGreen"))
      %dark-olive-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-orange-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-orange+
  (cl:if (cl:eq %dark-orange-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-orange-cache% (dotnet:static <type-str> "DarkOrange"))
      %dark-orange-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-orchid-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-orchid+
  (cl:if (cl:eq %dark-orchid-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-orchid-cache% (dotnet:static <type-str> "DarkOrchid"))
      %dark-orchid-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-red+
  (cl:if (cl:eq %dark-red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-red-cache% (dotnet:static <type-str> "DarkRed"))
      %dark-red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-salmon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-salmon+
  (cl:if (cl:eq %dark-salmon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-salmon-cache% (dotnet:static <type-str> "DarkSalmon"))
      %dark-salmon-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-sea-green+
  (cl:if (cl:eq %dark-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-sea-green-cache% (dotnet:static <type-str> "DarkSeaGreen"))
      %dark-sea-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-slate-blue+
  (cl:if (cl:eq %dark-slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-slate-blue-cache% (dotnet:static <type-str> "DarkSlateBlue"))
      %dark-slate-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-slate-gray+
  (cl:if (cl:eq %dark-slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-slate-gray-cache% (dotnet:static <type-str> "DarkSlateGray"))
      %dark-slate-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-turquoise+
  (cl:if (cl:eq %dark-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-turquoise-cache% (dotnet:static <type-str> "DarkTurquoise"))
      %dark-turquoise-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dark-violet-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dark-violet+
  (cl:if (cl:eq %dark-violet-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dark-violet-cache% (dotnet:static <type-str> "DarkViolet"))
      %dark-violet-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %deep-pink-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +deep-pink+
  (cl:if (cl:eq %deep-pink-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %deep-pink-cache% (dotnet:static <type-str> "DeepPink"))
      %deep-pink-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %deep-sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +deep-sky-blue+
  (cl:if (cl:eq %deep-sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %deep-sky-blue-cache% (dotnet:static <type-str> "DeepSkyBlue"))
      %deep-sky-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dim-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dim-gray+
  (cl:if (cl:eq %dim-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dim-gray-cache% (dotnet:static <type-str> "DimGray"))
      %dim-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %dodger-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +dodger-blue+
  (cl:if (cl:eq %dodger-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %dodger-blue-cache% (dotnet:static <type-str> "DodgerBlue"))
      %dodger-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %firebrick-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +firebrick+
  (cl:if (cl:eq %firebrick-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %firebrick-cache% (dotnet:static <type-str> "Firebrick"))
      %firebrick-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %floral-white-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +floral-white+
  (cl:if (cl:eq %floral-white-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %floral-white-cache% (dotnet:static <type-str> "FloralWhite"))
      %floral-white-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %forest-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +forest-green+
  (cl:if (cl:eq %forest-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %forest-green-cache% (dotnet:static <type-str> "ForestGreen"))
      %forest-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %fuchsia-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +fuchsia+
  (cl:if (cl:eq %fuchsia-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %fuchsia-cache% (dotnet:static <type-str> "Fuchsia"))
      %fuchsia-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %gainsboro-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +gainsboro+
  (cl:if (cl:eq %gainsboro-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %gainsboro-cache% (dotnet:static <type-str> "Gainsboro"))
      %gainsboro-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %ghost-white-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +ghost-white+
  (cl:if (cl:eq %ghost-white-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %ghost-white-cache% (dotnet:static <type-str> "GhostWhite"))
      %ghost-white-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %gold-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +gold+
  (cl:if (cl:eq %gold-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %gold-cache% (dotnet:static <type-str> "Gold"))
      %gold-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +goldenrod+
  (cl:if (cl:eq %goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %goldenrod-cache% (dotnet:static <type-str> "Goldenrod"))
      %goldenrod-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +gray+
  (cl:if (cl:eq %gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %gray-cache% (dotnet:static <type-str> "Gray"))
      %gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +green+
  (cl:if (cl:eq %green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %green-cache% (dotnet:static <type-str> "Green"))
      %green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %green-yellow-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +green-yellow+
  (cl:if (cl:eq %green-yellow-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %green-yellow-cache% (dotnet:static <type-str> "GreenYellow"))
      %green-yellow-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %honeydew-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +honeydew+
  (cl:if (cl:eq %honeydew-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %honeydew-cache% (dotnet:static <type-str> "Honeydew"))
      %honeydew-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %hot-pink-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +hot-pink+
  (cl:if (cl:eq %hot-pink-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %hot-pink-cache% (dotnet:static <type-str> "HotPink"))
      %hot-pink-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %indian-red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +indian-red+
  (cl:if (cl:eq %indian-red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %indian-red-cache% (dotnet:static <type-str> "IndianRed"))
      %indian-red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %indigo-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +indigo+
  (cl:if (cl:eq %indigo-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %indigo-cache% (dotnet:static <type-str> "Indigo"))
      %indigo-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %ivory-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +ivory+
  (cl:if (cl:eq %ivory-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %ivory-cache% (dotnet:static <type-str> "Ivory"))
      %ivory-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %khaki-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +khaki+
  (cl:if (cl:eq %khaki-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %khaki-cache% (dotnet:static <type-str> "Khaki"))
      %khaki-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lavender-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lavender+
  (cl:if (cl:eq %lavender-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lavender-cache% (dotnet:static <type-str> "Lavender"))
      %lavender-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lavender-blush-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lavender-blush+
  (cl:if (cl:eq %lavender-blush-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lavender-blush-cache% (dotnet:static <type-str> "LavenderBlush"))
      %lavender-blush-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lawn-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lawn-green+
  (cl:if (cl:eq %lawn-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lawn-green-cache% (dotnet:static <type-str> "LawnGreen"))
      %lawn-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lemon-chiffon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lemon-chiffon+
  (cl:if (cl:eq %lemon-chiffon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lemon-chiffon-cache% (dotnet:static <type-str> "LemonChiffon"))
      %lemon-chiffon-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-blue+
  (cl:if (cl:eq %light-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-blue-cache% (dotnet:static <type-str> "LightBlue"))
      %light-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-coral-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-coral+
  (cl:if (cl:eq %light-coral-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-coral-cache% (dotnet:static <type-str> "LightCoral"))
      %light-coral-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-cyan-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-cyan+
  (cl:if (cl:eq %light-cyan-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-cyan-cache% (dotnet:static <type-str> "LightCyan"))
      %light-cyan-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-goldenrod-yellow-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-goldenrod-yellow+
  (cl:if (cl:eq %light-goldenrod-yellow-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-goldenrod-yellow-cache% (dotnet:static <type-str> "LightGoldenrodYellow"))
      %light-goldenrod-yellow-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-gray+
  (cl:if (cl:eq %light-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-gray-cache% (dotnet:static <type-str> "LightGray"))
      %light-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-green+
  (cl:if (cl:eq %light-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-green-cache% (dotnet:static <type-str> "LightGreen"))
      %light-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-pink-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-pink+
  (cl:if (cl:eq %light-pink-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-pink-cache% (dotnet:static <type-str> "LightPink"))
      %light-pink-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-salmon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-salmon+
  (cl:if (cl:eq %light-salmon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-salmon-cache% (dotnet:static <type-str> "LightSalmon"))
      %light-salmon-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-sea-green+
  (cl:if (cl:eq %light-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-sea-green-cache% (dotnet:static <type-str> "LightSeaGreen"))
      %light-sea-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-sky-blue+
  (cl:if (cl:eq %light-sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-sky-blue-cache% (dotnet:static <type-str> "LightSkyBlue"))
      %light-sky-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-slate-gray+
  (cl:if (cl:eq %light-slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-slate-gray-cache% (dotnet:static <type-str> "LightSlateGray"))
      %light-slate-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-steel-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-steel-blue+
  (cl:if (cl:eq %light-steel-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-steel-blue-cache% (dotnet:static <type-str> "LightSteelBlue"))
      %light-steel-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %light-yellow-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +light-yellow+
  (cl:if (cl:eq %light-yellow-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %light-yellow-cache% (dotnet:static <type-str> "LightYellow"))
      %light-yellow-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lime-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lime+
  (cl:if (cl:eq %lime-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lime-cache% (dotnet:static <type-str> "Lime"))
      %lime-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %lime-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +lime-green+
  (cl:if (cl:eq %lime-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %lime-green-cache% (dotnet:static <type-str> "LimeGreen"))
      %lime-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %linen-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +linen+
  (cl:if (cl:eq %linen-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %linen-cache% (dotnet:static <type-str> "Linen"))
      %linen-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %magenta-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +magenta+
  (cl:if (cl:eq %magenta-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %magenta-cache% (dotnet:static <type-str> "Magenta"))
      %magenta-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %maroon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +maroon+
  (cl:if (cl:eq %maroon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %maroon-cache% (dotnet:static <type-str> "Maroon"))
      %maroon-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-aquamarine-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-aquamarine+
  (cl:if (cl:eq %medium-aquamarine-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-aquamarine-cache% (dotnet:static <type-str> "MediumAquamarine"))
      %medium-aquamarine-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-blue+
  (cl:if (cl:eq %medium-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-blue-cache% (dotnet:static <type-str> "MediumBlue"))
      %medium-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-orchid-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-orchid+
  (cl:if (cl:eq %medium-orchid-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-orchid-cache% (dotnet:static <type-str> "MediumOrchid"))
      %medium-orchid-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-purple-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-purple+
  (cl:if (cl:eq %medium-purple-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-purple-cache% (dotnet:static <type-str> "MediumPurple"))
      %medium-purple-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-sea-green+
  (cl:if (cl:eq %medium-sea-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-sea-green-cache% (dotnet:static <type-str> "MediumSeaGreen"))
      %medium-sea-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-slate-blue+
  (cl:if (cl:eq %medium-slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-slate-blue-cache% (dotnet:static <type-str> "MediumSlateBlue"))
      %medium-slate-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-spring-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-spring-green+
  (cl:if (cl:eq %medium-spring-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-spring-green-cache% (dotnet:static <type-str> "MediumSpringGreen"))
      %medium-spring-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-turquoise+
  (cl:if (cl:eq %medium-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-turquoise-cache% (dotnet:static <type-str> "MediumTurquoise"))
      %medium-turquoise-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %medium-violet-red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +medium-violet-red+
  (cl:if (cl:eq %medium-violet-red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %medium-violet-red-cache% (dotnet:static <type-str> "MediumVioletRed"))
      %medium-violet-red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %midnight-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +midnight-blue+
  (cl:if (cl:eq %midnight-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %midnight-blue-cache% (dotnet:static <type-str> "MidnightBlue"))
      %midnight-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %mint-cream-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +mint-cream+
  (cl:if (cl:eq %mint-cream-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %mint-cream-cache% (dotnet:static <type-str> "MintCream"))
      %mint-cream-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %misty-rose-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +misty-rose+
  (cl:if (cl:eq %misty-rose-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %misty-rose-cache% (dotnet:static <type-str> "MistyRose"))
      %misty-rose-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %moccasin-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +moccasin+
  (cl:if (cl:eq %moccasin-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %moccasin-cache% (dotnet:static <type-str> "Moccasin"))
      %moccasin-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %mono-game-orange-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +mono-game-orange+
  (cl:if (cl:eq %mono-game-orange-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %mono-game-orange-cache% (dotnet:static <type-str> "MonoGameOrange"))
      %mono-game-orange-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %navajo-white-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +navajo-white+
  (cl:if (cl:eq %navajo-white-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %navajo-white-cache% (dotnet:static <type-str> "NavajoWhite"))
      %navajo-white-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %navy-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +navy+
  (cl:if (cl:eq %navy-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %navy-cache% (dotnet:static <type-str> "Navy"))
      %navy-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %old-lace-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +old-lace+
  (cl:if (cl:eq %old-lace-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %old-lace-cache% (dotnet:static <type-str> "OldLace"))
      %old-lace-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %olive-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +olive+
  (cl:if (cl:eq %olive-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %olive-cache% (dotnet:static <type-str> "Olive"))
      %olive-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %olive-drab-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +olive-drab+
  (cl:if (cl:eq %olive-drab-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %olive-drab-cache% (dotnet:static <type-str> "OliveDrab"))
      %olive-drab-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %orange-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +orange+
  (cl:if (cl:eq %orange-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %orange-cache% (dotnet:static <type-str> "Orange"))
      %orange-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %orange-red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +orange-red+
  (cl:if (cl:eq %orange-red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %orange-red-cache% (dotnet:static <type-str> "OrangeRed"))
      %orange-red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %orchid-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +orchid+
  (cl:if (cl:eq %orchid-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %orchid-cache% (dotnet:static <type-str> "Orchid"))
      %orchid-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %pale-goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pale-goldenrod+
  (cl:if (cl:eq %pale-goldenrod-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pale-goldenrod-cache% (dotnet:static <type-str> "PaleGoldenrod"))
      %pale-goldenrod-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %pale-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pale-green+
  (cl:if (cl:eq %pale-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pale-green-cache% (dotnet:static <type-str> "PaleGreen"))
      %pale-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %pale-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pale-turquoise+
  (cl:if (cl:eq %pale-turquoise-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pale-turquoise-cache% (dotnet:static <type-str> "PaleTurquoise"))
      %pale-turquoise-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %pale-violet-red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pale-violet-red+
  (cl:if (cl:eq %pale-violet-red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pale-violet-red-cache% (dotnet:static <type-str> "PaleVioletRed"))
      %pale-violet-red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %papaya-whip-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +papaya-whip+
  (cl:if (cl:eq %papaya-whip-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %papaya-whip-cache% (dotnet:static <type-str> "PapayaWhip"))
      %papaya-whip-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %peach-puff-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +peach-puff+
  (cl:if (cl:eq %peach-puff-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %peach-puff-cache% (dotnet:static <type-str> "PeachPuff"))
      %peach-puff-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %peru-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +peru+
  (cl:if (cl:eq %peru-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %peru-cache% (dotnet:static <type-str> "Peru"))
      %peru-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %pink-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pink+
  (cl:if (cl:eq %pink-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pink-cache% (dotnet:static <type-str> "Pink"))
      %pink-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %plum-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +plum+
  (cl:if (cl:eq %plum-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %plum-cache% (dotnet:static <type-str> "Plum"))
      %plum-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %powder-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +powder-blue+
  (cl:if (cl:eq %powder-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %powder-blue-cache% (dotnet:static <type-str> "PowderBlue"))
      %powder-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %purple-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +purple+
  (cl:if (cl:eq %purple-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %purple-cache% (dotnet:static <type-str> "Purple"))
      %purple-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %red-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +red+
  (cl:if (cl:eq %red-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %red-cache% (dotnet:static <type-str> "Red"))
      %red-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %rosy-brown-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +rosy-brown+
  (cl:if (cl:eq %rosy-brown-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %rosy-brown-cache% (dotnet:static <type-str> "RosyBrown"))
      %rosy-brown-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %royal-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +royal-blue+
  (cl:if (cl:eq %royal-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %royal-blue-cache% (dotnet:static <type-str> "RoyalBlue"))
      %royal-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %saddle-brown-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +saddle-brown+
  (cl:if (cl:eq %saddle-brown-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %saddle-brown-cache% (dotnet:static <type-str> "SaddleBrown"))
      %saddle-brown-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %salmon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +salmon+
  (cl:if (cl:eq %salmon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %salmon-cache% (dotnet:static <type-str> "Salmon"))
      %salmon-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %sandy-brown-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +sandy-brown+
  (cl:if (cl:eq %sandy-brown-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %sandy-brown-cache% (dotnet:static <type-str> "SandyBrown"))
      %sandy-brown-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %sea-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +sea-green+
  (cl:if (cl:eq %sea-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %sea-green-cache% (dotnet:static <type-str> "SeaGreen"))
      %sea-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %sea-shell-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +sea-shell+
  (cl:if (cl:eq %sea-shell-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %sea-shell-cache% (dotnet:static <type-str> "SeaShell"))
      %sea-shell-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %sienna-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +sienna+
  (cl:if (cl:eq %sienna-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %sienna-cache% (dotnet:static <type-str> "Sienna"))
      %sienna-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %silver-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +silver+
  (cl:if (cl:eq %silver-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %silver-cache% (dotnet:static <type-str> "Silver"))
      %silver-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +sky-blue+
  (cl:if (cl:eq %sky-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %sky-blue-cache% (dotnet:static <type-str> "SkyBlue"))
      %sky-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +slate-blue+
  (cl:if (cl:eq %slate-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %slate-blue-cache% (dotnet:static <type-str> "SlateBlue"))
      %slate-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +slate-gray+
  (cl:if (cl:eq %slate-gray-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %slate-gray-cache% (dotnet:static <type-str> "SlateGray"))
      %slate-gray-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %snow-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +snow+
  (cl:if (cl:eq %snow-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %snow-cache% (dotnet:static <type-str> "Snow"))
      %snow-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %spring-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +spring-green+
  (cl:if (cl:eq %spring-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %spring-green-cache% (dotnet:static <type-str> "SpringGreen"))
      %spring-green-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %steel-blue-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +steel-blue+
  (cl:if (cl:eq %steel-blue-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %steel-blue-cache% (dotnet:static <type-str> "SteelBlue"))
      %steel-blue-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %tan-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +tan+
  (cl:if (cl:eq %tan-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %tan-cache% (dotnet:static <type-str> "Tan"))
      %tan-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %teal-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +teal+
  (cl:if (cl:eq %teal-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %teal-cache% (dotnet:static <type-str> "Teal"))
      %teal-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %thistle-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +thistle+
  (cl:if (cl:eq %thistle-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %thistle-cache% (dotnet:static <type-str> "Thistle"))
      %thistle-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %tomato-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +tomato+
  (cl:if (cl:eq %tomato-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %tomato-cache% (dotnet:static <type-str> "Tomato"))
      %tomato-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %transparent-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +transparent+
  (cl:if (cl:eq %transparent-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %transparent-cache% (dotnet:static <type-str> "Transparent"))
      %transparent-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %turquoise-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +turquoise+
  (cl:if (cl:eq %turquoise-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %turquoise-cache% (dotnet:static <type-str> "Turquoise"))
      %turquoise-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %violet-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +violet+
  (cl:if (cl:eq %violet-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %violet-cache% (dotnet:static <type-str> "Violet"))
      %violet-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %wheat-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +wheat+
  (cl:if (cl:eq %wheat-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %wheat-cache% (dotnet:static <type-str> "Wheat"))
      %wheat-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %white-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +white+
  (cl:if (cl:eq %white-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %white-cache% (dotnet:static <type-str> "White"))
      %white-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %white-smoke-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +white-smoke+
  (cl:if (cl:eq %white-smoke-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %white-smoke-cache% (dotnet:static <type-str> "WhiteSmoke"))
      %white-smoke-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %yellow-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +yellow+
  (cl:if (cl:eq %yellow-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %yellow-cache% (dotnet:static <type-str> "Yellow"))
      %yellow-cache%))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Color is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %yellow-green-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +yellow-green+
  (cl:if (cl:eq %yellow-green-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %yellow-green-cache% (dotnet:static <type-str> "YellowGreen"))
      %yellow-green-cache%))

(cl:defun a (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_A"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf a) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_A" new-value))

(cl:defun b (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_B"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf b) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_B" new-value))

(cl:defun g (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_G"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf g) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_G" new-value))

(cl:defun packed-value (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_PackedValue"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf packed-value) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "set_PackedValue" new-value))

(cl:defun r (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj!) "get_R"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
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


