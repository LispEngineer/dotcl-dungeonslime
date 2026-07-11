;;; Generated automatically. Do not edit.
;;; Class: System.Double
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :system-double)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Double"))
(cl:defconstant <type-str> "System.Double")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defvar %e-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +e+
  (cl:if (cl:eq %e-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %e-cache% (dotnet:static <type-str> "E"))
      %e-cache%))
(cl:setf (cl:documentation (cl:quote +e+) (cl:quote cl:variable)) "Represents the natural logarithmic base, specified by the constant, e.")

(cl:defvar %epsilon-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +epsilon+
  (cl:if (cl:eq %epsilon-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %epsilon-cache% (dotnet:static <type-str> "Epsilon"))
      %epsilon-cache%))
(cl:setf (cl:documentation (cl:quote +epsilon+) (cl:quote cl:variable)) "Represents the smallest positive System.Double value that is greater than zero. This field is constant.")

(cl:defvar %max-value-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +max-value+
  (cl:if (cl:eq %max-value-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %max-value-cache% (dotnet:static <type-str> "MaxValue"))
      %max-value-cache%))
(cl:setf (cl:documentation (cl:quote +max-value+) (cl:quote cl:variable)) "Represents the largest possible value of a System.Double. This field is constant.")

(cl:defvar %min-value-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +min-value+
  (cl:if (cl:eq %min-value-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %min-value-cache% (dotnet:static <type-str> "MinValue"))
      %min-value-cache%))
(cl:setf (cl:documentation (cl:quote +min-value+) (cl:quote cl:variable)) "Represents the smallest possible value of a System.Double. This field is constant.")

(cl:defvar %nan-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +nan+
  (cl:if (cl:eq %nan-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %nan-cache% (dotnet:static <type-str> "NaN"))
      %nan-cache%))
(cl:setf (cl:documentation (cl:quote +nan+) (cl:quote cl:variable)) "Represents a value that is not a number (). This field is constant.")

(cl:defvar %negative-infinity-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +negative-infinity+
  (cl:if (cl:eq %negative-infinity-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %negative-infinity-cache% (dotnet:static <type-str> "NegativeInfinity"))
      %negative-infinity-cache%))
(cl:setf (cl:documentation (cl:quote +negative-infinity+) (cl:quote cl:variable)) "Represents negative infinity. This field is constant.")

(cl:defvar %negative-zero-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +negative-zero+
  (cl:if (cl:eq %negative-zero-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %negative-zero-cache% (dotnet:static <type-str> "NegativeZero"))
      %negative-zero-cache%))
(cl:setf (cl:documentation (cl:quote +negative-zero+) (cl:quote cl:variable)) "Represents the number negative zero (-0).")

(cl:defvar %pi-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pi+
  (cl:if (cl:eq %pi-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pi-cache% (dotnet:static <type-str> "Pi"))
      %pi-cache%))
(cl:setf (cl:documentation (cl:quote +pi+) (cl:quote cl:variable)) "Represents the ratio of the circumference of a circle to its diameter, specified by the constant, π.")

(cl:defvar %positive-infinity-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +positive-infinity+
  (cl:if (cl:eq %positive-infinity-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %positive-infinity-cache% (dotnet:static <type-str> "PositiveInfinity"))
      %positive-infinity-cache%))
(cl:setf (cl:documentation (cl:quote +positive-infinity+) (cl:quote cl:variable)) "Represents positive infinity. This field is constant.")

(cl:defvar %tau-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +tau+
  (cl:if (cl:eq %tau-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %tau-cache% (dotnet:static <type-str> "Tau"))
      %tau-cache%))
(cl:setf (cl:documentation (cl:quote +tau+) (cl:quote cl:variable)) "Represents the number of radians in one turn, specified by the constant, τ.")

(cl:defun < (left right)
  "Summary: Returns a value that indicates whether a specified System.Double value is less than another specified System.Double value.
Returns: if left is less than right; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_LessThan" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun <= (left right)
  "Summary: Returns a value that indicates whether a specified System.Double value is less than or equal to another specified System.Double value.
Returns: if left is less than or equal to right; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_LessThanOrEqual" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun = (left right)
  "Summary: Returns a value that indicates whether two specified System.Double values are equal.
Returns: if left and right are equal; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun > (left right)
  "Summary: Returns a value that indicates whether a specified System.Double value is greater than another specified System.Double value.
Returns: if left is greater than right; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_GreaterThan" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun >= (left right)
  "Summary: Returns a value that indicates whether a specified System.Double value is greater than or equal to another specified System.Double value.
Returns: if left is greater than or equal to right; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_GreaterThanOrEqual" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun abs (value)
  "Summary: Computes the absolute of a value.
Returns: The absolute of value.
Parameters:
  - value (System.Double): The value for which to get its absolute.
"
  (dotnet:static <type-str> "Abs" (cl:the (dotnet "System.Double") value)))

(cl:defun acos (x)
  "Summary: Computes the arc-cosine of a value.
Returns: The arc-cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose arc-cosine is to be computed.
"
  (dotnet:static <type-str> "Acos" (cl:the (dotnet "System.Double") x)))

(cl:defun acosh (x)
  "Summary: Computes the hyperbolic arc-cosine of a value.
Returns: The hyperbolic arc-cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic arc-cosine is to be computed.
"
  (dotnet:static <type-str> "Acosh" (cl:the (dotnet "System.Double") x)))

(cl:defun acos-pi (x)
  "Summary: Computes the arc-cosine of a value and divides the result by pi.
Returns: The arc-cosine of x, divided by pi.
Parameters:
  - x (System.Double): The value whose arc-cosine is to be computed.
"
  (dotnet:static <type-str> "AcosPi" (cl:the (dotnet "System.Double") x)))

(cl:defun asin (x)
  "Summary: Computes the arc-sine of a value.
Returns: The arc-sine of x.
Parameters:
  - x (System.Double): The value, in radians, whose arc-sine is to be computed.
"
  (dotnet:static <type-str> "Asin" (cl:the (dotnet "System.Double") x)))

(cl:defun asinh (x)
  "Summary: Computes the hyperbolic arc-sine of a value.
Returns: The hyperbolic arc-sine of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic arc-sine is to be computed.
"
  (dotnet:static <type-str> "Asinh" (cl:the (dotnet "System.Double") x)))

(cl:defun asin-pi (x)
  "Summary: Computes the arc-sine of a value and divides the result by pi.
Returns: The arc-sine of x, divided by pi.
Parameters:
  - x (System.Double): The value whose arc-sine is to be computed.
"
  (dotnet:static <type-str> "AsinPi" (cl:the (dotnet "System.Double") x)))

(cl:defun atan (x)
  "Summary: Computes the arc-tangent of a value.
Returns: The arc-tangent of x.
Parameters:
  - x (System.Double): The value, in radians, whose arc-tangent is to be computed.
"
  (dotnet:static <type-str> "Atan" (cl:the (dotnet "System.Double") x)))

(cl:defun atan2 (y x)
  "Summary: Computes the arc-tangent of the quotient of two values.
Returns: The arc-tangent of y divided-by x.
Parameters:
  - y (System.Double): The y-coordinate of a point.
  - x (System.Double): The x-coordinate of a point.
"
  (dotnet:static <type-str> "Atan2" (cl:the (dotnet "System.Double") y) (cl:the (dotnet "System.Double") x)))

(cl:defun atan2-pi (y x)
  "Summary: Computes the arc-tangent for the quotient of two values and divides the result by pi.
Returns: The arc-tangent of y divided-by x, divided by pi.
Parameters:
  - y (System.Double): The y-coordinate of a point.
  - x (System.Double): The x-coordinate of a point.
"
  (dotnet:static <type-str> "Atan2Pi" (cl:the (dotnet "System.Double") y) (cl:the (dotnet "System.Double") x)))

(cl:defun atanh (x)
  "Summary: Computes the hyperbolic arc-tangent of a value.
Returns: The hyperbolic arc-tangent of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic arc-tangent is to be computed.
"
  (dotnet:static <type-str> "Atanh" (cl:the (dotnet "System.Double") x)))

(cl:defun atan-pi (x)
  "Summary: Computes the arc-tangent of a value and divides the result by pi.
Returns: The arc-tangent of x, divided by pi.
Parameters:
  - x (System.Double): The value whose arc-tangent is to be computed.
"
  (dotnet:static <type-str> "AtanPi" (cl:the (dotnet "System.Double") x)))

(cl:defun bit-decrement (x)
  "Summary: Returns the largest value that compares less than a specified value.
Returns: The largest value that compares less than x.
Parameters:
  - x (System.Double): The value to be bitwise decremented.
"
  (dotnet:static <type-str> "BitDecrement" (cl:the (dotnet "System.Double") x)))

(cl:defun bit-increment (x)
  "Summary: Returns the smallest value that compares greater than a specified value.
Returns: The smallest value that compares greater than x.
Parameters:
  - x (System.Double): The value to be bitwise incremented.
"
  (dotnet:static <type-str> "BitIncrement" (cl:the (dotnet "System.Double") x)))

(cl:defun cbrt (x)
  "Summary: Computes the cube-root of a value.
Returns: The cube-root of x.
Parameters:
  - x (System.Double): The value whose cube-root is to be computed.
"
  (dotnet:static <type-str> "Cbrt" (cl:the (dotnet "System.Double") x)))

(cl:defun ceiling (x)
  "Summary: Computes the ceiling of a value.
Returns: The ceiling of x.
Parameters:
  - x (System.Double): The value whose ceiling is to be computed.
"
  (dotnet:static <type-str> "Ceiling" (cl:the (dotnet "System.Double") x)))

(cl:defun clamp (value min max)
  "Summary: Clamps a value to an inclusive minimum and maximum value.
Returns: The result of clamping value to the inclusive range of min and max.
Parameters:
  - value (System.Double): The value to clamp.
  - min (System.Double): The inclusive minimum to which value should clamp.
  - max (System.Double): The inclusive maximum to which value should clamp.
"
  (dotnet:static <type-str> "Clamp" (cl:the (dotnet "System.Double") value) (cl:the (dotnet "System.Double") min) (cl:the (dotnet "System.Double") max)))

(cl:defun clamp-native (value min max)
  "Summary: Clamps a value to an inclusive minimum and maximum value using platform-specific behavior for NaN and NegativeZero.
Returns: The result of clamping value to the inclusive range of min and max.
Parameters:
  - value (System.Double): The value to clamp.
  - min (System.Double): The inclusive minimum to which value should clamp.
  - max (System.Double): The inclusive maximum to which value should clamp.
"
  (dotnet:static <type-str> "ClampNative" (cl:the (dotnet "System.Double") value) (cl:the (dotnet "System.Double") min) (cl:the (dotnet "System.Double") max)))

(cl:defun compare-to (obj! value)
  "Master wrapper for System.Double.CompareTo overloads. Dispatches at runtime.

CompareTo(Object) -> Int32
  Summary: Compares this instance to a specified object and returns an integer that indicates whether the value of this instance is less than, equal to, or greater than the value of the specified object.
  Returns: A signed number indicating the relative values of this instance and value. Value Description A negative integer This instance is less than value, or this instance is not a number (System.Double.NaN) and value is a number. Zero This instance is equal to value, or this instance and value are both , System.Double.PositiveInfinity, or System.Double.NegativeInfinity A positive integer This instance is greater than value, OR this instance is a number and value is not a number (System.Double.NaN), OR value is .
  Parameters:
    - value (System.Object): An object to compare, or .

CompareTo(Double) -> Int32
  Summary: Compares this instance to a specified double-precision floating-point number and returns an integer that indicates whether the value of this instance is less than, equal to, or greater than the value of the specified double-precision floating-point number.
  Returns: A signed number indicating the relative values of this instance and value. Return Value Description Less than zero This instance is less than value, or this instance is not a number (System.Double.NaN) and value is a number. Zero This instance is equal to value, or both this instance and value are not a number (System.Double.NaN), System.Double.PositiveInfinity, or System.Double.NegativeInfinity. Greater than zero This instance is greater than value, or this instance is a number and value is not a number (System.Double.NaN).
  Parameters:
    - value (System.Double): A double-precision floating-point number to compare.
"
  (cl:cond
    ((cl:and (cl:or (cl:null value) (dotnet:object-type value)))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "CompareTo" value))
    ((cl:and (cl:numberp value))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "CompareTo" value))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "CompareTo"
                    :supplied-args (cl:append (cl:list :value value))))))

(cl:defun convert-to-integer (type value)
  "Summary: Converts a value to a specified integer type using saturation on overflow
Returns: An instance of TInteger created from value.
Parameters:
  - value (System.Double): The value to be converted.
"
  (dotnet:static-generic <type-str> "ConvertToInteger" (cl:list type) value))

(cl:defun convert-to-integer-native (type value)
  "Summary: Converts a value to a specified integer type using platform specific behavior on overflow.
Returns: An instance of TInteger created from value.
Parameters:
  - value (System.Double): The value to be converted.
"
  (dotnet:static-generic <type-str> "ConvertToIntegerNative" (cl:list type) value))

(cl:defun copy-sign (value sign)
  "Summary: Copies the sign of a value to the sign of another value.
Returns: A value with the magnitude of value and the sign of sign.
Parameters:
  - value (System.Double): The value whose magnitude is used in the result.
  - sign (System.Double): The value whose sign is used in the result.
"
  (dotnet:static <type-str> "CopySign" (cl:the (dotnet "System.Double") value) (cl:the (dotnet "System.Double") sign)))

(cl:defun cos (x)
  "Summary: Computes the cosine of a value.
Returns: The cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose cosine is to be computed.
"
  (dotnet:static <type-str> "Cos" (cl:the (dotnet "System.Double") x)))

(cl:defun cosh (x)
  "Summary: Computes the hyperbolic cosine of a value.
Returns: The hyperbolic cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic cosine is to be computed.
"
  (dotnet:static <type-str> "Cosh" (cl:the (dotnet "System.Double") x)))

(cl:defun cos-pi (x)
  "Summary: Computes the cosine of a value that has been multipled by pi.
Returns: The cosine of x multiplied-by pi.
Parameters:
  - x (System.Double): The value, in half-revolutions, whose cosine is to be computed.
"
  (dotnet:static <type-str> "CosPi" (cl:the (dotnet "System.Double") x)))

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
  - degrees (System.Double): The value to convert to radians.
"
  (dotnet:static <type-str> "DegreesToRadians" (cl:the (dotnet "System.Double") degrees)))

(cl:defun equals (obj! obj)
  "Master wrapper for System.Double.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean
  Summary: Returns a value indicating whether this instance is equal to a specified object.
  Returns: if obj is an instance of System.Double and equals the value of this instance; otherwise, .
  Parameters:
    - obj (System.Object): An object to compare with this instance.

Equals(Double) -> Boolean
  Summary: Returns a value indicating whether this instance and a specified System.Double object represent the same value.
  Returns: if obj is equal to this instance; otherwise, .
  Parameters:
    - obj (System.Double): A System.Double object to compare to this instance.
"
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (dotnet:object-type obj)))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "Equals" obj))
    ((cl:and (cl:numberp obj))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "Equals" obj))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun exp (x)
  "Summary: Computes E raised to a given power.
Returns: E raised to the power of x.
Parameters:
  - x (System.Double): The power to which E is raised.
"
  (dotnet:static <type-str> "Exp" (cl:the (dotnet "System.Double") x)))

(cl:defun exp10 (x)
  "Summary: Computes 10 raised to a given power.
Returns: 10x
Parameters:
  - x (System.Double): The power to which 10 is raised.
"
  (dotnet:static <type-str> "Exp10" (cl:the (dotnet "System.Double") x)))

(cl:defun exp10-m1 (x)
  "Summary: Computes 10 raised to a given power and subtracts one.
Returns: 10x - 1
Parameters:
  - x (System.Double): The power to which 10 is raised.
"
  (dotnet:static <type-str> "Exp10M1" (cl:the (dotnet "System.Double") x)))

(cl:defun exp2 (x)
  "Summary: Computes 2 raised to a given power.
Returns: 2x
Parameters:
  - x (System.Double): The power to which 2 is raised.
"
  (dotnet:static <type-str> "Exp2" (cl:the (dotnet "System.Double") x)))

(cl:defun exp2-m1 (x)
  "Summary: Computes 2 raised to a given power and subtracts one.
Returns: 2x - 1
Parameters:
  - x (System.Double): The power to which 2 is raised.
"
  (dotnet:static <type-str> "Exp2M1" (cl:the (dotnet "System.Double") x)))

(cl:defun exp-m1 (x)
  "Summary: Computes E raised to a given power and subtracts one.
Returns: Ex - 1
Parameters:
  - x (System.Double): The power to which E is raised.
"
  (dotnet:static <type-str> "ExpM1" (cl:the (dotnet "System.Double") x)))

(cl:defun floor (x)
  "Summary: Computes the floor of a value.
Returns: The floor of x.
Parameters:
  - x (System.Double): The value whose floor is to be computed.
"
  (dotnet:static <type-str> "Floor" (cl:the (dotnet "System.Double") x)))

(cl:defun fused-multiply-add (left right addend)
  "Summary: Computes the fused multiply-add of three values.
Returns: The result of left times right plus addend computed as one ternary operation.
Parameters:
  - left (System.Double): The value that right multiplies.
  - right (System.Double): The value that multiplies left.
  - addend (System.Double): The value that is added to the product of left and right.
"
  (dotnet:static <type-str> "FusedMultiplyAdd" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right) (cl:the (dotnet "System.Double") addend)))

(cl:defun get-hash-code (obj!)
  "Summary: Returns the hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "GetHashCode"))

(cl:defun get-type-code (obj!)
  "Summary: Returns the System.TypeCode for value type System.Double.
Returns: The enumerated constant, System.TypeCode.Double.
"
  (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "GetTypeCode"))

(cl:defun hypot (x y)
  "Summary: Computes the hypotenuse given two values representing the lengths of the shorter sides in a right-angled triangle.
Returns: The square root of x-squared plus y-squared.
Parameters:
  - x (System.Double): The value to square and add to y.
  - y (System.Double): The value to square and add to x.
"
  (dotnet:static <type-str> "Hypot" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun ieee754-remainder (left right)
  "Summary: Computes the remainder of two values as specified by IEEE 754.
Returns: The remainder of left divided-by right as specified by IEEE 754.
Parameters:
  - left (System.Double): The value that right divides.
  - right (System.Double): The value that divides left.
"
  (dotnet:static <type-str> "Ieee754Remainder" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun i-log-b (x)
  "Summary: Computes the integer logarithm of a value.
Returns: The integer logarithm of x.
Parameters:
  - x (System.Double): The value whose integer logarithm is to be computed.
"
  (dotnet:static <type-str> "ILogB" (cl:the (dotnet "System.Double") x)))

(cl:defun even-integer? (value)
  "Summary: Determines if a value represents an even integral number.
Returns: if value is an even integer; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsEvenInteger" (cl:the (dotnet "System.Double") value)))

(cl:defun finite? (d)
  "Summary: Determines whether the specified value is finite (zero, subnormal, or normal).
Returns: if the value is finite (zero, subnormal or normal); otherwise.
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsFinite" (cl:the (dotnet "System.Double") d)))

(cl:defun infinity? (d)
  "Summary: Returns a value indicating whether the specified number evaluates to negative or positive infinity.
Returns: if d evaluates to System.Double.PositiveInfinity or System.Double.NegativeInfinity; otherwise, .
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsInfinity" (cl:the (dotnet "System.Double") d)))

(cl:defun integer? (value)
  "Summary: Determines if a value represents an integral value.
Returns: if value is an integer; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsInteger" (cl:the (dotnet "System.Double") value)))

(cl:defun nan? (d)
  "Summary: Returns a value that indicates whether the specified value is not a number (System.Double.NaN).
Returns: if d evaluates to System.Double.NaN; otherwise, .
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsNaN" (cl:the (dotnet "System.Double") d)))

(cl:defun negative? (d)
  "Summary: Determines whether the specified value is negative.
Returns: if the value is negative; otherwise.
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsNegative" (cl:the (dotnet "System.Double") d)))

(cl:defun negative-infinity? (d)
  "Summary: Returns a value indicating whether the specified number evaluates to negative infinity.
Returns: if d evaluates to System.Double.NegativeInfinity; otherwise, .
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsNegativeInfinity" (cl:the (dotnet "System.Double") d)))

(cl:defun normal? (d)
  "Summary: Determines whether the specified value is normal.
Returns: if the value is normal; otherwise.
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsNormal" (cl:the (dotnet "System.Double") d)))

(cl:defun odd-integer? (value)
  "Summary: Determines if a value represents an odd integral number.
Returns: if value is an odd integer; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsOddInteger" (cl:the (dotnet "System.Double") value)))

(cl:defun positive? (value)
  "Summary: Determines if a value is positive.
Returns: if value is positive; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsPositive" (cl:the (dotnet "System.Double") value)))

(cl:defun positive-infinity? (d)
  "Summary: Returns a value indicating whether the specified number evaluates to positive infinity.
Returns: if d evaluates to System.Double.PositiveInfinity; otherwise, .
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsPositiveInfinity" (cl:the (dotnet "System.Double") d)))

(cl:defun pow2? (value)
  "Summary: Determines if a value is a power of two.
Returns: if value is a power of two; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsPow2" (cl:the (dotnet "System.Double") value)))

(cl:defun real-number? (value)
  "Summary: Determines if a value represents a real number.
Returns: if value is a real number; otherwise, .
Parameters:
  - value (System.Double): The value to be checked.
"
  (dotnet:static <type-str> "IsRealNumber" (cl:the (dotnet "System.Double") value)))

(cl:defun subnormal? (d)
  "Summary: Determines whether the specified value is subnormal.
Returns: if the value is subnormal; otherwise.
Parameters:
  - d (System.Double): A double-precision floating-point number.
"
  (dotnet:static <type-str> "IsSubnormal" (cl:the (dotnet "System.Double") d)))

(cl:defun lerp (value1 value2 amount)
  "Summary: Performs a linear interpolation between two values based on the given weight.
Returns: The interpolated value.
Parameters:
  - value1 (System.Double): The first value, which is intended to be the lower bound.
  - value2 (System.Double): The second value, which is intended to be the upper bound.
  - amount (System.Double): A value, intended to be between 0 and 1, that indicates the weight of the interpolation.
"
  (dotnet:static <type-str> "Lerp" (cl:the (dotnet "System.Double") value1) (cl:the (dotnet "System.Double") value2) (cl:the (dotnet "System.Double") amount)))

(cl:defun log (x cl:&optional (new-base cl:nil supplied-new-base))
  "Master wrapper for System.Double.Log overloads. Dispatches at runtime.

Log(Double) -> Double
  Summary: Computes the natural (base-E logarithm of a value.
  Returns: The natural logarithm of x.
  Parameters:
    - x (System.Double): The value whose natural logarithm is to be computed.

Log(Double, Double) -> Double
  Summary: Computes the logarithm of a value in the specified base.
  Returns: The base-newBase logarithm of x.
  Parameters:
    - x (System.Double): The value whose logarithm is to be computed.
    - new-base (System.Double): The base in which the logarithm is to be computed.
"
  (cl:cond
    ((cl:and (cl:numberp x) supplied-new-base (cl:numberp new-base))
     (dotnet:static <type-str> "Log" x new-base))
    ((cl:and (cl:numberp x) (cl:not supplied-new-base))
     (dotnet:static <type-str> "Log" x))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "Log"
                    :supplied-args (cl:append (cl:list :x x) (cl:when supplied-new-base (cl:list :new-base new-base)))))))

(cl:defun log10 (x)
  "Summary: Computes the base-10 logarithm of a value.
Returns: The base-10 logarithm of x.
Parameters:
  - x (System.Double): The value whose base-10 logarithm is to be computed.
"
  (dotnet:static <type-str> "Log10" (cl:the (dotnet "System.Double") x)))

(cl:defun log10-p1 (x)
  "Summary: Computes the base-10 logarithm of a value plus one.
Returns: log10(x + 1)
Parameters:
  - x (System.Double): The value to which one is added before computing the base-10 logarithm.
"
  (dotnet:static <type-str> "Log10P1" (cl:the (dotnet "System.Double") x)))

(cl:defun log2 (value)
  "Summary: Computes the log2 of a value.
Returns: The log2 of value.
Parameters:
  - value (System.Double): The value whose log2 is to be computed.
"
  (dotnet:static <type-str> "Log2" (cl:the (dotnet "System.Double") value)))

(cl:defun log2-p1 (x)
  "Summary: Computes the base-2 logarithm of a value plus one.
Returns: log2(x + 1)
Parameters:
  - x (System.Double): The value to which one is added before computing the base-2 logarithm.
"
  (dotnet:static <type-str> "Log2P1" (cl:the (dotnet "System.Double") x)))

(cl:defun log-p1 (x)
  "Summary: Computes the natural (base-E) logarithm of a value plus one.
Returns: loge(x + 1)
Parameters:
  - x (System.Double): The value to which one is added before computing the natural logarithm.
"
  (dotnet:static <type-str> "LogP1" (cl:the (dotnet "System.Double") x)))

(cl:defun max (x y)
  "Summary: Compares two values to compute which is greater.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "Max" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun max-magnitude (x y)
  "Summary: Compares two values to compute which is greater.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MaxMagnitude" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun max-magnitude-number (x y)
  "Summary: Compares two values to compute which has the greater magnitude and returning the other value if an input is NaN.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MaxMagnitudeNumber" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun max-native (x y)
  "Summary: Compares two values to compute which is greater using platform-specific behavior for NaN and NegativeZero.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MaxNative" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun max-number (x y)
  "Summary: Compares two values to compute which is greater and returning the other value if an input is NaN.
Returns: x if it is greater than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MaxNumber" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun min (x y)
  "Summary: Compares two values to compute which is lesser.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "Min" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun min-magnitude (x y)
  "Summary: Compares two values to compute which is lesser.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MinMagnitude" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun min-magnitude-number (x y)
  "Summary: Compares two values to compute which has the lesser magnitude and returning the other value if an input is NaN.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MinMagnitudeNumber" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun min-native (x y)
  "Summary: Compares two values to compute which is lesser using platform-specific behavior for NaN and NegativeZero.
Returns: x if it is lesser than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MinNative" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun min-number (x y)
  "Summary: Compares two values to compute which is lesser and returning the other value if an input is NaN.
Returns: x if it is less than y; otherwise, y.
Parameters:
  - x (System.Double): The value to compare with y.
  - y (System.Double): The value to compare with x.
"
  (dotnet:static <type-str> "MinNumber" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun multiply-add-estimate (left right addend)
  "Summary: Computes an estimate of (left * right) + addend.
Returns: An estimate of (left * right) + addend.
Parameters:
  - left (System.Double): The value to be multiplied with right.
  - right (System.Double): The value to be multiplied with left.
  - addend (System.Double): The value to be added to the result of left multiplied by right.
"
  (dotnet:static <type-str> "MultiplyAddEstimate" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right) (cl:the (dotnet "System.Double") addend)))

(cl:defun not= (left right)
  "Summary: Returns a value that indicates whether two specified System.Double values are not equal.
Returns: if left and right are not equal; otherwise, .
Parameters:
  - left (System.Double): The first value to compare.
  - right (System.Double): The second value to compare.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.Double") left) (cl:the (dotnet "System.Double") right)))

(cl:defun parse (s cl:&optional (style cl:nil supplied-style) (provider cl:nil supplied-provider))
  "Master wrapper for System.Double.Parse overloads. Dispatches at runtime.

Parse(String) -> Double
  Summary: Converts the string representation of a number to its double-precision floating-point number equivalent.
  Returns: A double-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
  Parameters:
    - s (System.String): A string that contains a number to convert.

Parse(String, NumberStyles) -> Double
  Summary: Converts the string representation of a number in a specified style to its double-precision floating-point number equivalent.
  Returns: A double-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
  Parameters:
    - s (System.String): A string that contains a number to convert.
    - style (System.Globalization.NumberStyles): A bitwise combination of enumeration values that indicate the style elements that can be present in s. A typical value to specify is a combination of System.Globalization.NumberStyles.Float combined with System.Globalization.NumberStyles.AllowThousands.

Parse(String, IFormatProvider) -> Double
  Summary: Converts the string representation of a number in a specified culture-specific format to its double-precision floating-point number equivalent.
  Returns: A double-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
  Parameters:
    - s (System.String): A string that contains a number to convert.
    - provider (System.IFormatProvider): An object that supplies culture-specific formatting information about s.

Parse(Char], IFormatProvider) -> Double
  Summary: Parses a span of characters into a value.
  Returns: The result of parsing s.
  Parameters:
    - s (System.ReadOnlySpan`1[System.Char]): The span of characters to parse.
    - provider (System.IFormatProvider): An object that provides culture-specific formatting information about s.

Parse(Byte], IFormatProvider) -> Double
  Summary: Parses a span of UTF-8 characters into a value.
  Returns: The result of parsing utf8Text.
  Parameters:
    - utf8-text (System.ReadOnlySpan`1[System.Byte]): The span of UTF-8 characters to parse.
    - provider (System.IFormatProvider): An object that provides culture-specific formatting information about utf8Text.

Parse(String, NumberStyles, IFormatProvider) -> Double
  Summary: Converts the string representation of a number in a specified style and culture-specific format to its double-precision floating-point number equivalent.
  Returns: A double-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
  Parameters:
    - s (System.String): A string that contains a number to convert.
    - style (System.Globalization.NumberStyles): A bitwise combination of enumeration values that indicate the style elements that can be present in s. A typical value to specify is System.Globalization.NumberStyles.Float combined with System.Globalization.NumberStyles.AllowThousands.
    - provider (System.IFormatProvider): An object that supplies culture-specific formatting information about s.

Parse(Char], NumberStyles, IFormatProvider) -> Double
  Summary: Converts a character span that contains the string representation of a number in a specified style and culture-specific format to its double-precision floating-point number equivalent.
  Returns: A double-precision floating-point number that is equivalent to the numeric value or symbol specified in s.
  Parameters:
    - s (System.ReadOnlySpan`1[System.Char]): A character span that contains the number to convert.
    - style (System.Globalization.NumberStyles): A bitwise combination of enumeration values that indicate the style elements that can be present in s. A typical value to specify is System.Globalization.NumberStyles.Float combined with System.Globalization.NumberStyles.AllowThousands.
    - provider (System.IFormatProvider): An object that supplies culture-specific formatting information about s.

Parse(Byte], NumberStyles, IFormatProvider) -> Double
  Summary: Parses a span of UTF-8 characters into a value.
  Returns: The result of parsing utf8Text.
  Parameters:
    - utf8-text (System.ReadOnlySpan`1[System.Byte]): The span of UTF-8 characters to parse.
    - style (System.Globalization.NumberStyles): A bitwise combination of number styles that can be present in utf8Text.
    - provider (System.IFormatProvider): An object that provides culture-specific formatting information about utf8Text.
"
  (cl:cond
    ((cl:and (cl:stringp s) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) supplied-provider (cl:or (cl:null provider) (dotnet:object-type provider)))
     (dotnet:static <type-str> "Parse" s style provider))
    ((cl:and (cl:or (cl:null s) (dotnet:object-type s)) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) supplied-provider (cl:or (cl:null provider) (dotnet:object-type provider)))
     (dotnet:static <type-str> "Parse" s style provider))
    ((cl:and (cl:or (cl:null s) (dotnet:object-type s)) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) supplied-provider (cl:or (cl:null provider) (dotnet:object-type provider)))
     (dotnet:static <type-str> "Parse" s style provider))
    ((cl:and (cl:stringp s) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) (cl:not supplied-provider))
     (dotnet:static <type-str> "Parse" s style))
    ((cl:and (cl:stringp s) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) (cl:not supplied-provider))
     (dotnet:static <type-str> "Parse" s style))
    ((cl:and (cl:or (cl:null s) (dotnet:object-type s)) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) (cl:not supplied-provider))
     (dotnet:static <type-str> "Parse" s style))
    ((cl:and (cl:or (cl:null s) (dotnet:object-type s)) supplied-style (cl:or (cl:null style) (dotnet:object-type style)) (cl:not supplied-provider))
     (dotnet:static <type-str> "Parse" s style))
    ((cl:and (cl:stringp s) (cl:not supplied-style) (cl:not supplied-provider))
     (dotnet:static <type-str> "Parse" s))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "Parse"
                    :supplied-args (cl:append (cl:list :s s) (cl:when supplied-style (cl:list :style style)) (cl:when supplied-provider (cl:list :provider provider)))))))

;; Note: System.Double.Parse also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Parse(Char], NumberStyles, IFormatProvider) -> Double
;;   Parse(Byte], NumberStyles, IFormatProvider) -> Double

(cl:defun pow (x y)
  "Summary: Computes a value raised to a given power.
Returns: x raised to the power of y.
Parameters:
  - x (System.Double): The value that is raised to the power of x.
  - y (System.Double): The power to which x is raised.
"
  (dotnet:static <type-str> "Pow" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Double") y)))

(cl:defun radians-to-degrees (radians)
  "Summary: Converts a given value from radians to degrees.
Returns: The value of radians converted to degrees.
Parameters:
  - radians (System.Double): The value to convert to degrees.
"
  (dotnet:static <type-str> "RadiansToDegrees" (cl:the (dotnet "System.Double") radians)))

(cl:defun reciprocal-estimate (x)
  "Summary: Computes an estimate of the reciprocal of a value.
Returns: An estimate of the reciprocal of x.
Parameters:
  - x (System.Double): The value whose estimate of the reciprocal is to be computed.
"
  (dotnet:static <type-str> "ReciprocalEstimate" (cl:the (dotnet "System.Double") x)))

(cl:defun reciprocal-sqrt-estimate (x)
  "Summary: Computes an estimate of the reciprocal square root of a value.
Returns: An estimate of the reciprocal square root of x.
Parameters:
  - x (System.Double): The value whose estimate of the reciprocal square root is to be computed.
"
  (dotnet:static <type-str> "ReciprocalSqrtEstimate" (cl:the (dotnet "System.Double") x)))

(cl:defun root-n (x n)
  "Summary: Computes the n-th root of a value.
Returns: The n-th root of x.
Parameters:
  - x (System.Double): The value whose n-th root is to be computed.
  - n (System.Int32): The degree of the root to be computed.
"
  (dotnet:static <type-str> "RootN" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Int32") n)))

(cl:defun round (x cl:&optional (digits cl:nil supplied-digits) (mode cl:nil supplied-mode))
  "Master wrapper for System.Double.Round overloads. Dispatches at runtime.

Round(Double) -> Double
  Summary: Rounds a value to the nearest integer using the default rounding mode (System.MidpointRounding.ToEven).
  Returns: The result of rounding x to the nearest integer using the default rounding mode.
  Parameters:
    - x (System.Double): The value to round.

Round(Double, Int32) -> Double
  Summary: Rounds a value to a specified number of fractional-digits using the default rounding mode (System.MidpointRounding.ToEven).
  Returns: The result of rounding x to digits fractional-digits using the default rounding mode.
  Parameters:
    - x (System.Double): The value to round.
    - digits (System.Int32): The number of fractional digits to which x should be rounded.

Round(Double, MidpointRounding) -> Double
  Summary: Rounds a value to the nearest integer using the specified rounding mode.
  Returns: The result of rounding x to the nearest integer using mode.
  Parameters:
    - x (System.Double): The value to round.
    - mode (System.MidpointRounding): The mode under which x should be rounded.

Round(Double, Int32, MidpointRounding) -> Double
  Summary: Rounds a value to a specified number of fractional-digits using the default rounding mode (System.MidpointRounding.ToEven).
  Returns: The result of rounding x to digits fractional-digits using mode.
  Parameters:
    - x (System.Double): The value to round.
    - digits (System.Int32): The number of fractional digits to which x should be rounded.
    - mode (System.MidpointRounding): The mode under which x should be rounded.
"
  (cl:cond
    ((cl:and (cl:numberp x) supplied-digits (cl:numberp digits) supplied-mode (cl:or (cl:null mode) (dotnet:object-type mode)))
     (dotnet:static <type-str> "Round" x digits mode))
    ((cl:and (cl:numberp x) supplied-digits (cl:numberp digits) (cl:not supplied-mode))
     (dotnet:static <type-str> "Round" x digits))
    ((cl:and (cl:numberp x) supplied-digits (cl:or (cl:null digits) (dotnet:object-type digits)) (cl:not supplied-mode))
     (dotnet:static <type-str> "Round" x digits))
    ((cl:and (cl:numberp x) (cl:not supplied-digits) (cl:not supplied-mode))
     (dotnet:static <type-str> "Round" x))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "Round"
                    :supplied-args (cl:append (cl:list :x x) (cl:when supplied-digits (cl:list :digits digits)) (cl:when supplied-mode (cl:list :mode mode)))))))

(cl:defun scale-b (x n)
  "Summary: Computes the product of a value and its base-radix raised to the specified power.
Returns: The product of x and base-radix raised to the power of n.
Parameters:
  - x (System.Double): The value that base-radix raised to the power of n multiplies.
  - n (System.Int32): The value to which base-radix is raised before multipliying x.
"
  (dotnet:static <type-str> "ScaleB" (cl:the (dotnet "System.Double") x) (cl:the (dotnet "System.Int32") n)))

(cl:defun sign (value)
  "Summary: Computes the sign of a value.
Returns: A positive value if value is positive, System.Numerics.INumberBase`1.Zero if value is zero, and a negative value if value is negative.
Parameters:
  - value (System.Double): The value whose sign is to be computed.
"
  (dotnet:static <type-str> "Sign" (cl:the (dotnet "System.Double") value)))

(cl:defun sin (x)
  "Summary: Computes the sine of a value.
Returns: The sine of x.
Parameters:
  - x (System.Double): The value, in radians, whose sine is to be computed.
"
  (dotnet:static <type-str> "Sin" (cl:the (dotnet "System.Double") x)))

(cl:defun sin-cos (x)
  "Summary: Computes the sine and cosine of a value.
Returns: The sine and cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose sine and cosine are to be computed.
"
  (dotnet:static <type-str> "SinCos" (cl:the (dotnet "System.Double") x)))

(cl:defun sin-cos-pi (x)
  "Summary: Computes the sine and cosine of a value.
Returns: The sine and cosine of x.
Parameters:
  - x (System.Double): The value, in radians, whose sine and cosine are to be computed.
"
  (dotnet:static <type-str> "SinCosPi" (cl:the (dotnet "System.Double") x)))

(cl:defun sinh (x)
  "Summary: Computes the hyperbolic sine of a value.
Returns: The hyperbolic sine of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic sine is to be computed.
"
  (dotnet:static <type-str> "Sinh" (cl:the (dotnet "System.Double") x)))

(cl:defun sin-pi (x)
  "Summary: Computes the sine of a value that has been multiplied by pi.
Returns: The sine of x multiplied-by pi.
Parameters:
  - x (System.Double): The value, in half-revolutions, that is multipled by pi before computing its sine.
"
  (dotnet:static <type-str> "SinPi" (cl:the (dotnet "System.Double") x)))

(cl:defun sqrt (x)
  "Summary: Computes the square-root of a value.
Returns: The square-root of x.
Parameters:
  - x (System.Double): The value whose square-root is to be computed.
"
  (dotnet:static <type-str> "Sqrt" (cl:the (dotnet "System.Double") x)))

(cl:defun tan (x)
  "Summary: Computes the tangent of a value.
Returns: The tangent of x.
Parameters:
  - x (System.Double): The value, in radians, whose tangent is to be computed.
"
  (dotnet:static <type-str> "Tan" (cl:the (dotnet "System.Double") x)))

(cl:defun tanh (x)
  "Summary: Computes the hyperbolic tangent of a value.
Returns: The hyperbolic tangent of x.
Parameters:
  - x (System.Double): The value, in radians, whose hyperbolic tangent is to be computed.
"
  (dotnet:static <type-str> "Tanh" (cl:the (dotnet "System.Double") x)))

(cl:defun tan-pi (x)
  "Summary: Computes the tangent of a value that has been multipled by pi.
Returns: The tangent of x multiplied-by pi.
Parameters:
  - x (System.Double): The value, in half-revolutions, that is multipled by pi before computing its tangent.
"
  (dotnet:static <type-str> "TanPi" (cl:the (dotnet "System.Double") x)))

(cl:defun to-string (obj! cl:&optional (format cl:nil supplied-format) (provider cl:nil supplied-provider))
  "Master wrapper for System.Double.ToString overloads. Dispatches at runtime.

ToString() -> String
  Summary: Converts the numeric value of this instance to its equivalent string representation.
  Returns: The string representation of the value of this instance.

ToString(String) -> String
  Summary: Converts the numeric value of this instance to its equivalent string representation, using the specified format.
  Returns: The string representation of the value of this instance as specified by format.
  Parameters:
    - format (System.String): A numeric format string.

ToString(IFormatProvider) -> String
  Summary: Converts the numeric value of this instance to its equivalent string representation using the specified culture-specific format information.
  Returns: The string representation of the value of this instance as specified by provider.
  Parameters:
    - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.

ToString(String, IFormatProvider) -> String
  Summary: Converts the numeric value of this instance to its equivalent string representation using the specified format and culture-specific format information.
  Returns: The string representation of the value of this instance as specified by format and provider.
  Parameters:
    - format (System.String): A numeric format string.
    - provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (cl:cond
    ((cl:and supplied-format (cl:stringp format) supplied-provider (cl:or (cl:null provider) (dotnet:object-type provider)))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "ToString" format provider))
    ((cl:and supplied-format (cl:stringp format) (cl:not supplied-provider))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "ToString" format))
    ((cl:and supplied-format (cl:or (cl:null format) (dotnet:object-type format)) (cl:not supplied-provider))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "ToString" format))
    ((cl:and (cl:not supplied-format) (cl:not supplied-provider))
     (dotnet:invoke (cl:the (dotnet "System.Double") obj!) "ToString"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-DOUBLE"
                    :class-name <type-str>
                    :method-name "ToString"
                    :supplied-args (cl:append (cl:when supplied-format (cl:list :format format)) (cl:when supplied-provider (cl:list :provider provider)))))))

(cl:defun truncate (x)
  "Summary: Truncates a value.
Returns: The truncation of x.
Parameters:
  - x (System.Double): The value to truncate.
"
  (dotnet:static <type-str> "Truncate" (cl:the (dotnet "System.Double") x)))

;; The following C# System.Double.TryFormat overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryFormat(Char], out Int32&, Char], IFormatProvider) -> Boolean
;;   TryFormat(Byte], out Int32&, Char], IFormatProvider) -> Boolean

;; The following C# System.Double.TryParse overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParse(String, out Double&) -> Boolean
;;   TryParse(Char], out Double&) -> Boolean
;;   TryParse(Byte], out Double&) -> Boolean
;;   TryParse(String, IFormatProvider, out Double&) -> Boolean
;;   TryParse(Char], IFormatProvider, out Double&) -> Boolean
;;   TryParse(Byte], IFormatProvider, out Double&) -> Boolean
;;   TryParse(String, NumberStyles, IFormatProvider, out Double&) -> Boolean
;;   TryParse(Char], NumberStyles, IFormatProvider, out Double&) -> Boolean
;;   TryParse(Byte], NumberStyles, IFormatProvider, out Double&) -> Boolean

