;;; Generated automatically. Do not edit.
;;; Class: System.TimeSpan
;;; Generator Version: 10
;;; Creation Date: 2026-06-25T23:46:21Z

(in-package :cl-user)

(defpackage :system-time-span
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:<
   #:<=
   #:=
   #:>
   #:>=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+hours-per-day+
   #:+microseconds-per-day+
   #:+microseconds-per-hour+
   #:+microseconds-per-millisecond+
   #:+microseconds-per-minute+
   #:+microseconds-per-second+
   #:+milliseconds-per-day+
   #:+milliseconds-per-hour+
   #:+milliseconds-per-minute+
   #:+milliseconds-per-second+
   #:+minutes-per-day+
   #:+minutes-per-hour+
   #:+nanoseconds-per-tick+
   #:+seconds-per-day+
   #:+seconds-per-hour+
   #:+seconds-per-minute+
   #:+ticks-per-day+
   #:+ticks-per-hour+
   #:+ticks-per-microsecond+
   #:+ticks-per-millisecond+
   #:+ticks-per-minute+
   #:+ticks-per-second+
   #:+max-value+
   #:+min-value+
   #:+zero+
   #:days
   #:hours
   #:microseconds
   #:milliseconds
   #:minutes
   #:nanoseconds
   #:seconds
   #:ticks
   #:total-days
   #:total-hours
   #:total-microseconds
   #:total-milliseconds
   #:total-minutes
   #:total-nanoseconds
   #:total-seconds
   #:-
   #:--time-span
   #:--time-span-time-span
   #:*
   #:*-time-span-double
   #:*-double-time-span
   #:/
   #:/-time-span-double
   #:/-time-span-time-span
   #:+
   #:+-time-span
   #:+-time-span-time-span
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:add
   #:compare
   #:compare-to
   #:compare-to-object
   #:compare-to-time-span
   #:divide
   #:divide-double
   #:divide-time-span
   #:duration
   #:equals
   #:equals-object
   #:equals-time-span
   #:equals-time-span-time-span
   #:from-days
   #:from-days-double
   #:from-days-int32
   #:from-hours
   #:from-hours-int32
   #:from-hours-double
   #:from-microseconds
   #:from-microseconds-int64
   #:from-microseconds-double
   #:from-milliseconds
   #:from-milliseconds-int64
   #:from-milliseconds-double
   #:from-milliseconds-int64-int64
   #:from-minutes
   #:from-minutes-int64
   #:from-minutes-double
   #:from-seconds
   #:from-seconds-int64
   #:from-seconds-double
   #:from-ticks
   #:get-hash-code
   #:multiply
   #:negate
   #:not=
   #:parse
   #:parse-string
   #:parse-string-i-format-provider
   #:parse-exact
   #:parse-exact-string-string-i-format-provider
   #:parse-exact-string-string[]-i-format-provider
   #:parse-exact-string-string-i-format-provider-time-span-styles
   #:parse-exact-string-string[]-i-format-provider-time-span-styles
   #:subtract
   #:to-string
   #:to-string-string
   #:to-string-string-i-format-provider
  ))

(in-package :system-time-span)

(defconstant <type> (monoutils:get-type "System.TimeSpan"))
(defconstant <type-str> "System.TimeSpan")
(defconstant <creation> "2026-06-25T23:46:21Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.TimeSpan")))

(defconstant +hours-per-day+ (dotnet:static <type-str> "HoursPerDay"))
(setf (documentation '+hours-per-day+ 'variable) "Represents the number of hours in 1 day. This field is constant.")

(defconstant +microseconds-per-day+ (dotnet:static <type-str> "MicrosecondsPerDay"))
(setf (documentation '+microseconds-per-day+ 'variable) "Represents the number of microseconds in 1 day. This field is constant.")

(defconstant +microseconds-per-hour+ (dotnet:static <type-str> "MicrosecondsPerHour"))
(setf (documentation '+microseconds-per-hour+ 'variable) "Represents the number of microseconds in 1 hour. This field is constant.")

(defconstant +microseconds-per-millisecond+ (dotnet:static <type-str> "MicrosecondsPerMillisecond"))
(setf (documentation '+microseconds-per-millisecond+ 'variable) "Represents the number of microseconds in 1 millisecond. This field is constant.")

(defconstant +microseconds-per-minute+ (dotnet:static <type-str> "MicrosecondsPerMinute"))
(setf (documentation '+microseconds-per-minute+ 'variable) "Represents the number of microseconds in 1 minute. This field is constant.")

(defconstant +microseconds-per-second+ (dotnet:static <type-str> "MicrosecondsPerSecond"))
(setf (documentation '+microseconds-per-second+ 'variable) "Represents the number of microseconds in 1 second. This field is constant.")

(defconstant +milliseconds-per-day+ (dotnet:static <type-str> "MillisecondsPerDay"))
(setf (documentation '+milliseconds-per-day+ 'variable) "Represents the number of milliseconds in 1 day. This field is constant.")

(defconstant +milliseconds-per-hour+ (dotnet:static <type-str> "MillisecondsPerHour"))
(setf (documentation '+milliseconds-per-hour+ 'variable) "Represents the number of milliseconds in 1 hour. This field is constant.")

(defconstant +milliseconds-per-minute+ (dotnet:static <type-str> "MillisecondsPerMinute"))
(setf (documentation '+milliseconds-per-minute+ 'variable) "Represents the number of milliseconds in 1 minute. This field is constant.")

(defconstant +milliseconds-per-second+ (dotnet:static <type-str> "MillisecondsPerSecond"))
(setf (documentation '+milliseconds-per-second+ 'variable) "Represents the number of milliseconds in 1 second. This field is constant.")

(defconstant +minutes-per-day+ (dotnet:static <type-str> "MinutesPerDay"))
(setf (documentation '+minutes-per-day+ 'variable) "Represents the number of minutes in 1 day. This field is constant.")

(defconstant +minutes-per-hour+ (dotnet:static <type-str> "MinutesPerHour"))
(setf (documentation '+minutes-per-hour+ 'variable) "Represents the number of minutes in 1 hour. This field is constant.")

(defconstant +nanoseconds-per-tick+ (dotnet:static <type-str> "NanosecondsPerTick"))
(setf (documentation '+nanoseconds-per-tick+ 'variable) "Represents the number of nanoseconds per tick. This field is constant.")

(defconstant +seconds-per-day+ (dotnet:static <type-str> "SecondsPerDay"))
(setf (documentation '+seconds-per-day+ 'variable) "Represents the number of seconds in 1 day. This field is constant.")

(defconstant +seconds-per-hour+ (dotnet:static <type-str> "SecondsPerHour"))
(setf (documentation '+seconds-per-hour+ 'variable) "Represents the number of seconds in 1 hour. This field is constant.")

(defconstant +seconds-per-minute+ (dotnet:static <type-str> "SecondsPerMinute"))
(setf (documentation '+seconds-per-minute+ 'variable) "Represents the number of seconds in 1 minute. This field is constant.")

(defconstant +ticks-per-day+ (dotnet:static <type-str> "TicksPerDay"))
(setf (documentation '+ticks-per-day+ 'variable) "Represents the number of ticks in 1 day. This field is constant.")

(defconstant +ticks-per-hour+ (dotnet:static <type-str> "TicksPerHour"))
(setf (documentation '+ticks-per-hour+ 'variable) "Represents the number of ticks in 1 hour. This field is constant.")

(defconstant +ticks-per-microsecond+ (dotnet:static <type-str> "TicksPerMicrosecond"))
(setf (documentation '+ticks-per-microsecond+ 'variable) "Represents the number of ticks in 1 microsecond. This field is constant.")

(defconstant +ticks-per-millisecond+ (dotnet:static <type-str> "TicksPerMillisecond"))
(setf (documentation '+ticks-per-millisecond+ 'variable) "Represents the number of ticks in 1 millisecond. This field is constant.")

(defconstant +ticks-per-minute+ (dotnet:static <type-str> "TicksPerMinute"))
(setf (documentation '+ticks-per-minute+ 'variable) "Represents the number of ticks in 1 minute. This field is constant.")

(defconstant +ticks-per-second+ (dotnet:static <type-str> "TicksPerSecond"))
(setf (documentation '+ticks-per-second+ 'variable) "Represents the number of ticks in 1 second.")

(defconstant +max-value+ (dotnet:static <type-str> "MaxValue"))
(setf (documentation '+max-value+ 'variable) "Represents the maximum System.TimeSpan value. This field is read-only.")

(defconstant +min-value+ (dotnet:static <type-str> "MinValue"))
(setf (documentation '+min-value+ 'variable) "Represents the minimum System.TimeSpan value. This field is read-only.")

(defconstant +zero+ (dotnet:static <type-str> "Zero"))
(setf (documentation '+zero+ 'variable) "Represents the zero System.TimeSpan value. This field is read-only.")

(defun days (obj)
  "Gets the days component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Days"))

(defun hours (obj)
  "Gets the hours component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Hours"))

(defun microseconds (obj)
  "Gets the microseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Microseconds"))

(defun milliseconds (obj)
  "Gets the milliseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Milliseconds"))

(defun minutes (obj)
  "Gets the minutes component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Minutes"))

(defun nanoseconds (obj)
  "Gets the nanoseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Nanoseconds"))

(defun seconds (obj)
  "Gets the seconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Seconds"))

(defun ticks (obj)
  "Gets the number of ticks that represent the value of the current System.TimeSpan structure."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_Ticks"))

(defun total-days (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional days."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalDays"))

(defun total-hours (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional hours."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalHours"))

(defun total-microseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional microseconds."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalMicroseconds"))

(defun total-milliseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional milliseconds."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalMilliseconds"))

(defun total-minutes (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional minutes."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalMinutes"))

(defun total-nanoseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional nanoseconds."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalNanoseconds"))

(defun total-seconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional seconds."
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "get_TotalSeconds"))

(defun - (&rest args)
  "Passthrough for System.TimeSpan.- overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "-" args))

(defun --time-span (t-val)
  "Calls System.TimeSpan.- -(TimeSpan) -> TimeSpan. Summary: Returns a System.TimeSpan whose value is the negated value of the specified instance.
Returns: An object that has the same numeric value as this instance, but the opposite sign.
Parameters:
  - t-val (System.TimeSpan): The time interval to be negated.
"
  (dotnet:static <type-str> "op_UnaryNegation" (the (dotnet "System.TimeSpan") t-val)))

(defun --time-span-time-span (t1 t2)
  "Calls System.TimeSpan.- -(TimeSpan, TimeSpan) -> TimeSpan. Summary: Subtracts a specified System.TimeSpan from another specified System.TimeSpan.
Returns: An object whose value is the result of the value of t1 minus the value of t2.
Parameters:
  - t1 (System.TimeSpan): The minuend.
  - t2 (System.TimeSpan): The subtrahend.
"
  (dotnet:static <type-str> "op_Subtraction" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun * (&rest args)
  "Passthrough for System.TimeSpan.* overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "*" args))

(defun *-time-span-double (time-span factor)
  "Calls System.TimeSpan.* *(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified timeSpan instance and the specified factor.
Returns: A new object that represents the value of the specified timeSpan instance multiplied by the value of the specified factor.
Parameters:
  - time-span (System.TimeSpan): The value to be multiplied.
  - factor (System.Double): The value to be multiplied by.
"
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "System.TimeSpan") time-span) (the (dotnet "System.Double") factor)))

(defun *-double-time-span (factor time-span)
  "Calls System.TimeSpan.* *(Double, TimeSpan) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified factor and the specified timeSpan instance.
Returns: A new object that represents the value of the specified factor multiplied by the value of the specified timeSpan instance.
Parameters:
  - factor (System.Double): The value to be multiplied by.
  - time-span (System.TimeSpan): The value to be multiplied.
"
  (dotnet:static <type-str> "op_Multiply" (the (dotnet "System.Double") factor) (the (dotnet "System.TimeSpan") time-span)))

(defun / (&rest args)
  "Passthrough for System.TimeSpan./ overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "/" args))

(defun /-time-span-double (time-span divisor)
  "Calls System.TimeSpan./ /(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing the specified timeSpan by the specified divisor.
Returns: A new object that represents the value of timeSpan divided by the value of divisor.
Parameters:
  - time-span (System.TimeSpan): The dividend or value to be divided.
  - divisor (System.Double): The divisor or value to be divided by.
"
  (dotnet:static <type-str> "op_Division" (the (dotnet "System.TimeSpan") time-span) (the (dotnet "System.Double") divisor)))

(defun /-time-span-time-span (t1 t2)
  "Calls System.TimeSpan./ /(TimeSpan, TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing t1 by t2.
Returns: A new value that represents result of dividing t1 by the value of t2.
Parameters:
  - t1 (System.TimeSpan): The dividend or value to be divided.
  - t2 (System.TimeSpan): The divisor or value to be divided by.
"
  (dotnet:static <type-str> "op_Division" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun + (&rest args)
  "Passthrough for System.TimeSpan.+ overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "+" args))

(defun +-time-span (t-val)
  "Calls System.TimeSpan.+ +(TimeSpan) -> TimeSpan. Summary: Returns the specified instance of System.TimeSpan.
Returns: The time interval specified by t.
Parameters:
  - t-val (System.TimeSpan): The time interval to return.
"
  (dotnet:static <type-str> "op_UnaryPlus" (the (dotnet "System.TimeSpan") t-val)))

(defun +-time-span-time-span (t1 t2)
  "Calls System.TimeSpan.+ +(TimeSpan, TimeSpan) -> TimeSpan. Summary: Adds two specified System.TimeSpan instances.
Returns: An object whose value is the sum of the values of t1 and t2.
Parameters:
  - t1 (System.TimeSpan): The first time interval to add.
  - t2 (System.TimeSpan): The second time interval to add.
"
  (dotnet:static <type-str> "op_Addition" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun < (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than another specified System.TimeSpan.
Returns: if the value of t1 is less than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_LessThan" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun <= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is less than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_LessThanOrEqual" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun = (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are equal.
Returns: if the values of t1 and t2 are equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_Equality" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun > (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than another specified System.TimeSpan.
Returns: if the value of t1 is greater than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_GreaterThan" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun >= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is greater than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_GreaterThanOrEqual" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun add (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the sum of the specified System.TimeSpan object and this instance.
Returns: A new object that represents the value of this instance plus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to add.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Add" ts))

(defun compare (t1 t2)
  "Summary: Compares two System.TimeSpan values and returns an integer that indicates whether the first value is shorter than, equal to, or longer than the second value.
Returns: One of the following values. Value Description -1t1 is shorter than t2. 0t1 is equal to t2. 1t1 is longer than t2.
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "Compare" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun compare-to (obj &rest args)
  "Passthrough for System.TimeSpan.CompareTo overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.TimeSpan") obj) "CompareTo" args))

(defun compare-to-object (obj value)
  "Calls System.TimeSpan.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the specified object.
Returns: One of the following values. Value Description -1 This instance is shorter than value. 0 This instance is equal to value. 1 This instance is longer than value, or value is .
Parameters:
  - value (System.Object): An object to compare, or .
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "CompareTo" value))

(defun compare-to-time-span (obj value)
  "Calls System.TimeSpan.CompareTo CompareTo(TimeSpan) -> Int32. Summary: Compares this instance to a specified System.TimeSpan object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the System.TimeSpan object.
Returns: A signed number indicating the relative values of this instance and value. Value Description A negative integer This instance is shorter than value. Zero This instance is equal to value. A positive integer This instance is longer than value.
Parameters:
  - value (System.TimeSpan): An object to compare to this instance.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "CompareTo" value))

(defun divide (obj &rest args)
  "Passthrough for System.TimeSpan.Divide overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Divide" args))

(defun divide-double (obj divisor)
  "Calls System.TimeSpan.Divide Divide(Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing this instance by the specified divisor.
Returns: A new object that represents the value of this instance divided by the value of divisor.
Parameters:
  - divisor (System.Double): The divisor or value to be divided by.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Divide" divisor))

(defun divide-time-span (obj ts)
  "Calls System.TimeSpan.Divide Divide(TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing this instance by ts.
Returns: A new value that represents result of dividing this instance by the value of ts.
Parameters:
  - ts (System.TimeSpan): The value to be divided by.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Divide" ts))

(defun duration (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the absolute value of the current System.TimeSpan object.
Returns: A new object whose value is the absolute value of the current System.TimeSpan object.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Duration"))

(defun equals (obj &rest args)
  "Passthrough for System.TimeSpan.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Equals" args))

(defun equals-object (obj value)
  "Calls System.TimeSpan.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
Returns: if value is a System.TimeSpan object that represents the same time interval as the current System.TimeSpan structure; otherwise, .
Parameters:
  - value (System.Object): An object to compare with this instance.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Equals" value))

(defun equals-time-span (obj obj)
  "Calls System.TimeSpan.Equals Equals(TimeSpan) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified System.TimeSpan object.
Returns: if obj represents the same time interval as this instance; otherwise, .
Parameters:
  - obj (System.TimeSpan): An object to compare with this instance.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Equals" obj))

(defun equals-time-span-time-span (obj t1 t2)
  "Calls System.TimeSpan.Equals Equals(TimeSpan, TimeSpan) -> Boolean. Summary: Returns a value that indicates whether two specified instances of System.TimeSpan are equal.
Returns: if the values of t1 and t2 are equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Equals" t1 t2))

(defun from-days (&rest args)
  "Passthrough for System.TimeSpan.FromDays overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromDays" args))

(defun from-days-double (value)
  "Calls System.TimeSpan.FromDays FromDays(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of days, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of days, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromDays" (the (dotnet "System.Double") value)))

(defun from-days-int32 (days)
  "Calls System.TimeSpan.FromDays FromDays(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days.
Returns: Returns a System.TimeSpan that represents a specified number of days.
Parameters:
  - days (System.Int32): Number of days.
"
  (dotnet:static <type-str> "FromDays" (the (dotnet "System.Int32") days)))

;; Note: System.TimeSpan.FromDays also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromDays(Int32, Int32, Int64, Int64, Int64, Int64) -> TimeSpan

(defun from-hours (&rest args)
  "Passthrough for System.TimeSpan.FromHours overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromHours" args))

(defun from-hours-int32 (hours)
  "Calls System.TimeSpan.FromHours FromHours(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours.
Returns: Returns a System.TimeSpan that represents a specified number of hours.
Parameters:
  - hours (System.Int32): Number of hours.
"
  (dotnet:static <type-str> "FromHours" (the (dotnet "System.Int32") hours)))

(defun from-hours-double (value)
  "Calls System.TimeSpan.FromHours FromHours(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of hours, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of hours accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromHours" (the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromHours also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromHours(Int32, Int64, Int64, Int64, Int64) -> TimeSpan

(defun from-microseconds (&rest args)
  "Passthrough for System.TimeSpan.FromMicroseconds overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromMicroseconds" args))

(defun from-microseconds-int64 (microseconds)
  "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of microseconds.
Returns: Returns a System.TimeSpan that represents a specified number of microseconds.
Parameters:
  - microseconds (System.Int64): Number of microseconds.
"
  (dotnet:static <type-str> "FromMicroseconds" (the (dotnet "System.Int64") microseconds)))

(defun from-microseconds-double (value)
  "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of microseconds.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of microseconds.
"
  (dotnet:static <type-str> "FromMicroseconds" (the (dotnet "System.Double") value)))

(defun from-milliseconds (&rest args)
  "Passthrough for System.TimeSpan.FromMilliseconds overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromMilliseconds" args))

(defun from-milliseconds-int64 (milliseconds)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds.
Returns: Returns a System.TimeSpan that represents a specified number of milliseconds.
Parameters:
  - milliseconds (System.Int64): The number of milliseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (the (dotnet "System.Int64") milliseconds)))

(defun from-milliseconds-double (value)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of milliseconds.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of milliseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (the (dotnet "System.Double") value)))

(defun from-milliseconds-int64-int64 (milliseconds microseconds)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds, and microseconds.
Returns: Returns a System.TimeSpan that represents a specified number of milliseconds, and microseconds.
Parameters:
  - milliseconds (System.Int64): Number of milliseconds.
  - microseconds (System.Int64): Number of microseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (the (dotnet "System.Int64") milliseconds) (the (dotnet "System.Int64") microseconds)))

(defun from-minutes (&rest args)
  "Passthrough for System.TimeSpan.FromMinutes overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromMinutes" args))

(defun from-minutes-int64 (minutes)
  "Calls System.TimeSpan.FromMinutes FromMinutes(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of minutes.
Returns: Returns a System.TimeSpan that represents a specified number of minutes.
Parameters:
  - minutes (System.Int64): Number of minutes.
"
  (dotnet:static <type-str> "FromMinutes" (the (dotnet "System.Int64") minutes)))

(defun from-minutes-double (value)
  "Calls System.TimeSpan.FromMinutes FromMinutes(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of minutes, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of minutes, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromMinutes" (the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromMinutes also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromMinutes(Int64, Int64, Int64, Int64) -> TimeSpan

(defun from-seconds (&rest args)
  "Passthrough for System.TimeSpan.FromSeconds overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "FromSeconds" args))

(defun from-seconds-int64 (seconds)
  "Calls System.TimeSpan.FromSeconds FromSeconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of seconds.
Returns: Returns a System.TimeSpan that represents a specified number of seconds.
Parameters:
  - seconds (System.Int64): Number of seconds.
"
  (dotnet:static <type-str> "FromSeconds" (the (dotnet "System.Int64") seconds)))

(defun from-seconds-double (value)
  "Calls System.TimeSpan.FromSeconds FromSeconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of seconds, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of seconds, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromSeconds" (the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromSeconds also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromSeconds(Int64, Int64, Int64) -> TimeSpan

(defun from-ticks (value)
  "Summary: Returns a System.TimeSpan that represents a specified time, where the specification is in units of ticks.
Returns: An object that represents value.
Parameters:
  - value (System.Int64): A number of ticks that represent a time.
"
  (dotnet:static <type-str> "FromTicks" (the (dotnet "System.Int64") value)))

(defun get-hash-code (obj)
  "Summary: Returns a hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "GetHashCode"))

(defun multiply (obj factor)
  "Summary: Returns a new System.TimeSpan object which value is the result of multiplication of this instance and the specified factor.
Returns: A new object that represents the value of this instance multiplied by the value of factor.
Parameters:
  - factor (System.Double): The value to be multiplied by.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Multiply" factor))

(defun negate (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the negated value of this instance.
Returns: A new object with the same numeric value as this instance, but with the opposite sign.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Negate"))

(defun not= (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are not equal.
Returns: if the values of t1 and t2 are not equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "System.TimeSpan") t1) (the (dotnet "System.TimeSpan") t2)))

(defun parse (&rest args)
  "Passthrough for System.TimeSpan.Parse overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "Parse" args))

(defun parse-string (s)
  "Calls System.TimeSpan.Parse Parse(String) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent.
Returns: A time interval that corresponds to s.
Parameters:
  - s (System.String): A string that specifies the time interval to convert.
"
  (dotnet:static <type-str> "Parse" (the (dotnet "System.String") s)))

(defun parse-string-i-format-provider (input format-provider)
  "Calls System.TimeSpan.Parse Parse(String, IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified culture-specific format information.
Returns: A time interval that corresponds to input, as specified by formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format-provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "Parse" (the (dotnet "System.String") input) (the (dotnet "System.IFormatProvider") format-provider)))

(defun parse-exact (&rest args)
  "Passthrough for System.TimeSpan.ParseExact overloads. Dispatches at runtime."
  (apply #'dotnet:static <type-str> "ParseExact" args))

(defun parse-exact-string-string-i-format-provider (input format format-provider)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String, IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified format and culture-specific format information. The format of the string representation must match the specified format exactly.
Returns: A time interval that corresponds to input, as specified by format and formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format (System.String): A standard or custom format string that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
"
  (dotnet:static <type-str> "ParseExact" (the (dotnet "System.String") input) (the (dotnet "System.String") format) (the (dotnet "System.IFormatProvider") format-provider)))

(defun parse-exact-string-string[]-i-format-provider (input formats format-provider)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String[], IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified array of format strings and culture-specific format information. The format of the string representation must match one of the specified formats exactly.
Returns: A time interval that corresponds to input, as specified by formats and formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - formats (System.String[]): An array of standard or custom format strings that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
"
  (dotnet:static <type-str> "ParseExact" (the (dotnet "System.String") input) (the (dotnet "System.String[]") formats) (the (dotnet "System.IFormatProvider") format-provider)))

(defun parse-exact-string-string-i-format-provider-time-span-styles (input format format-provider styles)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String, IFormatProvider, TimeSpanStyles) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified format, culture-specific format information, and styles. The format of the string representation must match the specified format exactly.
Returns: A time interval that corresponds to input, as specified by format, formatProvider, and styles.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format (System.String): A standard or custom format string that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
  - styles (System.Globalization.TimeSpanStyles): A bitwise combination of enumeration values that defines the style elements that may be present in input.
"
  (dotnet:static <type-str> "ParseExact" (the (dotnet "System.String") input) (the (dotnet "System.String") format) (the (dotnet "System.IFormatProvider") format-provider) (the (dotnet "System.Globalization.TimeSpanStyles") styles)))

(defun parse-exact-string-string[]-i-format-provider-time-span-styles (input formats format-provider styles)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String[], IFormatProvider, TimeSpanStyles) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified formats, culture-specific format information, and styles. The format of the string representation must match one of the specified formats exactly.
Returns: A time interval that corresponds to input, as specified by formats, formatProvider, and styles.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - formats (System.String[]): An array of standard or custom format strings that define the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
  - styles (System.Globalization.TimeSpanStyles): A bitwise combination of enumeration values that defines the style elements that may be present in input.
"
  (dotnet:static <type-str> "ParseExact" (the (dotnet "System.String") input) (the (dotnet "System.String[]") formats) (the (dotnet "System.IFormatProvider") format-provider) (the (dotnet "System.Globalization.TimeSpanStyles") styles)))

(defun subtract (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the difference between the specified System.TimeSpan object and this instance.
Returns: A new time interval whose value is the result of the value of this instance minus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to be subtracted.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "Subtract" ts))

(defun to-string (obj &rest args)
  "Passthrough for System.TimeSpan.ToString overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.TimeSpan") obj) "ToString" args))

(defun to-string (obj)
  "Calls System.TimeSpan.ToString ToString() -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation.
Returns: The string representation of the current System.TimeSpan value.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "ToString"))

(defun to-string-string (obj format)
  "Calls System.TimeSpan.ToString ToString(String) -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation by using the specified format.
Returns: The string representation of the current System.TimeSpan value in the format specified by the format parameter.
Parameters:
  - format (System.String): A standard or custom System.TimeSpan format string.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "ToString" format))

(defun to-string-string-i-format-provider (obj format format-provider)
  "Calls System.TimeSpan.ToString ToString(String, IFormatProvider) -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation by using the specified format and culture-specific formatting information.
Returns: The string representation of the current System.TimeSpan value, as specified by format and formatProvider.
Parameters:
  - format (System.String): A standard or custom System.TimeSpan format string.
  - format-provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:invoke (the (dotnet "System.TimeSpan") obj) "ToString" format format-provider))

;; The following C# System.TimeSpan.TryParse overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParse(String, out TimeSpan&) -> Boolean
;;   TryParse(String, IFormatProvider, out TimeSpan&) -> Boolean

;; The following C# System.TimeSpan.TryParseExact overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryParseExact(String, String, IFormatProvider, out TimeSpan&) -> Boolean
;;   TryParseExact(String, String[], IFormatProvider, out TimeSpan&) -> Boolean
;;   TryParseExact(String, String, IFormatProvider, TimeSpanStyles, out TimeSpan&) -> Boolean
;;   TryParseExact(String, String[], IFormatProvider, TimeSpanStyles, out TimeSpan&) -> Boolean

