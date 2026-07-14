;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :microsoft-xna-framework-input-keyboard-state)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.KeyboardState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.KeyboardState")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

(cl:defun new (cl:&optional (keys cl:nil supplied-keys) cl:&key (caps-lock cl:nil supplied-caps-lock) (num-lock cl:nil supplied-num-lock))
  "Master wrapper for Microsoft.Xna.Framework.Input.KeyboardState constructor overloads. Dispatches at runtime.

new()

new(Keys[], Boolean = NIL, Boolean = NIL)
"
  (cl:cond
    ((cl:and supplied-keys (cl:or (cl:null keys) (dotnet:object-type keys)) (cl:or (cl:not supplied-caps-lock) (cl:typep caps-lock 'cl:boolean)) (cl:or (cl:not supplied-num-lock) (cl:typep num-lock 'cl:boolean)))
     (dotnet:new <type-str> keys (cl:if supplied-caps-lock caps-lock cl:nil) (cl:if supplied-num-lock num-lock cl:nil)))
    ((cl:and (cl:not supplied-keys) (cl:not supplied-caps-lock) (cl:not supplied-num-lock))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-KEYBOARD-STATE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-keys (cl:list :keys keys)) (cl:when supplied-caps-lock (cl:list :caps-lock caps-lock)) (cl:when supplied-num-lock (cl:list :num-lock num-lock)))))))

;; Note: Microsoft.Xna.Framework.Input.KeyboardState also has the following constructors with special
;; parameter types (ref, out, or params) that are not
;; yet supported:
;;   new(params Keys[])

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

