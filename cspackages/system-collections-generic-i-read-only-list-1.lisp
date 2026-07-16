;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IReadOnlyList`1
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :system-collections-generic-i-read-only-list-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IReadOnlyList`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IReadOnlyList`1")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IReadOnlyList`1") obj!) "get_Item" index))

