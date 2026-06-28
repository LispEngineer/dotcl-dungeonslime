;;; Generated automatically. Do not edit.
;;; Class: System.Boolean
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:30:20Z

(in-package :cl-user)

(defpackage :system-boolean
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:false-string
   #:true-string
   #:compare-to
   #:compare-to-object
   #:compare-to-boolean
   #:equals
   #:equals-object
   #:equals-boolean
   #:get-hash-code
   #:get-type-code
   #:parse
   #:to-string
   #:to-string-i-format-provider
  ))

(in-package :system-boolean)

(defconstant <type> (monoutils:get-type "System.Boolean"))
(defconstant <type-str> "System.Boolean")
(defconstant <creation> "2026-06-28T22:30:20Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Boolean")))

(defun new ()
  (dotnet:new <type-str>))

(define-symbol-macro false-string (dotnet:static <type-str> "FalseString"))
(setf (documentation 'false-string 'variable) "Represents the Boolean value as a string. This field is read-only.")

(define-symbol-macro true-string (dotnet:static <type-str> "TrueString"))
(setf (documentation 'true-string 'variable) "Represents the Boolean value as a string. This field is read-only.")

(defun compare-to (obj &rest args)
  "Passthrough for System.Boolean.CompareTo overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.Boolean") obj) "CompareTo" args))

(defun compare-to-object (obj obj)
  "Calls System.Boolean.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates their relationship to one another.
Returns: A signed integer that indicates the relative order of this instance and obj. Return Value Condition Less than zero This instance is and obj is . Zero This instance and obj are equal (either both are or both are ). Greater than zero This instance is and obj is . -or- obj is .
Parameters:
  - obj (System.Object): An object to compare to this instance, or .
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "CompareTo" obj))

(defun compare-to-boolean (obj value)
  "Calls System.Boolean.CompareTo CompareTo(Boolean) -> Int32. Summary: Compares this instance to a specified System.Boolean object and returns an integer that indicates their relationship to one another.
Returns: A signed integer that indicates the relative values of this instance and value. Return Value Condition Less than zero This instance is and value is . Zero This instance and value are equal (either both are or both are ). Greater than zero This instance is and value is .
Parameters:
  - value (System.Boolean): A System.Boolean object to compare to this instance.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "CompareTo" value))

(defun equals (obj &rest args)
  "Passthrough for System.Boolean.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.Boolean") obj) "Equals" args))

(defun equals-object (obj obj)
  "Calls System.Boolean.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
Returns: if obj is a System.Boolean and has the same value as this instance; otherwise, .
Parameters:
  - obj (System.Object): An object to compare to this instance.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "Equals" obj))

(defun equals-boolean (obj obj)
  "Calls System.Boolean.Equals Equals(Boolean) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified System.Boolean object.
Returns: if obj has the same value as this instance; otherwise, .
Parameters:
  - obj (System.Boolean): A System.Boolean value to compare to this instance.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "Equals" obj))

(defun get-hash-code (obj)
  "Summary: Returns the hash code for this instance.
Returns: A hash code for the current System.Boolean.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "GetHashCode"))

(defun get-type-code (obj)
  "Summary: Returns the type code for the System.Boolean value type.
Returns: The enumerated constant System.TypeCode.Boolean.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "GetTypeCode"))

(defun parse (value)
  "Summary: Converts the specified string representation of a logical value to its System.Boolean equivalent.
Returns: if value is equivalent to System.Boolean.TrueString; if value is equivalent to System.Boolean.FalseString.
Parameters:
  - value (System.String): A string containing the value to convert.
"
  (dotnet:static <type-str> "Parse" (the (dotnet "System.String") value)))

(defun to-string (obj &rest args)
  "Passthrough for System.Boolean.ToString overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.Boolean") obj) "ToString" args))

(defun to-string (obj)
  "Calls System.Boolean.ToString ToString() -> String. Summary: Converts the value of this instance to its equivalent string representation (either \"True\" or \"False\").
Returns: \"True\" (the value of the System.Boolean.TrueString property) if the value of this instance is , or \"False\" (the value of the System.Boolean.FalseString property) if the value of this instance is .
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "ToString"))

(defun to-string-i-format-provider (obj provider)
  "Calls System.Boolean.ToString ToString(IFormatProvider) -> String. Summary: Converts the value of this instance to its equivalent string representation (either \"True\" or \"False\").
Returns: System.Boolean.TrueString if the value of this instance is , or System.Boolean.FalseString if the value of this instance is .
Parameters:
  - provider (System.IFormatProvider): (Reserved) An System.IFormatProvider object.
"
  (dotnet:invoke (the (dotnet "System.Boolean") obj) "ToString" provider))

;; The following C# System.Boolean.TryParse overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParse(String, out Boolean&) -> Boolean

