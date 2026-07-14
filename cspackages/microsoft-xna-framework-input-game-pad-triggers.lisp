;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :microsoft-xna-framework-input-game-pad-triggers)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePadTriggers"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePadTriggers")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

(cl:defun new (cl:&optional (left-trigger cl:nil supplied-left-trigger) (right-trigger cl:nil supplied-right-trigger))
  "Master wrapper for Microsoft.Xna.Framework.Input.GamePadTriggers constructor overloads. Dispatches at runtime.

new()

new(Single, Single)
"
  (cl:cond
    ((cl:and supplied-left-trigger (cl:numberp left-trigger) supplied-right-trigger (cl:numberp right-trigger))
     (dotnet:new <type-str> left-trigger right-trigger))
    ((cl:and (cl:not supplied-left-trigger) (cl:not supplied-right-trigger))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-GAME-PAD-TRIGGERS"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-left-trigger (cl:list :left-trigger left-trigger)) (cl:when supplied-right-trigger (cl:list :right-trigger right-trigger)))))))

(cl:defun left (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj!) "get_Left"))

(cl:defun right (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj!) "get_Right"))

(cl:defun = (left right)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj!) "GetHashCode"))

(cl:defun not= (left right)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") left) (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") right)))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.GamePadTriggers") obj!) "ToString"))

