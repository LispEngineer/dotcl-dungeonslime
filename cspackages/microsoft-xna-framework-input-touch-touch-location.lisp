;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchLocation
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :microsoft-xna-framework-input-touch-touch-location)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Touch.TouchLocation"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchLocation")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchLocation")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.Touch.TouchLocation. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-int32-touch-location-state-vector2 (id state position)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchLocation constructor new(Int32, TouchLocationState, Vector2)"
  (dotnet:new <type-str> id state position))

(cl:defun new-int32-touch-location-state-vector2-touch-location-state-vector2 (id state position previous-state previous-position)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchLocation constructor new(Int32, TouchLocationState, Vector2, TouchLocationState, Vector2)"
  (dotnet:new <type-str> id state position previous-state previous-position))

(cl:defun id (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "get_Id"))

(cl:defun position (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "get_Position"))

(cl:defun pressure (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "get_Pressure"))

(cl:defun state (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "get_State"))

(cl:defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value2)))

(cl:defun equals (obj obj)
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchLocation.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "Equals" obj))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-LOCATION"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchLocation.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "Equals" obj))

(cl:defun equals-touch-location (obj other)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchLocation.Equals Equals(TouchLocation) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "Equals" other))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "GetHashCode"))

(cl:defun high-frequency-event? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "IsHighFrequencyEvent"))

(cl:defun not= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value2)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj) "ToString"))

;; The following C# Microsoft.Xna.Framework.Input.Touch.TouchLocation.TryGetPreviousLocation overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryGetPreviousLocation(out TouchLocation&) -> Boolean

