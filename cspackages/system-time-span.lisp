;;; Generated automatically. Do not edit.
;;; Class: System.TimeSpan
;;; Generator Version: 2
;;; Creation Date: 2026-06-11T14:21:49Z

(in-package :cl-user)

(defpackage :system-time-span
  (:use :cl)
  (:shadow
   #:/=
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
   #:max-value
   #:min-value
   #:zero
   #:/=
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:add
   #:compare
   #:duration
   #:from-ticks
   #:get-hash-code
   #:multiply
   #:negate
   #:subtract
  ))

(in-package :system-time-span)

(defconstant <type> (monoutils:get-type "System.TimeSpan"))
(defconstant <type-str> "System.TimeSpan")
(defconstant <creation> "2026-06-11T14:21:49Z")
(defconstant <version> 2)

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

(define-symbol-macro max-value (dotnet:static <type-str> "MaxValue"))
(setf (documentation 'max-value 'variable) "Represents the maximum System.TimeSpan value. This field is read-only.")

(define-symbol-macro min-value (dotnet:static <type-str> "MinValue"))
(setf (documentation 'min-value 'variable) "Represents the minimum System.TimeSpan value. This field is read-only.")

(define-symbol-macro zero (dotnet:static <type-str> "Zero"))
(setf (documentation 'zero 'variable) "Represents the zero System.TimeSpan value. This field is read-only.")

(defun /= (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are not equal.
Returns: if the values of t1 and t2 are not equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "/=" t1 t2))

(defun < (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than another specified System.TimeSpan.
Returns: if the value of t1 is less than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "<" t1 t2))

(defun <= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is less than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is less than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "<=" t1 t2))

(defun = (t1 t2)
  "Summary: Indicates whether two System.TimeSpan instances are equal.
Returns: if the values of t1 and t2 are equal; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "=" t1 t2))

(defun > (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than another specified System.TimeSpan.
Returns: if the value of t1 is greater than the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> ">" t1 t2))

(defun >= (t1 t2)
  "Summary: Indicates whether a specified System.TimeSpan is greater than or equal to another specified System.TimeSpan.
Returns: if the value of t1 is greater than or equal to the value of t2; otherwise, .
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> ">=" t1 t2))

(defun add (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the sum of the specified System.TimeSpan object and this instance.
Returns: A new object that represents the value of this instance plus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to add.
"
  (dotnet:invoke obj "Add" ts))

(defun compare (t1 t2)
  "Summary: Compares two System.TimeSpan values and returns an integer that indicates whether the first value is shorter than, equal to, or longer than the second value.
Returns: One of the following values. Value Description -1t1 is shorter than t2. 0t1 is equal to t2. 1t1 is longer than t2.
Parameters:
  - t1 (System.TimeSpan): The first time interval to compare.
  - t2 (System.TimeSpan): The second time interval to compare.
"
  (dotnet:static <type-str> "Compare" t1 t2))

(defun duration (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the absolute value of the current System.TimeSpan object.
Returns: A new object whose value is the absolute value of the current System.TimeSpan object.
"
  (dotnet:invoke obj "Duration"))

(defun from-ticks (value)
  "Summary: Returns a System.TimeSpan that represents a specified time, where the specification is in units of ticks.
Returns: An object that represents value.
Parameters:
  - value (System.Int64): A number of ticks that represent a time.
"
  (dotnet:static <type-str> "FromTicks" value))

(defun get-hash-code (obj)
  "Summary: Returns a hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke obj "GetHashCode"))

(defun multiply (obj factor)
  "Summary: Returns a new System.TimeSpan object which value is the result of multiplication of this instance and the specified factor.
Returns: A new object that represents the value of this instance multiplied by the value of factor.
Parameters:
  - factor (System.Double): The value to be multiplied by.
"
  (dotnet:invoke obj "Multiply" factor))

(defun negate (obj)
  "Summary: Returns a new System.TimeSpan object whose value is the negated value of this instance.
Returns: A new object with the same numeric value as this instance, but with the opposite sign.
"
  (dotnet:invoke obj "Negate"))

(defun subtract (obj ts)
  "Summary: Returns a new System.TimeSpan object whose value is the difference between the specified System.TimeSpan object and this instance.
Returns: A new time interval whose value is the result of the value of this instance minus the value of ts.
Parameters:
  - ts (System.TimeSpan): The time interval to be subtracted.
"
  (dotnet:invoke obj "Subtract" ts))

