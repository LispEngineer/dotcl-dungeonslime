;;; Generated automatically. Do not edit.
;;; Class: System.Collections.Generic.IReadOnlyCollection`1
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :system-collections-generic-i-read-only-collection-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Collections.Generic.IReadOnlyCollection`1"))
(cl:defconstant <type-str> "System.Collections.Generic.IReadOnlyCollection`1")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Collections.Generic.IReadOnlyCollection`1")))

(cl:defun count (obj!)
  "Gets the number of elements in the collection."
  (dotnet:invoke (cl:the (dotnet "System.Collections.Generic.IReadOnlyCollection`1") obj!) "get_Count"))

