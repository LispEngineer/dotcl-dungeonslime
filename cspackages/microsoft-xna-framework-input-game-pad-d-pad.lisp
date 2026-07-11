;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :microsoft-xna-framework-input-game-pad-d-pad)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadDPad"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadDPad")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun new (cl:&optional (up-value cl:nil supplied-up-value) (down-value cl:nil supplied-down-value) (left-value cl:nil supplied-left-value) (right-value cl:nil supplied-right-value))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePadDPad constructor overloads. Dispatches at runtime.

new()

new(ButtonState, ButtonState, ButtonState, ButtonState)
"
  (cl:cond
    ((cl:and supplied-up-value (cl:or (cl:null up-value) (dotnet:object-type up-value)) supplied-down-value (cl:or (cl:null down-value) (dotnet:object-type down-value)) supplied-left-value (cl:or (cl:null left-value) (dotnet:object-type left-value)) supplied-right-value (cl:or (cl:null right-value) (dotnet:object-type right-value)))
     (dotnet:new <type-str> up-value down-value left-value right-value))
    ((cl:and (cl:not supplied-up-value) (cl:not supplied-down-value) (cl:not supplied-left-value) (cl:not supplied-right-value))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD-D-PAD"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-up-value (cl:list :up-value up-value)) (cl:when supplied-down-value (cl:list :down-value down-value)) (cl:when supplied-left-value (cl:list :left-value left-value)) (cl:when supplied-right-value (cl:list :right-value right-value)))))))

(cl:defun down (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "get_Down"))

(cl:defun left (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "get_Left"))

(cl:defun right (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "get_Right"))

(cl:defun up (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "get_Up"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") right)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadDPad") obj!) "ToString"))

