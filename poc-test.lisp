;;; Proofs of concept & functionality tests

(in-package :cl-user)

(format *error-output* "[poc-test.lisp] Loading in package ~S~%" *package*)

;; Expose our C# function "add3" by creating the package and exported
;; symbol during compilation.

;; Test Add3
(format t "Add3 sum = ~A~%" (monoutils:add3 1 2.0 9/3))
(handler-case
    (monoutils:add3 1 "two" 3)
  (type-error (c)
    (format t "Caught expected type error: ~A~%" c)))

(format *error-output* "invoke-generic docs: ~A~%"
  (documentation 'monoutils:invoke-generic 'function))

;; Test call-base functionality
(let ((child (dotnet:new "Child")))
  (dotnet:invoke child "Speak")
  (dotnet:call-base child "Speak"))

