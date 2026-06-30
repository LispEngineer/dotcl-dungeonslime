;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Monogame Dungeon Slime Tutorial - Chapter 9 - Animation
;;; See: https://docs.monogame.net/articles/tutorials/building_2d_games/09_the_animatedsprite_class/index.html
;;;
;;; As a CLOS class.

(format *error-output* "[animation.lisp] Loading beginning.~%" *package*)
(in-package :dungeon-slime)
(format *error-output* "[animation.lisp] Loading in package ~S~%" *package*)


;; Animation implemented as a CLOS class
(defclass animation ()
  ((frames
    :accessor frames
    :initarg :frames
    :initform '()
    ;; TODO: Possible optimization: Use an array so nth is faster.
    :documentation "The texture regions that make up the frames of this 
                    animation. The order of the regions within the collection
                    are the order that the frames should be displayed in.
                    This is a CL list of texture-regions.")
   (delay
    :accessor delay
    :initarg :delay
    :initform (ts:from-milliseconds 100)
    :documentation "The amount of time to delay between each frame before moving
                    to the next frame for this animation. This is a C# System.TimeSpan.")))


;; Child of sprite, animated-sprite needs to be updated to show a different
;; thing each time, but otherwise has the same Draw()
(defclass animated-sprite (sprite)
  ((current-frame
    :accessor current-frame
    :initform 0
    :documentation "Which frame we're currently displaying; integer from 0
                    to the number of frames.")
   (next-frame-time
    :accessor next-frame-time
    :initform nil ;; Meaning, calculate this at the first update
    :documentation "When the next frame should be displayed; calculated from
                    the delay when the frame last changed. This is a C# TimeSpan
                    object.")
   (animation
    :accessor animation
    :initarg :animation
    :initform nil
    :documentation "When setting a new animation, we initiatlize the sprite's
                    region to the first frame.")))

(defmethod initialize-instance :after ((as animated-sprite) &key)
  "Initializes the base class sprite's region to the first frame of the animation."
  (when (slot-boundp as 'animation)
    (setf (region as) (nth 0 (frames (animation as))))))

(defmethod (setf animation) (val (as animated-sprite))
  "We want to do a few things when we have a new animation:
   1. Set the current frame to the first sprite, i.e., 0.
   2. Set the sprite's region to the first frame of the animation.
   3. Set the next-frame-time to nil so it will calcualte the
      next frame time at the next update."
  (setf (slot-value as 'animation) val)
  (setf (current-frame as) 0)
  (setf (region as) (nth 0 (frames val)))
  (setf (next-frame-time as) nil))

(defmethod update ((as animated-sprite) gt) ;; GameTime
  "Several things:
   1. If the next-frame-time is nil, we set the next frame time to
      the current game time plus our animation delay, and return.
   2. If the current game time is greater than the next-frame-time,
      then we update the current frame to the next frame, update the
      sprite's region to the new current frame, and set the next-frame-time
      to the current game time plus our animation delay.
      The next frame could be the first frame if we're on the last frame."
  (when (null (animation as))
    (return-from update nil))

  (let* ((anim (animation as))
         (delay (delay anim))
         (nft (next-frame-time as))
         (cf (current-frame as)))

    ;; We have never updated before
    (when (null nft)
      ;; Set our next frame time to now + the delay
      (setf (next-frame-time as)
        (ts:+ (game-time:total-game-time gt) delay))
      (return-from update nil))

    ;; Do we need to update now?
    (when (ts:>= (game-time:total-game-time gt) nft)
      ;; Update our current frame
      (setf (current-frame as)
        (if (>= cf (1- (length (frames anim))))
          0
          (1+ cf)))
      (setf (region as)
        (nth (current-frame as) (frames anim)))
      ;; And figure out our next update
      (setf (next-frame-time as)
        (ts:+ (game-time:total-game-time gt) delay)))))
