;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Basic MonoGame classes turned Lispy.
;;; Many of these things would be more efficient if they were converted
;;; into macros, but that's an optimization for another day.

(in-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[mg-classes.lisp] Loading in package ~S~%" *package*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GameTime functions

(defun game-time-total (gt)
  "Gets TotalGameTime on this Microsoft.Xna.Framework.GameTime object,
   which returns a C# TimeSpan."
  (game-time:total-game-time gt))

(defun game-time-elapsed (gt)
  "Gets ElapsedGameTime on this Microsoft.Xna.Framework.GameTime object,
   which is the time since the last call to Update().
   Returns a C# TimeSpan."
  (game-time:elapsed-game-time gt))

(defun game-time-slow? (gt)
  "Gets IsRunningSlowly on this Microsoft.Xna.Framework.GameTime."
  (game-time:is-running-slowly gt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vector functions

(defconstant +v2-0+ v2:+zero+
  "C#'s Vector2.Zero")

(defconstant +v2-1+ v2:+one+
  "C#'s Vector2.One")

(defconstant +v2-x1+ v2:+unit-x+
  "C#'s Vector2.UnitX")

(defconstant +v2-y1+ v2:+unit-y+
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

(defun v2-normalize (v)
  "Returns a normalized copy of a Vector2 (unit vector in the same direction).
   If the vector is zero-length, returns Vector2.Zero.
   Uses the generated microsoft-xna-framework-vector2 package for Length
   and dotnet:static for the division operation."
  (let ((len (microsoft-xna-framework-vector2:length v)))
    (if (= 0.0e0 len)
      +v2-0+
      (dotnet:static "Microsoft.Xna.Framework.Vector2" "op_Division" v len))))

;; TODO: Add all the other v2 operators
;; TODO: Make a multimethod if/when DotCL implements 
;;       C# type dispatching on multimethods

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rectangle functions

(defun rect (x y w h)
  "Returns a new C# Rectangle with the specified values. The number types in Vector2
   are float."
  (rect:new x y w h))

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

;; Tests of generic functions - no longer needed
#|
(format *error-output* "[mg-classes.lisp] Testing defining 3 methods called yyyy.~%")

(print-gf-methods 'yyyy)
(defgeneric yyyy (obj)
  (:documentation "Test what happens after each method is defined"))
(print-gf-methods 'yyyy)
(defmethod yyyy ((obj t))
  "Specialized on T"
  :T)
(print-gf-methods 'yyyy)
(defmethod yyyy ((obj string))
  "Specialized on string"
  :string)
(print-gf-methods 'yyyy)
(defmethod yyyy ((obj integer))
  "Specialized on integer"
  :integer)
(print-gf-methods 'yyyy)

(format *error-output* "[mg-classes.lisp] Undefining yyyy.~%")
;; DotCL keeps track of generic functions in an internal C# dictionary (_gfRegistry)
;; to manage CLOS dispatch and compilation. Even after calling fmakunbound, 
;; the generic function object remains registered.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (fmakunbound 'yyyy)
  (dotnet:static "DotCL.Runtime" "RemoveGfRegistryEntry" 'yyyy nil)) ; nil = not a setf function
|#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper Functions

(defun °2R (degrees)
  "Convert degrees to radians, returning a single-float (used commonly in MonoGame)"
  (coerce (* degrees (/ pi 180)) 'single-float))

;; Ease of use function for Sprite Batch Begin
#|
(defun sprite-batch-begin (sprite-batch
                           &optional (sort-mode microsoft-xna-framework-graphics-sprite-sort-mode:+deferred+)
                           blend-state sampler-state depth-stencil-state
                           rasterizer-state effect transform-matrix)
  "Call the SpriteBatch.Begin() function with the specified arguments."
  ;; FIXME: Once DotCL allows calling dotnet:invoke with partial arguments
  ;; and default values for the rest, we can get rid of this.
  (dotnet:invoke sprite-batch "Begin" sort-mode blend-state sampler-state 
                                      depth-stencil-state rasterizer-state
                                      effect transform-matrix))
|#

;; Ease of use function for Sprite Batch Begin using keyword arguments
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

(defun keyboard-state ()
  "Gets the keyboard state via Keyboard.GetState()"
  (dotnet:static "Microsoft.Xna.Framework.Input.Keyboard" "GetState"))

(defun key-down? (keyboard-state key-code)
  "Using keyboard-state, checks if key-code is pressed (down)."
  (dotnet:invoke keyboard-state "IsKeyDown" key-code))