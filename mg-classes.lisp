;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Basic MonoGame classes turned Lispy

(in-package :cl-user)

;; Define the game-repl package at load-time/compile-time to isolate REPL symbols.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage :mg-classes
    (:use :cl)
    (:export #:vector2
             #:+v2-0+
             #:+v2-1+
             #:+v2-x1+
             #:+v2-y1+
             #:v2-x
             #:v2-y)))

(in-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[mg-classes.lisp] Loading in package ~S~%" *package*)

(defconstant +v2-0+ (dotnet:static "Microsoft.Xna.Framework.Vector2" "Zero")
  "C#'s Vector2.Zero")

(defconstant +v2-1+ (dotnet:static "Microsoft.Xna.Framework.Vector2" "One")
  "C#'s Vector2.One")

(defconstant +v2-x1+ (dotnet:static "Microsoft.Xna.Framework.Vector2" "UnitX")
  "C#'s Vector2.UnitX")

(defconstant +v2-y1+ (dotnet:static "Microsoft.Xna.Framework.Vector2" "UnitY")
  "C#'s Vector2.UnitY")

(defun vector2 (x y)
  "Returns a new C# Vector2 with the specified values. The number types in Vector2
   are float."
  (dotnet:new "Microsoft.Xna.Framework.Vector2" x y))

;; If we figure out C# class dispatched multimethods, just make "x" and "y".
;; They may be the same anyway, if the accessors on the class are the same!

(defun v2-x (vec)
  "Get X component of a C# Vector2"
  (dotnet:invoke vec "X"))

(defun v2-y (vec)
  "Get Y component of a C# Vector2"
  (dotnet:invoke vec "Y"))
