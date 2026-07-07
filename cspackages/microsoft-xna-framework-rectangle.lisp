;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Rectangle
;;; Generator Version: 40
;;; Creation Date: 2026-07-07T01:03:12Z

(cl:in-package :microsoft-xna-framework-rectangle)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Rectangle")
(cl:defconstant <creation> "2026-07-07T01:03:12Z")
(cl:defconstant <version> 40)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

(cl:defun new (cl:&optional (location cl:nil supplied-location) (size cl:nil supplied-size) (width cl:nil supplied-width) (height cl:nil supplied-height))
  "Master wrapper for Microsoft.Xna.Framework.Rectangle constructor overloads. Dispatches at runtime.

new()

new(Point, Point)

new(Int32, Int32, Int32, Int32)
"
  (cl:cond
    ((cl:and supplied-location (cl:numberp location) supplied-size (cl:numberp size) supplied-width (cl:numberp width) supplied-height (cl:numberp height))
     (dotnet:new <type-str> location size width height))
    ((cl:and supplied-location (cl:or (cl:null location) (dotnet:object-type location)) supplied-size (cl:or (cl:null size) (dotnet:object-type size)) (cl:not supplied-width) (cl:not supplied-height))
     (dotnet:new <type-str> location size))
    ((cl:and (cl:not supplied-location) (cl:not supplied-size) (cl:not supplied-width) (cl:not supplied-height))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-location (cl:list :location location)) (cl:when supplied-size (cl:list :size size)) (cl:when supplied-width (cl:list :width width)) (cl:when supplied-height (cl:list :height height)))))))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Rectangle is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +empty+ (dotnet:static <type-str> "Empty"))

(cl:defun bottom (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Bottom"))

(cl:defun center (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Center"))

(cl:defun empty? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_IsEmpty"))

(cl:defun left (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Left"))

(cl:defun location (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Location"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf location) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "set_Location" new-value))

(cl:defun right (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Right"))

(cl:defun size (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Size"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf size) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "set_Size" new-value))

(cl:defun top (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "get_Top"))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Height"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf height) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Height") new-value))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Width"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf width) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Width") new-value))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "X"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf x) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "X") new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Y"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf y) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Y") new-value))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(cl:defun contains (obj! value cl:&optional (y cl:nil supplied-y))
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Contains overloads. Dispatches at runtime.

Contains(Point) -> Boolean

Contains(Vector2) -> Boolean

Contains(Rectangle) -> Boolean

Contains(Int32, Int32) -> Boolean

Contains(Single, Single) -> Boolean
"
  (cl:cond
    ((cl:and (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Contains" value y))
    ((cl:and (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Contains" value y))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Contains" value))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Contains" value))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Contains" value))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Contains"
                    :supplied-args (cl:append (cl:list :value value) (cl:when supplied-y (cl:list :y y)))))))

;; Note: Microsoft.Xna.Framework.Rectangle.Contains also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Contains(ref Point&, out Boolean&) -> Void
;;   Contains(ref Vector2&, out Boolean&) -> Void
;;   Contains(ref Rectangle&, out Boolean&) -> Void

;; The following C# Microsoft.Xna.Framework.Rectangle.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Int32&, out Int32&, out Int32&, out Int32&) -> Void

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(Rectangle) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "GetHashCode"))

(cl:defun inflate (obj! horizontal-amount vertical-amount)
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Inflate overloads. Dispatches at runtime.

Inflate(Int32, Int32) -> Void

Inflate(Single, Single) -> Void
"
  (cl:cond
    ((cl:and (cl:numberp horizontal-amount) (cl:numberp vertical-amount))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Inflate" horizontal-amount vertical-amount))
    ((cl:and (cl:numberp horizontal-amount) (cl:numberp vertical-amount))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Inflate" horizontal-amount vertical-amount))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Inflate"
                    :supplied-args (cl:append (cl:list :horizontal-amount horizontal-amount) (cl:list :vertical-amount vertical-amount))))))

(cl:defun intersect (value1 value2)
  (dotnet:static <type-str> "Intersect" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersect also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersect(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

(cl:defun intersects (obj! value)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Intersects" value))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersects also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersects(ref Rectangle&, out Boolean&) -> Void

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(cl:defun offset (obj! amount cl:&optional (offset-y cl:nil supplied-offset-y))
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Offset overloads. Dispatches at runtime.

Offset(Point) -> Void

Offset(Vector2) -> Void

Offset(Int32, Int32) -> Void

Offset(Single, Single) -> Void
"
  (cl:cond
    ((cl:and (cl:numberp amount) supplied-offset-y (cl:numberp offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Offset" amount offset-y))
    ((cl:and (cl:numberp amount) supplied-offset-y (cl:numberp offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Offset" amount offset-y))
    ((cl:and (cl:or (cl:null amount) (dotnet:object-type amount)) (cl:not supplied-offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Offset" amount))
    ((cl:and (cl:or (cl:null amount) (dotnet:object-type amount)) (cl:not supplied-offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "Offset" amount))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Offset"
                    :supplied-args (cl:append (cl:list :amount amount) (cl:when supplied-offset-y (cl:list :offset-y offset-y)))))))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj!) "ToString"))

(cl:defun union (value1 value2)
  (dotnet:static <type-str> "Union" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Union also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Union(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

;; Extension methods (exact match on this == Microsoft.Xna.Framework.Rectangle):
(cl:defun to-system-drawing (obj!)
  "Extension method from RenderingLibrary.Graphics.XNAExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "RenderingLibrary.Graphics.XNAExtensions" "ToSystemDrawing" obj!))


