;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; C# Utilities

(format *error-output* "[csharp.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)

;; Define the game-repl package at load-time/compile-time to isolate REPL symbols.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage :csharp
    (:use :cl)
    (:export #:timespan-from-milliseconds
             )))

(in-package :csharp)
(require :dotnet-class)

(format *error-output* "[csharp.lisp] Loading in package ~S~%" *package*)

(defun timespan-from-milliseconds (millis &optional (micros 0 has-micros-p))
  "Create a TimeSpan struct from this number of milliseconds,
   which is either a Double or Int64. Optionally include Int64 microseconds."
  (if has-micros-p
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis micros)
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis)))
