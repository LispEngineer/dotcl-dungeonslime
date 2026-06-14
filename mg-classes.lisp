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
  (dotnet:invoke gt "TotalGameTime"))

(defun game-time-elapsed (gt)
  "Gets ElapsedGameTime on this Microsoft.Xna.Framework.GameTime object,
   which is the time since the last call to Update().
   Returns a C# TimeSpan."
  (dotnet:invoke gt "ElapsedGameTime"))

(defun game-time-slow? (gt)
  "Gets IsRunningSlowly on this Microsoft.Xna.Framework.GameTime."
  (dotnet:invoke gt "IsRunningSlowly"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vector functions

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rectangle functions

(defun rect (x y w h)
  "Returns a new C# Rectangle with the specified values. The number types in Vector2
   are float."
  (dotnet:new "Microsoft.Xna.Framework.Rectangle" x y w h))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generic functions

(defun print-gf-methods (gf-name)
  "Prints information about a DotCL Generic Function, including docstrings."

  (when (not (fboundp gf-name))
    (format *error-output* "~&Generic Function ~S not yet defined.~%" gf-name)
    (return-from print-gf-methods))

  (let* ((gf (symbol-function gf-name))
         ;; Retrieve the documentation string of the generic function if it exists.
         (gf-doc (documentation gf 'function))
         (methods (dotcl-mop:generic-function-methods gf)))
    (format *error-output* "~&Generic Function ~S has ~D method(s):~%" gf-name (length methods))
    (when gf-doc
      (format *error-output* "  Docstring: ~S~%" gf-doc))
    (dolist (m methods)
      (let ((qualifiers (dotcl-mop:method-qualifiers m))
            (specializers (mapcar (lambda (spec)
                                    (if (typep spec 'class)
                                        (class-name spec)
                                        spec))
                                  (dotcl-mop:method-specializers m)))
            ;; Retrieve the documentation string of the method object.
            (m-doc (documentation m t)))
        (format *error-output* "  Method qualifiers: ~A, Specializers: ~A~%" 
                qualifiers specializers)
        (when m-doc
          (format *error-output* "    Doc: ~S~%" m-doc))))))

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

(print-gf-methods 'width)
(defgeneric width (obj)
  (:documentation "Gets the width of the specified object"))

(print-gf-methods 'width)
(defmethod width ((obj t))
  "Get the width of a C# object like a Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "Width")
    (error "Unknown object for width: ~S" obj)))
(print-gf-methods 'width)

(defgeneric height (obj)
  (:documentation "Gets the height of the specified object"))

(defmethod height ((obj t))
  "Get the height of a C# object like a Rectangle"
  (if (dotnet-p obj)
    (dotnet:invoke obj "Height")
    (error "Unknown object for height: ~S" obj)))

;; Check for bug that overwrites a single method specialized on T

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper Functions

(defun °2R (degrees)
  "Convert degrees to radians, returning a single-float (used commonly in MonoGame)"
  (coerce (* degrees (/ pi 180)) 'single-float))

;; Ease of use function for Sprite Batch Begin
#|
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
|#

(format *error-output* "[mg-classes.lisp] dungeon-slime::+sprite-sort-mode-deferred+ = ~A~%"
        dungeon-slime::+sprite-sort-mode-deferred+)

;; Ease of use function for Sprite Batch Begin using keyword arguments
(defun sprite-batch-begin (sprite-batch
                            &key (sort-mode dungeon-slime::+sprite-sort-mode-deferred+)
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