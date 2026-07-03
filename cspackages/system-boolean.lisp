;;; Generated automatically. Do not edit.
;;; Class: System.Boolean
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :system-boolean
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
   #:parse-string
   #:parse-char]
   #:to-string
   #:to-string-i-format-provider
  ))

(cl:in-package :system-boolean)

(cl:defconstant <type> (monoutils:get-type "System.Boolean"))
(cl:defconstant <type-str> "System.Boolean")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Boolean")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro false-string (dotnet:static <type-str> "FalseString"))
(cl:setf (cl:documentation (cl:quote false-string) (cl:quote cl:variable)) "Represents the Boolean value as a string. This field is read-only.")

(cl:define-symbol-macro true-string (dotnet:static <type-str> "TrueString"))
(cl:setf (cl:documentation (cl:quote true-string) (cl:quote cl:variable)) "Represents the Boolean value as a string. This field is read-only.")

(cl:defun compare-to (obj obj)
  "Master wrapper for System.Boolean.CompareTo overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "CompareTo" obj))
    ((cl:and (cl:typep obj 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "CompareTo" obj))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-BOOLEAN"
                    :class-name <type-str>
                    :method-name "CompareTo"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun compare-to-object (obj obj)
  "Calls System.Boolean.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates their relationship to one another.
Returns: A signed integer that indicates the relative order of this instance and obj. Return Value Condition Less than zero This instance is and obj is . Zero This instance and obj are equal (either both are or both are ). Greater than zero This instance is and obj is . -or- obj is .
Parameters:
  - obj (System.Object): An object to compare to this instance, or .
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "CompareTo" obj))

(cl:defun compare-to-boolean (obj value)
  "Calls System.Boolean.CompareTo CompareTo(Boolean) -> Int32. Summary: Compares this instance to a specified System.Boolean object and returns an integer that indicates their relationship to one another.
Returns: A signed integer that indicates the relative values of this instance and value. Return Value Condition Less than zero This instance is and value is . Zero This instance and value are equal (either both are or both are ). Greater than zero This instance is and value is .
Parameters:
  - value (System.Boolean): A System.Boolean object to compare to this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "CompareTo" value))

(cl:defun equals (obj obj)
  "Master wrapper for System.Boolean.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "Equals" obj))
    ((cl:and (cl:typep obj 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "Equals" obj))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-BOOLEAN"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun equals-object (obj obj)
  "Calls System.Boolean.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
Returns: if obj is a System.Boolean and has the same value as this instance; otherwise, .
Parameters:
  - obj (System.Object): An object to compare to this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "Equals" obj))

(cl:defun equals-boolean (obj obj)
  "Calls System.Boolean.Equals Equals(Boolean) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified System.Boolean object.
Returns: if obj has the same value as this instance; otherwise, .
Parameters:
  - obj (System.Boolean): A System.Boolean value to compare to this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "Equals" obj))

(cl:defun get-hash-code (obj)
  "Summary: Returns the hash code for this instance.
Returns: A hash code for the current System.Boolean.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "GetHashCode"))

(cl:defun get-type-code (obj)
  "Summary: Returns the type code for the System.Boolean value type.
Returns: The enumerated constant System.TypeCode.Boolean.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "GetTypeCode"))

(cl:defun parse (value)
  "Master wrapper for System.Boolean.Parse overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp value))
     (dotnet:static <type-str> "Parse" value))
    ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)))
     (dotnet:static <type-str> "Parse" value))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-BOOLEAN"
                    :class-name <type-str>
                    :method-name "Parse"
                    :supplied-args (cl:append (cl:list :value value))))))

(cl:defun parse-string (value)
  "Calls System.Boolean.Parse Parse(String) -> Boolean. Summary: Converts the specified string representation of a logical value to its System.Boolean equivalent.
Returns: if value is equivalent to System.Boolean.TrueString; if value is equivalent to System.Boolean.FalseString.
Parameters:
  - value (System.String): A string containing the value to convert.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") value)))

(cl:defun parse-char] (value)
  "Calls System.Boolean.Parse Parse(Char]) -> Boolean. Summary: Converts the specified span representation of a logical value to its System.Boolean equivalent.
Returns: if value is equivalent to System.Boolean.TrueString; if value is equivalent to System.Boolean.FalseString.
Parameters:
  - value (System.ReadOnlySpan`1[System.Char]): A span containing the characters representing the value to convert.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") value)))

(cl:defun to-string (obj cl:&optional (provider cl:nil supplied-provider))
  "Master wrapper for System.Boolean.ToString overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-provider (cl:or (cl:null provider) (monoutils:dotnet-p provider)))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "ToString" provider))
    ((cl:and (cl:not supplied-provider))
     (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "ToString"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-BOOLEAN"
                    :class-name <type-str>
                    :method-name "ToString"
                    :supplied-args (cl:append (cl:when supplied-provider (cl:list :provider provider)))))))

(cl:defun to-string (obj)
  "Calls System.Boolean.ToString ToString() -> String. Summary: Converts the value of this instance to its equivalent string representation (either \"True\" or \"False\").
Returns: \"True\" (the value of the System.Boolean.TrueString property) if the value of this instance is , or \"False\" (the value of the System.Boolean.FalseString property) if the value of this instance is .
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "ToString"))

(cl:defun to-string-i-format-provider (obj provider)
  "Calls System.Boolean.ToString ToString(IFormatProvider) -> String. Summary: Converts the value of this instance to its equivalent string representation (either \"True\" or \"False\").
Returns: System.Boolean.TrueString if the value of this instance is , or System.Boolean.FalseString if the value of this instance is .
Parameters:
  - provider (System.IFormatProvider): (Reserved) An System.IFormatProvider object.
"
  (dotnet:invoke (cl:the (dotnet "System.Boolean") obj) "ToString" provider))

;; The following C# System.Boolean.TryFormat overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryFormat(Char], out Int32&) -> Boolean

;; The following C# System.Boolean.TryParse overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParse(String, out Boolean&) -> Boolean
;;   TryParse(Char], out Boolean&) -> Boolean

