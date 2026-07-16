;;; Generated automatically. Do not edit.
;;; Class: System.Collections.IEnumerable
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :system-collections-i-enumerable)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.IEnumerable"))
(cl:defconstant <type-str> "System.Collections.IEnumerable")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun get-enumerator (obj!)
  "Summary: Returns an enumerator that iterates through a collection.
Returns: An System.Collections.IEnumerator object that can be used to iterate through the collection.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IEnumerable") obj!) "GetEnumerator"))

