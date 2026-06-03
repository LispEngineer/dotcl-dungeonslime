;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Monogame Dungeon Slime Tutorial - Chapter 9 - Animation
;;; See: https://docs.monogame.net/articles/tutorials/building_2d_games/09_the_animatedsprite_class/index.html
;;;
;;; As a CLOS class.

(format *error-output* "[animation.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)
(format *error-output* "[animation.lisp] Loading in package ~S~%" *package*)


;; Sprite implemented as a CLOS class
(defclass animation ()
  ((frames
    :accessor frames
    :initarg :frames
    :initform '()
    :documentation "The texture regions that make up the frames of this 
                    animation. The order of the regions within the collection
                    are the order that the frames should be displayed in.
                    This is a CL list of texture-regions.")
   (delay
    :accessor delay
    :initarg :delay
    :initform (csharp:timespan-from-milliseconds 100)
    :documentation "The amount of time to delay between each frame before moving
                    to the next frame for this animation. This is a C# System.TimeSpan.")))

