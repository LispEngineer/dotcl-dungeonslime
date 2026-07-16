;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IEnumerable`1
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :system-collections-generic-i-enumerable-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IEnumerable`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IEnumerable`1")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun get-enumerator (obj!)
  "Summary: Returns an enumerator that iterates through the collection.
Returns: An enumerator that can be used to iterate through the collection.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IEnumerable`1") obj!) "GetEnumerator"))

