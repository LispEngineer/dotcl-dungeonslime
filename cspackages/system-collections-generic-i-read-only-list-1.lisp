;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IReadOnlyList`1
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :system-collections-generic-i-read-only-list-1)

(cl:defconstant <type> (dotnet:resolve-type "System.Collections.Generic.IReadOnlyList`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IReadOnlyList`1")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Collections.Generic.IReadOnlyList`1")))

(cl:defun item (obj! index)
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IReadOnlyList`1") obj!) "get_Item" index))

