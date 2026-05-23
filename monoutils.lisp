;;; monoutils.lisp — Package definition and shims for custom C# utils.
;;;
;;; These functions are defined in MonoUtils.cs, and made available to
;;; the system by calling MonoUtilsRegistrar.Initialize().

(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage :monoutils
    (:use :cl)
    (:export :add3
             :invoke-generic)))
