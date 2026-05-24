;;; Project-wide settings

(in-package :cl-user)

(format *error-output* "[settings.lisp] Loading in package ~S~%" *package*)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))
