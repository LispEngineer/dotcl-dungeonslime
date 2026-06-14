;;; Project-wide settings

(in-package :dungeon-slime)

(format *error-output* "[settings.lisp] Loading in package ~S~%" *package*)

#|
(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Try to output more information during building/compiling
  (setf *compile-verbose* t
        *compile-print* t
        *load-verbose* t
        *load-print* t))
|#

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))

;; We can instruct the DotCL runtime to automatically print full 
;; C# stack traces to standard error for all unhandled exceptions:
;; (Do I need to require dotcl?)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf dotcl:*debug-stacktrace* t))