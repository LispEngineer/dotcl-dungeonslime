;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Harness to run all the tests without their own harnesses

(in-package :dungeon-slime-tests)

(format *error-output* "[test-harness.lisp] Loading in package ~S~%" *package*)

(defun run-all-tests ()
  "Runs all the Lisp tests that don't have their own harness."
  (format *error-output* "[test-harness.lisp] Running all tests...~%")

  (format *error-output* "[test-harness.lisp] Running poc-tests...~%")
  (poc-tests)

  (format *error-output* "[test-harness.lisp] Running clr-generic tests...~%")
  (test-basic-dispatch)
  (test-inheritance-precedence)
  (test-alias-resolution)

  (format *error-output* "[test-harness.lisp] ...tests complete.~%"))
