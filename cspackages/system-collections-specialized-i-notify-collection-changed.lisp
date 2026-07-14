;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Specialized.INotifyCollectionChanged
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :system-collections-specialized-i-notify-collection-changed)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Specialized.INotifyCollectionChanged"))
(cl:defconstant <type-str> "System.Collections.Specialized.INotifyCollectionChanged")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

(cl:defun add-collection-changed (obj! handler)
  "Occurs when the collection changes."
  (dotnet:add-event (cl:the (dotnet "System.Collections.Specialized.INotifyCollectionChanged") obj!) "CollectionChanged" handler))

(cl:defun remove-collection-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-collection-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "System.Collections.Specialized.INotifyCollectionChanged") obj!) "CollectionChanged" handler))

