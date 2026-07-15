;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IList`1
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :system-collections-generic-i-list-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IList`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IList`1")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IList`1") obj!) "get_Item" index))

(cl:defun (cl:setf item) (new-value obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IList`1") obj!) "set_Item" index new-value))

(cl:defun index-of (obj! item)
  "Summary: Determines the index of a specific item in the System.Collections.Generic.IList`1.
Returns: The index of item if found in the list; otherwise, -1.
Parameters:
  - item (T): The object to locate in the System.Collections.Generic.IList`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IList`1") obj!) "IndexOf" item))

(cl:defun insert (obj! index item)
  "Summary: Inserts an item to the System.Collections.Generic.IList`1 at the specified index.
Parameters:
  - index (System.Int32): The zero-based index at which item should be inserted.
  - item (T): The object to insert into the System.Collections.Generic.IList`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IList`1") obj!) "Insert" index item))

(cl:defun remove-at (obj! index)
  "Summary: Removes the System.Collections.Generic.IList`1 item at the specified index.
Parameters:
  - index (System.Int32): The zero-based index of the item to remove.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IList`1") obj!) "RemoveAt" index))

