;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; C# Utilities

(in-package :csharp)
(require :dotnet-class)

(format *error-output* "[csharp.lisp] Loading in package ~S~%" *package*)

(defun timespan-from-milliseconds (millis &optional (micros 0 has-micros-p))
  "Create a TimeSpan struct from this number of milliseconds,
   which is either a Double or Int64. Optionally include Int64 microseconds."
  (if has-micros-p
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis micros)
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis)))
