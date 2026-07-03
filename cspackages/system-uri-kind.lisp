;;; Generated automatically. Do not edit.
;;; Class: System.UriKind
;;; Generator Version: 18
;;; Creation Date: 2026-07-03T01:18:07Z

(cl:in-package :cl-user)

(cl:defpackage :system-uri-kind
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+absolute+
   #:+relative+
   #:+relative-or-absolute+
  ))

(cl:in-package :system-uri-kind)

(cl:defconstant <type> (monoutils:get-type "System.UriKind"))
(cl:defconstant <type-str> "System.UriKind")
(cl:defconstant <creation> "2026-07-03T01:18:07Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.UriKind")))

(cl:defconstant +absolute+ (dotnet:static <type-str> "Absolute"))
(cl:setf (cl:documentation (cl:quote +absolute+) (cl:quote cl:variable)) "The URI is absolute.")

(cl:defconstant +relative+ (dotnet:static <type-str> "Relative"))
(cl:setf (cl:documentation (cl:quote +relative+) (cl:quote cl:variable)) "The URI is relative.")

(cl:defconstant +relative-or-absolute+ (dotnet:static <type-str> "RelativeOrAbsolute"))
(cl:setf (cl:documentation (cl:quote +relative-or-absolute+) (cl:quote cl:variable)) "The URI kind is indeterminate.")

