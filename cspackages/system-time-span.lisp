;;; Generated automatically. Do not edit.
;;; Class: System.TimeSpan
;;; Generator Version: 16
;;; Creation Date: 2026-06-30T03:09:53Z

(cl:in-package :cl-user)

(cl:defpackage :system-time-span
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
   #:new
   #:new-int64
   #:new-int32-int32-int32
   #:new-int32-int32-int32-int32
   #:new-int32-int32-int32-int32-int32
   #:new-int32-int32-int32-int32-int32-int32
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

(cl:in-package :system-time-span)

(cl:defconstant <type> (monoutils:get-type "System.TimeSpan"))
(cl:defconstant <type-str> "System.TimeSpan")
(cl:defconstant <creation> "2026-06-30T03:09:53Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.TimeSpan")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for System.TimeSpan. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-int64 (ticks)
  "Calls System.TimeSpan constructor new(Int64). Summary: Initializes a new instance of the System.TimeSpan structure to the specified number of ticks.
Parameters:
  - ticks (System.Int64): A time period expressed in 100-nanosecond units.
"
  (dotnet:new <type-str> ticks))

(cl:defun new-int32-int32-int32 (hours minutes seconds)
  "Calls System.TimeSpan constructor new(Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours, minutes, and seconds.
Parameters:
  - hours (System.Int32): Number of hours.
  - minutes (System.Int32): Number of minutes.
  - seconds (System.Int32): Number of seconds.
"
  (dotnet:new <type-str> hours minutes seconds))

(cl:defun new-int32-int32-int32-int32 (days hours minutes seconds)
  "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, and seconds.
Parameters:
  - days (System.Int32): Number of days.
  - hours (System.Int32): Number of hours.
  - minutes (System.Int32): Number of minutes.
  - seconds (System.Int32): Number of seconds.
"
  (dotnet:new <type-str> days hours minutes seconds))

(cl:defun new-int32-int32-int32-int32-int32 (days hours minutes seconds milliseconds)
  "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, seconds, and milliseconds.
Parameters:
  - days (System.Int32): Number of days.
  - hours (System.Int32): Number of hours.
  - minutes (System.Int32): Number of minutes.
  - seconds (System.Int32): Number of seconds.
  - milliseconds (System.Int32): Number of milliseconds.
"
  (dotnet:new <type-str> days hours minutes seconds milliseconds))

(cl:defun new-int32-int32-int32-int32-int32-int32 (days hours minutes seconds milliseconds microseconds)
  "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, seconds, milliseconds, and microseconds.
Parameters:
  - days (System.Int32): Number of days.
  - hours (System.Int32): Number of hours.
  - minutes (System.Int32): Number of minutes.
  - seconds (System.Int32): Number of seconds.
  - milliseconds (System.Int32): Number of milliseconds.
  - microseconds (System.Int32): Number of microseconds.
"
  (dotnet:new <type-str> days hours minutes seconds milliseconds microseconds))

(cl:defconstant +hours-per-day+ (dotnet:static <type-str> "HoursPerDay"))
(cl:setf (cl:documentation (cl:quote +hours-per-day+) (cl:quote cl:variable)) "Represents the number of hours in 1 day. This field is constant.")

(cl:defconstant +microseconds-per-day+ (dotnet:static <type-str> "MicrosecondsPerDay"))
(cl:setf (cl:documentation (cl:quote +microseconds-per-day+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 day. This field is constant.")

(cl:defconstant +microseconds-per-hour+ (dotnet:static <type-str> "MicrosecondsPerHour"))
(cl:setf (cl:documentation (cl:quote +microseconds-per-hour+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 hour. This field is constant.")

(cl:defconstant +microseconds-per-millisecond+ (dotnet:static <type-str> "MicrosecondsPerMillisecond"))
(cl:setf (cl:documentation (cl:quote +microseconds-per-millisecond+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 millisecond. This field is constant.")

(cl:defconstant +microseconds-per-minute+ (dotnet:static <type-str> "MicrosecondsPerMinute"))
(cl:setf (cl:documentation (cl:quote +microseconds-per-minute+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 minute. This field is constant.")

(cl:defconstant +microseconds-per-second+ (dotnet:static <type-str> "MicrosecondsPerSecond"))
(cl:setf (cl:documentation (cl:quote +microseconds-per-second+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 second. This field is constant.")

(cl:defconstant +milliseconds-per-day+ (dotnet:static <type-str> "MillisecondsPerDay"))
(cl:setf (cl:documentation (cl:quote +milliseconds-per-day+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 day. This field is constant.")

(cl:defconstant +milliseconds-per-hour+ (dotnet:static <type-str> "MillisecondsPerHour"))
(cl:setf (cl:documentation (cl:quote +milliseconds-per-hour+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 hour. This field is constant.")

(cl:defconstant +milliseconds-per-minute+ (dotnet:static <type-str> "MillisecondsPerMinute"))
(cl:setf (cl:documentation (cl:quote +milliseconds-per-minute+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 minute. This field is constant.")

(cl:defconstant +milliseconds-per-second+ (dotnet:static <type-str> "MillisecondsPerSecond"))
(cl:setf (cl:documentation (cl:quote +milliseconds-per-second+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 second. This field is constant.")

(cl:defconstant +minutes-per-day+ (dotnet:static <type-str> "MinutesPerDay"))
(cl:setf (cl:documentation (cl:quote +minutes-per-day+) (cl:quote cl:variable)) "Represents the number of minutes in 1 day. This field is constant.")

(cl:defconstant +minutes-per-hour+ (dotnet:static <type-str> "MinutesPerHour"))
(cl:setf (cl:documentation (cl:quote +minutes-per-hour+) (cl:quote cl:variable)) "Represents the number of minutes in 1 hour. This field is constant.")

(cl:defconstant +nanoseconds-per-tick+ (dotnet:static <type-str> "NanosecondsPerTick"))
(cl:setf (cl:documentation (cl:quote +nanoseconds-per-tick+) (cl:quote cl:variable)) "Represents the number of nanoseconds per tick. This field is constant.")

(cl:defconstant +seconds-per-day+ (dotnet:static <type-str> "SecondsPerDay"))
(cl:setf (cl:documentation (cl:quote +seconds-per-day+) (cl:quote cl:variable)) "Represents the number of seconds in 1 day. This field is constant.")

(cl:defconstant +seconds-per-hour+ (dotnet:static <type-str> "SecondsPerHour"))
(cl:setf (cl:documentation (cl:quote +seconds-per-hour+) (cl:quote cl:variable)) "Represents the number of seconds in 1 hour. This field is constant.")

(cl:defconstant +seconds-per-minute+ (dotnet:static <type-str> "SecondsPerMinute"))
(cl:setf (cl:documentation (cl:quote +seconds-per-minute+) (cl:quote cl:variable)) "Represents the number of seconds in 1 minute. This field is constant.")

(cl:defconstant +ticks-per-day+ (dotnet:static <type-str> "TicksPerDay"))
(cl:setf (cl:documentation (cl:quote +ticks-per-day+) (cl:quote cl:variable)) "Represents the number of ticks in 1 day. This field is constant.")

(cl:defconstant +ticks-per-hour+ (dotnet:static <type-str> "TicksPerHour"))
(cl:setf (cl:documentation (cl:quote +ticks-per-hour+) (cl:quote cl:variable)) "Represents the number of ticks in 1 hour. This field is constant.")

(cl:defconstant +ticks-per-microsecond+ (dotnet:static <type-str> "TicksPerMicrosecond"))
(cl:setf (cl:documentation (cl:quote +ticks-per-microsecond+) (cl:quote cl:variable)) "Represents the number of ticks in 1 microsecond. This field is constant.")

(cl:defconstant +ticks-per-millisecond+ (dotnet:static <type-str> "TicksPerMillisecond"))
(cl:setf (cl:documentation (cl:quote +ticks-per-millisecond+) (cl:quote cl:variable)) "Represents the number of ticks in 1 millisecond. This field is constant.")

(cl:defconstant +ticks-per-minute+ (dotnet:static <type-str> "TicksPerMinute"))
(cl:setf (cl:documentation (cl:quote +ticks-per-minute+) (cl:quote cl:variable)) "Represents the number of ticks in 1 minute. This field is constant.")

(cl:defconstant +ticks-per-second+ (dotnet:static <type-str> "TicksPerSecond"))
(cl:setf (cl:documentation (cl:quote +ticks-per-second+) (cl:quote cl:variable)) "Represents the number of ticks in 1 second.")

(cl:defconstant +max-value+ (dotnet:static <type-str> "MaxValue"))
(cl:setf (cl:documentation (cl:quote +max-value+) (cl:quote cl:variable)) "Represents the maximum System.TimeSpan value. This field is read-only.")

(cl:defconstant +min-value+ (dotnet:static <type-str> "MinValue"))
(cl:setf (cl:documentation (cl:quote +min-value+) (cl:quote cl:variable)) "Represents the minimum System.TimeSpan value. This field is read-only.")

(cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))
(cl:setf (cl:documentation (cl:quote +zero+) (cl:quote cl:variable)) "Represents the zero System.TimeSpan value. This field is read-only.")

(cl:defun days (obj)
  "Gets the days component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Days"))

(cl:defun hours (obj)
  "Gets the hours component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Hours"))

(cl:defun microseconds (obj)
  "Gets the microseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Microseconds"))

(cl:defun milliseconds (obj)
  "Gets the milliseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Milliseconds"))

(cl:defun minutes (obj)
  "Gets the minutes component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Minutes"))

(cl:defun nanoseconds (obj)
  "Gets the nanoseconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Nanoseconds"))

(cl:defun seconds (obj)
  "Gets the seconds component of the time interval represented by the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Seconds"))

(cl:defun ticks (obj)
  "Gets the number of ticks that represent the value of the current System.TimeSpan structure."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Ticks"))

(cl:defun total-days (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional days."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalDays"))

(cl:defun total-hours (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional hours."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalHours"))

(cl:defun total-microseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional microseconds."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMicroseconds"))

(cl:defun total-milliseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional milliseconds."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMilliseconds"))

(cl:defun total-minutes (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional minutes."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMinutes"))

(cl:defun total-nanoseconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional nanoseconds."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalNanoseconds"))

(cl:defun total-seconds (obj)
  "Gets the value of the current System.TimeSpan structure expressed in whole and fractional seconds."
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalSeconds"))

(cl:defun - (cl:&rest args)
  "Passthrough for System.TimeSpan.- overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 1) (monoutils:dotnet-p (cl:nth 0 args)))
     (cl:apply (cl:function --time-span) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function --time-span-time-span) args))
    (cl:t (cl:error "System.TimeSpan.-: no matching overload found for args: ~S" args))))

(cl:defun --time-span (t-val)
  "Calls System.TimeSpan.- -(TimeSpan) -> TimeSpan. Summary: Returns a System.TimeSpan whose value is the negated value of the specified instance.
Returns: An object that has the same numeric value as this instance, but the opposite sign.
Parameters:
  - t-val (System.TimeSpan): The time interval to be negated.
"
  (dotnet:static <type-str> "op_UnaryNegation" (cl:the (dotnet "System.TimeSpan") t-val)))

(cl:defun --time-span-time-span (t1 t2)
  "Calls System.TimeSpan.- -(TimeSpan, TimeSpan) -> TimeSpan. Summary: Subtracts a specified System.TimeSpan from another specified System.TimeSpan.
Returns: An object whose value is the result of the value of t1 minus the value of t2.
Parameters:
  - t1 (System.TimeSpan): The minuend.
  - t2 (System.TimeSpan): The subtrahend.
"
  (dotnet:static <type-str> "op_Subtraction" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun * (cl:&rest args)
  "Passthrough for System.TimeSpan.* overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (cl:numberp (cl:nth 1 args)))
     (cl:apply (cl:function *-time-span-double) args))
    ((cl:and (cl:= (cl:length args) 2) (cl:numberp (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function *-double-time-span) args))
    (cl:t (cl:error "System.TimeSpan.*: no matching overload found for args: ~S" args))))

(cl:defun *-time-span-double (time-span factor)
  "Calls System.TimeSpan.* *(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified timeSpan instance and the specified factor.
Returns: A new object that represents the value of the specified timeSpan instance multiplied by the value of the specified factor.
Parameters:
  - time-span (System.TimeSpan): The value to be multiplied.
  - factor (System.Double): The value to be multiplied by.
"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.TimeSpan") time-span) (cl:the (dotnet "System.Double") factor)))

(cl:defun *-double-time-span (factor time-span)
  "Calls System.TimeSpan.* *(Double, TimeSpan) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified factor and the specified timeSpan instance.
Returns: A new object that represents the value of the specified factor multiplied by the value of the specified timeSpan instance.
Parameters:
  - factor (System.Double): The value to be multiplied by.
  - time-span (System.TimeSpan): The value to be multiplied.
"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.Double") factor) (cl:the (dotnet "System.TimeSpan") time-span)))

(cl:defun / (cl:&rest args)
  "Passthrough for System.TimeSpan./ overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (cl:numberp (cl:nth 1 args)))
     (cl:apply (cl:function /-time-span-double) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function /-time-span-time-span) args))
    (cl:t (cl:error "System.TimeSpan./: no matching overload found for args: ~S" args))))

(cl:defun /-time-span-double (time-span divisor)
  "Calls System.TimeSpan./ /(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing the specified timeSpan by the specified divisor.
Returns: A new object that represents the value of timeSpan divided by the value of divisor.
Parameters:
  - time-span (System.TimeSpan): The dividend or value to be divided.
  - divisor (System.Double): The divisor or value to be divided by.
"
  (dotnet:static <type-str> "op_Division" (cl:the (dotnet "System.TimeSpan") time-span) (cl:the (dotnet "System.Double") divisor)))

(cl:defun /-time-span-time-span (t1 t2)
  "Calls System.TimeSpan./ /(TimeSpan, TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing t1 by t2.
Returns: A new value that represents result of dividing t1 by the value of t2.
Parameters:
  - t1 (System.TimeSpan): The dividend or value to be divided.
  - t2 (System.TimeSpan): The divisor or value to be divided by.
"
  (dotnet:static <type-str> "op_Division" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun + (cl:&rest args)
  "Passthrough for System.TimeSpan.+ overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:= (cl:length args) 1) (monoutils:dotnet-p (cl:nth 0 args)))
     (cl:apply (cl:function +-time-span) args))
    ((cl:and (cl:= (cl:length args) 2) (monoutils:dotnet-p (cl:nth 0 args)) (monoutils:dotnet-p (cl:nth 1 args)))
     (cl:apply (cl:function +-time-span-time-span) args))
    (cl:t (cl:error "System.TimeSpan.+: no matching overload found for args: ~S" args))))

(cl:defun +-time-span (t-val)
  "Calls System.TimeSpan.+ +(TimeSpan) -> TimeSpan. Summary: Returns the specified instance of System.TimeSpan.
Returns: The time interval specified by t.
Parameters:
  - t-val (System.TimeSpan): The time interval to return.
"
  (dotnet:static <type-str> "op_UnaryPlus" (cl:the (dotnet "System.TimeSpan") t-val)))

(cl:defun +-time-span-time-span (t1 t2)
  "Calls System.TimeSpan.+ +(TimeSpan, TimeSpan) -> TimeSpan. Summary: Adds two specified System.TimeSpan instances.
Returns: An object whose value is the sum of the values of t1 and t2.
Parameters:
  - t1 (System.TimeSpan): The first time interval to add.
  - t2 (System.TimeSpan): The second time interval to add.
"
  (dotnet:static <type-str> "op_Addition" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun < (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than another specified System.TimeSpan.
Returns: if the value of t1 is less than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_LessThan" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun <= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is less than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_LessThanOrEqual" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun = (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are equal.
Returns: if the values of t1 and t2 are equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun > (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than another specified System.TimeSpan.
Returns: if the value of t1 is greater than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_GreaterThan" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun >= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is greater than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_GreaterThanOrEqual" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun add (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the sum of the specified System.TimeSpan object and this instance.
Returns: A new object that represents the value of this instance plus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to add.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Add" ts))

(cl:defun compare (t1 t2)
  "Summary: Compares two System.TimeSpan values and returns an integer that indicates whether the first value is shorter than, equal to, or longer than the second value.
Returns: One of the following values. Value Description -1t1 is shorter than t2. 0t1 is equal to t2. 1t1 is longer than t2.
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "Compare" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun compare-to (obj cl:&rest args)
  "Passthrough for System.TimeSpan.CompareTo overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" args))

(cl:defun compare-to-object (obj value)
  "Calls System.TimeSpan.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the specified object.
Returns: One of the following values. Value Description -1 This instance is shorter than value. 0 This instance is equal to value. 1 This instance is longer than value, or value is .
Parameters:
  - value (System.Object): An object to compare, or .
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))

(cl:defun compare-to-time-span (obj value)
  "Calls System.TimeSpan.CompareTo CompareTo(TimeSpan) -> Int32. Summary: Compares this instance to a specified System.TimeSpan object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the System.TimeSpan object.
Returns: A signed number indicating the relative values of this instance and value. Value Description A negative integer This instance is shorter than value. Zero This instance is equal to value. A positive integer This instance is longer than value.
Parameters:
  - value (System.TimeSpan): An object to compare to this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))

(cl:defun divide (obj cl:&rest args)
  "Passthrough for System.TimeSpan.Divide overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.TimeSpan") obj) "Divide" args))

(cl:defun divide-double (obj divisor)
  "Calls System.TimeSpan.Divide Divide(Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing this instance by the specified divisor.
Returns: A new object that represents the value of this instance divided by the value of divisor.
Parameters:
  - divisor (System.Double): The divisor or value to be divided by.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" divisor))

(cl:defun divide-time-span (obj ts)
  "Calls System.TimeSpan.Divide Divide(TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing this instance by ts.
Returns: A new value that represents result of dividing this instance by the value of ts.
Parameters:
  - ts (System.TimeSpan): The value to be divided by.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" ts))

(cl:defun duration (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the absolute value of the current System.TimeSpan object.
Returns: A new object whose value is the absolute value of the current System.TimeSpan object.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Duration"))

(cl:defun equals (obj cl:&rest args)
  "Passthrough for System.TimeSpan.Equals overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.TimeSpan") obj) "Equals" args))

(cl:defun equals-object (obj value)
  "Calls System.TimeSpan.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
Returns: if value is a System.TimeSpan object that represents the same time interval as the current System.TimeSpan structure; otherwise, .
Parameters:
  - value (System.Object): An object to compare with this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" value))

(cl:defun equals-time-span (obj obj)
  "Calls System.TimeSpan.Equals Equals(TimeSpan) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified System.TimeSpan object.
Returns: if obj represents the same time interval as this instance; otherwise, .
Parameters:
  - obj (System.TimeSpan): An object to compare with this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" obj))

(cl:defun equals-time-span-time-span (t1 t2)
  "Calls System.TimeSpan.Equals Equals(TimeSpan, TimeSpan) -> Boolean. Summary: Returns a value that indicates whether two specified instances of System.TimeSpan are equal.
Returns: if the values of t1 and t2 are equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "Equals" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun from-days (cl:&rest args)
  "Passthrough for System.TimeSpan.FromDays overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromDays" args))

(cl:defun from-days-double (value)
  "Calls System.TimeSpan.FromDays FromDays(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of days, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of days, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromDays" (cl:the (dotnet "System.Double") value)))

(cl:defun from-days-int32 (days)
  "Calls System.TimeSpan.FromDays FromDays(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days.
Returns: Returns a System.TimeSpan that represents a specified number of days.
Parameters:
  - days (System.Int32): Number of days.
"
  (dotnet:static <type-str> "FromDays" (cl:the (dotnet "System.Int32") days)))

;; Note: System.TimeSpan.FromDays also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromDays(Int32, Int32, Int64, Int64, Int64, Int64) -> TimeSpan

(cl:defun from-hours (cl:&rest args)
  "Passthrough for System.TimeSpan.FromHours overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromHours" args))

(cl:defun from-hours-int32 (hours)
  "Calls System.TimeSpan.FromHours FromHours(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours.
Returns: Returns a System.TimeSpan that represents a specified number of hours.
Parameters:
  - hours (System.Int32): Number of hours.
"
  (dotnet:static <type-str> "FromHours" (cl:the (dotnet "System.Int32") hours)))

(cl:defun from-hours-double (value)
  "Calls System.TimeSpan.FromHours FromHours(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of hours, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of hours accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromHours" (cl:the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromHours also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromHours(Int32, Int64, Int64, Int64, Int64) -> TimeSpan

(cl:defun from-microseconds (cl:&rest args)
  "Passthrough for System.TimeSpan.FromMicroseconds overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromMicroseconds" args))

(cl:defun from-microseconds-int64 (microseconds)
  "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of microseconds.
Returns: Returns a System.TimeSpan that represents a specified number of microseconds.
Parameters:
  - microseconds (System.Int64): Number of microseconds.
"
  (dotnet:static <type-str> "FromMicroseconds" (cl:the (dotnet "System.Int64") microseconds)))

(cl:defun from-microseconds-double (value)
  "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of microseconds.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of microseconds.
"
  (dotnet:static <type-str> "FromMicroseconds" (cl:the (dotnet "System.Double") value)))

(cl:defun from-milliseconds (cl:&rest args)
  "Passthrough for System.TimeSpan.FromMilliseconds overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromMilliseconds" args))

(cl:defun from-milliseconds-int64 (milliseconds)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds.
Returns: Returns a System.TimeSpan that represents a specified number of milliseconds.
Parameters:
  - milliseconds (System.Int64): The number of milliseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Int64") milliseconds)))

(cl:defun from-milliseconds-double (value)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of milliseconds.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of milliseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Double") value)))

(cl:defun from-milliseconds-int64-int64 (milliseconds microseconds)
  "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds, and microseconds.
Returns: Returns a System.TimeSpan that represents a specified number of milliseconds, and microseconds.
Parameters:
  - milliseconds (System.Int64): Number of milliseconds.
  - microseconds (System.Int64): Number of microseconds.
"
  (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))

(cl:defun from-minutes (cl:&rest args)
  "Passthrough for System.TimeSpan.FromMinutes overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromMinutes" args))

(cl:defun from-minutes-int64 (minutes)
  "Calls System.TimeSpan.FromMinutes FromMinutes(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of minutes.
Returns: Returns a System.TimeSpan that represents a specified number of minutes.
Parameters:
  - minutes (System.Int64): Number of minutes.
"
  (dotnet:static <type-str> "FromMinutes" (cl:the (dotnet "System.Int64") minutes)))

(cl:defun from-minutes-double (value)
  "Calls System.TimeSpan.FromMinutes FromMinutes(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of minutes, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of minutes, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromMinutes" (cl:the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromMinutes also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromMinutes(Int64, Int64, Int64, Int64) -> TimeSpan

(cl:defun from-seconds (cl:&rest args)
  "Passthrough for System.TimeSpan.FromSeconds overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "FromSeconds" args))

(cl:defun from-seconds-int64 (seconds)
  "Calls System.TimeSpan.FromSeconds FromSeconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of seconds.
Returns: Returns a System.TimeSpan that represents a specified number of seconds.
Parameters:
  - seconds (System.Int64): Number of seconds.
"
  (dotnet:static <type-str> "FromSeconds" (cl:the (dotnet "System.Int64") seconds)))

(cl:defun from-seconds-double (value)
  "Calls System.TimeSpan.FromSeconds FromSeconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of seconds, where the specification is accurate to the nearest millisecond.
Returns: An object that represents value.
Parameters:
  - value (System.Double): A number of seconds, accurate to the nearest millisecond.
"
  (dotnet:static <type-str> "FromSeconds" (cl:the (dotnet "System.Double") value)))

;; Note: System.TimeSpan.FromSeconds also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   FromSeconds(Int64, Int64, Int64) -> TimeSpan

(cl:defun from-ticks (value)
  "Summary: Returns a System.TimeSpan that represents a specified time, where the specification is in units of ticks.
Returns: An object that represents value.
Parameters:
  - value (System.Int64): A number of ticks that represent a time.
"
  (dotnet:static <type-str> "FromTicks" (cl:the (dotnet "System.Int64") value)))

(cl:defun get-hash-code (obj)
  "Summary: Returns a hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "GetHashCode"))

(cl:defun multiply (obj factor)
  "Summary: Returns a new System.TimeSpan object which value is the result of multiplication of this instance and the specified factor.
Returns: A new object that represents the value of this instance multiplied by the value of factor.
Parameters:
  - factor (System.Double): The value to be multiplied by.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Multiply" factor))

(cl:defun negate (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the negated value of this instance.
Returns: A new object with the same numeric value as this instance, but with the opposite sign.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Negate"))

(cl:defun not= (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are not equal.
Returns: if the values of t1 and t2 are not equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))

(cl:defun parse (cl:&rest args)
  "Passthrough for System.TimeSpan.Parse overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Parse" args))

(cl:defun parse-string (s)
  "Calls System.TimeSpan.Parse Parse(String) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent.
Returns: A time interval that corresponds to s.
Parameters:
  - s (System.String): A string that specifies the time interval to convert.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") s)))

(cl:defun parse-string-i-format-provider (input format-provider)
  "Calls System.TimeSpan.Parse Parse(String, IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified culture-specific format information.
Returns: A time interval that corresponds to input, as specified by formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format-provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:static <type-str> "Parse" (cl:the (dotnet "System.String") input) (cl:the (dotnet "System.IFormatProvider") format-provider)))

(cl:defun parse-exact (cl:&rest args)
  "Passthrough for System.TimeSpan.ParseExact overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ParseExact" args))

(cl:defun parse-exact-string-string-i-format-provider (input format format-provider)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String, IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified format and culture-specific format information. The format of the string representation must match the specified format exactly.
Returns: A time interval that corresponds to input, as specified by format and formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format (System.String): A standard or custom format string that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
"
  (dotnet:static <type-str> "ParseExact" (cl:the (dotnet "System.String") input) (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.IFormatProvider") format-provider)))

(cl:defun parse-exact-string-string[]-i-format-provider (input formats format-provider)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String[], IFormatProvider) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified array of format strings and culture-specific format information. The format of the string representation must match one of the specified formats exactly.
Returns: A time interval that corresponds to input, as specified by formats and formatProvider.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - formats (System.String[]): An array of standard or custom format strings that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
"
  (dotnet:static <type-str> "ParseExact" (cl:the (dotnet "System.String") input) (cl:the (dotnet "System.String[]") formats) (cl:the (dotnet "System.IFormatProvider") format-provider)))

(cl:defun parse-exact-string-string-i-format-provider-time-span-styles (input format format-provider styles)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String, IFormatProvider, TimeSpanStyles) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified format, culture-specific format information, and styles. The format of the string representation must match the specified format exactly.
Returns: A time interval that corresponds to input, as specified by format, formatProvider, and styles.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - format (System.String): A standard or custom format string that defines the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
  - styles (System.Globalization.TimeSpanStyles): A bitwise combination of enumeration values that defines the style elements that may be present in input.
"
  (dotnet:static <type-str> "ParseExact" (cl:the (dotnet "System.String") input) (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.IFormatProvider") format-provider) (cl:the (dotnet "System.Globalization.TimeSpanStyles") styles)))

(cl:defun parse-exact-string-string[]-i-format-provider-time-span-styles (input formats format-provider styles)
  "Calls System.TimeSpan.ParseExact ParseExact(String, String[], IFormatProvider, TimeSpanStyles) -> TimeSpan. Summary: Converts the string representation of a time interval to its System.TimeSpan equivalent by using the specified formats, culture-specific format information, and styles. The format of the string representation must match one of the specified formats exactly.
Returns: A time interval that corresponds to input, as specified by formats, formatProvider, and styles.
Parameters:
  - input (System.String): A string that specifies the time interval to convert.
  - formats (System.String[]): An array of standard or custom format strings that define the required format of input.
  - format-provider (System.IFormatProvider): An object that provides culture-specific formatting information.
  - styles (System.Globalization.TimeSpanStyles): A bitwise combination of enumeration values that defines the style elements that may be present in input.
"
  (dotnet:static <type-str> "ParseExact" (cl:the (dotnet "System.String") input) (cl:the (dotnet "System.String[]") formats) (cl:the (dotnet "System.IFormatProvider") format-provider) (cl:the (dotnet "System.Globalization.TimeSpanStyles") styles)))

(cl:defun subtract (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the difference between the specified System.TimeSpan object and this instance.
Returns: A new time interval whose value is the result of the value of this instance minus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to be subtracted.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Subtract" ts))

(cl:defun to-string (obj cl:&rest args)
  "Passthrough for System.TimeSpan.ToString overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "System.TimeSpan") obj) "ToString" args))

(cl:defun to-string (obj)
  "Calls System.TimeSpan.ToString ToString() -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation.
Returns: The string representation of the current System.TimeSpan value.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "ToString"))

(cl:defun to-string-string (obj format)
  "Calls System.TimeSpan.ToString ToString(String) -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation by using the specified format.
Returns: The string representation of the current System.TimeSpan value in the format specified by the format parameter.
Parameters:
  - format (System.String): A standard or custom System.TimeSpan format string.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "ToString" format))

(cl:defun to-string-string-i-format-provider (obj format format-provider)
  "Calls System.TimeSpan.ToString ToString(String, IFormatProvider) -> String. Summary: Converts the value of the current System.TimeSpan object to its equivalent string representation by using the specified format and culture-specific formatting information.
Returns: The string representation of the current System.TimeSpan value, as specified by format and formatProvider.
Parameters:
  - format (System.String): A standard or custom System.TimeSpan format string.
  - format-provider (System.IFormatProvider): An object that supplies culture-specific formatting information.
"
  (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "ToString" format format-provider))

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

