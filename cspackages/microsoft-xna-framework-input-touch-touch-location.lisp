;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchLocation
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :microsoft-xna-framework-input-touch-touch-location)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchLocation"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchLocation")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

(cl:defun new (cl:&optional (id cl:nil supplied-id) (state cl:nil supplied-state) (position cl:nil supplied-position) (previous-state cl:nil supplied-previous-state) (previous-position cl:nil supplied-previous-position))
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchLocation constructor overloads. Dispatches at runtime.

new()

new(Int32, TouchLocationState, Vector2)

new(Int32, TouchLocationState, Vector2, TouchLocationState, Vector2)
"
  (cl:cond
    ((cl:and supplied-id (cl:numberp id) supplied-state (cl:or (cl:null state) (dotnet:object-type state)) supplied-position (cl:or (cl:null position) (dotnet:object-type position)) supplied-previous-state (cl:or (cl:null previous-state) (dotnet:object-type previous-state)) supplied-previous-position (cl:or (cl:null previous-position) (dotnet:object-type previous-position)))
     (dotnet:new <type-str> id state position previous-state previous-position))
    ((cl:and supplied-id (cl:numberp id) supplied-state (cl:or (cl:null state) (dotnet:object-type state)) supplied-position (cl:or (cl:null position) (dotnet:object-type position)) (cl:not supplied-previous-state) (cl:not supplied-previous-position))
     (dotnet:new <type-str> id state position))
    ((cl:and (cl:not supplied-id) (cl:not supplied-state) (cl:not supplied-position) (cl:not supplied-previous-state) (cl:not supplied-previous-position))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-LOCATION"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-id (cl:list :id id)) (cl:when supplied-state (cl:list :state state)) (cl:when supplied-position (cl:list :position position)) (cl:when supplied-previous-state (cl:list :previous-state previous-state)) (cl:when supplied-previous-position (cl:list :previous-position previous-position)))))))

(cl:defun id (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "get_Id"))

(cl:defun position (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "get_Position"))

(cl:defun pressure (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "get_Pressure"))

(cl:defun state (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "get_State"))

(cl:defun = (value1 value2)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value2)))

(cl:defun equals (obj! obj)
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchLocation.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean

Equals(TouchLocation) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-LOCATION"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "GetHashCode"))

(cl:defun high-frequency-event? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "IsHighFrequencyEvent"))

(cl:defun not= (value1 value2)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") value2)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchLocation") obj!) "ToString"))

;; The following C# Microsoft.Xna.Framework.Input.Touch.TouchLocation.TryGetPreviousLocation overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryGetPreviousLocation(out TouchLocation&) -> Boolean

