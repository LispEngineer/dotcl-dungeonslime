;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IReadOnlyCollection`1
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection

(cl:in-package :system-collections-generic-i-read-only-collection-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IReadOnlyCollection`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IReadOnlyCollection`1")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun count (obj!)
  "Gets the number of elements in the collection."
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IReadOnlyCollection`1") obj!) "get_Count"))

