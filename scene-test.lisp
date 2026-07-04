;;; scene-test.lisp
;;;
;;; Unit tests for the scene management lifecycle, transition mechanics,
;;; and resource disposal protocols.

(in-package :dungeon-slime-tests)

(format *error-output* "[scene-test.lisp] Loading in package ~S~%" *package*)

;; Mock game class for testing scene transitions without MonoGame graphics
(defclass mock-game ()
  ((active-scene
    :accessor active-scene
    :initform nil)
   (next-scene
    :accessor next-scene
    :initform nil)))

;; Mock scene class to track lifecycle calls
(defclass mock-scene (dungeon-slime::scene)
  ((initialized-p
    :accessor initialized-p
    :initform nil)
   (disposed-flag
    :accessor disposed-flag
    :initform nil)))

(defmethod initialize ((scene mock-scene))
  "Simulates scene initialization."
  (setf (initialized-p scene) t)
  (call-next-method))

(defmethod dispose ((scene mock-scene))
  "Simulates scene disposal."
  (setf (disposed-flag scene) t)
  (call-next-method))

(defun run-scene-tests ()
  "Runs unit tests for the scene class and transition logic."
  (format *error-output* "[scene-test.lisp] Running scene tests...~%")

  (let* ((game (make-instance 'mock-game))
         (scene1 (make-instance 'mock-scene :game game))
         (scene2 (make-instance 'mock-scene :game game)))

    ;; 1. Verify initial states
    (assert (null (active-scene game)))
    (assert (null (next-scene game)))
    (assert (null (dungeon-slime::scene-content scene1)))
    (assert (eq (dungeon-slime::scene-game scene1) game))
    (assert (not (initialized-p scene1)))
    (assert (not (disposed-flag scene1)))
    (format *error-output* "  [PASS] Initial state of mock scenes and game is correct~%")

    ;; 2. Simulate transitioning to scene1
    (setf (next-scene game) scene1)
    (let ((next (next-scene game)))
      (let ((active (active-scene game)))
        (when active
          (dispose active)))
      (setf (active-scene game) next)
      (setf (next-scene game) nil)
      (when next
        (initialize next)))

    (assert (eq (active-scene game) scene1))
    (assert (initialized-p scene1))
    (assert (not (disposed-flag scene1)))
    (assert (not (dungeon-slime::scene-disposed-p scene1)))
    (format *error-output* "  [PASS] Staged transition to first scene completes successfully~%")

    ;; 3. Simulate transitioning to scene2 (should dispose scene1)
    (setf (next-scene game) scene2)
    (let ((next (next-scene game)))
      (let ((active (active-scene game)))
        (when active
          (dispose active)))
      (setf (active-scene game) next)
      (setf (next-scene game) nil)
      (when next
        (initialize next)))

    (assert (eq (active-scene game) scene2))
    (assert (initialized-p scene2))
    (assert (disposed-flag scene1))
    (assert (dungeon-slime::scene-disposed-p scene1))
    (assert (not (disposed-flag scene2)))
    (format *error-output* "  [PASS] Staged transition to second scene disposes first scene~%")

    (format *error-output* "[scene-test.lisp] ...scene tests complete.~%")))
