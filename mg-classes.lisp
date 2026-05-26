;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Basic MonoGame classes turned Lispy.
;;; Many of these things would be more efficient if they were converted
;;; into macros, but that's an optimization for another day.

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
             #:x
             #:y
             #:width
             #:height
             #:°2R)))

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

(defun vector2 (x &optional (y 0.0e0 y-supplied-p))
  "Returns a new C# Vector2 with the specified values. The number types in Vector2
   are float. If the y parameter is omitted, the Vector2 is initialized with
   both components initialized to x"
  (if y-supplied-p
    (dotnet:new "Microsoft.Xna.Framework.Vector2" x y)
    (dotnet:new "Microsoft.Xna.Framework.Vector2" x)))

(defun v2* (arg1 arg2)
  "Multiply two C# Vector2s. Valid pairs:
  Vector2, Vector2
  short-float, Vector2
  Vector2, short-float"
  (dotnet:static "Microsoft.Xna.Framework.Vector2" "op_Multiply" arg1 arg2))

;; TODO: Add all the other v2 operators
;; TODO: Make a multimethod if/when DotCL implements 
;;       C# type dispatching on multimethods

(defun rect (x y w h)
  "Returns a new C# Rectangle with the specified values. The number types in Vector2
   are float."
  (dotnet:new "Microsoft.Xna.Framework.Rectangle" x y w h))

;; If we figure out C# class dispatched multimethods, just make "x" and "y".
;; They may be the same anyway, if the accessors on the class are the same!

(defun x (vec)
  "Get X component of a C# Type with an X field, e.g. Vector2, Rectangle"
  (dotnet:invoke vec "X"))

(defun y (vec)
  "Get Y component of a C# Type with an Y field, e.g. Vector2, Rectangle"
  (dotnet:invoke vec "Y"))

(defun width (rect)
  "Get the width of a C# Rectangle"
  (dotnet:invoke rect "Width"))

(defun height (rect)
  "Get the height of a C# Rectangle"
  (dotnet:invoke rect "Height"))

(defun °2R (degrees)
  "Convert degrees to radians, returning a single-float (used commonly in MonoGame)"
  (coerce (* degrees (/ pi 180)) 'single-float))

;; Ease of use function for Sprite Batch Begin
(defun sprite-batch-begin (sprite-batch
                           &optional (sort-mode +sprite-sort-mode-deferred+)
                           blend-state sampler-state depth-stencil-state
                           rasterizer-state effect transform-matrix)
  "Call the SpriteBatch.Begin() function with the specified arguments."
  ;; FIXME: Once DotCL allows calling dotnet:invoke with partial arguments
  ;; and default values for the rest, we can get rid of this.
  (dotnet:invoke sprite-batch "Begin" sort-mode blend-state sampler-state 
                                      depth-stencil-state rasterizer-state
                                      effect transform-matrix))