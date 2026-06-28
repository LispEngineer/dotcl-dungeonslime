;;; Generated automatically. Do not edit.
;;; Class: System.UriKind
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:30:12Z

(in-package :cl-user)

(defpackage :system-uri-kind
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

(in-package :system-uri-kind)

(defconstant <type> (monoutils:get-type "System.UriKind"))
(defconstant <type-str> "System.UriKind")
(defconstant <creation> "2026-06-28T22:30:12Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.UriKind")))

(defconstant +absolute+ (dotnet:static <type-str> "Absolute"))
(setf (documentation '+absolute+ 'variable) "The URI is absolute.")

(defconstant +relative+ (dotnet:static <type-str> "Relative"))
(setf (documentation '+relative+ 'variable) "The URI is relative.")

(defconstant +relative-or-absolute+ (dotnet:static <type-str> "RelativeOrAbsolute"))
(setf (documentation '+relative-or-absolute+ 'variable) "The URI kind is indeterminate.")

