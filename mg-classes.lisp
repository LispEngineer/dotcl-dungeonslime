;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Basic MonoGame classes turned Lispy.
;;; Many of these things would be more efficient if they were converted
;;; into macros, but that's an optimization for another day.

(in-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[mg-classes.lisp] Loading in package ~S~%" *package*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper Functions

(defun °2R (degrees)
  "Convert degrees to radians, returning a single-float (used commonly in MonoGame)"
  (coerce (* degrees (/ pi 180)) 'single-float))
