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


;; Test type stuff
(let ((x (dotnet:new "System.Collections.ArrayList")))
  (format *error-output* "x = ~A~%" x)
  (format *error-output* "type-of x = ~A~%" (type-of x))
  (format *error-output* "class-of x = ~A~%" (class-of x))
  (format *error-output* "dotnet-p x = ~A~%" (monoutils:dotnet-p x))
  (format *error-output* "boxed-dotnet-p x = ~A~%" (monoutils:boxed-dotnet-p))
  (format *error-output* "get-type x = ~A~%" (monoutils:get-type x))
  (format *error-output* "get-type-full-name x = ~A~%" (monoutils:get-type-full-name x))
  (format *error-output* "dotnet-p +false+ = ~A~%" (monoutils:dotnet-p +false+))
  (format *error-output* "boxed-dotnet-p +false+ = ~A~%" (monoutils:boxed-dotnet-p +false+)))

