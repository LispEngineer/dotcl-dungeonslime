;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.ICollection`1
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :system-collections-generic-i-collection-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.ICollection`1"))
(cl:defconstant <type-str> "System.Collections.Generic.ICollection`1")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun count (obj!)
  "Gets the number of elements contained in the System.Collections.Generic.ICollection`1."
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "get_Count"))

(cl:defun read-only? (obj!)
  "Gets a value indicating whether the System.Collections.Generic.ICollection`1 is read-only."
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "get_IsReadOnly"))

(cl:defun add (obj! item)
  "Summary: Adds an item to the System.Collections.Generic.ICollection`1.
Parameters:
  - item (T): The object to add to the System.Collections.Generic.ICollection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "Add" item))

(cl:defun clear (obj!)
  "Summary: Removes all items from the System.Collections.Generic.ICollection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "Clear"))

(cl:defun contains (obj! item)
  "Summary: Determines whether the System.Collections.Generic.ICollection`1 contains a specific value.
Returns: if item is found in the System.Collections.Generic.ICollection`1; otherwise, .
Parameters:
  - item (T): The object to locate in the System.Collections.Generic.ICollection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "Contains" item))

(cl:defun copy-to (obj! array array-index)
  "Summary: Copies the elements of the System.Collections.Generic.ICollection`1 to an System.Array, starting at a particular System.Array index.
Parameters:
  - array (T[]): The one-dimensional System.Array that is the destination of the elements copied from System.Collections.Generic.ICollection`1. The System.Array must have zero-based indexing.
  - array-index (System.Int32): The zero-based index in array at which copying begins.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "CopyTo" array array-index))

(cl:defun remove (obj! item)
  "Summary: Removes the first occurrence of a specific object from the System.Collections.Generic.ICollection`1.
Returns: if item was successfully removed from the System.Collections.Generic.ICollection`1; otherwise, . This method also returns if item is not found in the original System.Collections.Generic.ICollection`1.
Parameters:
  - item (T): The object to remove from the System.Collections.Generic.ICollection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.ICollection`1") obj!) "Remove" item))

