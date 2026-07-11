;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchCollection
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :microsoft-xna-framework-input-touch-touch-collection)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchCollection"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchCollection")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun new (cl:&optional (touches cl:nil supplied-touches))
  "Master wrapper for Microsoft.Xna.Framework.Input.Touch.TouchCollection constructor overloads. Dispatches at runtime.

new()

new(TouchLocation[])
"
  (cl:cond
    ((cl:and supplied-touches (cl:or (cl:null touches) (dotnet:object-type touches)))
     (dotnet:new <type-str> touches))
    ((cl:and (cl:not supplied-touches))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-INPUT-TOUCH-TOUCH-COLLECTION"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-touches (cl:list :touches touches)))))))

(cl:defun count (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "get_Count"))

(cl:defun connected? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "get_IsConnected"))

(cl:defun read-only? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "get_IsReadOnly"))

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "get_Item" index))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf item) (new-value obj! index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "set_Item" index new-value))

(cl:defun add (obj! item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "Add" item))

(cl:defun clear (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "Clear"))

(cl:defun contains (obj! item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "Contains" item))

(cl:defun copy-to (obj! array array-index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "CopyTo" array array-index))

;; The following C# Microsoft.Xna.Framework.Input.Touch.TouchCollection.FindById overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   FindById(Int32, out TouchLocation&) -> Boolean

(cl:defun get-enumerator (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "GetEnumerator"))

(cl:defun index-of (obj! item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "IndexOf" item))

(cl:defun insert (obj! index item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "Insert" index item))

(cl:defun remove (obj! item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "Remove" item))

(cl:defun remove-at (obj! index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj!) "RemoveAt" index))

