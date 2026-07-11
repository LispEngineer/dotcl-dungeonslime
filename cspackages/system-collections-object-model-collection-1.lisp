;;; Generated automatically. Do not edit.
;;; Class: System.Collections.ObjectModel.Collection`1
;;; Generator Version: 44
;;; Creation Date: 2026-07-11T16:30:12Z

(cl:in-package :system-collections-object-model-collection-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.ObjectModel.Collection`1"))
(cl:defconstant <type-str> "System.Collections.ObjectModel.Collection`1")
(cl:defconstant <creation> "2026-07-11T16:30:12Z")
(cl:defconstant <version> 44)

(cl:defun new (cl:&optional (list cl:nil supplied-list))
  "Master wrapper for System.Collections.ObjectModel.Collection`1 constructor overloads. Dispatches at runtime.

new()
  Summary: Initializes a new instance of the System.Collections.ObjectModel.Collection`1 class that is empty.

new(IList)
  Summary: Initializes a new instance of the System.Collections.ObjectModel.Collection`1 class as a wrapper for the specified list.
  Parameters:
    - list (System.Collections.Generic.IList`1[T]): The list that is wrapped by the new collection.
"
  (cl:cond
    ((cl:and supplied-list (cl:or (cl:null list) (dotnet:object-type list)))
     (dotnet:new <type-str> list))
    ((cl:and (cl:not supplied-list))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-COLLECTIONS-OBJECT-MODEL-COLLECTION-1"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-list (cl:list :list list)))))))

(cl:defun count (obj!)
  "Gets the number of elements actually contained in the System.Collections.ObjectModel.Collection`1."
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "get_Count"))

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "get_Item" index))

(cl:defun (cl:setf item) (new-value obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "set_Item" index new-value))

(cl:defun items (obj!)
  "Gets a System.Collections.Generic.IList`1 wrapper around the System.Collections.ObjectModel.Collection`1."
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "get_Items"))

(cl:defun add (obj! item)
  "Summary: Adds an object to the end of the System.Collections.ObjectModel.Collection`1.
Parameters:
  - item (T): The object to be added to the end of the System.Collections.ObjectModel.Collection`1. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "Add" item))

(cl:defun clear (obj!)
  "Summary: Removes all elements from the System.Collections.ObjectModel.Collection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "Clear"))

(cl:defun clear-items (obj!)
  "Summary: Removes all elements from the System.Collections.ObjectModel.Collection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "ClearItems"))

(cl:defun contains (obj! item)
  "Summary: Determines whether an element is in the System.Collections.ObjectModel.Collection`1.
Returns: if item is found in the System.Collections.ObjectModel.Collection`1; otherwise, .
Parameters:
  - item (T): The object to locate in the System.Collections.ObjectModel.Collection`1. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "Contains" item))

(cl:defun copy-to (obj! array index)
  "Summary: Copies the entire System.Collections.ObjectModel.Collection`1 to a compatible one-dimensional System.Array, starting at the specified index of the target array.
Parameters:
  - array (T[]): The one-dimensional System.Array that is the destination of the elements copied from System.Collections.ObjectModel.Collection`1. The System.Array must have zero-based indexing.
  - index (System.Int32): The zero-based index in array at which copying begins.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "CopyTo" array index))

(cl:defun get-enumerator (obj!)
  "Summary: Returns an enumerator that iterates through the System.Collections.ObjectModel.Collection`1.
Returns: An System.Collections.Generic.IEnumerator`1 for the System.Collections.ObjectModel.Collection`1.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "GetEnumerator"))

(cl:defun index-of (obj! item)
  "Summary: Searches for the specified object and returns the zero-based index of the first occurrence within the entire System.Collections.ObjectModel.Collection`1.
Returns: The zero-based index of the first occurrence of item within the entire System.Collections.ObjectModel.Collection`1, if found; otherwise, -1.
Parameters:
  - item (T): The object to locate in the System.Collections.ObjectModel.Collection`1. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "IndexOf" item))

(cl:defun insert (obj! index item)
  "Summary: Inserts an element into the System.Collections.ObjectModel.Collection`1 at the specified index.
Parameters:
  - index (System.Int32): The zero-based index at which item should be inserted.
  - item (T): The object to insert. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "Insert" index item))

(cl:defun insert-item (obj! index item)
  "Summary: Inserts an element into the System.Collections.ObjectModel.Collection`1 at the specified index.
Parameters:
  - index (System.Int32): The zero-based index at which item should be inserted.
  - item (T): The object to insert. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "InsertItem" index item))

(cl:defun remove (obj! item)
  "Summary: Removes the first occurrence of a specific object from the System.Collections.ObjectModel.Collection`1.
Returns: if item is successfully removed; otherwise, . This method also returns if item was not found in the original System.Collections.ObjectModel.Collection`1.
Parameters:
  - item (T): The object to remove from the System.Collections.ObjectModel.Collection`1. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "Remove" item))

(cl:defun remove-at (obj! index)
  "Summary: Removes the element at the specified index of the System.Collections.ObjectModel.Collection`1.
Parameters:
  - index (System.Int32): The zero-based index of the element to remove.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "RemoveAt" index))

(cl:defun remove-item (obj! index)
  "Summary: Removes the element at the specified index of the System.Collections.ObjectModel.Collection`1.
Parameters:
  - index (System.Int32): The zero-based index of the element to remove.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "RemoveItem" index))

(cl:defun set-item (obj! index item)
  "Summary: Replaces the element at the specified index.
Parameters:
  - index (System.Int32): The zero-based index of the element to replace.
  - item (T): The new value for the element at the specified index. The value can be for reference types.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.Collection`1") obj!) "SetItem" index item))

