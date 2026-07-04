;;; title-scene.lisp
;;;
;;; Title screen displaying logo, title, and pulsing prompt.
;;; Handles transition to gameplay scene when Enter/Space/GamePad A/Start is pressed.

(in-package :dungeon-slime)

(format *error-output* "[title-scene.lisp] Loading in package ~S~%" *package*)

(defclass title-scene (scene)
  ((logo-texture
    :accessor logo-texture
    :initform nil
    :documentation "The Texture2D logo displayed on the title screen.")
   (title-font
    :accessor title-font
    :initform nil
    :documentation "SpriteFont used to render the title and prompt text.")
   (title-text
    :accessor title-text
    :initform "DUNGEON SLIME"
    :documentation "The game title string.")
   (prompt-text
    :accessor prompt-text
    :initform "PRESS ENTER TO PLAY"
    :documentation "The prompt string instructing the user how to start.")))

(defmethod load-content ((scene title-scene))
  "Loads the title logo texture and font using the scene's private ContentManager."
  (format *error-output* "[title-scene:load-content] Loading title screen assets...~%")
  (setf (logo-texture scene)
        (dotnet:invoke-generic (scene-content scene) "Load"
                               '("Microsoft.Xna.Framework.Graphics.Texture2D")
                               "images/logo"))
  (setf (title-font scene) (load-font (scene-content scene))))

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
  "Clears screen to dark slate gray and draws centered title logo, title text, and pulsing prompt."
  (let* ((game (scene-game scene))
         (gd (graphics-device game))
         (sb (sprite-batch game))
         (logo (logo-texture scene))
         (font (title-font scene))
         (title (title-text scene))
         (prompt (prompt-text scene)))
    ;; Clear graphics device
    (dotnet:invoke gd "Clear" color:+dark-slate-gray+)

    ;; Render assets
    (sprite-batch:begin sb :sampler-state sampler-state:+point-clamp+)

    ;; 1. Draw centered title logo
    (when logo
      (let* ((logo-w (dotnet:invoke logo "Width"))
             (logo-h (dotnet:invoke logo "Height"))
             (win-w (getf (window-info game) :width 800))
             ;; Center logo horizontally, offset slightly from top
             (pos-x (float (/ (- win-w logo-w) 2) 0.0f0))
             (pos-y 100.0f0))
        (dotnet:invoke sb "Draw" logo (v2:new pos-x pos-y) color:+white+)))

    ;; 2. Draw centered title text
    (when (and font title)
      (let* ((title-size (measure-string font title))
             (win-w (getf (window-info game) :width 800))
             ;; Center title text horizontally
             (pos-x (float (/ (- win-w (x title-size)) 2) 0.0f0))
             (pos-y 320.0f0))
        (draw-string sb font title (v2:new pos-x pos-y) color:+yellow+)))

    ;; 3. Draw centered pulsing prompt text
    (when (and font prompt)
      (let* ((prompt-size (measure-string font prompt))
             (win-w (getf (window-info game) :width 800))
             (pos-x (float (/ (- win-w (x prompt-size)) 2) 0.0f0))
             (pos-y 450.0f0)
             ;; Pulse text color alpha using sine function over time
             (secs (dotnet:invoke (dotnet:invoke gt "TotalGameTime") "TotalSeconds"))
             (alpha-factor (float (+ 0.6f0 (* 0.4f0 (sin (* secs 4.0e0)))) 0.0f0))
             (alpha-val (round (* 255 alpha-factor)))
             (text-color (color:new 255 255 255 alpha-val)))
        (draw-string sb font prompt (v2:new pos-x pos-y) text-color)))

    (dotnet:invoke sb "End")))
