;;; Generated automatically. Do not edit.
;;; Class: System.Single
;;; Generator Version: 17
;;; Creation Date: 2026-06-30T03:58:28Z

(cl:in-package :cl-user)

(cl:defpackage :system-single
  (:use :cl)
  (:shadow
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:asin
   #:asinh
   #:atan
   #:atanh
   #:ceiling
   #:cos
   #:cosh
   #:exp
   #:floor
   #:log
   #:max
   #:min
   #:round
   #:sin
   #:sinh
   #:sqrt
   #:tan
   #:tanh
   #:truncate
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+e+
   #:+epsilon+
   #:+max-value+
   #:+min-value+
   #:+nan+
   #:+negative-infinity+
   #:+negative-zero+
   #:+pi+
   #:+positive-infinity+
   #:+tau+
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:acos-pi
   #:asin
   #:asinh
   #:asin-pi
   #:atan
   #:atan2
   #:atan2-pi
   #:atanh
   #:atan-pi
   #:bit-decrement
   #:bit-increment
   #:cbrt
   #:ceiling
   #:clamp
   #:clamp-native
   #:compare-to
   #:compare-to-object
   #:compare-to-single
   #:convert-to-integer
   #:convert-to-integer-native
   #:copy-sign
   #:cos
   #:cosh
   #:cos-pi
   #:create-checked
   #:create-saturating
   #:create-truncating
   #:degrees-to-radians
   #:equals
   #:equals-object
   #:equals-single
   #:exp
   #:exp10
   #:exp10-m1
   #:exp2
   #:exp2-m1
   #:exp-m1
   #:floor
   #:fused-multiply-add
   #:get-hash-code
   #:get-type-code
   #:hypot
   #:ieee754-remainder
   #:i-log-b
   #:even-integer?
   #:finite?
   #:infinity?
   #:integer?
   #:nan?
   #:negative?
   #:negative-infinity?
   #:normal?
   #:odd-integer?
   #:positive?
   #:positive-infinity?
   #:pow2?
   #:real-number?
   #:subnormal?
   #:lerp
   #:log
   #:log-single
   #:log-single-single
   #:log10
   #:log10-p1
   #:log2
   #:log2-p1
   #:log-p1
   #:max
   #:max-magnitude
   #:max-magnitude-number
   #:max-native
   #:max-number
   #:min
   #:min-magnitude
   #:min-magnitude-number
   #:min-native
   #:min-number
   #:multiply-add-estimate
   #:not=
   #:parse
   #:parse-string
   #:parse-string-number-styles
   #:parse-string-i-format-provider
   #:parse-string-number-styles-i-format-provider
   #:pow
   #:radians-to-degrees
   #:reciprocal-estimate
   #:reciprocal-sqrt-estimate
   #:root-n
   #:round
   #:round-single
   #:round-single-int32
   #:round-single-midpoint-rounding
   #:round-single-int32-midpoint-rounding
   #:scale-b
   #:sign
   #:sin
   #:sinh
   #:sin-pi
   #:sqrt
   #:tan
   #:tanh
   #:tan-pi
   #:to-string
   #:to-string-i-format-provider
   #:to-string-string
   #:to-string-string-i-format-provider
   #:truncate
  ))

(cl:in-package :system-single)

(cl:defconstant <type> (monoutils:get-type "System.Single"))
(cl:defconstant <type-str> "System.Single")
(cl:defconstant <creation> "2026-06-30T03:58:28Z")
(cl:defconstant <version> 17)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Single")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defconstant +e+ (dotnet:static <type-str> "E"))
(cl:setf (cl:documentation (cl:quote +e+) (cl:quote cl:variable)) "Represents the natural logarithmic base, specified by the constant, e.")

(cl:defconstant +epsilon+ (dotnet:static <type-str> "Epsilon"))
(cl:setf (cl:documentation (cl:quote +epsilon+) (cl:quote cl:variable)) "Represents the smallest positive System.Single value that is greater than zero. This field is constant.")

(cl:defconstant +max-value+ (dotnet:static <type-str> "MaxValue"))
(cl:setf (cl:documentation (cl:quote +max-value+) (cl:quote cl:variable)) "Represents the largest possible value of System.Single. This field is constant.")

(cl:defconstant +min-value+ (dotnet:static <type-str> "MinValue"))
(cl:setf (cl:documentation (cl:quote +min-value+) (cl:quote cl:variable)) "Represents the smallest possible value of System.Single. This field is constant.")

(cl:defconstant +nan+ (dotnet:static <type-str> "NaN"))
(cl:setf (cl:documentation (cl:quote +nan+) (cl:quote cl:variable)) "Represents not a number (). This field is constant.")

(cl:defconstant +negative-infinity+ (dotnet:static <type-str> "NegativeInfinity"))
(cl:setf (cl:documentation (cl:quote +negative-infinity+) (cl:quote cl:variable)) "Represents negative infinity. This field is constant.")

(cl:defconstant +negative-zero+ (dotnet:static <type-str> "NegativeZero"))
(cl:setf (cl:documentation (cl:quote +negative-zero+) (cl:quote cl:variable)) "Represents the number negative zero (-0).")

(cl:defconstant +pi+ (dotnet:static <type-str> "Pi"))
(cl:setf (cl:documentation (cl:quote +pi+) (cl:quote cl:variable)) "Represents the ratio of the circumference of a circle to its diameter, specified by the constant, π.")

(cl:defconstant +positive-infinity+ (dotnet:static <type-str> "PositiveInfinity"))
(cl:setf (cl:documentation (cl:quote +positive-infinity+) (cl:quote cl:variable)) "Represents positive infinity. This field is constant.")

(cl:defconstant +tau+ (dotnet:static <type-str> "Tau"))
(cl:setf (cl:documentation (cl:quote +tau+) (cl:quote cl:variable)) "Represents the number of radians in one turn, specified by the constant, τ.")

(cl:defun < (left right)
  "Summary: Returns a value that indicates whether a specified System.Single value is less than another specified System.Single value.
Returns: if left is less than right; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_LessThan" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun <= (left right)
  "Summary: Returns a value that indicates whether a specified System.Single value is less than or equal to another specified System.Single value.
Returns: if left is less than or equal to right; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_LessThanOrEqual" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun = (left right)
  "Summary: Returns a value that indicates whether two specified System.Single values are equal.
Returns: if left and right are equal; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun > (left right)
  "Summary: Returns a value that indicates whether a specified System.Single value is greater than another specified System.Single value.
Returns: if left is greater than right; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_GreaterThan" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun >= (left right)
  "Summary: Returns a value that indicates whether a specified System.Single value is greater than or equal to another specified System.Single value.
Returns: if left is greater than or equal to right; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_GreaterThanOrEqual" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun abs (value)
  "Summary: Computes the absolute of a value.
Returns: The absolute of value.
Parameters:
  - value (System.Single): The value for which to get its absolute.
"
  (dotnet:static <type-str> "Abs" (cl:the (dotnet "System.Single") value)))

(cl:defun acos (x)
  "Summary: Computes the arc-cosine of a value.
Returns: The arc-cosine of x.
Parameters:
  - x (System.Single): The value, in radians, whose arc-cosine is to be computed.
"
  (dotnet:static <type-str> "Acos" (cl:the (dotnet "System.Single") x)))

(cl:defun acosh (x)
  "Summary: Computes the hyperbolic arc-cosine of a value.
Returns: The hyperbolic arc-cosine of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic arc-cosine is to be computed.
"
  (dotnet:static <type-str> "Acosh" (cl:the (dotnet "System.Single") x)))

(cl:defun acos-pi (x)
  "Summary: Computes the arc-cosine of a value and divides the result by pi.
Returns: The arc-cosine of x, divided by pi.
Parameters:
  - x (System.Single): The value whose arc-cosine is to be computed.
"
  (dotnet:static <type-str> "AcosPi" (cl:the (dotnet "System.Single") x)))

(cl:defun asin (x)
  "Summary: Computes the arc-sine of a value.
Returns: The arc-sine of x.
Parameters:
  - x (System.Single): The value, in radians, whose arc-sine is to be computed.
"
  (dotnet:static <type-str> "Asin" (cl:the (dotnet "System.Single") x)))

(cl:defun asinh (x)
  "Summary: Computes the hyperbolic arc-sine of a value.
Returns: The hyperbolic arc-sine of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic arc-sine is to be computed.
"
  (dotnet:static <type-str> "Asinh" (cl:the (dotnet "System.Single") x)))

(cl:defun asin-pi (x)
  "Summary: Computes the arc-sine of a value and divides the result by pi.
Returns: The arc-sine of x, divided by pi.
Parameters:
  - x (System.Single): The value whose arc-sine is to be computed.
"
  (dotnet:static <type-str> "AsinPi" (cl:the (dotnet "System.Single") x)))

(cl:defun atan (x)
  "Summary: Computes the arc-tangent of a value.
Returns: The arc-tangent of x.
Parameters:
  - x (System.Single): The value, in radians, whose arc-tangent is to be computed.
"
  (dotnet:static <type-str> "Atan" (cl:the (dotnet "System.Single") x)))

(cl:defun atan2 (y x)
  "Summary: Computes the arc-tangent of the quotient of two values.
Returns: The arc-tangent of y divided-by x.
Parameters:
  - y (System.Single): The y-coordinate of a point.
  - x (System.Single): The x-coordinate of a point.
"
  (dotnet:static <type-str> "Atan2" (cl:the (dotnet "System.Single") y) (cl:the (dotnet "System.Single") x)))

(cl:defun atan2-pi (y x)
  "Summary: Computes the arc-tangent for the quotient of two values and divides the result by pi.
Returns: The arc-tangent of y divided-by x, divided by pi.
Parameters:
  - y (System.Single): The y-coordinate of a point.
  - x (System.Single): The x-coordinate of a point.
"
  (dotnet:static <type-str> "Atan2Pi" (cl:the (dotnet "System.Single") y) (cl:the (dotnet "System.Single") x)))

(cl:defun atanh (x)
  "Summary: Computes the hyperbolic arc-tangent of a value.
Returns: The hyperbolic arc-tangent of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic arc-tangent is to be computed.
"
  (dotnet:static <type-str> "Atanh" (cl:the (dotnet "System.Single") x)))

(cl:defun atan-pi (x)
  "Summary: Computes the arc-tangent of a value and divides the result by pi.
Returns: The arc-tangent of x, divided by pi.
Parameters:
  - x (System.Single): The value whose arc-tangent is to be computed.
"
  (dotnet:static <type-str> "AtanPi" (cl:the (dotnet "System.Single") x)))

(cl:defun bit-decrement (x)
  "Summary: Returns the largest value that compares less than a specified value.
Returns: The largest value that compares less than x.
Parameters:
  - x (System.Single): The value to be bitwise decremented.
"
  (dotnet:static <type-str> "BitDecrement" (cl:the (dotnet "System.Single") x)))

(cl:defun bit-increment (x)
  "Summary: Returns the smallest value that compares greater than a specified value.
Returns: The smallest value that compares greater than x.
Parameters:
  - x (System.Single): The value to be bitwise incremented.
"
  (dotnet:static <type-str> "BitIncrement" (cl:the (dotnet "System.Single") x)))

(cl:defun cbrt (x)
  "Summary: Computes the cube-root of a value.
Returns: The cube-root of x.
Parameters:
  - x (System.Single): The value whose cube-root is to be computed.
"
  (dotnet:static <type-str> "Cbrt" (cl:the (dotnet "System.Single") x)))

(cl:defun ceiling (x)
  "Summary: Computes the ceiling of a value.
Returns: The ceiling of x.
Parameters:
  - x (System.Single): The value whose ceiling is to be computed.
"
  (dotnet:static <type-str> "Ceiling" (cl:the (dotnet "System.Single") x)))

(cl:defun clamp (value min max)
  "Summary: Clamps a value to an inclusive minimum and maximum value.
Returns: The result of clamping value to the inclusive range of min and max.
Parameters:
  - value (System.Single): The value to clamp.
  - min (System.Single): The inclusive minimum to which value should clamp.
  - max (System.Single): The inclusive maximum to which value should clamp.
"
  (dotnet:static <type-str> "Clamp" (cl:the (dotnet "System.Single") value) (cl:the (dotnet "System.Single") min) (cl:the (dotnet "System.Single") max)))

(cl:defun clamp-native (value min max)
  "Summary: Clamps a value to an inclusive minimum and maximum value using platform-specific behavior for NaN and NegativeZero.
Returns: The result of clamping value to the inclusive range of min and max.
Parameters:
  - value (System.Single): The value to clamp.
  - min (System.Single): The inclusive minimum to which value should clamp.
  - max (System.Single): The inclusive maximum to which value should clamp.
"
  (dotnet:static <type-str> "ClampNative" (cl:the (dotnet "System.Single") value) (cl:the (dotnet "System.Single") min) (cl:the (dotnet "System.Single") max)))

(cl:defun compare-to (obj cl:&rest args)
  "Passthrough for System.Single.CompareTo overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.Single") obj) "CompareTo" args))

(cl:defun compare-to-object (obj value)
  "Calls System.Single.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates whether the value of this instance is less than, equal to, or greater than the value of the specified object.
Returns: A signed number indicating the relative values of this instance and value. Return Value Description Less than zero This instance is less than value, or this instance is not a number (System.Single.NaN) and value is a number. Zero This instance is equal to value, or this instance and value are both not a number (System.Single.NaN), System.Single.PositiveInfinity, or System.Single.NegativeInfinity. Greater than zero This instance is greater than value, OR this instance is a number and value is not a number (System.Single.NaN), OR value is .
Parameters:
  - value (System.Object): An object to compare, or .
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "CompareTo" value))

(cl:defun compare-to-single (obj value)
  "Calls System.Single.CompareTo CompareTo(Single) -> Int32. Summary: Compares this instance to a specified single-precision floating-point number and returns an integer that indicates whether the value of this instance is less than, equal to, or greater than the value of the specified single-precision floating-point number.
Returns: A signed number indicating the relative values of this instance and value. Return Value Description Less than zero This instance is less than value, or this instance is not a number (System.Single.NaN) and value is a number. Zero This instance is equal to value, or both this instance and value are not a number (System.Single.NaN), System.Single.PositiveInfinity, or System.Single.NegativeInfinity. Greater than zero This instance is greater than value, or this instance is a number and value is not a number (System.Single.NaN).
Parameters:
  - value (System.Single): A single-precision floating-point number to compare.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "CompareTo" value))

(cl:defun convert-to-integer (type value)
  "Summary: Converts a value to a specified integer type using saturation on overflow
Returns: An instance of TInteger created from value.
Parameters:
  - value (System.Single): The value to be converted.
"
  (dotnet:static-generic <type-str> "ConvertToInteger" (cl:list type) value))

(cl:defun convert-to-integer-native (type value)
  "Summary: Converts a value to a specified integer type using platform specific behavior on overflow.
Returns: An instance of TInteger created from value.
Parameters:
  - value (System.Single): The value to be converted.
"
  (dotnet:static-generic <type-str> "ConvertToIntegerNative" (cl:list type) value))

(cl:defun copy-sign (value sign)
  "Summary: Copies the sign of a value to the sign of another value.
Returns: A value with the magnitude of value and the sign of sign.
Parameters:
  - value (System.Single): The value whose magnitude is used in the result.
  - sign (System.Single): The value whose sign is used in the result.
"
  (dotnet:static <type-str> "CopySign" (cl:the (dotnet "System.Single") value) (cl:the (dotnet "System.Single") sign)))

(cl:defun cos (x)
  "Summary: Computes the cosine of a value.
Returns: The cosine of x.
Parameters:
  - x (System.Single): The value, in radians, whose cosine is to be computed.
"
  (dotnet:static <type-str> "Cos" (cl:the (dotnet "System.Single") x)))

(cl:defun cosh (x)
  "Summary: Computes the hyperbolic cosine of a value.
Returns: The hyperbolic cosine of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic cosine is to be computed.
"
  (dotnet:static <type-str> "Cosh" (cl:the (dotnet "System.Single") x)))

(cl:defun cos-pi (x)
  "Summary: Computes the cosine of a value that has been multipled by pi.
Returns: The cosine of x multiplied-by pi.
Parameters:
  - x (System.Single): The value, in half-revolutions, whose cosine is to be computed.
"
  (dotnet:static <type-str> "CosPi" (cl:the (dotnet "System.Single") x)))

(cl:defun create-checked (type value)
  "Summary: Creates an instance of the current type from a value, throwing an overflow exception for any values that fall outside the representable range of the current type.
Returns: An instance of created from value.
Parameters:
  - value (TOther): The value that's used to create the instance of .
"
  (dotnet:static-generic <type-str> "CreateChecked" (cl:list type) value))

(cl:defun create-saturating (type value)
  "Summary: Creates an instance of the current type from a value, saturating any values that fall outside the representable range of the current type.
Returns: An instance of created from value, saturating if value falls outside the representable range of .
Parameters:
  - value (TOther): The value that's used to create the instance of .
"
  (dotnet:static-generic <type-str> "CreateSaturating" (cl:list type) value))

(cl:defun create-truncating (type value)
  "Summary: Creates an instance of the current type from a value, truncating any values that fall outside the representable range of the current type.
Returns: An instance of created from value, truncating if value falls outside the representable range of .
Parameters:
  - value (TOther): The value that's used to create the instance of .
"
  (dotnet:static-generic <type-str> "CreateTruncating" (cl:list type) value))

(cl:defun degrees-to-radians (degrees)
  "Summary: Converts a given value from degrees to radians.
Returns: The value of degrees converted to radians.
Parameters:
  - degrees (System.Single): The value to convert to radians.
"
  (dotnet:static <type-str> "DegreesToRadians" (cl:the (dotnet "System.Single") degrees)))

(cl:defun equals (obj cl:&rest args)
  "Passthrough for System.Single.Equals overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.Single") obj) "Equals" args))

(cl:defun equals-object (obj obj)
  "Calls System.Single.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
Returns: if obj is an instance of System.Single and equals the value of this instance; otherwise, .
Parameters:
  - obj (System.Object): An object to compare with this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "Equals" obj))

(cl:defun equals-single (obj obj)
  "Calls System.Single.Equals Equals(Single) -> Boolean. Summary: Returns a value indicating whether this instance and a specified System.Single object represent the same value.
Returns: if obj is equal to this instance; otherwise, .
Parameters:
  - obj (System.Single): An object to compare with this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "Equals" obj))

(cl:defun exp (x)
  "Summary: Computes E raised to a given power.
Returns: E raised to the power of x.
Parameters:
  - x (System.Single): The power to which E is raised.
"
  (dotnet:static <type-str> "Exp" (cl:the (dotnet "System.Single") x)))

(cl:defun exp10 (x)
  "Summary: Computes 10 raised to a given power.
Returns: 10x
Parameters:
  - x (System.Single): The power to which 10 is raised.
"
  (dotnet:static <type-str> "Exp10" (cl:the (dotnet "System.Single") x)))

(cl:defun exp10-m1 (x)
  "Summary: Computes 10 raised to a given power and subtracts one.
Returns: 10x - 1
Parameters:
  - x (System.Single): The power to which 10 is raised.
"
  (dotnet:static <type-str> "Exp10M1" (cl:the (dotnet "System.Single") x)))

(cl:defun exp2 (x)
  "Summary: Computes 2 raised to a given power.
Returns: 2x
Parameters:
  - x (System.Single): The power to which 2 is raised.
"
  (dotnet:static <type-str> "Exp2" (cl:the (dotnet "System.Single") x)))

(cl:defun exp2-m1 (x)
  "Summary: Computes 2 raised to a given power and subtracts one.
Returns: 2x - 1
Parameters:
  - x (System.Single): The power to which 2 is raised.
"
  (dotnet:static <type-str> "Exp2M1" (cl:the (dotnet "System.Single") x)))

(cl:defun exp-m1 (x)
  "Summary: Computes E raised to a given power and subtracts one.
Returns: Ex - 1
Parameters:
  - x (System.Single): The power to which E is raised.
"
  (dotnet:static <type-str> "ExpM1" (cl:the (dotnet "System.Single") x)))

(cl:defun floor (x)
  "Summary: Computes the floor of a value.
Returns: The floor of x.
Parameters:
  - x (System.Single): The value whose floor is to be computed.
"
  (dotnet:static <type-str> "Floor" (cl:the (dotnet "System.Single") x)))

(cl:defun fused-multiply-add (left right addend)
  "Summary: Computes the fused multiply-add of three values.
Returns: The result of left times right plus addend computed as one ternary operation.
Parameters:
  - left (System.Single): The value that right multiplies.
  - right (System.Single): The value that multiplies left.
  - addend (System.Single): The value that is added to the product of left and right.
"
  (dotnet:static <type-str> "FusedMultiplyAdd" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right) (cl:the (dotnet "System.Single") addend)))

(cl:defun get-hash-code (obj)
  "Summary: Returns the hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "GetHashCode"))

(cl:defun get-type-code (obj)
  "Summary: Returns the System.TypeCode for value type System.Single.
Returns: The enumerated constant, System.TypeCode.Single.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "GetTypeCode"))

(cl:defun hypot (x y)
  "Summary: Computes the hypotenuse given two values representing the lengths of the shorter sides in a right-angled triangle.
Returns: The square root of x-squared plus y-squared.
Parameters:
  - x (System.Single): The value to square and add to y.
  - y (System.Single): The value to square and add to x.
"
  (dotnet:static <type-str> "Hypot" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun ieee754-remainder (left right)
  "Summary: Computes the remainder of two values as specified by IEEE 754.
Returns: The remainder of left divided-by right as specified by IEEE 754.
Parameters:
  - left (System.Single): The value that right divides.
  - right (System.Single): The value that divides left.
"
  (dotnet:static <type-str> "Ieee754Remainder" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun i-log-b (x)
  "Summary: Computes the integer logarithm of a value.
Returns: The integer logarithm of x.
Parameters:
  - x (System.Single): The value whose integer logarithm is to be computed.
"
  (dotnet:static <type-str> "ILogB" (cl:the (dotnet "System.Single") x)))

(cl:defun even-integer? (value)
  "Summary: Determines if a value represents an even integral number.
Returns: if value is an even integer; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsEvenInteger" (cl:the (dotnet "System.Single") value)))

(cl:defun finite? (f)
  "Summary: Determines whether the specified value is finite (zero, subnormal or normal).
Returns: if the specified value is finite (zero, subnormal or normal); otherwise, .
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsFinite" (cl:the (dotnet "System.Single") f)))

(cl:defun infinity? (f)
  "Summary: Returns a value indicating whether the specified number evaluates to negative or positive infinity.
Returns: if f evaluates to System.Single.PositiveInfinity or System.Single.NegativeInfinity; otherwise, .
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsInfinity" (cl:the (dotnet "System.Single") f)))

(cl:defun integer? (value)
  "Summary: Determines if a value represents an integral value.
Returns: if value is an integer; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsInteger" (cl:the (dotnet "System.Single") value)))

(cl:defun nan? (f)
  "Summary: Returns a value that indicates whether the specified value is not a number (System.Single.NaN).
Returns: if f evaluates to not a number (System.Single.NaN); otherwise, .
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsNaN" (cl:the (dotnet "System.Single") f)))

(cl:defun negative? (f)
  "Summary: Determines whether the specified value is negative.
Returns: if negative, otherwise.
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsNegative" (cl:the (dotnet "System.Single") f)))

(cl:defun negative-infinity? (f)
  "Summary: Returns a value indicating whether the specified number evaluates to negative infinity.
Returns: if f evaluates to System.Single.NegativeInfinity; otherwise, .
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsNegativeInfinity" (cl:the (dotnet "System.Single") f)))

(cl:defun normal? (f)
  "Summary: Determines whether the specified value is normal.
Returns: if f is normal; otherwise.
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsNormal" (cl:the (dotnet "System.Single") f)))

(cl:defun odd-integer? (value)
  "Summary: Determines if a value represents an odd integral number.
Returns: if value is an odd integer; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsOddInteger" (cl:the (dotnet "System.Single") value)))

(cl:defun positive? (value)
  "Summary: Determines if a value is positive.
Returns: if value is positive; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsPositive" (cl:the (dotnet "System.Single") value)))

(cl:defun positive-infinity? (f)
  "Summary: Returns a value indicating whether the specified number evaluates to positive infinity.
Returns: if f evaluates to System.Single.PositiveInfinity; otherwise, .
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsPositiveInfinity" (cl:the (dotnet "System.Single") f)))

(cl:defun pow2? (value)
  "Summary: Determines if a value is a power of two.
Returns: if value is a power of two; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsPow2" (cl:the (dotnet "System.Single") value)))

(cl:defun real-number? (value)
  "Summary: Determines if a value represents a real number.
Returns: if value is a real number; otherwise, .
Parameters:
  - value (System.Single): The value to be checked.
"
  (dotnet:static <type-str> "IsRealNumber" (cl:the (dotnet "System.Single") value)))

(cl:defun subnormal? (f)
  "Summary: Determines whether the specified value is subnormal.
Returns: if f is subnormal; otherwise.
Parameters:
  - f (System.Single): A single-precision floating-point number.
"
  (dotnet:static <type-str> "IsSubnormal" (cl:the (dotnet "System.Single") f)))

(cl:defun lerp (value1 value2 amount)
  "Summary: Performs a linear interpolation between two values based on the given weight.
Returns: The interpolated value.
Parameters:
  - value1 (System.Single): The first value, which is intended to be the lower bound.
  - value2 (System.Single): The second value, which is intended to be the upper bound.
  - amount (System.Single): A value, intended to be between 0 and 1, that indicates the weight of the interpolation.
"
  (dotnet:static <type-str> "Lerp" (cl:the (dotnet "System.Single") value1) (cl:the (dotnet "System.Single") value2) (cl:the (dotnet "System.Single") amount)))

(cl:defun log (cl:&rest args)
  "Passthrough for System.Single.Log overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Log" args))

(cl:defun log-single (x)
  "Calls System.Single.Log Log(Single) -> Single. Summary: Computes the natural (base-E logarithm of a value.
Returns: The natural logarithm of x.
Parameters:
  - x (System.Single): The value whose natural logarithm is to be computed.
"
  (dotnet:static <type-str> "Log" (cl:the (dotnet "System.Single") x)))

(cl:defun log-single-single (x new-base)
  "Calls System.Single.Log Log(Single, Single) -> Single. Summary: Computes the logarithm of a value in the specified base.
Returns: The base-newBase logarithm of x.
Parameters:
  - x (System.Single): The value whose logarithm is to be computed.
  - new-base (System.Single): The base in which the logarithm is to be computed.
"
  (dotnet:static <type-str> "Log" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") new-base)))

(cl:defun log10 (x)
  "Summary: Computes the base-10 logarithm of a value.
Returns: The base-10 logarithm of x.
Parameters:
  - x (System.Single): The value whose base-10 logarithm is to be computed.
"
  (dotnet:static <type-str> "Log10" (cl:the (dotnet "System.Single") x)))

(cl:defun log10-p1 (x)
  "Summary: Computes the base-10 logarithm of a value plus one.
Returns: log10(x + 1)
Parameters:
  - x (System.Single): The value to which one is added before computing the base-10 logarithm.
"
  (dotnet:static <type-str> "Log10P1" (cl:the (dotnet "System.Single") x)))

(cl:defun log2 (value)
  "Summary: Computes the log2 of a value.
Returns: The log2 of value.
Parameters:
  - value (System.Single): The value whose log2 is to be computed.
"
  (dotnet:static <type-str> "Log2" (cl:the (dotnet "System.Single") value)))

(cl:defun log2-p1 (x)
  "Summary: Computes the base-2 logarithm of a value plus one.
Returns: log2(x + 1)
Parameters:
  - x (System.Single): The value to which one is added before computing the base-2 logarithm.
"
  (dotnet:static <type-str> "Log2P1" (cl:the (dotnet "System.Single") x)))

(cl:defun log-p1 (x)
  "Summary: Computes the natural (base-E) logarithm of a value plus one.
Returns: loge(x + 1)
Parameters:
  - x (System.Single): The value to which one is added before computing the natural logarithm.
"
  (dotnet:static <type-str> "LogP1" (cl:the (dotnet "System.Single") x)))

(cl:defun max (x y)
  "Summary: Compares two values to compute which is greater.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "Max" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun max-magnitude (x y)
  "Summary: Compares two values to compute which is greater.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MaxMagnitude" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun max-magnitude-number (x y)
  "Summary: Compares two values to compute which has the greater magnitude and returning the other value if an input is NaN.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MaxMagnitudeNumber" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun max-native (x y)
  "Summary: Compares two values to compute which is greater using platform-specific behavior for NaN and NegativeZero.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MaxNative" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun max-number (x y)
  "Summary: Compares two values to compute which is greater and returning the other value if an input is NaN.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MaxNumber" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun min (x y)
  "Summary: Compares two values to compute which is lesser.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "Min" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun min-magnitude (x y)
  "Summary: Compares two values to compute which is lesser.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MinMagnitude" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun min-magnitude-number (x y)
  "Summary: Compares two values to compute which has the lesser magnitude and returning the other value if an input is NaN.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MinMagnitudeNumber" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun min-native (x y)
  "Summary: Compares two values to compute which is lesser using platform-specific behavior for NaN and NegativeZero.
Returns: x if it is lesser than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MinNative" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun min-number (x y)
  "Summary: Compares two values to compute which is lesser and returning the other value if an input is NaN.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Single): The value to compare with y.
  - y (System.Single): The value to compare with x.
"
  (dotnet:static <type-str> "MinNumber" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun multiply-add-estimate (left right addend)
  "Summary: Computes an estimate of (left * right) + addend.
Returns: An estimate of (left * right) + addend.
Parameters:
  - left (System.Single): The value to be multiplied with right.
  - right (System.Single): The value to be multiplied with left.
  - addend (System.Single): The value to be added to the result of left multiplied by right.
"
  (dotnet:static <type-str> "MultiplyAddEstimate" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right) (cl:the (dotnet "System.Single") addend)))

(cl:defun not= (left right)
  "Summary: Returns a value that indicates whether two specified System.Single values are not equal.
Returns: if left and right are not equal; otherwise, .
Parameters:
  - left (System.Single): The first value to compare.
  - right (System.Single): The second value to compare.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.Single") left) (cl:the (dotnet "System.Single") right)))

(cl:defun parse (cl:&rest args)
  "Passthrough for System.Single.Parse overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Parse" args))

(cl:defun parse-string (s)
  "Calls System.Single.Parse Parse(String) -> Single. Summary: Converts the string representation of a number to its single-precision floating-point number equivalent.
Returns: A single-precision floating-point number equivalent to the numeric value or symbol specified in s.
Parameters:
  - s (System.String): A string that contains a number to convert.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") s)))

(cl:defun parse-string-number-styles (s style)
  "Calls System.Single.Parse Parse(String, NumberStyles) -> Single. Summary: Converts the string representation of a number in a specified style to its single-precision floating-point number equivalent.
Returns: A single-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
Parameters:
  - s (System.String): A string that contains a number to convert.
  - style (System.Globalization.NumberStyles): A bitwise combination of enumeration values that indicates the style elements that can be present in s. A typical value to specify is System.Globalization.NumberStyles.Float combined with System.Globalization.NumberStyles.AllowThousands.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") s) (cl:the (dotnet "System.Globalization.NumberStyles") style)))

(cl:defun parse-string-i-format-provider (s provider)
  "Calls System.Single.Parse Parse(String, IFormatProvider) -> Single. Summary: Converts the string representation of a number in a specified culture-specific format to its single-precision floating-point number equivalent.
Returns: A single-precision floating-point number equivalent to the numeric value or symbol specified in s.
Parameters:
  - s (System.String): A string that contains a number to convert.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information about s.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") s) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun parse-string-number-styles-i-format-provider (s style provider)
  "Calls System.Single.Parse Parse(String, NumberStyles, IFormatProvider) -> Single. Summary: Converts the string representation of a number in a specified style and culture-specific format to its single-precision floating-point number equivalent.
Returns: A single-precision floating-point number equivalent to the numeric value or symbol specified in s.
Parameters:
  - s (System.String): A string that contains a number to convert.
  - style (System.Globalization.NumberStyles): A bitwise combination of enumeration values that indicates the style elements that can be present in s. A typical value to specify is System.Globalization.NumberStyles.Float combined with System.Globalization.NumberStyles.AllowThousands.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information about s.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") s) (cl:the (dotnet "System.Globalization.NumberStyles") style) (cl:the (dotnet "System.IFormatProvider") provider)))

(cl:defun pow (x y)
  "Summary: Computes a value raised to a given power.
Returns: x raised to the power of y.
Parameters:
  - x (System.Single): The value that is raised to the power of x.
  - y (System.Single): The power to which x is raised.
"
  (dotnet:static <type-str> "Pow" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Single") y)))

(cl:defun radians-to-degrees (radians)
  "Summary: Converts a given value from radians to degrees.
Returns: The value of radians converted to degrees.
Parameters:
  - radians (System.Single): The value to convert to degrees.
"
  (dotnet:static <type-str> "RadiansToDegrees" (cl:the (dotnet "System.Single") radians)))

(cl:defun reciprocal-estimate (x)
  "Summary: Computes an estimate of the reciprocal of a value.
Returns: An estimate of the reciprocal of x.
Parameters:
  - x (System.Single): The value whose estimate of the reciprocal is to be computed.
"
  (dotnet:static <type-str> "ReciprocalEstimate" (cl:the (dotnet "System.Single") x)))

(cl:defun reciprocal-sqrt-estimate (x)
  "Summary: Computes an estimate of the reciprocal square root of a value.
Returns: An estimate of the reciprocal square root of x.
Parameters:
  - x (System.Single): The value whose estimate of the reciprocal square root is to be computed.
"
  (dotnet:static <type-str> "ReciprocalSqrtEstimate" (cl:the (dotnet "System.Single") x)))

(cl:defun root-n (x n)
  "Summary: Computes the n-th root of a value.
Returns: The n-th root of x.
Parameters:
  - x (System.Single): The value whose n-th root is to be computed.
  - n (System.Int32): The degree of the root to be computed.
"
  (dotnet:static <type-str> "RootN" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Int32") n)))

(cl:defun round (cl:&rest args)
  "Passthrough for System.Single.Round overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Round" args))

(cl:defun round-single (x)
  "Calls System.Single.Round Round(Single) -> Single. Summary: Rounds a value to the nearest integer using the default rounding mode (System.MidpointRounding.ToEven).
Returns: The result of rounding x to the nearest integer using the default rounding mode.
Parameters:
  - x (System.Single): The value to round.
"
  (dotnet:static <type-str> "Round" (cl:the (dotnet "System.Single") x)))

(cl:defun round-single-int32 (x digits)
  "Calls System.Single.Round Round(Single, Int32) -> Single. Summary: Rounds a value to a specified number of fractional-digits using the default rounding mode (System.MidpointRounding.ToEven).
Returns: The result of rounding x to digits fractional-digits using the default rounding mode.
Parameters:
  - x (System.Single): The value to round.
  - digits (System.Int32): The number of fractional digits to which x should be rounded.
"
  (dotnet:static <type-str> "Round" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Int32") digits)))

(cl:defun round-single-midpoint-rounding (x mode)
  "Calls System.Single.Round Round(Single, MidpointRounding) -> Single. Summary: Rounds a value to the nearest integer using the specified rounding mode.
Returns: The result of rounding x to the nearest integer using mode.
Parameters:
  - x (System.Single): The value to round.
  - mode (System.MidpointRounding): The mode under which x should be rounded.
"
  (dotnet:static <type-str> "Round" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.MidpointRounding") mode)))

(cl:defun round-single-int32-midpoint-rounding (x digits mode)
  "Calls System.Single.Round Round(Single, Int32, MidpointRounding) -> Single. Summary: Rounds a value to a specified number of fractional-digits using the default rounding mode (System.MidpointRounding.ToEven).
Returns: The result of rounding x to digits fractional-digits using mode.
Parameters:
  - x (System.Single): The value to round.
  - digits (System.Int32): The number of fractional digits to which x should be rounded.
  - mode (System.MidpointRounding): The mode under which x should be rounded.
"
  (dotnet:static <type-str> "Round" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Int32") digits) (cl:the (dotnet "System.MidpointRounding") mode)))

(cl:defun scale-b (x n)
  "Summary: Computes the product of a value and its base-radix raised to the specified power.
Returns: The product of x and base-radix raised to the power of n.
Parameters:
  - x (System.Single): The value that base-radix raised to the power of n multiplies.
  - n (System.Int32): The value to which base-radix is raised before multipliying x.
"
  (dotnet:static <type-str> "ScaleB" (cl:the (dotnet "System.Single") x) (cl:the (dotnet "System.Int32") n)))

(cl:defun sign (value)
  "Summary: Computes the sign of a value.
Returns: A positive value if value is positive, System.Numerics.INumberBase`1.Zero if value is zero, and a negative value if value is negative.
Parameters:
  - value (System.Single): The value whose sign is to be computed.
"
  (dotnet:static <type-str> "Sign" (cl:the (dotnet "System.Single") value)))

(cl:defun sin (x)
  "Summary: Computes the sine of a value.
Returns: The sine of x.
Parameters:
  - x (System.Single): The value, in radians, whose sine is to be computed.
"
  (dotnet:static <type-str> "Sin" (cl:the (dotnet "System.Single") x)))

(cl:defun sinh (x)
  "Summary: Computes the hyperbolic sine of a value.
Returns: The hyperbolic sine of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic sine is to be computed.
"
  (dotnet:static <type-str> "Sinh" (cl:the (dotnet "System.Single") x)))

(cl:defun sin-pi (x)
  "Summary: Computes the sine of a value that has been multiplied by pi.
Returns: The sine of x multiplied-by pi.
Parameters:
  - x (System.Single): The value, in half-revolutions, that is multipled by pi before computing its sine.
"
  (dotnet:static <type-str> "SinPi" (cl:the (dotnet "System.Single") x)))

(cl:defun sqrt (x)
  "Summary: Computes the square-root of a value.
Returns: The square-root of x.
Parameters:
  - x (System.Single): The value whose square-root is to be computed.
"
  (dotnet:static <type-str> "Sqrt" (cl:the (dotnet "System.Single") x)))

(cl:defun tan (x)
  "Summary: Computes the tangent of a value.
Returns: The tangent of x.
Parameters:
  - x (System.Single): The value, in radians, whose tangent is to be computed.
"
  (dotnet:static <type-str> "Tan" (cl:the (dotnet "System.Single") x)))

(cl:defun tanh (x)
  "Summary: Computes the hyperbolic tangent of a value.
Returns: The hyperbolic tangent of x.
Parameters:
  - x (System.Single): The value, in radians, whose hyperbolic tangent is to be computed.
"
  (dotnet:static <type-str> "Tanh" (cl:the (dotnet "System.Single") x)))

(cl:defun tan-pi (x)
  "Summary: Computes the tangent of a value that has been multipled by pi.
Returns: The tangent of x multiplied-by pi.
Parameters:
  - x (System.Single): The value, in half-revolutions, that is multipled by pi before computing its tangent.
"
  (dotnet:static <type-str> "TanPi" (cl:the (dotnet "System.Single") x)))

(cl:defun to-string (obj cl:&rest args)
  "Passthrough for System.Single.ToString overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.Single") obj) "ToString" args))

(cl:defun to-string (obj)
  "Calls System.Single.ToString ToString() -> String. Summary: Converts the numeric value of this instance to its equivalent string representation.
Returns: The string representation of the value of this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "ToString"))

(cl:defun to-string-i-format-provider (obj provider)
  "Calls System.Single.ToString ToString(IFormatProvider) -> String. Summary: Converts the numeric value of this instance to its equivalent string representation using the specified culture-specific format information.
Returns: The string representation of the value of this instance as specified by provider.
Parameters:
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "ToString" provider))

(cl:defun to-string-string (obj format)
  "Calls System.Single.ToString ToString(String) -> String. Summary: Converts the numeric value of this instance to its equivalent string representation, using the specified format.
Returns: The string representation of the value of this instance as specified by format.
Parameters:
  - format (System.String): A numeric format string.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "ToString" format))

(cl:defun to-string-string-i-format-provider (obj format provider)
  "Calls System.Single.ToString ToString(String, IFormatProvider) -> String. Summary: Converts the numeric value of this instance to its equivalent string representation using the specified format and culture-specific format information.
Returns: The string representation of the value of this instance as specified by format and provider.
Parameters:
  - format (System.String): A numeric format string.
  - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:invoke (cl:the (dotnet "System.Single") obj) "ToString" format provider))

(cl:defun truncate (x)
  "Summary: Truncates a value.
Returns: The truncation of x.
Parameters:
  - x (System.Single): The value to truncate.
"
  (dotnet:static <type-str> "Truncate" (cl:the (dotnet "System.Single") x)))

;; The following C# System.Single.TryParse overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParse(String, out Single&) -> Boolean
;;   TryParse(String, IFormatProvider, out Single&) -> Boolean
;;   TryParse(String, NumberStyles, IFormatProvider, out Single&) -> Boolean

