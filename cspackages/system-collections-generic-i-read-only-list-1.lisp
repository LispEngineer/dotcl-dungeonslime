;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IReadOnlyList`1
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection

(cl:in-package :system-collections-generic-i-read-only-list-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IReadOnlyList`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IReadOnlyList`1")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IReadOnlyList`1") obj!) "get_Item" index))

