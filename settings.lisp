;;; Project-wide settings

(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Try to output more information during building/compiling
  (setf *compile-verbose* t
        *compile-print* t
        *load-verbose* t
        *load-print* t))

(format *error-output* "[settings.lisp] Loading in package ~S~%" *package*)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))
