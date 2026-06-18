(defpackage :test1)
(eval-when (:compile-toplevel :load-toplevel :execute) (defpackage :test1 (:use :cl) (:export #:foo)))
(defun test1::foo () 42)
(format t "result: ~A~%" (test1:foo))
