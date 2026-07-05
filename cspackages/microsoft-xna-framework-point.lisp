;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Point
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :microsoft-xna-framework-point)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Point"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Point")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Point")))

(cl:defun new (cl:&optional (value cl:nil supplied-value) (y cl:nil supplied-y))
  "Master wrapper for Microsoft.Xna.Framework.Point constructor overloads. Dispatches at runtime.

new()

new(Int32)

new(Int32, Int32)
"
  (cl:cond
    ((cl:and supplied-value (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:new <type-str> value y))
    ((cl:and supplied-value (cl:numberp value) (cl:not supplied-y))
     (dotnet:new <type-str> value))
    ((cl:and (cl:not supplied-value) (cl:not supplied-y))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-POINT"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-value (cl:list :value value)) (cl:when supplied-y (cl:list :y y)))))))

;; WARNING: this is a single, permanently-cached boxed .NET object --
;; the defconstant form below only runs once. If Microsoft.Xna.Framework.Point is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "X"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf x) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "X") new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Y"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf y) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Y") new-value))

(cl:defun - (value1 value2)
  (dotnet:static <type-str> "op_Subtraction" (cl:the (dotnet "Microsoft.Xna.Framework.Point") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(cl:defun * (value1 value2)
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Point") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(cl:defun / (source divisor)
  (dotnet:static <type-str> "op_Division" (cl:the (dotnet "Microsoft.Xna.Framework.Point") source) (cl:the (dotnet "Microsoft.Xna.Framework.Point") divisor)))

(cl:defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" (cl:the (dotnet "Microsoft.Xna.Framework.Point") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Point") a) (cl:the (dotnet "Microsoft.Xna.Framework.Point") b)))

;; The following C# Microsoft.Xna.Framework.Point.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Int32&, out Int32&) -> Void

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Point.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(Point) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-POINT"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "GetHashCode"))

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Point") a) (cl:the (dotnet "Microsoft.Xna.Framework.Point") b)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "ToString"))

(cl:defun to-vector2 (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "ToVector2"))

