;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Point
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-point)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Point"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Point")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Point")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Point. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-int32 (value)
  "Calls Microsoft.Xna.Framework.Point constructor new(Int32)"
  (dotnet:new <type-str> value))

(cl:defun new-int32-int32 (x y)
  "Calls Microsoft.Xna.Framework.Point constructor new(Int32, Int32)"
  (dotnet:new <type-str> x y))

(cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))

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

(cl:defun equals (obj obj)
  "Master wrapper for Microsoft.Xna.Framework.Point.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" obj))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-POINT"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Point.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" obj))

(cl:defun equals-point (obj other)
  "Calls Microsoft.Xna.Framework.Point.Equals Equals(Point) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "Equals" other))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "GetHashCode"))

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Point") a) (cl:the (dotnet "Microsoft.Xna.Framework.Point") b)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "ToString"))

(cl:defun to-vector2 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Point") obj) "ToVector2"))

