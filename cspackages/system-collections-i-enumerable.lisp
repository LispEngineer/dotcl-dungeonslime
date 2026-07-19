;;; Generated automatically. Do not edit.
;;; Class: System.Collections.IEnumerable
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection

(cl:in-package :system-collections-i-enumerable)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.IEnumerable"))
(cl:defconstant <type-str> "System.Collections.IEnumerable")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun get-enumerator (obj!)
  "Summary: Returns an enumerator that iterates through a collection.
Returns: An System.Collections.IEnumerator object that can be used to iterate through the collection.
"
  (dotnet:invoke (cl:the (dotnet "System.Collections.IEnumerable") obj!) "GetEnumerator"))

