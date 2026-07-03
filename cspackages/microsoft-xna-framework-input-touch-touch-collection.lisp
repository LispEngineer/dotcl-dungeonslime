;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.Touch.TouchCollection
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-input-touch-touch-collection
  (:use :cl)
  (:shadow
   #:count
   #:remove
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-touch-location[]
   #:count
   #:connected?
   #:read-only?
   #:item
   #:add
   #:clear
   #:contains
   #:copy-to
   #:get-enumerator
   #:index-of
   #:insert
   #:remove
   #:remove-at
  ))

(cl:in-package :microsoft-xna-framework-input-touch-touch-collection)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.Touch.TouchCollection"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Input.Touch.TouchCollection")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.Touch.TouchCollection")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Input.Touch.TouchCollection. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-touch-location[] (touches)
  "Calls Microsoft.Xna.Framework.Input.Touch.TouchCollection constructor new(TouchLocation[])"
  (dotnet:new <type-str> touches))

(cl:defun count (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "get_Count"))

(cl:defun connected? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "get_IsConnected"))

(cl:defun read-only? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "get_IsReadOnly"))

(cl:defun item (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "get_Item"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf item) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "set_Item" new-value))

(cl:defun add (obj item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "Add" item))

(cl:defun clear (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "Clear"))

(cl:defun contains (obj item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "Contains" item))

(cl:defun copy-to (obj array array-index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "CopyTo" array array-index))

;; The following C# Microsoft.Xna.Framework.Input.Touch.TouchCollection.FindById overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   FindById(Int32, out TouchLocation&) -> Boolean

(cl:defun get-enumerator (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "GetEnumerator"))

(cl:defun index-of (obj item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "IndexOf" item))

(cl:defun insert (obj index item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "Insert" index item))

(cl:defun remove (obj item)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "Remove" item))

(cl:defun remove-at (obj index)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Input.Touch.TouchCollection") obj) "RemoveAt" index))

