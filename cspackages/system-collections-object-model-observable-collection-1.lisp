;;; Generated automatically. Do not edit.
;;; Class: System.Collections.ObjectModel.ObservableCollection`1
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :system-collections-object-model-observable-collection-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.ObjectModel.ObservableCollection`1"))
(cl:defconstant <type-str> "System.Collections.ObjectModel.ObservableCollection`1")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Collections.ObjectModel.ObservableCollection`1")))

(cl:defun new (cl:&optional (collection cl:nil supplied-collection))
  "Master wrapper for System.Collections.ObjectModel.ObservableCollection`1 constructor overloads. Dispatches at runtime.

new()
  Summary: Initializes a new instance of the System.Collections.ObjectModel.ObservableCollection`1 class.

new(IEnumerable)
  Summary: Initializes a new instance of the System.Collections.ObjectModel.ObservableCollection`1 class that contains elements copied from the specified collection.
  Parameters:
    - collection (System.Collections.Generic.IEnumerable`1[T]): The collection from which the elements are copied.

new(List)
  Summary: Initializes a new instance of the System.Collections.ObjectModel.ObservableCollection`1 class that contains elements copied from the specified list.
  Parameters:
    - list (System.Collections.Generic.List`1[T]): The list from which the elements are copied.
"
  (cl:cond
    ((cl:and supplied-collection (cl:or (cl:null collection) (dotnet:object-type collection)))
     (dotnet:new <type-str> collection))
    ((cl:and supplied-collection (cl:or (cl:null collection) (dotnet:object-type collection)))
     (dotnet:new <type-str> collection))
    ((cl:and (cl:not supplied-collection))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-COLLECTIONS-OBJECT-MODEL-OBSERVABLE-COLLECTION-1"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-collection (cl:list :collection collection)))))))

(cl:defun add-collection-changed (obj! handler)
  "Occurs when an item is added, removed, or moved, or the entire list is refreshed."
  (dotnet:add-event (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "CollectionChanged" handler))

(cl:defun remove-collection-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-collection-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "CollectionChanged" handler))

(cl:defun add-property-changed (obj! handler)
  "Occurs when a property value changes."
  (dotnet:add-event (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "PropertyChanged" handler))

(cl:defun remove-property-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-property-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "PropertyChanged" handler))

(cl:defun block-reentrancy (obj!)
  "Summary: Disallows reentrant attempts to change this collection.
Returns: An System.IDisposable object that can be used to dispose of the object.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "BlockReentrancy"))

(cl:defun check-reentrancy (obj!)
  "Summary: Checks for reentrant attempts to change this collection.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "CheckReentrancy"))

(cl:defun clear-items (obj!)
  "Summary: Removes all items from the collection.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "ClearItems"))

(cl:defun insert-item (obj! index item)
  "Summary: Inserts an item into the collection at the specified index.
Parameters:
  - index (System.Int32): The zero-based index at which item should be inserted.
  - item (T): The object to insert.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "InsertItem" index item))

(cl:defun move (obj! old-index new-index)
  "Summary: Moves the item at the specified index to a new location in the collection.
Parameters:
  - old-index (System.Int32): The zero-based index specifying the location of the item to be moved.
  - new-index (System.Int32): The zero-based index specifying the new location of the item.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "Move" old-index new-index))

(cl:defun move-item (obj! old-index new-index)
  "Summary: Moves the item at the specified index to a new location in the collection.
Parameters:
  - old-index (System.Int32): The zero-based index specifying the location of the item to be moved.
  - new-index (System.Int32): The zero-based index specifying the new location of the item.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "MoveItem" old-index new-index))

(cl:defun on-collection-changed (obj! e)
  "Summary: Raises the System.Collections.ObjectModel.ObservableCollection`1.CollectionChanged event with the provided arguments.
Parameters:
  - e (System.Collections.Specialized.NotifyCollectionChangedEventArgs): Arguments of the event being raised.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "OnCollectionChanged" e))

(cl:defun on-property-changed (obj! e)
  "Summary: Raises the System.Collections.ObjectModel.ObservableCollection`1.PropertyChanged event with the provided arguments.
Parameters:
  - e (System.ComponentModel.PropertyChangedEventArgs): Arguments of the event being raised.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "OnPropertyChanged" e))

(cl:defun remove-item (obj! index)
  "Summary: Removes the item at the specified index of the collection.
Parameters:
  - index (System.Int32): The zero-based index of the element to remove.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "RemoveItem" index))

(cl:defun set-item (obj! index item)
  "Summary: Replaces the element at the specified index.
Parameters:
  - index (System.Int32): The zero-based index of the element to replace.
  - item (T): The new value for the element at the specified index.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.ObjectModel.ObservableCollection`1") obj!) "SetItem" index item))

