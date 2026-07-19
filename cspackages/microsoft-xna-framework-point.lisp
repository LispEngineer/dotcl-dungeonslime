;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Point
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :microsoft-xna-framework-point)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Point"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Point")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

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
;; the binding below computes its value at most once (cached on first
;; use). If Microsoft.Xna.Framework.Point is a mutable
;; value type (struct) with settable properties/fields, mutating this
;; object -- through this binding, or through ANY other reference that
;; aliases the same boxed instance -- permanently corrupts it for every
;; future reference to this constant, for the life of the program.
;; There is currently no supported way to obtain an independent,
;; safely-mutable copy of this value from Lisp; construct a fresh
;; instance via the type's own constructor (new) if you need to mutate
;; a copy. See FEATURES.md's "Static Constants and Symbol Macros"
;; section and doc/generator-design-notes.md for the full explanation.
(cl:defvar %zero-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +zero+
  (cl:if (cl:eq %zero-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %zero-cache% (dotnet:static <type-str> "Zero"))
      %zero-cache%))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "X"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf x) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "X") new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Y"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf y) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Y") new-value))

(cl:defun - (value1 value2)
  (dotnet:static <type-str> "op_Subtraction" (cl:the (dotnet "Microsoft.Xna.Framework.Point") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(cl:defun * (value1 value2)
  "Master wrapper for Microsoft.Xna.Framework.Point.* overloads. Dispatches at runtime.

*(Point, Point) -> Point

*(Point, Int32) -> Point

*(Int32, Point) -> Point
"
  (cl:cond
    ((cl:and (cl:or (cl:null value1) (dotnet:is-instance-of value1 "Microsoft.Xna.Framework.Point")) (cl:or (cl:null value2) (dotnet:is-instance-of value2 "Microsoft.Xna.Framework.Point")))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    ((cl:and (cl:or (cl:null value1) (dotnet:is-instance-of value1 "Microsoft.Xna.Framework.Point")) (cl:numberp value2))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    ((cl:and (cl:numberp value1) (cl:or (cl:null value2) (dotnet:is-instance-of value2 "Microsoft.Xna.Framework.Point")))
     (dotnet:static <type-str> "op_Multiply" value1 value2))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-POINT"
                    :class-name <type-str>
                    :method-name "*"
                    :supplied-args (cl:append (cl:list :value1 value1) (cl:list :value2 value2))))))

(cl:defun / (source divisor)
  "Master wrapper for Microsoft.Xna.Framework.Point./ overloads. Dispatches at runtime.

/(Point, Point) -> Point

/(Point, Int32) -> Point
"
  (cl:cond
    ((cl:and (cl:or (cl:null source) (dotnet:is-instance-of source "Microsoft.Xna.Framework.Point")) (cl:or (cl:null divisor) (dotnet:is-instance-of divisor "Microsoft.Xna.Framework.Point")))
     (dotnet:static <type-str> "op_Division" source divisor))
    ((cl:and (cl:or (cl:null source) (dotnet:is-instance-of source "Microsoft.Xna.Framework.Point")) (cl:numberp divisor))
     (dotnet:static <type-str> "op_Division" source divisor))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-POINT"
                    :class-name <type-str>
                    :method-name "/"
                    :supplied-args (cl:append (cl:list :source source) (cl:list :divisor divisor))))))

(cl:defun + (value1 value2)
  (dotnet:static <type-str> "op_Addition" (cl:the (dotnet "Microsoft.Xna.Framework.Point") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Point") value2)))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Point") a) (cl:the (dotnet "Microsoft.Xna.Framework.Point") b)))

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Point.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(Point) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:is-instance-of obj "System.Object")))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:is-instance-of obj "Microsoft.Xna.Framework.Point")))
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

(cl:defun deconstruct (obj!)
  "Returns (cl:values <primary-return> x y) -- Deconstruct(out Int32&, out Int32&) -> Void"
  (dotnet:call-out obj! "Deconstruct"))

