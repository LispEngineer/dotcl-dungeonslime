;;; Generated automatically. Do not edit.
;;; Class: System.Collections.IList
;;; Generator Version: 44
;;; Creation Date: 2026-07-11T16:30:12Z

(cl:in-package :system-collections-i-list)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.IList"))
(cl:defconstant <type-str> "System.Collections.IList")
(cl:defconstant <creation> "2026-07-11T16:30:12Z")
(cl:defconstant <version> 44)

(cl:defun fixed-size? (obj!)
  "Gets a value indicating whether the System.Collections.IList has a fixed size."
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "get_IsFixedSize"))

(cl:defun read-only? (obj!)
  "Gets a value indicating whether the System.Collections.IList is read-only."
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "get_IsReadOnly"))

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "get_Item" index))

(cl:defun (cl:setf item) (new-value obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "set_Item" index new-value))

(cl:defun add (obj! value)
  "Summary: Adds an item to the System.Collections.IList.
Returns: The position into which the new element was inserted, or -1 to indicate that the item was not inserted into the collection.
Parameters:
  - value (System.Object): The object to add to the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "Add" value))

(cl:defun clear (obj!)
  "Summary: Removes all items from the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "Clear"))

(cl:defun contains (obj! value)
  "Summary: Determines whether the System.Collections.IList contains a specific value.
Returns: if the System.Object is found in the System.Collections.IList; otherwise, .
Parameters:
  - value (System.Object): The object to locate in the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "Contains" value))

(cl:defun index-of (obj! value)
  "Summary: Determines the index of a specific item in the System.Collections.IList.
Returns: The index of value if found in the list; otherwise, -1.
Parameters:
  - value (System.Object): The object to locate in the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "IndexOf" value))

(cl:defun insert (obj! index value)
  "Summary: Inserts an item to the System.Collections.IList at the specified index.
Parameters:
  - index (System.Int32): The zero-based index at which value should be inserted.
  - value (System.Object): The object to insert into the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "Insert" index value))

(cl:defun remove (obj! value)
  "Summary: Removes the first occurrence of a specific object from the System.Collections.IList.
Parameters:
  - value (System.Object): The object to remove from the System.Collections.IList.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "Remove" value))

(cl:defun remove-at (obj! index)
  "Summary: Removes the System.Collections.IList item at the specified index.
Parameters:
  - index (System.Int32): The zero-based index of the item to remove.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IList") obj!) "RemoveAt" index))

