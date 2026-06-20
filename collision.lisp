;;; Circle class for collision detection.
;;; Implements the Circle struct from the MonoGame Chapter 12 tutorial
;;; as a CLOS class, which is more idiomatic Common Lisp.

(in-package :dungeon-slime)

(format *error-output* "[collision.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Circle class

(defclass circle ()
  ((x
    :initarg :x
    :accessor circle-x
    :initform 0.0e0
    :documentation "The x-coordinate of the center of this circle.")
   (y
    :initarg :y
    :accessor circle-y
    :initform 0.0e0
    :documentation "The y-coordinate of the center of this circle.")
   (radius
    :initarg :radius
    :accessor circle-radius
    :initform 0.0e0
    :documentation "The radius of this circle."))
  (:documentation "Represents a circle by its center (x, y) and radius."))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Circle boundary computations

(defun circle-left (c)
  "The x-coordinate of the leftmost point on this circle."
  (- (circle-x c) (circle-radius c)))

(defun circle-right (c)
  "The x-coordinate of the rightmost point on this circle."
  (+ (circle-x c) (circle-radius c)))

(defun circle-top (c)
  "The y-coordinate of the highest point on this circle."
  (- (circle-y c) (circle-radius c)))

(defun circle-bottom (c)
  "The y-coordinate of the lowest point on this circle."
  (+ (circle-y c) (circle-radius c)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Circle intersection

(defun circle-intersects (c1 c2)
  "Returns true if two circles overlap.
   Uses the squared-distance comparison for efficiency
   (avoids the sqrt in Euclidean distance)."
  (let* ((radii-squared (expt (+ (circle-radius c1) (circle-radius c2)) 2))
         (dist-squared (v2-distance-squared
                         (vector2 (float (circle-x c1) 0.0e0)
                                  (float (circle-y c1) 0.0e0))
                         (vector2 (float (circle-x c2) 0.0e0)
                                  (float (circle-y c2) 0.0e0)))))
    (< dist-squared radii-squared)))
