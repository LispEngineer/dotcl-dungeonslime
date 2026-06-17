;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Monogame Dungeon Slime Tutorial - Chapter 8 - Sprite class
;;; See: https://docs.monogame.net/articles/tutorials/building_2d_games/08_the_sprite_class/index.html
;;;
;;; As a CLOS class.

(format *error-output* "[sprite.lisp] Loading beginning.~%" *package*)
(in-package :dungeon-slime)
(format *error-output* "[sprite.lisp] Loading in package ~S~%" *package*)
(require :dotnet-class)

;; Alternatively to use-package, we can just get the specific symbols we want.
(use-package :mg-classes)
;; (eval-when (:compile-toplevel :load-toplevel :execute)
;;   (shadowing-import '(mg-classes:x)))

;; Sprite implemented as a CLOS class
(defclass sprite ()
  ((region
    :accessor region
    :initarg :texture-region
    :documentation "The texture-region represented by this sprite. It can be provided
                    at make-instance time with :texture-region keyword argument.")
   (color
    :accessor color
    :documentation "The (C#) Color of this sprite; defaults to color:white")
   (rotation
    :accessor rotation
    :documentation "Rotation to apply (in radians); default 0.0e0")
   (scale
    :accessor scale
    :documentation "Scale to apply (Vector2 C# object); default +v2-1+")
   (origin
    :accessor origin
    :documentation "Origin to apply (Vector2 C# object); default +v2-0+.
                    The xy-coordinate origin point, relative to the top-left corner.")
   (effects
    :accessor effects
    :documentation "The sprite effects to apply when rendering this sprite,
                    as a C# value from SpriteEffects enumeration.
                    Default sprite-effects:+none+")
   (layer-depth
    :accessor layer-depth
    :documentation "The layer depth to apply when rendering this sprite,
                    as a single float. Default 0.0e0.")))

(defmethod initialize-instance :after ((spr sprite) &key)
  ;; This code runs immediately after a sprite object is created
  ;; and its initial keyword arguments are processed.
  "Sets the default value of any unbound slot. Does not touch the region."
  (format *error-output* "[sprite:initialize-instance:after] Initializing sprite...~%")
  (unless (slot-boundp spr 'color)
    (setf (color spr) color:white))
  (unless (slot-boundp spr 'rotation)
    (setf (rotation spr) 0.0e0))
  (unless (slot-boundp spr 'scale)
    (setf (scale spr) +v2-1+))
  (unless (slot-boundp spr 'origin)
    (setf (origin spr) +v2-0+))
  (unless (slot-boundp spr 'effects)
    (setf (effects spr) sprite-effects:+none+))
  (unless (slot-boundp spr 'layer-depth)
    (setf (layer-depth spr) 0.0e0))
  (format *error-output* "[sprite:initialize-instance:after] Sprite initialized.~%"))

(defmethod width ((obj sprite))
  "Gets the width, in pixels, of this sprite.
   Width is calculated by multiplying the width of the source texture region 
   by the x-axis scale factor."
  (* (width (region obj)) (x (scale obj))))

(defmethod height ((obj sprite))
  "Gets the height, in pixels, of this sprite.
   Height is calculated by multiplying the height of the source 
   texture region by the y-axis scale factor."
  (* (height (region obj)) (y (scale obj))))

(defun sprite-center-origin (spr)
  "Sets the origin of this sprite to the center.
   Silently do nothing when the region is unbound."
  (when (slot-boundp spr 'region spr)
    (setf (origin spr)
          (v2* (vector2 (height (region spr)) (width (region spr))) 0.5e0))))

(defun sprite-draw (sprite sprite-batch position)
  "Submit this sprite for drawing in the specified batch at the specified position."
  ; (format *error-output* "[sprite-draw] sprite = ~A~%" sprite)
  ; (format *error-output* "[sprite-draw] rotation = ~A~%" (rotation sprite))
  (when (slot-boundp sprite 'region)
    (tr-draw (region sprite) sprite-batch position
             (color sprite) (rotation sprite) (origin sprite) (scale sprite)
             (effects sprite) (layer-depth sprite))))

(format *error-output* "[sprite.lisp] Loading complete.~%" *package*)
