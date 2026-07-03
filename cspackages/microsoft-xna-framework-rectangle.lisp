;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Rectangle
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

(cl:in-package :microsoft-xna-framework-rectangle)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Rectangle")
(cl:defconstant <creation> "2026-07-03T13:50:10Z")
(cl:defconstant <version> 23)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Rectangle. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-point-point (location size)
  "Calls Microsoft.Xna.Framework.Rectangle constructor new(Point, Point)"
  (dotnet:new <type-str> location size))

(cl:defun new-int32-int32-int32-int32 (x y width height)
  "Calls Microsoft.Xna.Framework.Rectangle constructor new(Int32, Int32, Int32, Int32)"
  (dotnet:new <type-str> x y width height))

(cl:defconstant +empty+ (dotnet:static <type-str> "Empty"))

(cl:defun bottom (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Bottom"))

(cl:defun center (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Center"))

(cl:defun empty? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_IsEmpty"))

(cl:defun left (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Left"))

(cl:defun location (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Location"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf location) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "set_Location" new-value))

(cl:defun right (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Right"))

(cl:defun size (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Size"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf size) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "set_Size" new-value))

(cl:defun top (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "get_Top"))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(cl:defun contains (obj value cl:&optional (y cl:nil supplied-y))
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Contains overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value y))
    ((cl:and (cl:numberp value) supplied-y (cl:numberp y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value y))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)) (cl:not supplied-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Contains"
                    :supplied-args (cl:append (cl:list :value value) (cl:when supplied-y (cl:list :y y)))))))

(cl:defun contains-point (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Point) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(cl:defun contains-vector2 (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Vector2) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(cl:defun contains-rectangle (obj value)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Rectangle) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" value))

(cl:defun contains-int32-int32 (obj x y)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Int32, Int32) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" x y))

(cl:defun contains-single-single (obj x y)
  "Calls Microsoft.Xna.Framework.Rectangle.Contains Contains(Single, Single) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Contains" x y))

;; Note: Microsoft.Xna.Framework.Rectangle.Contains also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Contains(ref Point&, out Boolean&) -> Void
;;   Contains(ref Vector2&, out Boolean&) -> Void
;;   Contains(ref Rectangle&, out Boolean&) -> Void

;; The following C# Microsoft.Xna.Framework.Rectangle.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Int32&, out Int32&, out Int32&, out Int32&) -> Void

(cl:defun equals (obj obj)
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Rectangle.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" obj))

(cl:defun equals-rectangle (obj other)
  "Calls Microsoft.Xna.Framework.Rectangle.Equals Equals(Rectangle) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Equals" other))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "GetHashCode"))

(cl:defun inflate (obj horizontal-amount vertical-amount)
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Inflate overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:numberp horizontal-amount) (cl:numberp vertical-amount))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))
    ((cl:and (cl:numberp horizontal-amount) (cl:numberp vertical-amount))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Inflate"
                    :supplied-args (cl:append (cl:list :horizontal-amount horizontal-amount) (cl:list :vertical-amount vertical-amount))))))

(cl:defun inflate-int32-int32 (obj horizontal-amount vertical-amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Inflate Inflate(Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))

(cl:defun inflate-single-single (obj horizontal-amount vertical-amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Inflate Inflate(Single, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Inflate" horizontal-amount vertical-amount))

(cl:defun intersect (value1 value2)
  (dotnet:static <type-str> "Intersect" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersect also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersect(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

(cl:defun intersects (obj value)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Intersects" value))

;; Note: Microsoft.Xna.Framework.Rectangle.Intersects also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Intersects(ref Rectangle&, out Boolean&) -> Void

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") a) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") b)))

(cl:defun offset (obj amount cl:&optional (offset-y cl:nil supplied-offset-y))
  "Master wrapper for Microsoft.Xna.Framework.Rectangle.Offset overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:numberp amount) supplied-offset-y (cl:numberp offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount offset-y))
    ((cl:and (cl:numberp amount) supplied-offset-y (cl:numberp offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount offset-y))
    ((cl:and (cl:or (cl:null amount) (dotnet:object-type amount)) (cl:not supplied-offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))
    ((cl:and (cl:or (cl:null amount) (dotnet:object-type amount)) (cl:not supplied-offset-y))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-RECTANGLE"
                    :class-name <type-str>
                    :method-name "Offset"
                    :supplied-args (cl:append (cl:list :amount amount) (cl:when supplied-offset-y (cl:list :offset-y offset-y)))))))

(cl:defun offset-point (obj amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Point) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))

(cl:defun offset-vector2 (obj amount)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Vector2) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" amount))

(cl:defun offset-int32-int32 (obj offset-x offset-y)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Int32, Int32) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" offset-x offset-y))

(cl:defun offset-single-single (obj offset-x offset-y)
  "Calls Microsoft.Xna.Framework.Rectangle.Offset Offset(Single, Single) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "Offset" offset-x offset-y))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") obj) "ToString"))

(cl:defun union (value1 value2)
  (dotnet:static <type-str> "Union" (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Rectangle") value2)))

;; Note: Microsoft.Xna.Framework.Rectangle.Union also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Union(ref Rectangle&, ref Rectangle&, out Rectangle&) -> Void

