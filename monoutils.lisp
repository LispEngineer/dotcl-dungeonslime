;;; monoutils.lisp — Package definition and shims for custom C# utils.
;;;

(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage :monoutils
    (:use :cl)
    (:export :add3
             :invoke-generic)))

(format *error-output* "[monoutils.lisp] Loading in package ~S~%" *package*)

(setf (documentation 'monoutils:invoke-generic 'function)
      "Invokes a generic instance method dynamically on a target object from Common Lisp.

Usage:
  (monoutils:invoke-generic instance \"MethodName\" '(\"TypeArg1\" \"TypeArg2\" ...) arg1 arg2 ...)

Example:
  (monoutils:invoke-generic renderer \"Draw\" '(\"Microsoft.Xna.Framework.Graphics.Texture2D\") texture position color)")
