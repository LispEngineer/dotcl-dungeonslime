;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; C# Utilities

(in-package :csharp)
(require :dotnet-class)

(format *error-output* "[csharp.lisp] Loading in package ~S~%" *package*)

(defun timespan<-milliseconds (millis &optional (micros 0 has-micros-p))
  "Create a TimeSpan struct from this number of milliseconds,
   which is either a Double or Int64. Optionally include Int64 microseconds."
  (if has-micros-p
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis micros)
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis)))

(defun timespan->milliseconds (ts)
  "Gets the number of milliseconds of this C# TimeSpan object."
  (if (null ts)
    0
    (dotnet:invoke ts "TotalMilliseconds")))

(defun ts+ (ts1 ts2)
  "Adds two System.TimeSpan objects, returning a new one.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_Addition" ts1 ts2))

(defun ts> (ts1 ts2)
  "Compares two System.TimeSpan objects, ts1 > ts2.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_GreaterThan" ts1 ts2))

(defun ts>= (ts1 ts2)
  "Compares two System.TimeSpan objects, ts1 >= ts2.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_GreaterThan" ts1 ts2))