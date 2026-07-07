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
    :documentation "The prompt string instructing the user how to start.")
   ;; Added for Chapter 18: Texture Sampling and Tiling Backgrounds.
   (background-texture
    :accessor background-texture
    :initform nil
    :documentation "The loaded Texture2D representing the scrolling background pattern.")
   (background-offset-x
    :accessor background-offset-x
    :initarg :background-offset-x
    :initform 0.0f0
    :documentation "Horizontal offset for scrolling the background pattern.")
   (background-offset-y
    :accessor background-offset-y
    :initarg :background-offset-y
    :initform 0.0f0
    :documentation "Vertical offset for scrolling the background pattern.")
   ;; Chapter 20: UI with Gum
   (ui-sound-effect
    :accessor ui-sound-effect
    :initarg :ui-sound-effect
    :initform nil
    :documentation "Type: (MonoGame) SoundEffect")
   (title-screen-buttons-panel
    :accessor title-screen-buttons-panel
    :initarg :title-screen-buttons-panel
    :initform nil
    :documentation "Type: Gum.Forms.Controls.Panel")
   (options-panel
    :accessor options-panel
    :initarg :options-panel
    :initform nil
    :documentation "Type: Gum.Forms.Controls.Panel")
   (options-button
    :accessor options-button
    :initarg :options-button
    :initform nil
    :documentation "Type: Gum.Forms.Controls.Button")
   (options-back-button
    :accessor options-back-button
    :initarg :options-back-button
    :initform nil
    :documentation "Type: Gum.Forms.Controls.Button")))  ; title-scene

(defmethod initialize ((scene title-scene))
  "Set up everything we need for this scene.
   Note that (due to AI implementing chapter 17) this is not very similar
   to the initialize in the tutorial:
   https://docs.monogame.net/articles/tutorials/building_2d_games/17_scenes/index.html#title-scene-methods
   https://docs.monogame.net/articles/tutorials/building_2d_games/20_implementing_ui_with_gum/index.html?tabs=vscode#integrating-with-the-game-loop"
   ;; Initialize the base scene - which will call load-content
   (call-next-method scene)
   ;; Initialize the UI
   (initialize-ui scene))

(defmethod load-content ((scene title-scene))
  "Loads the title screen sprite fonts and background texture using the scene's private ContentManager."
  (format *error-output* "[title-scene:load-content] Loading title screen assets...~%")
  (setf (title-font scene) (load-font (scene-content scene) :name "fonts/04B_30_5x"))
  (setf (prompt-font scene) (load-font (scene-content scene) :name "fonts/04B_30"))
  ;; Load repeating background pattern texture using content manager wrapper
  (setf (background-texture scene)
        (cm:load "Microsoft.Xna.Framework.Graphics.Texture2D"
                 (scene-content scene)
                 "images/background-pattern"))
  ;; Load sound effect for UI interactions
  (setf (ui-sound-effect scene)
      (cm:load sound-effect:<type-str> ; FIXME: can we use <type> here?
                (scene-content scene)
                "audio/ui"))) ; FIXME: Magic string
  
(defmethod update ((scene title-scene) gt)
  "Checks keyboard and gamepad inputs to trigger transition to the gameplay scene.
   Exits the game if the Escape key is pressed. Updates background scrolling offsets."
  (let* ((game (scene-game scene))
         (kb (im-keyboard (input-manager game)))
         (gp-pad (aref (im-game-pads (input-manager game)) 0))
         ;; Calculate delta time using TimeSpan wrapper
         (dt (coerce (ts:total-seconds (game-time:elapsed-game-time gt)) 'single-float)))
    ;; Check for Exit on Escape key using Game wrapper
    (when (was-key-just-pressed kb key:+escape+)
      (format *error-output* "[title-scene:update] Escape pressed; exiting game...~%")
      (game:exit (monogame game))
      (return-from update))

    ;; Transition to gameplay scene on keyboard Enter or Space, or GamePad Start or A
    (when (or (was-key-just-pressed kb key:+enter+)
              (was-key-just-pressed kb key:+space+)
              (was-button-just-pressed gp-pad button:+start+)
              (was-button-just-pressed gp-pad button:+a+))
      (format *error-output* "[title-scene:update] Transitioning to gameplay scene...~%")
      (change-scene game (make-instance 'gameplay-scene :game game))
      (return-from update))

    ;; Update scrolling offset diagonally at 30 pixels per second
    (when (background-texture scene)
      (let* ((tex (background-texture scene))
             (w (float (width tex) 0.0f0))
             (h (float (height tex) 0.0f0))
             (scroll-speed 30.0f0) ;; FIXME: Make a +constant+
             (offset-delta (* scroll-speed dt)))
        ;; Use mod to wrap the offsets seamlessly within texture dimensions
        (setf (background-offset-x scene) (mod (- (background-offset-x scene) offset-delta) w))
        (setf (background-offset-y scene) (mod (- (background-offset-y scene) offset-delta) h))))

    ;; Update the Gum UI
    (cs:update gs:default gt)))

(defmethod draw ((scene title-scene) gt)
  "Clears screen to dark blue, draws scrolling tiled background pattern (if loaded),
   and draws centered title text with a pulsing prompt using wrapper functions.
   Dynamically queries viewport size to support full-resolution tiling and layout."
  (let* ((game (scene-game scene))
         (gd (graphics-device game))
         (sb (sprite-batch game))
         (title-font (title-font scene))
         (prompt-font (prompt-font scene))
         (lines (title-lines scene))
         (prompt (prompt-text scene))
         (bg-tex (background-texture scene))
         ;; Retrieve actual viewport dimensions dynamically to support any window resolution
         (vp (gd:viewport gd))
         (win-w (width vp))
         (win-h (height vp)))
    ;; Clear graphics device to a dark blue color (RGB: 24, 33, 58) using GraphicsDevice wrapper
    (gd:clear gd (color:new 24 33 58))

    ;; 1. Draw tiled background pattern using PointWrap sampler state
    (when bg-tex
      (sprite-batch:begin sb :sampler-state sampler-state:+point-wrap+)
      (let* ((dest-rect (rect:new 0 0 win-w win-h))
             ;; Round offsets to nearest integer pixel to avoid scaling artifacts
             (ox (round (background-offset-x scene)))
             (oy (round (background-offset-y scene)))
             (src-rect (rect:new ox oy win-w win-h)))
        ;; Use SpriteBatch wrapper to draw with destination and source rectangles
        (sprite-batch:draw sb bg-tex dest-rect src-rect color:+white+))
      (sprite-batch:end sb))

    ;; 2. Draw text and UI elements using PointClamp sampler state
    (sprite-batch:begin sb :sampler-state sampler-state:+point-clamp+)

    ;; Draw centered title text (two lines, white, 5x font)
    (when (and title-font lines)
      (let ((line-spacing (float (sprite-font:line-spacing title-font) 0.0f0))
            (start-y (* win-h 0.15f0)))
        (loop for line in lines
              for idx from 0
              do (let* ((size (measure-string title-font line))
                        (pos-x (float (/ (- win-w (x size)) 2) 0.0f0))
                        (pos-y (+ start-y (* idx line-spacing))))
                   (draw-string sb title-font line (v2:new pos-x pos-y) color:+white+)))))

    ;; Draw centered pulsing prompt text (smaller 1x font)
    (when (and prompt-font prompt)
      (let* ((prompt-size (measure-string prompt-font prompt))
             (pos-x (float (/ (- win-w (x prompt-size)) 2) 0.0f0))
             (pos-y (* win-h 0.8f0))
             ;; Pulse text color alpha using sine function over total game time (using time wrappers)
             (secs (ts:total-seconds (game-time:total-game-time gt)))
             (alpha-factor (float (+ 0.6f0 (* 0.4f0 (sin (* secs 4.0e0)))) 0.0f0))
             (alpha-val (round (* 255 alpha-factor)))
             (text-color (color:new 255 255 255 alpha-val)))
        (draw-string sb prompt-font prompt (v2:new pos-x pos-y) text-color)))

    (sprite-batch:end sb))

  ;; Draw the GUI, if necessary
  (draw-gui scene))

(defmethod draw-gui ((scene title-scene))
  "Draws the GUI scene"
  (cs:draw gs:default))

(defun handle-start-clicked (sender args)
  "A C# Event Handler invoked when the Start button is clicked.
   Expected types:
   sender: C# System.Object
   args: C# System.EventArgs"
  ;; TODO: CODE ME
  ; // A UI interaction occurred, play the sound effect
  ; Core.Audio.PlaySoundEffect(_uiSoundEffect);

  ; // Change to the game scene to start the game.
  ; Core.ChangeScene(new GameScene());
  ;; TODO: CODE ME
  (format t "Start Clicked: sender: ~A, args: ~A~%" sender args))

(defun handle-options-clicked (sender args)
  "A C# Event Handler invoked when the Start button is clicked.
   Expected types:
   sender: C# System.Object
   args: C# System.EventArgs"
  ;; TODO: CODE ME
  ; // A UI interaction occurred, play the sound effect
  ; Core.Audio.PlaySoundEffect(_uiSoundEffect);
  
  ; // Set the title panel to be invisible.
  ; _titleScreenButtonsPanel.IsVisible = false;

  ; // Set the options panel to be visible.
  ; _optionsPanel.IsVisible = true;

  ; // Give the back button on the options panel focus.
  ; _optionsBackButton.IsFocused = true;
  (format t "Options Clicked~%"))

(defmethod create-title-panel ((scene title-scene))
  "Builds the main menu panel with start and options buttons."
  
  ;; Create a container to hold the buttons
  ;; A panel is also a gum-forms-controls-framework-element, nickname :gfe
  (setf (title-screen-buttons-panel scene) (panel:new))
  (cs:dock (title-screen-buttons-panel scene) dock:+fill+)
  (cs:add-to-root (title-screen-buttons-panel scene))
  (setf (cs:visible? (title-screen-buttons-panel scene)) t)

  (let* ((button (uibutton:new))
         (start-button button))
    (cs:anchor button anchor:+bottom-left+)
    ;; A button is also a gum-forms-controls-framework-element, nickname :gfe
    (setf (cs:x button) 50)
    (setf (cs:y button) -12)
    (setf (cs:width button) 70)
    (setf (cs:text button) "Start")
    ;; TODO: startButton.Click += HandleStartClicked;
    (cs:add-click button #'handle-start-clicked) ; Reminder: #'something == (function something)
    (cs:add-child (title-screen-buttons-panel scene) button)
    ;; This previously was called after the options button was set up.
    ;; Let's see if it works here.
    (setf (cs:focused? start-button) t))

  (let ((button (uibutton:new)))
    (setf (options-button scene) button)
    (cs:anchor button anchor:+bottom-right+)
    (setf (cs:x button) -50)
    (setf (cs:y button) -12)
    (setf (cs:width button) 70)
    (setf (cs:text button) "Options")
    ;; TODO: optionsButton.Click += HandleOptionsClicked;
    (cs:add-click button #'handle-options-clicked)
    (cs:add-child (title-screen-buttons-panel scene) button)))

(defmethod initialize-ui ((scene title-scene))
  "Set up the title-scene UI"
  ; Clear out any previous UI in case we came here from
  ; a different screen:
  (format *error-output* "[title-scene.lisp initialize-ui] GumService.Default.Root: ~A~%" (cs:root gs:default)) ;=> #<DOTNET MonoGameGum.GueDeriving.ContainerRuntime Main Root>
  (format *error-output* "[title-scene.lisp initialize-ui] GumService.Default.Root.Children: ~A~%" (cs:children (cs:root gs:default))) ;=> #<DOTNET Gum.Collections.GraphicalUiElementCollection Gum.Collections.GraphicalUiElementCollection>
  ;; cs:clear cannot be called as the current package generator does not generate ancestors of generics (yet) as of v39
  ;; (cs:clear (cs:children (cs:root gs:default)))
  (dotnet:invoke (cs:children (cs:root gs:default)) "Clear")

  ;; Set up this scene's UI panels
  (create-title-panel scene)
  ; CreateOptionsPanel();
  ;; FIXME: CODE ME
)
  

