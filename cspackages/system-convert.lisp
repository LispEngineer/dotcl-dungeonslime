;;; Generated automatically. Do not edit.
;;; Class: System.Convert
;;; Generator Version: 15
;;; Creation Date: 2026-06-29T00:58:08Z

(cl:in-package :cl-user)

(cl:defpackage :system-convert
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:db-null
   #:change-type
   #:change-type-object-type-code
   #:change-type-object-type
   #:change-type-object-type-code-i-format-provider
   #:change-type-object-type-i-format-provider
   #:from-base64-char-array
   #:from-base64-string
   #:from-hex-string
   #:get-type-code
   #:is-db-null
   #:to-base64-char-array
   #:to-base64-char-array-byte[]-int32-int32-char[]-int32
   #:to-base64-char-array-byte[]-int32-int32-char[]-int32-base64-formatting-options
   #:to-base64-string
   #:to-base64-string-byte[]
   #:to-base64-string-byte[]-base64-formatting-options
   #:to-base64-string-byte[]-int32-int32
   #:to-base64-string-byte[]-int32-int32-base64-formatting-options
   #:to-boolean
   #:to-boolean-object
   #:to-boolean-boolean
   #:to-boolean-s-byte
   #:to-boolean-char
   #:to-boolean-byte
   #:to-boolean-int16
   #:to-boolean-u-int16
   #:to-boolean-int32
   #:to-boolean-u-int32
   #:to-boolean-int64
   #:to-boolean-u-int64
   #:to-boolean-string
   #:to-boolean-single
   #:to-boolean-double
   #:to-boolean-decimal
   #:to-boolean-date-time
   #:to-boolean-object-i-format-provider
   #:to-boolean-string-i-format-provider
   #:to-byte
   #:to-byte-object
   #:to-byte-boolean
   #:to-byte-byte
   #:to-byte-char
   #:to-byte-s-byte
   #:to-byte-int16
   #:to-byte-u-int16
   #:to-byte-int32
   #:to-byte-u-int32
   #:to-byte-int64
   #:to-byte-u-int64
   #:to-byte-single
   #:to-byte-double
   #:to-byte-decimal
   #:to-byte-string
   #:to-byte-date-time
   #:to-byte-object-i-format-provider
   #:to-byte-string-i-format-provider
   #:to-byte-string-int32
   #:to-char
   #:to-char-object
   #:to-char-boolean
   #:to-char-char
   #:to-char-s-byte
   #:to-char-byte
   #:to-char-int16
   #:to-char-u-int16
   #:to-char-int32
   #:to-char-u-int32
   #:to-char-int64
   #:to-char-u-int64
   #:to-char-string
   #:to-char-single
   #:to-char-double
   #:to-char-decimal
   #:to-char-date-time
   #:to-char-object-i-format-provider
   #:to-char-string-i-format-provider
   #:to-date-time
   #:to-date-time-date-time
   #:to-date-time-object
   #:to-date-time-string
   #:to-date-time-s-byte
   #:to-date-time-byte
   #:to-date-time-int16
   #:to-date-time-u-int16
   #:to-date-time-int32
   #:to-date-time-u-int32
   #:to-date-time-int64
   #:to-date-time-u-int64
   #:to-date-time-boolean
   #:to-date-time-char
   #:to-date-time-single
   #:to-date-time-double
   #:to-date-time-decimal
   #:to-date-time-object-i-format-provider
   #:to-date-time-string-i-format-provider
   #:to-decimal
   #:to-decimal-object
   #:to-decimal-s-byte
   #:to-decimal-byte
   #:to-decimal-char
   #:to-decimal-int16
   #:to-decimal-u-int16
   #:to-decimal-int32
   #:to-decimal-u-int32
   #:to-decimal-int64
   #:to-decimal-u-int64
   #:to-decimal-single
   #:to-decimal-double
   #:to-decimal-string
   #:to-decimal-decimal
   #:to-decimal-boolean
   #:to-decimal-date-time
   #:to-decimal-object-i-format-provider
   #:to-decimal-string-i-format-provider
   #:to-double
   #:to-double-object
   #:to-double-s-byte
   #:to-double-byte
   #:to-double-int16
   #:to-double-char
   #:to-double-u-int16
   #:to-double-int32
   #:to-double-u-int32
   #:to-double-int64
   #:to-double-u-int64
   #:to-double-single
   #:to-double-double
   #:to-double-decimal
   #:to-double-string
   #:to-double-boolean
   #:to-double-date-time
   #:to-double-object-i-format-provider
   #:to-double-string-i-format-provider
   #:to-hex-string
   #:to-hex-string-byte[]
   #:to-hex-string-byte[]-int32-int32
   #:to-hex-string-lower
   #:to-hex-string-lower-byte[]
   #:to-hex-string-lower-byte[]-int32-int32
   #:to-int16
   #:to-int16-object
   #:to-int16-boolean
   #:to-int16-char
   #:to-int16-s-byte
   #:to-int16-byte
   #:to-int16-u-int16
   #:to-int16-int32
   #:to-int16-u-int32
   #:to-int16-int16
   #:to-int16-int64
   #:to-int16-u-int64
   #:to-int16-single
   #:to-int16-double
   #:to-int16-decimal
   #:to-int16-string
   #:to-int16-date-time
   #:to-int16-object-i-format-provider
   #:to-int16-string-i-format-provider
   #:to-int16-string-int32
   #:to-int32
   #:to-int32-object
   #:to-int32-boolean
   #:to-int32-char
   #:to-int32-s-byte
   #:to-int32-byte
   #:to-int32-int16
   #:to-int32-u-int16
   #:to-int32-u-int32
   #:to-int32-int32
   #:to-int32-int64
   #:to-int32-u-int64
   #:to-int32-single
   #:to-int32-double
   #:to-int32-decimal
   #:to-int32-string
   #:to-int32-date-time
   #:to-int32-object-i-format-provider
   #:to-int32-string-i-format-provider
   #:to-int32-string-int32
   #:to-int64
   #:to-int64-object
   #:to-int64-boolean
   #:to-int64-char
   #:to-int64-s-byte
   #:to-int64-byte
   #:to-int64-int16
   #:to-int64-u-int16
   #:to-int64-int32
   #:to-int64-u-int32
   #:to-int64-u-int64
   #:to-int64-int64
   #:to-int64-single
   #:to-int64-double
   #:to-int64-decimal
   #:to-int64-string
   #:to-int64-date-time
   #:to-int64-object-i-format-provider
   #:to-int64-string-i-format-provider
   #:to-int64-string-int32
   #:to-s-byte
   #:to-s-byte-object
   #:to-s-byte-boolean
   #:to-s-byte-s-byte
   #:to-s-byte-char
   #:to-s-byte-byte
   #:to-s-byte-int16
   #:to-s-byte-u-int16
   #:to-s-byte-int32
   #:to-s-byte-u-int32
   #:to-s-byte-int64
   #:to-s-byte-u-int64
   #:to-s-byte-single
   #:to-s-byte-double
   #:to-s-byte-decimal
   #:to-s-byte-string
   #:to-s-byte-date-time
   #:to-s-byte-object-i-format-provider
   #:to-s-byte-string-i-format-provider
   #:to-s-byte-string-int32
   #:to-single
   #:to-single-object
   #:to-single-s-byte
   #:to-single-byte
   #:to-single-char
   #:to-single-int16
   #:to-single-u-int16
   #:to-single-int32
   #:to-single-u-int32
   #:to-single-int64
   #:to-single-u-int64
   #:to-single-single
   #:to-single-double
   #:to-single-decimal
   #:to-single-string
   #:to-single-boolean
   #:to-single-date-time
   #:to-single-object-i-format-provider
   #:to-single-string-i-format-provider
   #:to-string
   #:to-string-object
   #:to-string-boolean
   #:to-string-char
   #:to-string-s-byte
   #:to-string-byte
   #:to-string-int16
   #:to-string-u-int16
   #:to-string-int32
   #:to-string-u-int32
   #:to-string-int64
   #:to-string-u-int64
   #:to-string-single
   #:to-string-double
   #:to-string-decimal
   #:to-string-date-time
   #:to-string-string
   #:to-string-object-i-format-provider
   #:to-string-boolean-i-format-provider
   #:to-string-char-i-format-provider
   #:to-string-s-byte-i-format-provider
   #:to-string-byte-i-format-provider
   #:to-string-int16-i-format-provider
   #:to-string-u-int16-i-format-provider
   #:to-string-int32-i-format-provider
   #:to-string-u-int32-i-format-provider
   #:to-string-int64-i-format-provider
   #:to-string-u-int64-i-format-provider
   #:to-string-single-i-format-provider
   #:to-string-double-i-format-provider
   #:to-string-decimal-i-format-provider
   #:to-string-date-time-i-format-provider
   #:to-string-string-i-format-provider
   #:to-string-byte-int32
   #:to-string-int16-int32
   #:to-string-int32-int32
   #:to-string-int64-int32
   #:to-u-int16
   #:to-u-int16-object
   #:to-u-int16-boolean
   #:to-u-int16-char
   #:to-u-int16-s-byte
   #:to-u-int16-byte
   #:to-u-int16-int16
   #:to-u-int16-int32
   #:to-u-int16-u-int16
   #:to-u-int16-u-int32
   #:to-u-int16-int64
   #:to-u-int16-u-int64
   #:to-u-int16-single
   #:to-u-int16-double
   #:to-u-int16-decimal
   #:to-u-int16-string
   #:to-u-int16-date-time
   #:to-u-int16-object-i-format-provider
   #:to-u-int16-string-i-format-provider
   #:to-u-int16-string-int32
   #:to-u-int32
   #:to-u-int32-object
   #:to-u-int32-boolean
   #:to-u-int32-char
   #:to-u-int32-s-byte
   #:to-u-int32-byte
   #:to-u-int32-int16
   #:to-u-int32-u-int16
   #:to-u-int32-int32
   #:to-u-int32-u-int32
   #:to-u-int32-int64
   #:to-u-int32-u-int64
   #:to-u-int32-single
   #:to-u-int32-double
   #:to-u-int32-decimal
   #:to-u-int32-string
   #:to-u-int32-date-time
   #:to-u-int32-object-i-format-provider
   #:to-u-int32-string-i-format-provider
   #:to-u-int32-string-int32
   #:to-u-int64
   #:to-u-int64-object
   #:to-u-int64-boolean
   #:to-u-int64-char
   #:to-u-int64-s-byte
   #:to-u-int64-byte
   #:to-u-int64-int16
   #:to-u-int64-u-int16
   #:to-u-int64-int32
   #:to-u-int64-u-int32
   #:to-u-int64-int64
   #:to-u-int64-u-int64
   #:to-u-int64-single
   #:to-u-int64-double
   #:to-u-int64-decimal
   #:to-u-int64-string
   #:to-u-int64-date-time
   #:to-u-int64-object-i-format-provider
   #:to-u-int64-string-i-format-provider
   #:to-u-int64-string-int32
  ))

(cl:in-package :system-convert)

(cl:defconstant <type> (monoutils:get-type "System.Convert"))
(cl:defconstant <type-str> "System.Convert")
(cl:defconstant <creation> "2026-06-29T00:58:08Z")
(cl:defconstant <version> 15)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Convert")))

(cl:define-symbol-macro db-null (dotnet:static <type-str> "DBNull"))
(cl:setf (cl:documentation (cl:quote db-null) (cl:quote cl:variable)) "A constant that represents a database column that is absent of data; that is, database null.")

(cl:defun change-type (cl:&rest args)
  "Passthrough for System.Convert.ChangeType overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ChangeType" args))

(cl:defun change-type-object-type-code (value type-code)
  "Calls System.Convert.ChangeType ChangeType(Object, TypeCode) -> Object. Summary: Returns an object of the specified type whose value is equivalent to the specified object.
Returns: An object whose underlying type is typeCode and whose value is equivalent to value. -or- A null reference ( in Visual Basic), if value is and typeCode is System.TypeCode.Empty, System.TypeCode.String, or System.TypeCode.Object.
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - type-code (System.TypeCode): The type of object to return.
"
  (dotnet:static <type-str> "ChangeType" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.TypeCode") type-code)))

(cl:defun change-type-object-type (value conversion-type)
  "Calls System.Convert.ChangeType ChangeType(Object, Type) -> Object. Summary: Returns an object of the specified type and whose value is equivalent to the specified object.
Returns: An object whose type is conversionType and whose value is equivalent to value. -or- A null reference ( in Visual Basic), if value is and conversionType is not a value type.
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - conversion-type (System.Type): The type of object to return.
"
  (dotnet:static <type-str> "ChangeType" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.Type") conversion-type)))

(cl:defun change-type-object-type-code-i-format-provider (value type-code provider)
  "Calls System.Convert.ChangeType ChangeType(Object, TypeCode, IFormatProvider) -> Object. Summary: Returns an object of the specified type whose value is equivalent to the specified object. A parameter supplies culture-specific formatting information.
Returns: An object whose underlying type is typeCode and whose value is equivalent to value. -or- A null reference ( in Visual Basic), if value is and typeCode is System.TypeCode.Empty, System.TypeCode.String, or System.TypeCode.Object.
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - type-code (System.TypeCode): The type of object to return.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ChangeType" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.TypeCode") type-code) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun change-type-object-type-i-format-provider (value conversion-type provider)
  "Calls System.Convert.ChangeType ChangeType(Object, Type, IFormatProvider) -> Object. Summary: Returns an object of the specified type whose value is equivalent to the specified object. A parameter supplies culture-specific formatting information.
Returns: An object whose type is conversionType and whose value is equivalent to value. -or- value, if the System.Type of value and conversionType are equal. -or- A null reference ( in Visual Basic), if value is and conversionType is not a value type.
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - conversion-type (System.Type): The type of object to return.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ChangeType" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.Type") conversion-type) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun from-base64-char-array (in-array offset length)
  "Summary: Converts a subset of a Unicode character array, which encodes binary data as base-64 digits, to an equivalent 8-bit unsigned integer array. Parameters specify the subset in the input array and the number of elements to convert.
Returns: An array of 8-bit unsigned integers equivalent to length elements at position offset in inArray.
Parameters:
  - in-array (System.Char[]): A Unicode character array.
  - offset (System.Int32): A position within inArray.
  - length (System.Int32): The number of elements in inArray to convert.
"
  (dotnet:static <type-str> "FromBase64CharArray" (cl:the (dotnet "System.Char[]") in-array) (cl:the (dotnet "System.Int32") offset) (cl:the (dotnet "System.Int32") length)))

(cl:defun from-base64-string (s)
  "Summary: Converts the specified string, which encodes binary data as base-64 digits, to an equivalent 8-bit unsigned integer array.
Returns: An array of 8-bit unsigned integers that is equivalent to s.
Parameters:
  - s (System.String): The string to convert.
"
  (dotnet:static <type-str> "FromBase64String" (cl:the (dotnet "System.String") s)))

(cl:defun from-hex-string (s)
  "Summary: Converts the specified string, which encodes binary data as hex characters, to an equivalent 8-bit unsigned integer array.
Returns: An array of 8-bit unsigned integers that is equivalent to s.
Parameters:
  - s (System.String): The string to convert.
"
  (dotnet:static <type-str> "FromHexString" (cl:the (dotnet "System.String") s)))

(cl:defun get-type-code (value)
  "Summary: Returns the System.TypeCode for the specified object.
Returns: The System.TypeCode for value, or System.TypeCode.Empty if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
"
  (dotnet:static <type-str> "GetTypeCode" (cl:the (dotnet "System.Object") value)))

(cl:defun is-db-null (value)
  "Summary: Returns an indication whether the specified object is of type System.DBNull.
Returns: if value is of type System.DBNull; otherwise, .
Parameters:
  - value (System.Object): An object.
"
  (dotnet:static <type-str> "IsDBNull" (cl:the (dotnet "System.Object") value)))

(cl:defun to-base64-char-array (cl:&rest args)
  "Passthrough for System.Convert.ToBase64CharArray overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToBase64CharArray" args))

(cl:defun to-base64-char-array-byte[]-int32-int32-char[]-int32 (in-array offset-in length out-array offset-out)
  "Calls System.Convert.ToBase64CharArray ToBase64CharArray(Byte[], Int32, Int32, Char[], Int32) -> Int32. Summary: Converts a subset of an 8-bit unsigned integer array to an equivalent subset of a Unicode character array encoded with base-64 digits. Parameters specify the subsets as offsets in the input and output arrays, and the number of elements in the input array to convert.
Returns: A 32-bit signed integer containing the number of bytes in outArray.
Parameters:
  - in-array (System.Byte[]): An input array of 8-bit unsigned integers.
  - offset-in (System.Int32): A position within inArray.
  - length (System.Int32): The number of elements of inArray to convert.
  - out-array (System.Char[]): An output array of Unicode characters.
  - offset-out (System.Int32): A position within outArray.
"
  (dotnet:static <type-str> "ToBase64CharArray" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset-in) (cl:the (dotnet "System.Int32") length) (cl:the (dotnet "System.Char[]") out-array) (cl:the (dotnet "System.Int32") offset-out)))

(cl:defun to-base64-char-array-byte[]-int32-int32-char[]-int32-base64-formatting-options (in-array offset-in length out-array offset-out options)
  "Calls System.Convert.ToBase64CharArray ToBase64CharArray(Byte[], Int32, Int32, Char[], Int32, Base64FormattingOptions) -> Int32. Summary: Converts a subset of an 8-bit unsigned integer array to an equivalent subset of a Unicode character array encoded with base-64 digits. Parameters specify the subsets as offsets in the input and output arrays, the number of elements in the input array to convert, and whether line breaks are inserted in the output array.
Returns: A 32-bit signed integer containing the number of bytes in outArray.
Parameters:
  - in-array (System.Byte[]): An input array of 8-bit unsigned integers.
  - offset-in (System.Int32): A position within inArray.
  - length (System.Int32): The number of elements of inArray to convert.
  - out-array (System.Char[]): An output array of Unicode characters.
  - offset-out (System.Int32): A position within outArray.
  - options (System.Base64FormattingOptions): System.Base64FormattingOptions.InsertLineBreaks to insert a line break every 76 characters, or System.Base64FormattingOptions.None to not insert line breaks.
"
  (dotnet:static <type-str> "ToBase64CharArray" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset-in) (cl:the (dotnet "System.Int32") length) (cl:the (dotnet "System.Char[]") out-array) (cl:the (dotnet "System.Int32") offset-out) (cl:the (dotnet "System.Base64FormattingOptions") options)))

(cl:defun to-base64-string (cl:&rest args)
  "Passthrough for System.Convert.ToBase64String overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToBase64String" args))

(cl:defun to-base64-string-byte[] (in-array)
  "Calls System.Convert.ToBase64String ToBase64String(Byte[]) -> String. Summary: Converts an array of 8-bit unsigned integers to its equivalent string representation that is encoded with base-64 digits.
Returns: The string representation, in base 64, of the contents of inArray.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
"
  (dotnet:static <type-str> "ToBase64String" (cl:the (dotnet "System.Byte[]") in-array)))

(cl:defun to-base64-string-byte[]-base64-formatting-options (in-array options)
  "Calls System.Convert.ToBase64String ToBase64String(Byte[], Base64FormattingOptions) -> String. Summary: Converts an array of 8-bit unsigned integers to its equivalent string representation that is encoded with base-64 digits. You can specify whether to insert line breaks in the return value.
Returns: The string representation in base 64 of the elements in inArray.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
  - options (System.Base64FormattingOptions): System.Base64FormattingOptions.InsertLineBreaks to insert a line break every 76 characters, or System.Base64FormattingOptions.None to not insert line breaks.
"
  (dotnet:static <type-str> "ToBase64String" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Base64FormattingOptions") options)))

(cl:defun to-base64-string-byte[]-int32-int32 (in-array offset length)
  "Calls System.Convert.ToBase64String ToBase64String(Byte[], Int32, Int32) -> String. Summary: Converts a subset of an array of 8-bit unsigned integers to its equivalent string representation that is encoded with base-64 digits. Parameters specify the subset as an offset in the input array, and the number of elements in the array to convert.
Returns: The string representation in base 64 of length elements of inArray, starting at position offset.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
  - offset (System.Int32): An offset in inArray.
  - length (System.Int32): The number of elements of inArray to convert.
"
  (dotnet:static <type-str> "ToBase64String" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset) (cl:the (dotnet "System.Int32") length)))

(cl:defun to-base64-string-byte[]-int32-int32-base64-formatting-options (in-array offset length options)
  "Calls System.Convert.ToBase64String ToBase64String(Byte[], Int32, Int32, Base64FormattingOptions) -> String. Summary: Converts a subset of an array of 8-bit unsigned integers to its equivalent string representation that is encoded with base-64 digits. Parameters specify the subset as an offset in the input array, the number of elements in the array to convert, and whether to insert line breaks in the return value.
Returns: The string representation in base 64 of length elements of inArray, starting at position offset.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
  - offset (System.Int32): An offset in inArray.
  - length (System.Int32): The number of elements of inArray to convert.
  - options (System.Base64FormattingOptions): System.Base64FormattingOptions.InsertLineBreaks to insert a line break every 76 characters, or System.Base64FormattingOptions.None to not insert line breaks.
"
  (dotnet:static <type-str> "ToBase64String" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset) (cl:the (dotnet "System.Int32") length) (cl:the (dotnet "System.Base64FormattingOptions") options)))

(cl:defun to-boolean (cl:&rest args)
  "Passthrough for System.Convert.ToBoolean overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToBoolean" args))

(cl:defun to-boolean-object (value)
  "Calls System.Convert.ToBoolean ToBoolean(Object) -> Boolean. Summary: Converts the value of a specified object to an equivalent Boolean value.
Returns: or , which reflects the value returned by invoking the System.IConvertible.ToBoolean(System.IFormatProvider) method for the underlying type of value. If value is , the method returns .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Object") value)))

(cl:defun to-boolean-boolean (value)
  "Calls System.Convert.ToBoolean ToBoolean(Boolean) -> Boolean. Summary: Returns the specified Boolean value; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Boolean): The Boolean value to return.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-boolean-s-byte (value)
  "Calls System.Convert.ToBoolean ToBoolean(SByte) -> Boolean. Summary: Converts the value of the specified 8-bit signed integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-boolean-char (value)
  "Calls System.Convert.ToBoolean ToBoolean(Char) -> Boolean. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Char") value)))

(cl:defun to-boolean-byte (value)
  "Calls System.Convert.ToBoolean ToBoolean(Byte) -> Boolean. Summary: Converts the value of the specified 8-bit unsigned integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-boolean-int16 (value)
  "Calls System.Convert.ToBoolean ToBoolean(Int16) -> Boolean. Summary: Converts the value of the specified 16-bit signed integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-boolean-u-int16 (value)
  "Calls System.Convert.ToBoolean ToBoolean(UInt16) -> Boolean. Summary: Converts the value of the specified 16-bit unsigned integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-boolean-int32 (value)
  "Calls System.Convert.ToBoolean ToBoolean(Int32) -> Boolean. Summary: Converts the value of the specified 32-bit signed integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-boolean-u-int32 (value)
  "Calls System.Convert.ToBoolean ToBoolean(UInt32) -> Boolean. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-boolean-int64 (value)
  "Calls System.Convert.ToBoolean ToBoolean(Int64) -> Boolean. Summary: Converts the value of the specified 64-bit signed integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-boolean-u-int64 (value)
  "Calls System.Convert.ToBoolean ToBoolean(UInt64) -> Boolean. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-boolean-string (value)
  "Calls System.Convert.ToBoolean ToBoolean(String) -> Boolean. Summary: Converts the specified string representation of a logical value to its Boolean equivalent.
Returns: if value equals System.Boolean.TrueString, or if value equals System.Boolean.FalseString or .
Parameters:
  - value (System.String): A string that contains the value of either System.Boolean.TrueString or System.Boolean.FalseString.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.String") value)))

(cl:defun to-boolean-single (value)
  "Calls System.Convert.ToBoolean ToBoolean(Single) -> Boolean. Summary: Converts the value of the specified single-precision floating-point number to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Single") value)))

(cl:defun to-boolean-double (value)
  "Calls System.Convert.ToBoolean ToBoolean(Double) -> Boolean. Summary: Converts the value of the specified double-precision floating-point number to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Double") value)))

(cl:defun to-boolean-decimal (value)
  "Calls System.Convert.ToBoolean ToBoolean(Decimal) -> Boolean. Summary: Converts the value of the specified decimal number to an equivalent Boolean value.
Returns: if value is not zero; otherwise, .
Parameters:
  - value (System.Decimal): The number to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-boolean-date-time (value)
  "Calls System.Convert.ToBoolean ToBoolean(DateTime) -> Boolean. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-boolean-object-i-format-provider (value provider)
  "Calls System.Convert.ToBoolean ToBoolean(Object, IFormatProvider) -> Boolean. Summary: Converts the value of the specified object to an equivalent Boolean value, using the specified culture-specific formatting information.
Returns: or , which reflects the value returned by invoking the System.IConvertible.ToBoolean(System.IFormatProvider) method for the underlying type of value. If value is , the method returns .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-boolean-string-i-format-provider (value provider)
  "Calls System.Convert.ToBoolean ToBoolean(String, IFormatProvider) -> Boolean. Summary: Converts the specified string representation of a logical value to its Boolean equivalent, using the specified culture-specific formatting information.
Returns: if value equals System.Boolean.TrueString, or if value equals System.Boolean.FalseString or .
Parameters:
  - value (System.String): A string that contains the value of either System.Boolean.TrueString or System.Boolean.FalseString.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information. This parameter is ignored.
"
  (dotnet:static <type-str> "ToBoolean" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-byte (cl:&rest args)
  "Passthrough for System.Convert.ToByte overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToByte" args))

(cl:defun to-byte-object (value)
  "Calls System.Convert.ToByte ToByte(Object) -> Byte. Summary: Converts the value of the specified object to an 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Object") value)))

(cl:defun to-byte-boolean (value)
  "Calls System.Convert.ToByte ToByte(Boolean) -> Byte. Summary: Converts the specified Boolean value to the equivalent 8-bit unsigned integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-byte-byte (value)
  "Calls System.Convert.ToByte ToByte(Byte) -> Byte. Summary: Returns the specified 8-bit unsigned integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to return.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-byte-char (value)
  "Calls System.Convert.ToByte ToByte(Char) -> Byte. Summary: Converts the value of the specified Unicode character to the equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Char") value)))

(cl:defun to-byte-s-byte (value)
  "Calls System.Convert.ToByte ToByte(SByte) -> Byte. Summary: Converts the value of the specified 8-bit signed integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to be converted.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-byte-int16 (value)
  "Calls System.Convert.ToByte ToByte(Int16) -> Byte. Summary: Converts the value of the specified 16-bit signed integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-byte-u-int16 (value)
  "Calls System.Convert.ToByte ToByte(UInt16) -> Byte. Summary: Converts the value of the specified 16-bit unsigned integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-byte-int32 (value)
  "Calls System.Convert.ToByte ToByte(Int32) -> Byte. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-byte-u-int32 (value)
  "Calls System.Convert.ToByte ToByte(UInt32) -> Byte. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-byte-int64 (value)
  "Calls System.Convert.ToByte ToByte(Int64) -> Byte. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-byte-u-int64 (value)
  "Calls System.Convert.ToByte ToByte(UInt64) -> Byte. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-byte-single (value)
  "Calls System.Convert.ToByte ToByte(Single) -> Byte. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 8-bit unsigned integer.
Returns: value, rounded to the nearest 8-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Single") value)))

(cl:defun to-byte-double (value)
  "Calls System.Convert.ToByte ToByte(Double) -> Byte. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 8-bit unsigned integer.
Returns: value, rounded to the nearest 8-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Double") value)))

(cl:defun to-byte-decimal (value)
  "Calls System.Convert.ToByte ToByte(Decimal) -> Byte. Summary: Converts the value of the specified decimal number to an equivalent 8-bit unsigned integer.
Returns: value, rounded to the nearest 8-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The number to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-byte-string (value)
  "Calls System.Convert.ToByte ToByte(String) -> Byte. Summary: Converts the specified string representation of a number to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.String") value)))

(cl:defun to-byte-date-time (value)
  "Calls System.Convert.ToByte ToByte(DateTime) -> Byte. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-byte-object-i-format-provider (value provider)
  "Calls System.Convert.ToByte ToByte(Object, IFormatProvider) -> Byte. Summary: Converts the value of the specified object to an 8-bit unsigned integer, using the specified culture-specific formatting information.
Returns: An 8-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-byte-string-i-format-provider (value provider)
  "Calls System.Convert.ToByte ToByte(String, IFormatProvider) -> Byte. Summary: Converts the specified string representation of a number to an equivalent 8-bit unsigned integer, using specified culture-specific formatting information.
Returns: An 8-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-byte-string-int32 (value from-base)
  "Calls System.Convert.ToByte ToByte(String, Int32) -> Byte. Summary: Converts the string representation of a number in a specified base to an equivalent 8-bit unsigned integer.
Returns: An 8-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToByte" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-char (cl:&rest args)
  "Passthrough for System.Convert.ToChar overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToChar" args))

(cl:defun to-char-object (value)
  "Calls System.Convert.ToChar ToChar(Object) -> Char. Summary: Converts the value of the specified object to a Unicode character.
Returns: A Unicode character that is equivalent to value, or System.Char.MinValue if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Object") value)))

(cl:defun to-char-boolean (value)
  "Calls System.Convert.ToChar ToChar(Boolean) -> Char. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-char-char (value)
  "Calls System.Convert.ToChar ToChar(Char) -> Char. Summary: Returns the specified Unicode character value; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Char): The Unicode character to return.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Char") value)))

(cl:defun to-char-s-byte (value)
  "Calls System.Convert.ToChar ToChar(SByte) -> Char. Summary: Converts the value of the specified 8-bit signed integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-char-byte (value)
  "Calls System.Convert.ToChar ToChar(Byte) -> Char. Summary: Converts the value of the specified 8-bit unsigned integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-char-int16 (value)
  "Calls System.Convert.ToChar ToChar(Int16) -> Char. Summary: Converts the value of the specified 16-bit signed integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-char-u-int16 (value)
  "Calls System.Convert.ToChar ToChar(UInt16) -> Char. Summary: Converts the value of the specified 16-bit unsigned integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-char-int32 (value)
  "Calls System.Convert.ToChar ToChar(Int32) -> Char. Summary: Converts the value of the specified 32-bit signed integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-char-u-int32 (value)
  "Calls System.Convert.ToChar ToChar(UInt32) -> Char. Summary: Converts the value of the specified 32-bit unsigned integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-char-int64 (value)
  "Calls System.Convert.ToChar ToChar(Int64) -> Char. Summary: Converts the value of the specified 64-bit signed integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-char-u-int64 (value)
  "Calls System.Convert.ToChar ToChar(UInt64) -> Char. Summary: Converts the value of the specified 64-bit unsigned integer to its equivalent Unicode character.
Returns: A Unicode character that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-char-string (value)
  "Calls System.Convert.ToChar ToChar(String) -> Char. Summary: Converts the first character of a specified string to a Unicode character.
Returns: A Unicode character that is equivalent to the first and only character in value.
Parameters:
  - value (System.String): A string of length 1.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.String") value)))

(cl:defun to-char-single (value)
  "Calls System.Convert.ToChar ToChar(Single) -> Char. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Single") value)))

(cl:defun to-char-double (value)
  "Calls System.Convert.ToChar ToChar(Double) -> Char. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Double") value)))

(cl:defun to-char-decimal (value)
  "Calls System.Convert.ToChar ToChar(Decimal) -> Char. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-char-date-time (value)
  "Calls System.Convert.ToChar ToChar(DateTime) -> Char. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-char-object-i-format-provider (value provider)
  "Calls System.Convert.ToChar ToChar(Object, IFormatProvider) -> Char. Summary: Converts the value of the specified object to its equivalent Unicode character, using the specified culture-specific formatting information.
Returns: A Unicode character that is equivalent to value, or System.Char.MinValue if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-char-string-i-format-provider (value provider)
  "Calls System.Convert.ToChar ToChar(String, IFormatProvider) -> Char. Summary: Converts the first character of a specified string to a Unicode character, using specified culture-specific formatting information.
Returns: A Unicode character that is equivalent to the first and only character in value.
Parameters:
  - value (System.String): A string of length 1 or .
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information. This parameter is ignored.
"
  (dotnet:static <type-str> "ToChar" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-date-time (cl:&rest args)
  "Passthrough for System.Convert.ToDateTime overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToDateTime" args))

(cl:defun to-date-time-date-time (value)
  "Calls System.Convert.ToDateTime ToDateTime(DateTime) -> DateTime. Summary: Returns the specified System.DateTime object; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.DateTime): A date and time value.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-date-time-object (value)
  "Calls System.Convert.ToDateTime ToDateTime(Object) -> DateTime. Summary: Converts the value of the specified object to a System.DateTime object.
Returns: The date and time equivalent of the value of value, or a date and time equivalent of System.DateTime.MinValue if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Object") value)))

(cl:defun to-date-time-string (value)
  "Calls System.Convert.ToDateTime ToDateTime(String) -> DateTime. Summary: Converts the specified string representation of a date and time to an equivalent date and time value.
Returns: The date and time equivalent of the value of value, or the date and time equivalent of System.DateTime.MinValue if value is .
Parameters:
  - value (System.String): The string representation of a date and time.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.String") value)))

(cl:defun to-date-time-s-byte (value)
  "Calls System.Convert.ToDateTime ToDateTime(SByte) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-date-time-byte (value)
  "Calls System.Convert.ToDateTime ToDateTime(Byte) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-date-time-int16 (value)
  "Calls System.Convert.ToDateTime ToDateTime(Int16) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-date-time-u-int16 (value)
  "Calls System.Convert.ToDateTime ToDateTime(UInt16) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-date-time-int32 (value)
  "Calls System.Convert.ToDateTime ToDateTime(Int32) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-date-time-u-int32 (value)
  "Calls System.Convert.ToDateTime ToDateTime(UInt32) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-date-time-int64 (value)
  "Calls System.Convert.ToDateTime ToDateTime(Int64) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-date-time-u-int64 (value)
  "Calls System.Convert.ToDateTime ToDateTime(UInt64) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-date-time-boolean (value)
  "Calls System.Convert.ToDateTime ToDateTime(Boolean) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-date-time-char (value)
  "Calls System.Convert.ToDateTime ToDateTime(Char) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Char") value)))

(cl:defun to-date-time-single (value)
  "Calls System.Convert.ToDateTime ToDateTime(Single) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Single): The single-precision floating-point value to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Single") value)))

(cl:defun to-date-time-double (value)
  "Calls System.Convert.ToDateTime ToDateTime(Double) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Double): The double-precision floating-point value to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Double") value)))

(cl:defun to-date-time-decimal (value)
  "Calls System.Convert.ToDateTime ToDateTime(Decimal) -> DateTime. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Decimal): The number to convert.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-date-time-object-i-format-provider (value provider)
  "Calls System.Convert.ToDateTime ToDateTime(Object, IFormatProvider) -> DateTime. Summary: Converts the value of the specified object to a System.DateTime object, using the specified culture-specific formatting information.
Returns: The date and time equivalent of the value of value, or the date and time equivalent of System.DateTime.MinValue if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-date-time-string-i-format-provider (value provider)
  "Calls System.Convert.ToDateTime ToDateTime(String, IFormatProvider) -> DateTime. Summary: Converts the specified string representation of a number to an equivalent date and time, using the specified culture-specific formatting information.
Returns: The date and time equivalent of the value of value, or the date and time equivalent of System.DateTime.MinValue if value is .
Parameters:
  - value (System.String): A string that contains a date and time to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDateTime" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-decimal (cl:&rest args)
  "Passthrough for System.Convert.ToDecimal overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToDecimal" args))

(cl:defun to-decimal-object (value)
  "Calls System.Convert.ToDecimal ToDecimal(Object) -> Decimal. Summary: Converts the value of the specified object to an equivalent decimal number.
Returns: A decimal number that is equivalent to value, or 0 (zero) if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Object") value)))

(cl:defun to-decimal-s-byte (value)
  "Calls System.Convert.ToDecimal ToDecimal(SByte) -> Decimal. Summary: Converts the value of the specified 8-bit signed integer to the equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-decimal-byte (value)
  "Calls System.Convert.ToDecimal ToDecimal(Byte) -> Decimal. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent decimal number.
Returns: The decimal number that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-decimal-char (value)
  "Calls System.Convert.ToDecimal ToDecimal(Char) -> Decimal. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Char") value)))

(cl:defun to-decimal-int16 (value)
  "Calls System.Convert.ToDecimal ToDecimal(Int16) -> Decimal. Summary: Converts the value of the specified 16-bit signed integer to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-decimal-u-int16 (value)
  "Calls System.Convert.ToDecimal ToDecimal(UInt16) -> Decimal. Summary: Converts the value of the specified 16-bit unsigned integer to an equivalent decimal number.
Returns: The decimal number that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-decimal-int32 (value)
  "Calls System.Convert.ToDecimal ToDecimal(Int32) -> Decimal. Summary: Converts the value of the specified 32-bit signed integer to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-decimal-u-int32 (value)
  "Calls System.Convert.ToDecimal ToDecimal(UInt32) -> Decimal. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-decimal-int64 (value)
  "Calls System.Convert.ToDecimal ToDecimal(Int64) -> Decimal. Summary: Converts the value of the specified 64-bit signed integer to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-decimal-u-int64 (value)
  "Calls System.Convert.ToDecimal ToDecimal(UInt64) -> Decimal. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-decimal-single (value)
  "Calls System.Convert.ToDecimal ToDecimal(Single) -> Decimal. Summary: Converts the value of the specified single-precision floating-point number to the equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Single") value)))

(cl:defun to-decimal-double (value)
  "Calls System.Convert.ToDecimal ToDecimal(Double) -> Decimal. Summary: Converts the value of the specified double-precision floating-point number to an equivalent decimal number.
Returns: A decimal number that is equivalent to value.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Double") value)))

(cl:defun to-decimal-string (value)
  "Calls System.Convert.ToDecimal ToDecimal(String) -> Decimal. Summary: Converts the specified string representation of a number to an equivalent decimal number.
Returns: A decimal number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains a number to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.String") value)))

(cl:defun to-decimal-decimal (value)
  "Calls System.Convert.ToDecimal ToDecimal(Decimal) -> Decimal. Summary: Returns the specified decimal number; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Decimal): A decimal number.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-decimal-boolean (value)
  "Calls System.Convert.ToDecimal ToDecimal(Boolean) -> Decimal. Summary: Converts the specified Boolean value to the equivalent decimal number.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-decimal-date-time (value)
  "Calls System.Convert.ToDecimal ToDecimal(DateTime) -> Decimal. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-decimal-object-i-format-provider (value provider)
  "Calls System.Convert.ToDecimal ToDecimal(Object, IFormatProvider) -> Decimal. Summary: Converts the value of the specified object to an equivalent decimal number, using the specified culture-specific formatting information.
Returns: A decimal number that is equivalent to value, or 0 (zero) if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-decimal-string-i-format-provider (value provider)
  "Calls System.Convert.ToDecimal ToDecimal(String, IFormatProvider) -> Decimal. Summary: Converts the specified string representation of a number to an equivalent decimal number, using the specified culture-specific formatting information.
Returns: A decimal number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains a number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDecimal" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-double (cl:&rest args)
  "Passthrough for System.Convert.ToDouble overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToDouble" args))

(cl:defun to-double-object (value)
  "Calls System.Convert.ToDouble ToDouble(Object) -> Double. Summary: Converts the value of the specified object to a double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Object") value)))

(cl:defun to-double-s-byte (value)
  "Calls System.Convert.ToDouble ToDouble(SByte) -> Double. Summary: Converts the value of the specified 8-bit signed integer to the equivalent double-precision floating-point number.
Returns: The 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-double-byte (value)
  "Calls System.Convert.ToDouble ToDouble(Byte) -> Double. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent double-precision floating-point number.
Returns: The double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-double-int16 (value)
  "Calls System.Convert.ToDouble ToDouble(Int16) -> Double. Summary: Converts the value of the specified 16-bit signed integer to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-double-char (value)
  "Calls System.Convert.ToDouble ToDouble(Char) -> Double. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Char") value)))

(cl:defun to-double-u-int16 (value)
  "Calls System.Convert.ToDouble ToDouble(UInt16) -> Double. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-double-int32 (value)
  "Calls System.Convert.ToDouble ToDouble(Int32) -> Double. Summary: Converts the value of the specified 32-bit signed integer to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-double-u-int32 (value)
  "Calls System.Convert.ToDouble ToDouble(UInt32) -> Double. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-double-int64 (value)
  "Calls System.Convert.ToDouble ToDouble(Int64) -> Double. Summary: Converts the value of the specified 64-bit signed integer to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-double-u-int64 (value)
  "Calls System.Convert.ToDouble ToDouble(UInt64) -> Double. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-double-single (value)
  "Calls System.Convert.ToDouble ToDouble(Single) -> Double. Summary: Converts the value of the specified single-precision floating-point number to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Single): The single-precision floating-point number.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Single") value)))

(cl:defun to-double-double (value)
  "Calls System.Convert.ToDouble ToDouble(Double) -> Double. Summary: Returns the specified double-precision floating-point number; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Double): The double-precision floating-point number to return.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Double") value)))

(cl:defun to-double-decimal (value)
  "Calls System.Convert.ToDouble ToDouble(Decimal) -> Double. Summary: Converts the value of the specified decimal number to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-double-string (value)
  "Calls System.Convert.ToDouble ToDouble(String) -> Double. Summary: Converts the specified string representation of a number to an equivalent double-precision floating-point number.
Returns: A double-precision floating-point number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.String") value)))

(cl:defun to-double-boolean (value)
  "Calls System.Convert.ToDouble ToDouble(Boolean) -> Double. Summary: Converts the specified Boolean value to the equivalent double-precision floating-point number.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-double-date-time (value)
  "Calls System.Convert.ToDouble ToDouble(DateTime) -> Double. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-double-object-i-format-provider (value provider)
  "Calls System.Convert.ToDouble ToDouble(Object, IFormatProvider) -> Double. Summary: Converts the value of the specified object to an double-precision floating-point number, using the specified culture-specific formatting information.
Returns: A double-precision floating-point number that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-double-string-i-format-provider (value provider)
  "Calls System.Convert.ToDouble ToDouble(String, IFormatProvider) -> Double. Summary: Converts the specified string representation of a number to an equivalent double-precision floating-point number, using the specified culture-specific formatting information.
Returns: A double-precision floating-point number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToDouble" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-hex-string (cl:&rest args)
  "Passthrough for System.Convert.ToHexString overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToHexString" args))

(cl:defun to-hex-string-byte[] (in-array)
  "Calls System.Convert.ToHexString ToHexString(Byte[]) -> String. Summary: Converts an array of 8-bit unsigned integers to its equivalent string representation that is encoded with uppercase hex characters.
Returns: The string representation in hex of the elements in inArray.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
"
  (dotnet:static <type-str> "ToHexString" (cl:the (dotnet "System.Byte[]") in-array)))

(cl:defun to-hex-string-byte[]-int32-int32 (in-array offset length)
  "Calls System.Convert.ToHexString ToHexString(Byte[], Int32, Int32) -> String. Summary: Converts a subset of an array of 8-bit unsigned integers to its equivalent string representation that is encoded with uppercase hex characters. Parameters specify the subset as an offset in the input array and the number of elements in the array to convert.
Returns: The string representation in hex of length elements of inArray, starting at position offset.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
  - offset (System.Int32): An offset in inArray.
  - length (System.Int32): The number of elements of inArray to convert.
"
  (dotnet:static <type-str> "ToHexString" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset) (cl:the (dotnet "System.Int32") length)))

(cl:defun to-hex-string-lower (cl:&rest args)
  "Passthrough for System.Convert.ToHexStringLower overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToHexStringLower" args))

(cl:defun to-hex-string-lower-byte[] (in-array)
  "Calls System.Convert.ToHexStringLower ToHexStringLower(Byte[]) -> String. Summary: Converts an array of 8-bit unsigned integers to its equivalent string representation that is encoded with lowercase hex characters.
Returns: The string representation in hex of the elements in inArray.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
"
  (dotnet:static <type-str> "ToHexStringLower" (cl:the (dotnet "System.Byte[]") in-array)))

(cl:defun to-hex-string-lower-byte[]-int32-int32 (in-array offset length)
  "Calls System.Convert.ToHexStringLower ToHexStringLower(Byte[], Int32, Int32) -> String. Summary: Converts a subset of an array of 8-bit unsigned integers to its equivalent string representation that is encoded with lowercase hex characters. Parameters specify the subset as an offset in the input array and the number of elements in the array to convert.
Returns: The string representation in hex of length elements of inArray, starting at position offset.
Parameters:
  - in-array (System.Byte[]): An array of 8-bit unsigned integers.
  - offset (System.Int32): An offset in inArray.
  - length (System.Int32): The number of elements of inArray to convert.
"
  (dotnet:static <type-str> "ToHexStringLower" (cl:the (dotnet "System.Byte[]") in-array) (cl:the (dotnet "System.Int32") offset) (cl:the (dotnet "System.Int32") length)))

(cl:defun to-int16 (cl:&rest args)
  "Passthrough for System.Convert.ToInt16 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToInt16" args))

(cl:defun to-int16-object (value)
  "Calls System.Convert.ToInt16 ToInt16(Object) -> Int16. Summary: Converts the value of the specified object to a 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Object") value)))

(cl:defun to-int16-boolean (value)
  "Calls System.Convert.ToInt16 ToInt16(Boolean) -> Int16. Summary: Converts the specified Boolean value to the equivalent 16-bit signed integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-int16-char (value)
  "Calls System.Convert.ToInt16 ToInt16(Char) -> Int16. Summary: Converts the value of the specified Unicode character to the equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Char") value)))

(cl:defun to-int16-s-byte (value)
  "Calls System.Convert.ToInt16 ToInt16(SByte) -> Int16. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 16-bit signed integer.
Returns: A 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-int16-byte (value)
  "Calls System.Convert.ToInt16 ToInt16(Byte) -> Int16. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-int16-u-int16 (value)
  "Calls System.Convert.ToInt16 ToInt16(UInt16) -> Int16. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-int16-int32 (value)
  "Calls System.Convert.ToInt16 ToInt16(Int32) -> Int16. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 16-bit signed integer.
Returns: The 16-bit signed integer equivalent of value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-int16-u-int32 (value)
  "Calls System.Convert.ToInt16 ToInt16(UInt32) -> Int16. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-int16-int16 (value)
  "Calls System.Convert.ToInt16 ToInt16(Int16) -> Int16. Summary: Returns the specified 16-bit signed integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Int16): The 16-bit signed integer to return.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-int16-int64 (value)
  "Calls System.Convert.ToInt16 ToInt16(Int64) -> Int16. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-int16-u-int64 (value)
  "Calls System.Convert.ToInt16 ToInt16(UInt64) -> Int16. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-int16-single (value)
  "Calls System.Convert.ToInt16 ToInt16(Single) -> Int16. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 16-bit signed integer.
Returns: value, rounded to the nearest 16-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Single") value)))

(cl:defun to-int16-double (value)
  "Calls System.Convert.ToInt16 ToInt16(Double) -> Int16. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 16-bit signed integer.
Returns: value, rounded to the nearest 16-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Double") value)))

(cl:defun to-int16-decimal (value)
  "Calls System.Convert.ToInt16 ToInt16(Decimal) -> Int16. Summary: Converts the value of the specified decimal number to an equivalent 16-bit signed integer.
Returns: value, rounded to the nearest 16-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-int16-string (value)
  "Calls System.Convert.ToInt16 ToInt16(String) -> Int16. Summary: Converts the specified string representation of a number to an equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.String") value)))

(cl:defun to-int16-date-time (value)
  "Calls System.Convert.ToInt16 ToInt16(DateTime) -> Int16. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-int16-object-i-format-provider (value provider)
  "Calls System.Convert.ToInt16 ToInt16(Object, IFormatProvider) -> Int16. Summary: Converts the value of the specified object to a 16-bit signed integer, using the specified culture-specific formatting information.
Returns: A 16-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int16-string-i-format-provider (value provider)
  "Calls System.Convert.ToInt16 ToInt16(String, IFormatProvider) -> Int16. Summary: Converts the specified string representation of a number to an equivalent 16-bit signed integer, using the specified culture-specific formatting information.
Returns: A 16-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int16-string-int32 (value from-base)
  "Calls System.Convert.ToInt16 ToInt16(String, Int32) -> Int16. Summary: Converts the string representation of a number in a specified base to an equivalent 16-bit signed integer.
Returns: A 16-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToInt16" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-int32 (cl:&rest args)
  "Passthrough for System.Convert.ToInt32 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToInt32" args))

(cl:defun to-int32-object (value)
  "Calls System.Convert.ToInt32 ToInt32(Object) -> Int32. Summary: Converts the value of the specified object to a 32-bit signed integer.
Returns: A 32-bit signed integer equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Object") value)))

(cl:defun to-int32-boolean (value)
  "Calls System.Convert.ToInt32 ToInt32(Boolean) -> Int32. Summary: Converts the specified Boolean value to the equivalent 32-bit signed integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-int32-char (value)
  "Calls System.Convert.ToInt32 ToInt32(Char) -> Int32. Summary: Converts the value of the specified Unicode character to the equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Char") value)))

(cl:defun to-int32-s-byte (value)
  "Calls System.Convert.ToInt32 ToInt32(SByte) -> Int32. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 32-bit signed integer.
Returns: A 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-int32-byte (value)
  "Calls System.Convert.ToInt32 ToInt32(Byte) -> Int32. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-int32-int16 (value)
  "Calls System.Convert.ToInt32 ToInt32(Int16) -> Int32. Summary: Converts the value of the specified 16-bit signed integer to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-int32-u-int16 (value)
  "Calls System.Convert.ToInt32 ToInt32(UInt16) -> Int32. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-int32-u-int32 (value)
  "Calls System.Convert.ToInt32 ToInt32(UInt32) -> Int32. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-int32-int32 (value)
  "Calls System.Convert.ToInt32 ToInt32(Int32) -> Int32. Summary: Returns the specified 32-bit signed integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Int32): The 32-bit signed integer to return.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-int32-int64 (value)
  "Calls System.Convert.ToInt32 ToInt32(Int64) -> Int32. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-int32-u-int64 (value)
  "Calls System.Convert.ToInt32 ToInt32(UInt64) -> Int32. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-int32-single (value)
  "Calls System.Convert.ToInt32 ToInt32(Single) -> Int32. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 32-bit signed integer.
Returns: value, rounded to the nearest 32-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Single") value)))

(cl:defun to-int32-double (value)
  "Calls System.Convert.ToInt32 ToInt32(Double) -> Int32. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 32-bit signed integer.
Returns: value, rounded to the nearest 32-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Double") value)))

(cl:defun to-int32-decimal (value)
  "Calls System.Convert.ToInt32 ToInt32(Decimal) -> Int32. Summary: Converts the value of the specified decimal number to an equivalent 32-bit signed integer.
Returns: value, rounded to the nearest 32-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-int32-string (value)
  "Calls System.Convert.ToInt32 ToInt32(String) -> Int32. Summary: Converts the specified string representation of a number to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.String") value)))

(cl:defun to-int32-date-time (value)
  "Calls System.Convert.ToInt32 ToInt32(DateTime) -> Int32. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-int32-object-i-format-provider (value provider)
  "Calls System.Convert.ToInt32 ToInt32(Object, IFormatProvider) -> Int32. Summary: Converts the value of the specified object to a 32-bit signed integer, using the specified culture-specific formatting information.
Returns: A 32-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int32-string-i-format-provider (value provider)
  "Calls System.Convert.ToInt32 ToInt32(String, IFormatProvider) -> Int32. Summary: Converts the specified string representation of a number to an equivalent 32-bit signed integer, using the specified culture-specific formatting information.
Returns: A 32-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int32-string-int32 (value from-base)
  "Calls System.Convert.ToInt32 ToInt32(String, Int32) -> Int32. Summary: Converts the string representation of a number in a specified base to an equivalent 32-bit signed integer.
Returns: A 32-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToInt32" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-int64 (cl:&rest args)
  "Passthrough for System.Convert.ToInt64 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToInt64" args))

(cl:defun to-int64-object (value)
  "Calls System.Convert.ToInt64 ToInt64(Object) -> Int64. Summary: Converts the value of the specified object to a 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Object") value)))

(cl:defun to-int64-boolean (value)
  "Calls System.Convert.ToInt64 ToInt64(Boolean) -> Int64. Summary: Converts the specified Boolean value to the equivalent 64-bit signed integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-int64-char (value)
  "Calls System.Convert.ToInt64 ToInt64(Char) -> Int64. Summary: Converts the value of the specified Unicode character to the equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Char") value)))

(cl:defun to-int64-s-byte (value)
  "Calls System.Convert.ToInt64 ToInt64(SByte) -> Int64. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-int64-byte (value)
  "Calls System.Convert.ToInt64 ToInt64(Byte) -> Int64. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-int64-int16 (value)
  "Calls System.Convert.ToInt64 ToInt64(Int16) -> Int64. Summary: Converts the value of the specified 16-bit signed integer to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-int64-u-int16 (value)
  "Calls System.Convert.ToInt64 ToInt64(UInt16) -> Int64. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-int64-int32 (value)
  "Calls System.Convert.ToInt64 ToInt64(Int32) -> Int64. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-int64-u-int32 (value)
  "Calls System.Convert.ToInt64 ToInt64(UInt32) -> Int64. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-int64-u-int64 (value)
  "Calls System.Convert.ToInt64 ToInt64(UInt64) -> Int64. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-int64-int64 (value)
  "Calls System.Convert.ToInt64 ToInt64(Int64) -> Int64. Summary: Returns the specified 64-bit signed integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Int64): A 64-bit signed integer.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-int64-single (value)
  "Calls System.Convert.ToInt64 ToInt64(Single) -> Int64. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 64-bit signed integer.
Returns: value, rounded to the nearest 64-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Single") value)))

(cl:defun to-int64-double (value)
  "Calls System.Convert.ToInt64 ToInt64(Double) -> Int64. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 64-bit signed integer.
Returns: value, rounded to the nearest 64-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Double") value)))

(cl:defun to-int64-decimal (value)
  "Calls System.Convert.ToInt64 ToInt64(Decimal) -> Int64. Summary: Converts the value of the specified decimal number to an equivalent 64-bit signed integer.
Returns: value, rounded to the nearest 64-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-int64-string (value)
  "Calls System.Convert.ToInt64 ToInt64(String) -> Int64. Summary: Converts the specified string representation of a number to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains a number to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.String") value)))

(cl:defun to-int64-date-time (value)
  "Calls System.Convert.ToInt64 ToInt64(DateTime) -> Int64. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-int64-object-i-format-provider (value provider)
  "Calls System.Convert.ToInt64 ToInt64(Object, IFormatProvider) -> Int64. Summary: Converts the value of the specified object to a 64-bit signed integer, using the specified culture-specific formatting information.
Returns: A 64-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int64-string-i-format-provider (value provider)
  "Calls System.Convert.ToInt64 ToInt64(String, IFormatProvider) -> Int64. Summary: Converts the specified string representation of a number to an equivalent 64-bit signed integer, using the specified culture-specific formatting information.
Returns: A 64-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-int64-string-int32 (value from-base)
  "Calls System.Convert.ToInt64 ToInt64(String, Int32) -> Int64. Summary: Converts the string representation of a number in a specified base to an equivalent 64-bit signed integer.
Returns: A 64-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToInt64" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-s-byte (cl:&rest args)
  "Passthrough for System.Convert.ToSByte overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToSByte" args))

(cl:defun to-s-byte-object (value)
  "Calls System.Convert.ToSByte ToSByte(Object) -> SByte. Summary: Converts the value of the specified object to an 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Object") value)))

(cl:defun to-s-byte-boolean (value)
  "Calls System.Convert.ToSByte ToSByte(Boolean) -> SByte. Summary: Converts the specified Boolean value to the equivalent 8-bit signed integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-s-byte-s-byte (value)
  "Calls System.Convert.ToSByte ToSByte(SByte) -> SByte. Summary: Returns the specified 8-bit signed integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.SByte): The 8-bit signed integer to return.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-s-byte-char (value)
  "Calls System.Convert.ToSByte ToSByte(Char) -> SByte. Summary: Converts the value of the specified Unicode character to the equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Char") value)))

(cl:defun to-s-byte-byte (value)
  "Calls System.Convert.ToSByte ToSByte(Byte) -> SByte. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-s-byte-int16 (value)
  "Calls System.Convert.ToSByte ToSByte(Int16) -> SByte. Summary: Converts the value of the specified 16-bit signed integer to the equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-s-byte-u-int16 (value)
  "Calls System.Convert.ToSByte ToSByte(UInt16) -> SByte. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-s-byte-int32 (value)
  "Calls System.Convert.ToSByte ToSByte(Int32) -> SByte. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-s-byte-u-int32 (value)
  "Calls System.Convert.ToSByte ToSByte(UInt32) -> SByte. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-s-byte-int64 (value)
  "Calls System.Convert.ToSByte ToSByte(Int64) -> SByte. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-s-byte-u-int64 (value)
  "Calls System.Convert.ToSByte ToSByte(UInt64) -> SByte. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-s-byte-single (value)
  "Calls System.Convert.ToSByte ToSByte(Single) -> SByte. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 8-bit signed integer.
Returns: value, rounded to the nearest 8-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Single") value)))

(cl:defun to-s-byte-double (value)
  "Calls System.Convert.ToSByte ToSByte(Double) -> SByte. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 8-bit signed integer.
Returns: value, rounded to the nearest 8-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Double") value)))

(cl:defun to-s-byte-decimal (value)
  "Calls System.Convert.ToSByte ToSByte(Decimal) -> SByte. Summary: Converts the value of the specified decimal number to an equivalent 8-bit signed integer.
Returns: value, rounded to the nearest 8-bit signed integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-s-byte-string (value)
  "Calls System.Convert.ToSByte ToSByte(String) -> SByte. Summary: Converts the specified string representation of a number to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.String") value)))

(cl:defun to-s-byte-date-time (value)
  "Calls System.Convert.ToSByte ToSByte(DateTime) -> SByte. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-s-byte-object-i-format-provider (value provider)
  "Calls System.Convert.ToSByte ToSByte(Object, IFormatProvider) -> SByte. Summary: Converts the value of the specified object to an 8-bit signed integer, using the specified culture-specific formatting information.
Returns: An 8-bit signed integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-s-byte-string-i-format-provider (value provider)
  "Calls System.Convert.ToSByte ToSByte(String, IFormatProvider) -> SByte. Summary: Converts the specified string representation of a number to an equivalent 8-bit signed integer, using the specified culture-specific formatting information.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-s-byte-string-int32 (value from-base)
  "Calls System.Convert.ToSByte ToSByte(String, Int32) -> SByte. Summary: Converts the string representation of a number in a specified base to an equivalent 8-bit signed integer.
Returns: An 8-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToSByte" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-single (cl:&rest args)
  "Passthrough for System.Convert.ToSingle overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToSingle" args))

(cl:defun to-single-object (value)
  "Calls System.Convert.ToSingle ToSingle(Object) -> Single. Summary: Converts the value of the specified object to a single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Object") value)))

(cl:defun to-single-s-byte (value)
  "Calls System.Convert.ToSingle ToSingle(SByte) -> Single. Summary: Converts the value of the specified 8-bit signed integer to the equivalent single-precision floating-point number.
Returns: An 8-bit signed integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-single-byte (value)
  "Calls System.Convert.ToSingle ToSingle(Byte) -> Single. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-single-char (value)
  "Calls System.Convert.ToSingle ToSingle(Char) -> Single. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Char") value)))

(cl:defun to-single-int16 (value)
  "Calls System.Convert.ToSingle ToSingle(Int16) -> Single. Summary: Converts the value of the specified 16-bit signed integer to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-single-u-int16 (value)
  "Calls System.Convert.ToSingle ToSingle(UInt16) -> Single. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-single-int32 (value)
  "Calls System.Convert.ToSingle ToSingle(Int32) -> Single. Summary: Converts the value of the specified 32-bit signed integer to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-single-u-int32 (value)
  "Calls System.Convert.ToSingle ToSingle(UInt32) -> Single. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-single-int64 (value)
  "Calls System.Convert.ToSingle ToSingle(Int64) -> Single. Summary: Converts the value of the specified 64-bit signed integer to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-single-u-int64 (value)
  "Calls System.Convert.ToSingle ToSingle(UInt64) -> Single. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-single-single (value)
  "Calls System.Convert.ToSingle ToSingle(Single) -> Single. Summary: Returns the specified single-precision floating-point number; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.Single): The single-precision floating-point number to return.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Single") value)))

(cl:defun to-single-double (value)
  "Calls System.Convert.ToSingle ToSingle(Double) -> Single. Summary: Converts the value of the specified double-precision floating-point number to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value. value is rounded using rounding to nearest. For example, when rounded to two decimals, the value 2.345 becomes 2.34 and the value 2.355 becomes 2.36.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Double") value)))

(cl:defun to-single-decimal (value)
  "Calls System.Convert.ToSingle ToSingle(Decimal) -> Single. Summary: Converts the value of the specified decimal number to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to value. value is rounded using rounding to nearest. For example, when rounded to two decimals, the value 2.345 becomes 2.34 and the value 2.355 becomes 2.36.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-single-string (value)
  "Calls System.Convert.ToSingle ToSingle(String) -> Single. Summary: Converts the specified string representation of a number to an equivalent single-precision floating-point number.
Returns: A single-precision floating-point number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.String") value)))

(cl:defun to-single-boolean (value)
  "Calls System.Convert.ToSingle ToSingle(Boolean) -> Single. Summary: Converts the specified Boolean value to the equivalent single-precision floating-point number.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-single-date-time (value)
  "Calls System.Convert.ToSingle ToSingle(DateTime) -> Single. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-single-object-i-format-provider (value provider)
  "Calls System.Convert.ToSingle ToSingle(Object, IFormatProvider) -> Single. Summary: Converts the value of the specified object to an single-precision floating-point number, using the specified culture-specific formatting information.
Returns: A single-precision floating-point number that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-single-string-i-format-provider (value provider)
  "Calls System.Convert.ToSingle ToSingle(String, IFormatProvider) -> Single. Summary: Converts the specified string representation of a number to an equivalent single-precision floating-point number, using the specified culture-specific formatting information.
Returns: A single-precision floating-point number that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToSingle" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string (cl:&rest args)
  "Passthrough for System.Convert.ToString overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToString" args))

(cl:defun to-string-object (value)
  "Calls System.Convert.ToString ToString(Object) -> String. Summary: Converts the value of the specified object to its equivalent string representation.
Returns: The string representation of value, or System.String.Empty if value is .
Parameters:
  - value (System.Object): An object that supplies the value to convert, or .
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Object") value)))

(cl:defun to-string-boolean (value)
  "Calls System.Convert.ToString ToString(Boolean) -> String. Summary: Converts the specified Boolean value to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-string-char (value)
  "Calls System.Convert.ToString ToString(Char) -> String. Summary: Converts the value of the specified Unicode character to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Char") value)))

(cl:defun to-string-s-byte (value)
  "Calls System.Convert.ToString ToString(SByte) -> String. Summary: Converts the value of the specified 8-bit signed integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-string-byte (value)
  "Calls System.Convert.ToString ToString(Byte) -> String. Summary: Converts the value of the specified 8-bit unsigned integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-string-int16 (value)
  "Calls System.Convert.ToString ToString(Int16) -> String. Summary: Converts the value of the specified 16-bit signed integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-string-u-int16 (value)
  "Calls System.Convert.ToString ToString(UInt16) -> String. Summary: Converts the value of the specified 16-bit unsigned integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-string-int32 (value)
  "Calls System.Convert.ToString ToString(Int32) -> String. Summary: Converts the value of the specified 32-bit signed integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-string-u-int32 (value)
  "Calls System.Convert.ToString ToString(UInt32) -> String. Summary: Converts the value of the specified 32-bit unsigned integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-string-int64 (value)
  "Calls System.Convert.ToString ToString(Int64) -> String. Summary: Converts the value of the specified 64-bit signed integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-string-u-int64 (value)
  "Calls System.Convert.ToString ToString(UInt64) -> String. Summary: Converts the value of the specified 64-bit unsigned integer to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-string-single (value)
  "Calls System.Convert.ToString ToString(Single) -> String. Summary: Converts the value of the specified single-precision floating-point number to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Single") value)))

(cl:defun to-string-double (value)
  "Calls System.Convert.ToString ToString(Double) -> String. Summary: Converts the value of the specified double-precision floating-point number to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Double") value)))

(cl:defun to-string-decimal (value)
  "Calls System.Convert.ToString ToString(Decimal) -> String. Summary: Converts the value of the specified decimal number to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-string-date-time (value)
  "Calls System.Convert.ToString ToString(DateTime) -> String. Summary: Converts the value of the specified System.DateTime to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-string-string (value)
  "Calls System.Convert.ToString ToString(String) -> String. Summary: Returns the specified string instance; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.String): The string to return.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.String") value)))

(cl:defun to-string-object-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Object, IFormatProvider) -> String. Summary: Converts the value of the specified object to its equivalent string representation using the specified culture-specific formatting information.
Returns: The string representation of value, or System.String.Empty if value is an object whose value is . If value is , the method returns .
Parameters:
  - value (System.Object): An object that supplies the value to convert, or .
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-boolean-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Boolean, IFormatProvider) -> String. Summary: Converts the specified Boolean value to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
  - provider (System.IFormatProvider): An instance of an object. This parameter is ignored.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Boolean") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-char-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Char, IFormatProvider) -> String. Summary: Converts the value of the specified Unicode character to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Char): The Unicode character to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information. This parameter is ignored.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Char") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-s-byte-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(SByte, IFormatProvider) -> String. Summary: Converts the value of the specified 8-bit signed integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.SByte") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-byte-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Byte, IFormatProvider) -> String. Summary: Converts the value of the specified 8-bit unsigned integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Byte") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-int16-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Int16, IFormatProvider) -> String. Summary: Converts the value of the specified 16-bit signed integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int16") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-u-int16-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(UInt16, IFormatProvider) -> String. Summary: Converts the value of the specified 16-bit unsigned integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt16") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-int32-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Int32, IFormatProvider) -> String. Summary: Converts the value of the specified 32-bit signed integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int32") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-u-int32-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(UInt32, IFormatProvider) -> String. Summary: Converts the value of the specified 32-bit unsigned integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt32") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-int64-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Int64, IFormatProvider) -> String. Summary: Converts the value of the specified 64-bit signed integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int64") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-u-int64-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(UInt64, IFormatProvider) -> String. Summary: Converts the value of the specified 64-bit unsigned integer to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.UInt64") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-single-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Single, IFormatProvider) -> String. Summary: Converts the value of the specified single-precision floating-point number to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Single") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-double-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Double, IFormatProvider) -> String. Summary: Converts the value of the specified double-precision floating-point number to its equivalent string representation.
Returns: The string representation of value.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Double") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-decimal-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(Decimal, IFormatProvider) -> String. Summary: Converts the value of the specified decimal number to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.Decimal): The decimal number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Decimal") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-date-time-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(DateTime, IFormatProvider) -> String. Summary: Converts the value of the specified System.DateTime to its equivalent string representation, using the specified culture-specific formatting information.
Returns: The string representation of value.
Parameters:
  - value (System.DateTime): The date and time value to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.DateTime") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-string-i-format-provider (value provider)
  "Calls System.Convert.ToString ToString(String, IFormatProvider) -> String. Summary: Returns the specified string instance; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.String): The string to return.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information. This parameter is ignored.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-string-byte-int32 (value to-base)
  "Calls System.Convert.ToString ToString(Byte, Int32) -> String. Summary: Converts the value of an 8-bit unsigned integer to its equivalent string representation in a specified base.
Returns: The string representation of value in base toBase.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
  - to-base (System.Int32): The base of the return value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Byte") value) (cl:the (dotnet "System.Int32") to-base)))

(cl:defun to-string-int16-int32 (value to-base)
  "Calls System.Convert.ToString ToString(Int16, Int32) -> String. Summary: Converts the value of a 16-bit signed integer to its equivalent string representation in a specified base.
Returns: The string representation of value in base toBase.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
  - to-base (System.Int32): The base of the return value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int16") value) (cl:the (dotnet "System.Int32") to-base)))

(cl:defun to-string-int32-int32 (value to-base)
  "Calls System.Convert.ToString ToString(Int32, Int32) -> String. Summary: Converts the value of a 32-bit signed integer to its equivalent string representation in a specified base.
Returns: The string representation of value in base toBase.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
  - to-base (System.Int32): The base of the return value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int32") value) (cl:the (dotnet "System.Int32") to-base)))

(cl:defun to-string-int64-int32 (value to-base)
  "Calls System.Convert.ToString ToString(Int64, Int32) -> String. Summary: Converts the value of a 64-bit signed integer to its equivalent string representation in a specified base.
Returns: The string representation of value in base toBase.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
  - to-base (System.Int32): The base of the return value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToString" (cl:the (dotnet "System.Int64") value) (cl:the (dotnet "System.Int32") to-base)))

(cl:defun to-u-int16 (cl:&rest args)
  "Passthrough for System.Convert.ToUInt16 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToUInt16" args))

(cl:defun to-u-int16-object (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Object) -> UInt16. Summary: Converts the value of the specified object to a 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Object") value)))

(cl:defun to-u-int16-boolean (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Boolean) -> UInt16. Summary: Converts the specified Boolean value to the equivalent 16-bit unsigned integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-u-int16-char (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Char) -> UInt16. Summary: Converts the value of the specified Unicode character to the equivalent 16-bit unsigned integer.
Returns: The 16-bit unsigned integer equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Char") value)))

(cl:defun to-u-int16-s-byte (value)
  "Calls System.Convert.ToUInt16 ToUInt16(SByte) -> UInt16. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-u-int16-byte (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Byte) -> UInt16. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-u-int16-int16 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Int16) -> UInt16. Summary: Converts the value of the specified 16-bit signed integer to the equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-u-int16-int32 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Int32) -> UInt16. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-u-int16-u-int16 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(UInt16) -> UInt16. Summary: Returns the specified 16-bit unsigned integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to return.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-u-int16-u-int32 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(UInt32) -> UInt16. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-u-int16-int64 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Int64) -> UInt16. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-u-int16-u-int64 (value)
  "Calls System.Convert.ToUInt16 ToUInt16(UInt64) -> UInt16. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-u-int16-single (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Single) -> UInt16. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 16-bit unsigned integer.
Returns: value, rounded to the nearest 16-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Single") value)))

(cl:defun to-u-int16-double (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Double) -> UInt16. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 16-bit unsigned integer.
Returns: value, rounded to the nearest 16-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Double") value)))

(cl:defun to-u-int16-decimal (value)
  "Calls System.Convert.ToUInt16 ToUInt16(Decimal) -> UInt16. Summary: Converts the value of the specified decimal number to an equivalent 16-bit unsigned integer.
Returns: value, rounded to the nearest 16-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-u-int16-string (value)
  "Calls System.Convert.ToUInt16 ToUInt16(String) -> UInt16. Summary: Converts the specified string representation of a number to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.String") value)))

(cl:defun to-u-int16-date-time (value)
  "Calls System.Convert.ToUInt16 ToUInt16(DateTime) -> UInt16. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-u-int16-object-i-format-provider (value provider)
  "Calls System.Convert.ToUInt16 ToUInt16(Object, IFormatProvider) -> UInt16. Summary: Converts the value of the specified object to a 16-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 16-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int16-string-i-format-provider (value provider)
  "Calls System.Convert.ToUInt16 ToUInt16(String, IFormatProvider) -> UInt16. Summary: Converts the specified string representation of a number to an equivalent 16-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 16-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int16-string-int32 (value from-base)
  "Calls System.Convert.ToUInt16 ToUInt16(String, Int32) -> UInt16. Summary: Converts the string representation of a number in a specified base to an equivalent 16-bit unsigned integer.
Returns: A 16-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToUInt16" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-u-int32 (cl:&rest args)
  "Passthrough for System.Convert.ToUInt32 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToUInt32" args))

(cl:defun to-u-int32-object (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Object) -> UInt32. Summary: Converts the value of the specified object to a 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value, or 0 (zero) if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Object") value)))

(cl:defun to-u-int32-boolean (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Boolean) -> UInt32. Summary: Converts the specified Boolean value to the equivalent 32-bit unsigned integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-u-int32-char (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Char) -> UInt32. Summary: Converts the value of the specified Unicode character to the equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Char") value)))

(cl:defun to-u-int32-s-byte (value)
  "Calls System.Convert.ToUInt32 ToUInt32(SByte) -> UInt32. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-u-int32-byte (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Byte) -> UInt32. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-u-int32-int16 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Int16) -> UInt32. Summary: Converts the value of the specified 16-bit signed integer to the equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-u-int32-u-int16 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(UInt16) -> UInt32. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-u-int32-int32 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Int32) -> UInt32. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-u-int32-u-int32 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(UInt32) -> UInt32. Summary: Returns the specified 32-bit unsigned integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to return.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-u-int32-int64 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Int64) -> UInt32. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-u-int32-u-int64 (value)
  "Calls System.Convert.ToUInt32 ToUInt32(UInt64) -> UInt32. Summary: Converts the value of the specified 64-bit unsigned integer to an equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-u-int32-single (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Single) -> UInt32. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 32-bit unsigned integer.
Returns: value, rounded to the nearest 32-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Single") value)))

(cl:defun to-u-int32-double (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Double) -> UInt32. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 32-bit unsigned integer.
Returns: value, rounded to the nearest 32-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Double") value)))

(cl:defun to-u-int32-decimal (value)
  "Calls System.Convert.ToUInt32 ToUInt32(Decimal) -> UInt32. Summary: Converts the value of the specified decimal number to an equivalent 32-bit unsigned integer.
Returns: value, rounded to the nearest 32-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-u-int32-string (value)
  "Calls System.Convert.ToUInt32 ToUInt32(String) -> UInt32. Summary: Converts the specified string representation of a number to an equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.String") value)))

(cl:defun to-u-int32-date-time (value)
  "Calls System.Convert.ToUInt32 ToUInt32(DateTime) -> UInt32. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-u-int32-object-i-format-provider (value provider)
  "Calls System.Convert.ToUInt32 ToUInt32(Object, IFormatProvider) -> UInt32. Summary: Converts the value of the specified object to a 32-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 32-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int32-string-i-format-provider (value provider)
  "Calls System.Convert.ToUInt32 ToUInt32(String, IFormatProvider) -> UInt32. Summary: Converts the specified string representation of a number to an equivalent 32-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 32-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int32-string-int32 (value from-base)
  "Calls System.Convert.ToUInt32 ToUInt32(String, Int32) -> UInt32. Summary: Converts the string representation of a number in a specified base to an equivalent 32-bit unsigned integer.
Returns: A 32-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToUInt32" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

(cl:defun to-u-int64 (cl:&rest args)
  "Passthrough for System.Convert.ToUInt64 overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ToUInt64" args))

(cl:defun to-u-int64-object (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Object) -> UInt64. Summary: Converts the value of the specified object to a 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface, or .
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Object") value)))

(cl:defun to-u-int64-boolean (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Boolean) -> UInt64. Summary: Converts the specified Boolean value to the equivalent 64-bit unsigned integer.
Returns: The number 1 if value is ; otherwise, 0.
Parameters:
  - value (System.Boolean): The Boolean value to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Boolean") value)))

(cl:defun to-u-int64-char (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Char) -> UInt64. Summary: Converts the value of the specified Unicode character to the equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Char): The Unicode character to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Char") value)))

(cl:defun to-u-int64-s-byte (value)
  "Calls System.Convert.ToUInt64 ToUInt64(SByte) -> UInt64. Summary: Converts the value of the specified 8-bit signed integer to the equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.SByte): The 8-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.SByte") value)))

(cl:defun to-u-int64-byte (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Byte) -> UInt64. Summary: Converts the value of the specified 8-bit unsigned integer to the equivalent 64-bit unsigned integer.
Returns: A 64-bit signed integer that is equivalent to value.
Parameters:
  - value (System.Byte): The 8-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Byte") value)))

(cl:defun to-u-int64-int16 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Int16) -> UInt64. Summary: Converts the value of the specified 16-bit signed integer to the equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int16): The 16-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Int16") value)))

(cl:defun to-u-int64-u-int16 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(UInt16) -> UInt64. Summary: Converts the value of the specified 16-bit unsigned integer to the equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt16): The 16-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.UInt16") value)))

(cl:defun to-u-int64-int32 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Int32) -> UInt64. Summary: Converts the value of the specified 32-bit signed integer to an equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int32): The 32-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Int32") value)))

(cl:defun to-u-int64-u-int32 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(UInt32) -> UInt64. Summary: Converts the value of the specified 32-bit unsigned integer to an equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.UInt32): The 32-bit unsigned integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.UInt32") value)))

(cl:defun to-u-int64-int64 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Int64) -> UInt64. Summary: Converts the value of the specified 64-bit signed integer to an equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to value.
Parameters:
  - value (System.Int64): The 64-bit signed integer to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Int64") value)))

(cl:defun to-u-int64-u-int64 (value)
  "Calls System.Convert.ToUInt64 ToUInt64(UInt64) -> UInt64. Summary: Returns the specified 64-bit unsigned integer; no actual conversion is performed.
Returns: value is returned unchanged.
Parameters:
  - value (System.UInt64): The 64-bit unsigned integer to return.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.UInt64") value)))

(cl:defun to-u-int64-single (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Single) -> UInt64. Summary: Converts the value of the specified single-precision floating-point number to an equivalent 64-bit unsigned integer.
Returns: value, rounded to the nearest 64-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Single): The single-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Single") value)))

(cl:defun to-u-int64-double (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Double) -> UInt64. Summary: Converts the value of the specified double-precision floating-point number to an equivalent 64-bit unsigned integer.
Returns: value, rounded to the nearest 64-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Double): The double-precision floating-point number to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Double") value)))

(cl:defun to-u-int64-decimal (value)
  "Calls System.Convert.ToUInt64 ToUInt64(Decimal) -> UInt64. Summary: Converts the value of the specified decimal number to an equivalent 64-bit unsigned integer.
Returns: value, rounded to the nearest 64-bit unsigned integer. If value is halfway between two whole numbers, the even number is returned; that is, 4.5 is converted to 4, and 5.5 is converted to 6.
Parameters:
  - value (System.Decimal): The decimal number to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Decimal") value)))

(cl:defun to-u-int64-string (value)
  "Calls System.Convert.ToUInt64 ToUInt64(String) -> UInt64. Summary: Converts the specified string representation of a number to an equivalent 64-bit unsigned integer.
Returns: A 64-bit signed integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.String") value)))

(cl:defun to-u-int64-date-time (value)
  "Calls System.Convert.ToUInt64 ToUInt64(DateTime) -> UInt64. Summary: Calling this method always throws System.InvalidCastException.
Returns: This conversion is not supported. No value is returned.
Parameters:
  - value (System.DateTime): The date and time value to convert.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.DateTime") value)))

(cl:defun to-u-int64-object-i-format-provider (value provider)
  "Calls System.Convert.ToUInt64 ToUInt64(Object, IFormatProvider) -> UInt64. Summary: Converts the value of the specified object to a 64-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 64-bit unsigned integer that is equivalent to value, or zero if value is .
Parameters:
  - value (System.Object): An object that implements the System.IConvertible interface.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int64-string-i-format-provider (value provider)
  "Calls System.Convert.ToUInt64 ToUInt64(String, IFormatProvider) -> UInt64. Summary: Converts the specified string representation of a number to an equivalent 64-bit unsigned integer, using the specified culture-specific formatting information.
Returns: A 64-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun to-u-int64-string-int32 (value from-base)
  "Calls System.Convert.ToUInt64 ToUInt64(String, Int32) -> UInt64. Summary: Converts the string representation of a number in a specified base to an equivalent 64-bit unsigned integer.
Returns: A 64-bit unsigned integer that is equivalent to the number in value, or 0 (zero) if value is .
Parameters:
  - value (System.String): A string that contains the number to convert.
  - from-base (System.Int32): The base of the number in value, which must be 2, 8, 10, or 16.
"
  (dotnet:static <type-str> "ToUInt64" (cl:the (dotnet "System.String") value) (cl:the (dotnet "System.Int32") from-base)))

