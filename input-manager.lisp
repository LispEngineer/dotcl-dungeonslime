;;; Input management system for MonoGame/DotCL games.
;;;
;;; Implements the MonoGame tutorial Chapter 11 input management
;;; system in Common Lisp using CLOS:
;;;   https://docs.monogame.net/articles/tutorials/building_2d_games/11_input_management/
;;;
;;; Provides KeyboardInfo, MouseInfo, GamePadInfo, and InputManager
;;; classes that track previous/current input states to detect
;;; "just pressed" and "just released" transitions.
;;;
;;; FIXME: Rename all these is- (or was-) functions to ? functions

(in-package :dungeon-slime)

(format *error-output* "[input-manager.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper: compare a ButtonState to Pressed

(defun button-state-pressed-p (state-accessor)
  "Check if a ButtonState value equals Pressed."
  (dotnet:invoke state-accessor "Equals" bs:+pressed+))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MouseButton constants (keywords used as button identifiers)

(defconstant +mouse-left+ :left)
(defconstant +mouse-middle+ :middle)
(defconstant +mouse-right+ :right)
(defconstant +mouse-x-button1+ :x-button1)
(defconstant +mouse-x-button2+ :x-button2)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; KeyboardInfo: tracks keyboard state between frames

(defclass keyboard-info ()
  ((previous-state
    :accessor keyboard-previous-state
    :initform (kb-state:new)
    :documentation "The state of keyboard input during the previous update cycle.")
   (current-state
    :accessor keyboard-current-state
    :initform (kb:get-state)
    :documentation "The state of keyboard input during the current update cycle.")))

(defmethod keyboard-update ((info keyboard-info))
  "Shift current state to previous, then get a fresh current state."
  (setf (slot-value info 'previous-state) (slot-value info 'current-state))
  (setf (slot-value info 'current-state) (kb:get-state)))

(defmethod is-key-down ((info keyboard-info) key)
  "Returns true as long as the specified key is being held down."
  (kb-state:key-down? (keyboard-current-state info) key))

(defmethod is-key-up ((info keyboard-info) key)
  "Returns true as long as the specified key is not being pressed."
  (kb-state:key-up? (keyboard-current-state info) key))

(defmethod was-key-just-pressed ((info keyboard-info) key)
  "Returns true only on the frame when the specified key changes from up to down."
  (and (kb-state:key-down? (keyboard-current-state info) key)
       (kb-state:key-up? (keyboard-previous-state info) key)))

(defmethod was-key-just-released ((info keyboard-info) key)
  "Returns true only on the frame when the specified key changes from down to up."
  (and (kb-state:key-up? (keyboard-current-state info) key)
       (kb-state:key-down? (keyboard-previous-state info) key)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MouseInfo: tracks mouse state between frames

(defclass mouse-info ()
  ((previous-state
    :accessor mouse-previous-state
    :initform (ms:new)
    :documentation "The state of mouse input during the previous update cycle.")
   (current-state
    :accessor mouse-current-state
    :initform (mouse:get-state)
    :documentation "The state of mouse input during the current update cycle.")))

(defmethod mouse-update ((info mouse-info))
  "Shift current state to previous, then get a fresh current state."
  (setf (slot-value info 'previous-state) (slot-value info 'current-state))
  (setf (slot-value info 'current-state) (mouse:get-state)))

(defun mouse-button-from-state (state button)
  "Get the ButtonState for a given mouse button keyword from a MouseState."
  (case button
    (:left (ms:left-button state))
    (:middle (ms:middle-button state))
    (:right (ms:right-button state))
    (:x-button1 (ms:x-button1 state))
    (:x-button2 (ms:x-button2 state))
    (otherwise (error "Unknown mouse button: ~S" button))))

(defmethod is-button-down ((info mouse-info) button)
  "Returns true as long as the specified mouse button is being held down."
  (button-state-pressed-p (mouse-button-from-state (mouse-current-state info) button)))

(defmethod is-button-up ((info mouse-info) button)
  "Returns true as long as the specified mouse button is not being pressed."
  (not (is-button-down info button)))

(defmethod was-button-just-pressed ((info mouse-info) button)
  "Returns true only on the frame when the specified button changes from up to down."
  (and (button-state-pressed-p (mouse-button-from-state (mouse-current-state info) button))
       (not (button-state-pressed-p (mouse-button-from-state (mouse-previous-state info) button)))))

(defmethod was-button-just-released ((info mouse-info) button)
  "Returns true only on the frame when the specified button changes from down to up."
  (and (not (button-state-pressed-p (mouse-button-from-state (mouse-current-state info) button)))
       (button-state-pressed-p (mouse-button-from-state (mouse-previous-state info) button))))

(defmethod mouse-position ((info mouse-info))
  "Returns the current mouse cursor position as a Point."
  (ms:position (mouse-current-state info)))

(defmethod mouse-x ((info mouse-info))
  "Returns the current mouse cursor X coordinate."
  (ms:x (mouse-current-state info)))

(defmethod mouse-y ((info mouse-info))
  "Returns the current mouse cursor Y coordinate."
  (ms:y (mouse-current-state info)))

(defmethod mouse-position-delta ((info mouse-info))
  "Returns the difference in cursor position as a Vector2 (dx, dy)."
  (v2:new (- (ms:x (mouse-current-state info))
             (ms:x (mouse-previous-state info)))
          (- (ms:y (mouse-current-state info))
             (ms:y (mouse-previous-state info)))))

(defmethod mouse-x-delta ((info mouse-info))
  "Returns the horizontal cursor movement since the last frame."
  (- (ms:x (mouse-current-state info))
     (ms:x (mouse-previous-state info))))

(defmethod mouse-y-delta ((info mouse-info))
  "Returns the vertical cursor movement since the last frame."
  (- (ms:y (mouse-current-state info))
     (ms:y (mouse-previous-state info))))

(defmethod mouse-was-moved ((info mouse-info))
  "Returns true if the cursor moved between frames."
  (let ((delta (mouse-position-delta info)))
    (v2:not= delta (v2:+zero+))))

(defmethod mouse-scroll-wheel ((info mouse-info))
  "Returns the cumulative scroll wheel value since game start."
  (ms:scroll-wheel-value (mouse-current-state info)))

(defmethod mouse-scroll-wheel-delta ((info mouse-info))
  "Returns the scroll wheel change since the last frame."
  (- (ms:scroll-wheel-value (mouse-current-state info))
     (ms:scroll-wheel-value (mouse-previous-state info))))

(defmethod mouse-set-position ((info mouse-info) x y)
  "Sets the mouse cursor position and updates internal state."
  (mouse:set-position x y)
  (setf (slot-value info 'current-state)
    (ms:new x y
            (ms:scroll-wheel-value (slot-value info 'current-state))
            (ms:left-button (slot-value info 'current-state))
            (ms:middle-button (slot-value info 'current-state))
            (ms:right-button (slot-value info 'current-state))
            (ms:x-button1 (slot-value info 'current-state))
            (ms:x-button2 (slot-value info 'current-state)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GamePadInfo: tracks gamepad state between frames, supports timed vibration

(defclass game-pad-info ()
  ((player-index
    :accessor game-pad-player-index
    :initarg :player-index
    :documentation "The PlayerIndex this gamepad is associated with.")
   (previous-state
    :accessor game-pad-previous-state
    :initform (gp-state:new)
    :documentation "The state of gamepad input during the previous update cycle.")
   (current-state
    :accessor game-pad-current-state
    :documentation "The state of gamepad input during the current update cycle.")
   (vibration-time-remaining
    :accessor game-pad-vibration-time-remaining
    :initform (ts:from-milliseconds 0)
    :documentation "How much longer the gamepad should vibrate.")))

(defmethod initialize-instance :after ((info game-pad-info) &key)
  "Initialize the current state after the instance is created."
  (setf (slot-value info 'current-state)
    (gp:get-state (slot-value info 'player-index))))

(defmethod game-pad-is-connected ((info game-pad-info))
  "Returns true if the gamepad is currently connected."
  (gp-state:connected? (game-pad-current-state info)))

(defmethod game-pad-update ((info game-pad-info) gt)
  "Shift current state to previous, get fresh current state, and handle vibration timing."
  (setf (slot-value info 'previous-state) (slot-value info 'current-state))
  (setf (slot-value info 'current-state)
    (gp:get-state (slot-value info 'player-index)))
  ;; Handle timed vibration
  (when (ts:> (slot-value info 'vibration-time-remaining)
              (ts:from-milliseconds 0))
    (setf (slot-value info 'vibration-time-remaining)
      (ts:- (slot-value info 'vibration-time-remaining)
            (game-time:elapsed-game-time gt)))
    (when (ts:<= (slot-value info 'vibration-time-remaining)
                 (ts:from-milliseconds 0))
      (game-pad-stop-vibration info))))

(defmethod game-pad-left-thumb-stick ((info game-pad-info))
  "Returns the left thumbstick value as a Vector2."
  (gp-ts:left (gp-state:thumb-sticks (game-pad-current-state info))))

(defmethod game-pad-right-thumb-stick ((info game-pad-info))
  "Returns the right thumbstick value as a Vector2."
  (gp-ts:right (gp-state:thumb-sticks (game-pad-current-state info))))

(defmethod game-pad-left-trigger ((info game-pad-info))
  "Returns the left trigger value as a float."
  (gp-trig:left (gp-state:triggers (game-pad-current-state info))))

(defmethod game-pad-right-trigger ((info game-pad-info))
  "Returns the right trigger value as a float."
  (gp-trig:right (gp-state:triggers (game-pad-current-state info))))

(defmethod is-button-down ((info game-pad-info) button)
  "Returns true as long as the specified gamepad button is being held down."
  (gp-state:button-down? (game-pad-current-state info) button))

(defmethod is-button-up ((info game-pad-info) button)
  "Returns true as long as the specified gamepad button is not being pressed."
  (gp-state:button-up? (game-pad-current-state info) button))

(defmethod was-button-just-pressed ((info game-pad-info) button)
  "Returns true only on the frame when the specified button changes from up to down."
  (and (gp-state:button-down? (game-pad-current-state info) button)
       (gp-state:button-up? (game-pad-previous-state info) button)))

(defmethod was-button-just-released ((info game-pad-info) button)
  "Returns true only on the frame when the specified button changes from down to up."
  (and (gp-state:button-up? (game-pad-current-state info) button)
       (gp-state:button-down? (game-pad-previous-state info) button)))

(defmethod game-pad-set-vibration ((info game-pad-info) strength duration)
  "Starts vibration at the specified strength for the given TimeSpan duration."
  (setf (slot-value info 'vibration-time-remaining) duration)
  (gp:set-vibration (slot-value info 'player-index) strength strength))

(defmethod game-pad-stop-vibration ((info game-pad-info))
  "Immediately stops all vibration on this gamepad."
  (setf (slot-value info 'vibration-time-remaining) (ts:from-milliseconds 0))
  (gp:set-vibration (slot-value info 'player-index) 0.0f0 0.0f0))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; InputManager: aggregates all input devices

(defclass input-manager ()
  ((keyboard
    :accessor im-keyboard
    :initform (make-instance 'keyboard-info)
    :documentation "The KeyboardInfo instance.")
   (mouse
    :accessor im-mouse
    :initform (make-instance 'mouse-info)
    :documentation "The MouseInfo instance.")
   (game-pads
    :accessor im-game-pads
    :documentation "A vector of 4 GamePadInfo instances, one per PlayerIndex.")))

(defmethod initialize-instance :after ((im input-manager) &key)
  "Initialize the four gamepad slots."
  (setf (slot-value im 'game-pads)
    (vector
      (make-instance 'game-pad-info :player-index pi:+one+)
      (make-instance 'game-pad-info :player-index pi:+two+)
      (make-instance 'game-pad-info :player-index pi:+three+)
      (make-instance 'game-pad-info :player-index pi:+four+))))

(defmethod input-manager-update ((im input-manager) gt)
  "Update all input devices for the new frame."
  (keyboard-update (im-keyboard im))
  (mouse-update (im-mouse im))
  (loop for pad across (im-game-pads im)
        do (game-pad-update pad gt)))
