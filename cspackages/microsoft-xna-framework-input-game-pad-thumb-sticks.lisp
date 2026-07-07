;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadThumbSticks
;;; Generator Version: 40
;;; Creation Date: 2026-07-07T01:03:12Z

(cl:in-package :microsoft-xna-framework-input-game-pad-thumb-sticks)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadThumbSticks")
(cl:defconstant <creation> "2026-07-07T01:03:12Z")
(cl:defconstant <version> 40)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadThumbSticks")))

(cl:defun new (cl:&optional (left-position cl:nil supplied-left-position) (right-position cl:nil supplied-right-position))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePadThumbSticks constructor overloads. Dispatches at runtime.

new()

new(Vector2, Vector2)
"
  (cl:cond
    ((cl:and supplied-left-position (cl:or (cl:null left-position) (dotnet:object-type left-position)) supplied-right-position (cl:or (cl:null right-position) (dotnet:object-type right-position)))
     (dotnet:new <type-str> left-position right-position))
    ((cl:and (cl:not supplied-left-position) (cl:not supplied-right-position))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD-THUMB-STICKS"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-left-position (cl:list :left-position left-position)) (cl:when supplied-right-position (cl:list :right-position right-position)))))))

(cl:defun left (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj!) "get_Left"))

(cl:defun right (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj!) "get_Right"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj!) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") right)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadThumbSticks") obj!) "ToString"))

