;;; Generated automatically. Do not edit.
;;; Class: Gum.Collections.GraphicalUiElementCollection
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :gum-collections-graphical-ui-element-collection)

(cl:defconstant <type> (dotnet:resolve-type "Gum.Collections.GraphicalUiElementCollection"))
(cl:defconstant <type-str> "Gum.Collections.GraphicalUiElementCollection")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Collections.GraphicalUiElementCollection")))

(cl:defun new (inner-collection)
  (dotnet:new <type-str> inner-collection))

(cl:define-symbol-macro empty (dotnet:static <type-str> "Empty"))

(cl:defun read-only? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "get_IsReadOnly"))

(cl:defun clear-items (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "ClearItems"))

(cl:defun insert-item (obj! index item)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "InsertItem" index item))

(cl:defun move-item (obj! old-index new-index)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "MoveItem" old-index new-index))

(cl:defun remove-item (obj! index)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "RemoveItem" index))

(cl:defun set-item (obj! index item)
  (dotnet:invoke (cl:the (dotnet "Gum.Collections.GraphicalUiElementCollection") obj!) "SetItem" index item))

