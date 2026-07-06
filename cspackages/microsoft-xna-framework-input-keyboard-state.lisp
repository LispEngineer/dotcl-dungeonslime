;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Generator Version: 39
;;; Creation Date: 2026-07-06T21:35:35Z

(cl:in-package :microsoft-xna-framework-input-keyboard-state)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.KeyboardState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.KeyboardState")
(cl:defconstant <creation> "2026-07-06T21:35:35Z")
(cl:defconstant <version> 39)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.KeyboardState")))

(cl:defun new ()
  (dotnet:new <type-str>))

;; Note: Microsoft.Xna.Framework.Input.KeyboardState also has the following constructors with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   new(params Keys[])
;;   new(Keys[], Boolean, Boolean)

(cl:defun caps-lock (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "get_CapsLock"))

(cl:defun item (obj! key)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "get_Item" key))

(cl:defun num-lock (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "get_NumLock"))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") a) (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") b)))

(cl:defun equals (obj! obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "Equals" obj))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "GetHashCode"))

(cl:defun get-pressed-key-count (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "GetPressedKeyCount"))

(cl:defun get-pressed-keys (obj! cl:&optional (keys cl:nil supplied-keys))
  "Master wrapper for Microsoft.Xna.Framework.Input.KeyboardState.GetPressedKeys overloads. Dispatches at runtime.

GetPressedKeys() -> Keys[]

GetPressedKeys(Keys[]) -> Void
"
  (cl:cond
    ((cl:and supplied-keys (cl:or (cl:null keys) (dotnet:object-type keys)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "GetPressedKeys" keys))
    ((cl:and (cl:not supplied-keys))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "GetPressedKeys"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-KEYBOARD-STATE"
                    :class-name <type-str>
                    :method-name "GetPressedKeys"
                    :supplied-args (cl:append (cl:when supplied-keys (cl:list :keys keys)))))))

(cl:defun key-down? (obj! key)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "IsKeyDown" key))

(cl:defun key-up? (obj! key)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") obj!) "IsKeyUp" key))

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") a) (cl:the (dotnet "Microsoft.Xna.Framework.Input.KeyboardState") b)))

