;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Basic MonoGame classes turned Lispy.
;;; Many of these things would be more efficient if they were converted
;;; into macros, but that's an optimization for another day.

(in-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[mg-classes.lisp] Loading in package ~S~%" *package*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generic functions

;; If we figure out C# class dispatched multimethods, just make "x" and "y".
;; They may be the same anyway, if the accessors on the class are the same!

(defgeneric x (obj)
  (:documentation "Gets the X component of the specified object"))

(defmethod x ((obj t))
  "Get X component of a C# Type with an X field, e.g. Vector2, Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "X")
    (error "Unknown object for X: ~S" obj)))

(defgeneric y (obj)
  (:documentation "Gets the Y component of the specified object"))

(defmethod y ((obj t))
  "Get Y component of a C# Type with an Y field, e.g. Vector2, Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "Y")
    (error "Unknown object for X: ~S" obj)))

; (print-gf-methods 'width)
(defgeneric width (obj)
  (:documentation "Gets the width of the specified object"))

; (print-gf-methods 'width)
(defmethod width ((obj t))
  "Get the width of a C# object like a Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "Width")
    (error "Unknown object for width: ~S" obj)))
; (print-gf-methods 'width)

(defgeneric height (obj)
  (:documentation "Gets the height of the specified object"))

(defmethod height ((obj t))
  "Get the height of a C# object like a Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "Height")
    (error "Unknown object for height: ~S" obj)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper Functions

(defun °2R (degrees)
  "Convert degrees to radians, returning a single-float (used commonly in MonoGame)"
  (coerce (* degrees (/ pi 180)) 'single-float))

;; Ease of use function for Sprite Batch Begin using keyword arguments
;; FIXME: Use the cspackage version once that is available
(defun sprite-batch-begin (sprite-batch
                            &key (sort-mode microsoft-xna-framework-graphics-sprite-sort-mode:+deferred+)
                            (blend-state nil)
                            (sampler-state nil)
                            (depth-stencil-state nil)
                            (rasterizer-state nil)
                            (effect nil)
                            (transform-matrix nil))
  "Call the SpriteBatch.Begin() function with the specified arguments."
  (dotnet:invoke sprite-batch "Begin" sort-mode blend-state sampler-state 
                                      depth-stencil-state rasterizer-state
                                      effect transform-matrix))
