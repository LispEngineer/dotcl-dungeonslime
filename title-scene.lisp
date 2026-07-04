;;; title-scene.lisp
;;;
;;; Title screen displaying logo, title, and pulsing prompt.
;;; Handles transition to gameplay scene when Enter/Space/GamePad A/Start is pressed.

(in-package :dungeon-slime)

(format *error-output* "[title-scene.lisp] Loading in package ~S~%" *package*)

(defclass title-scene (scene)
  ((title-font
    :accessor title-font
    :initform nil
    :documentation "SpriteFont used to render the title text (5x size).")
   (prompt-font
    :accessor prompt-font
    :initform nil
    :documentation "SpriteFont used to render the prompt text (1x size).")
   (title-lines
    :accessor title-lines
    :initform '("DUNGEON" "SLIME")
    :documentation "List of strings for each line of the game title.")
   (prompt-text
    :accessor prompt-text
    :initform "Press Enter To Start"
    :documentation "The prompt string instructing the user how to start.")))

(defmethod load-content ((scene title-scene))
  "Loads the title screen sprite fonts using the scene's private ContentManager."
  (format *error-output* "[title-scene:load-content] Loading title screen assets...~%")
  (setf (title-font scene) (load-font (scene-content scene) :name "fonts/04B_30_5x"))
  (setf (prompt-font scene) (load-font (scene-content scene) :name "fonts/04B_30")))

(defmethod update ((scene title-scene) gt)
  "Checks keyboard and gamepad inputs to trigger transition to the gameplay scene.
   Exits the game if the Escape key is pressed."
  (let* ((game (scene-game scene))
         (kb (im-keyboard (input-manager game)))
         (gp-pad (aref (im-game-pads (input-manager game)) 0)))
    ;; Check for Exit on Escape key
    (when (was-key-just-pressed kb key:+escape+)
      (format *error-output* "[title-scene:update] Escape pressed; exiting game...~%")
      (dotnet:invoke (monogame game) "Exit")
      (return-from update))
      
    ;; Transition to gameplay scene on keyboard Enter or Space, or GamePad Start or A
    (when (or (was-key-just-pressed kb key:+enter+)
              (was-key-just-pressed kb key:+space+)
              (was-button-just-pressed gp-pad button:+start+)
              (was-button-just-pressed gp-pad button:+a+))
      (format *error-output* "[title-scene:update] Transitioning to gameplay scene...~%")
      (change-scene game (make-instance 'gameplay-scene :game game)))))

(defmethod draw ((scene title-scene) gt)
  "Clears screen to dark blue and draws centered title text (split in two lines) and smaller pulsing prompt."
  (let* ((game (scene-game scene))
         (gd (graphics-device game))
         (sb (sprite-batch game))
         (title-font (title-font scene))
         (prompt-font (prompt-font scene))
         (lines (title-lines scene))
         (prompt (prompt-text scene)))
    ;; Clear graphics device to a dark blue color (RGB: 24, 33, 58)
    (dotnet:invoke gd "Clear" (color:new 24 33 58))

    ;; Render assets
    (sprite-batch:begin sb :sampler-state sampler-state:+point-clamp+)

    ;; 1. Draw centered title text (two lines, white, 5x font)
    (when (and title-font lines)
      (let ((win-w (getf (window-info game) :width 800))
            (line-spacing (float (dotnet:invoke title-font "LineSpacing") 0.0f0))
            (start-y 70.0f0))
        (loop for line in lines
              for idx from 0
              do (let* ((size (measure-string title-font line))
                        (pos-x (float (/ (- win-w (x size)) 2) 0.0f0))
                        (pos-y (+ start-y (* idx line-spacing))))
                   (draw-string sb title-font line (v2:new pos-x pos-y) color:+white+)))))

    ;; 2. Draw centered pulsing prompt text (smaller 1x font)
    (when (and prompt-font prompt)
      (let* ((prompt-size (measure-string prompt-font prompt))
             (win-w (getf (window-info game) :width 800))
             (pos-x (float (/ (- win-w (x prompt-size)) 2) 0.0f0))
             (pos-y 380.0f0)
             ;; Pulse text color alpha using sine function over time
             (secs (dotnet:invoke (dotnet:invoke gt "TotalGameTime") "TotalSeconds"))
             (alpha-factor (float (+ 0.6f0 (* 0.4f0 (sin (* secs 4.0e0)))) 0.0f0))
             (alpha-val (round (* 255 alpha-factor)))
             (text-color (color:new 255 255 255 alpha-val)))
        (draw-string sb prompt-font prompt (v2:new pos-x pos-y) text-color)))

    (dotnet:invoke sb "End")))
