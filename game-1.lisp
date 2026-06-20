;;; Actual implementation of the MonoGame Game as a CLOS sub-class
;;; of the core game class.
;;;
;;; Ultimately this will implement the MonoGame's Dungeon Slime tutorial
;;; project in DotCL-flavored ANSI Common Lisp.

(in-package :dungeon-slime)
(use-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[game-1.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Game Functions

(defparameter color-cycle-period 6.0
  "How fast we cycle through hues in seconds.")

;; Animated background color: hue cycles with elapsed time.
(defun pulse-color (seconds)
  "Return Color cycling through brightness over a specified period."
  (let* ((t-norm (mod seconds color-cycle-period))
         (frac (/ t-norm color-cycle-period))
         (a (round (* 255 frac))))
    (dotnet:new "Microsoft.Xna.Framework.Color" a 0 0)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLOS Object game-1, with parent class core

(defparameter *game* nil
  "The CLOS object of the MonoGame Game")

(defconstant +atlas-texture+ "images/atlas"
  "The filename (without extension) of our texture atlas.")

(defconstant +atlas-filename+ (uiop:subpathname* +content-default+ "atlas-definition.lisp")
  "The filename of our Texture Atlas. Within the Content directory.")

(defconstant +movement-speed+ 5.0f0
  "Speed when moving")

(defconstant +fast-multiplier+ 3.0f0
  "Speed multiplier when moving fast")

;; MonoGame Game implemented as a CLOS class
(defclass game-1 (core)
  ((slime
    :accessor slime
    :documentation "An Animated Sprite of a slime")
   (slime-pos
    :accessor slime-pos
    :initform v2:+zero+
    :documentation "Tracks position of the slime")
   (bat
    :accessor bat
    :documentation "An Animated Sprite of a bat")
   (bat-pos
    :accessor bat-pos
    :documentation "Tracks position of the bat")
   (bat-vel
    :accessor bat-vel
    :documentation "Tracks velocity of the bat")))

(defmethod initialize-instance :after ((game game-1) &key)
  ;; This code runs immediately after a game-1 object is created
  ;; and its initial keyword arguments are processed.
  (format *error-output* "[game-1:initialize-instance:after] Booting up game-1...~%")
  (format *error-output* "[game-1:initialize-instance:after] game-1 booted.~%"))

(defmethod initialize ((game game-1))
  "Initialize the game. Call-next-method triggers the C# lifecycle
   (including LoadContent), then sets initial bat position and velocity."
  ;; equivalent to C# base.Initialize()
  ;; This call triggers the C# Game.Initialize() chain, which includes
  ;; calling LoadContent() — so sprites are available after this returns.
  (call-next-method game)
  ;; Set the initial position of the bat to be 10px
  ;; to the right of the slime's starting position.
  (setf (bat-pos game)
    (vector2 (+ 10 (width (slime game))) 0.0e0))
  ;; Assign the initial random velocity to the bat.
  (assign-random-bat-velocity game))

(defmethod load-content ((game game-1))
  "Load our atlas textures then pass to base class."
  (format *error-output* "[game-1:load-content] Loading content...~%")
  (let* ((cont (content game))
         (atlas (ta-from-file (qualify-path +atlas-filename+) cont)))
    (format *error-output* "[game-1:load-content] Loaded atlas = ~A~%" atlas)
    (loop for key being the hash-keys of (regions atlas) using (hash-value value)
      do (format *error-output* "[game-1:load-content]   Key: ~a, Value: ~a~%" key value))
    (setf (slime game) (ta-create-animated-sprite atlas "slime-animation"))
    (setf (scale (slime game)) (vector2 4.0e0)) ; FIXME: Magic name & number
    (setf (bat game) (ta-create-animated-sprite atlas "bat-animation"))
    (setf (scale (bat game)) (vector2 4.0e0)) ; FIXME: Magic name & number
    (format *error-output* "[game-1:load-content] bat = ~A, slime = ~A~%" (bat game) (slime game)))
  (call-next-method game))

(defmethod update ((game game-1) gt) ;; GameTime
  "Quit the game if ESC key is pressed. Cause intentional error if F7 is pressed.
   Updates the animated sprites. Applies collision detection and response for
   slime screen boundaries, bat screen bouncing, and slime-vs-bat collisions."
  (let* ((kb (input:im-keyboard (input-manager game)))
         (esc-just-pressed (input:was-key-just-pressed kb key:+escape+))
         (f7-just-pressed (input:was-key-just-pressed kb key:+f7+)))
    (when esc-just-pressed
      (format *error-output* "[game-1:update] escape just pressed~%")
      (force-output *error-output*)
      (dotnet:invoke (monogame game) "Exit"))
    ;; To test error handling in the game, we intentionally cause a Lisp error when
    ;; F7 is pressed.
    (when f7-just-pressed
      (format *error-output* "[game-1:update] F7 just pressed; intentionally causing error~%")
      (force-output *error-output*)
      (error "This is a test error in lisp code.")))
  ;; Send our updates to our other objects
  (update (slime game) gt)
  (update (bat game)   gt)
  ;; Use the input manager for keyboard and gamepad movement
  (check-keyboard-input game)
  (check-gamepad-input game)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Collision detection and response
  (let* (;; Get the screen bounds from the graphics device
         (gd (graphics-device game))
         (pp (gd:presentation-parameters gd))
         (bb-width (pp:back-buffer-width pp))
         (bb-height (pp:back-buffer-height pp))
         (screen-bounds (rect 0 0 bb-width bb-height))
         ;; Slime sprite dimensions
         (slime-width (width (slime game)))
         (slime-height (height (slime game)))
         ;; Slime position
         (sp (slime-pos game))
         ;; Create a bounding circle for the slime centered on the sprite
         (slime-bounds
           (make-instance 'circle
             :x (+ (x sp) (* slime-width 0.5e0))
             :y (+ (y sp) (* slime-height 0.5e0))
             :radius (* slime-width 0.5e0))))

    ;; Blocking collision response: keep the slime within screen bounds.
    ;; Check left edge
    (when (< (circle-left slime-bounds) 0.0e0)
      (setf (slime-pos game) (vector2 0.0e0 (y sp))))
    ;; Check right edge
    (when (> (circle-right slime-bounds) (rect:right screen-bounds))
      (setf (slime-pos game) (vector2 (- (rect:right screen-bounds) slime-width) (y sp))))
    ;; Check top edge
    (when (< (circle-top slime-bounds) 0.0e0)
      (setf (slime-pos game) (vector2 (x sp) 0.0e0)))
    ;; Check bottom edge
    (when (> (circle-bottom slime-bounds) (rect:bottom screen-bounds))
      (setf (slime-pos game) (vector2 (x sp) (- (rect:bottom screen-bounds) slime-height))))

    ;; Re-read the slime position after blocking adjustments
    (let* ((sp-adjusted (slime-pos game))
           ;; Recalculate slime bounding circle after adjustments (for bat collision)
           (slime-bounds-adjusted
             (make-instance 'circle
               :x (+ (x sp-adjusted) (* slime-width 0.5e0))
               :y (+ (y sp-adjusted) (* slime-height 0.5e0))
               :radius (* slime-width 0.5e0)))
           ;; Calculate the new position of the bat based on the velocity.
           (new-bat-pos (v2:+ (bat-pos game) (bat-vel game)))
           ;; Bat sprite dimensions
           (bat-width (width (bat game)))
           (bat-height (height (bat game)))
           ;; Create a bounding circle for the bat.
           (bat-bounds
             (make-instance 'circle
               :x (+ (x new-bat-pos) (* bat-width 0.5e0))
               :y (+ (y new-bat-pos) (* bat-height 0.5e0))
               :radius (* bat-width 0.5e0)))
           ;; Normal vector for reflection (starts at zero)
           (normal-x 0.0e0)
           (normal-y 0.0e0))

      ;; Bounce collision response: reflect the bat off screen edges.
      ;; Check left edge
      (if (< (circle-left bat-bounds) 0.0e0)
        (progn
          (setf normal-x 1.0e0)
          (setf new-bat-pos (vector2 0.0e0 (y new-bat-pos))))
        ;; Check right edge
        (when (> (circle-right bat-bounds) (rect:right screen-bounds))
          (setf normal-x -1.0e0)
          (setf new-bat-pos (vector2 (- (rect:right screen-bounds) bat-width) (y new-bat-pos)))))
      ;; Check top edge
      (if (< (circle-top bat-bounds) 0.0e0)
        (progn
          (setf normal-y 1.0e0)
          (setf new-bat-pos (vector2 (x new-bat-pos) 0.0e0)))
        ;; Check bottom edge
        (when (> (circle-bottom bat-bounds) (rect:bottom screen-bounds))
          (setf normal-y -1.0e0)
          (setf new-bat-pos (vector2 (x new-bat-pos) (- (rect:bottom screen-bounds) bat-height)))))
      ;; If the normal is non-zero, reflect the velocity about the normal.
      (unless (and (= normal-x 0.0e0) (= normal-y 0.0e0))
        (let ((normal (v2-normalize (vector2 normal-x normal-y))))
          (setf (bat-vel game) (v2:reflect (bat-vel game) normal))))
      ;; Update the bat position
      (setf (bat-pos game) new-bat-pos)

      ;; Trigger collision response: slime "eats" the bat.
      (when (circle-intersects slime-bounds-adjusted bat-bounds)
        (let* ((total-columns (floor bb-width bat-width))
               (total-rows (floor bb-height bat-height))
               (column (random total-columns))
               (row (random total-rows)))
          ;; Respawn the bat at a random position
          (setf (bat-pos game)
            (vector2 (float (* column bat-width) 0.0e0)
                     (float (* row bat-height) 0.0e0)))
          ;; Assign a new random velocity
           (assign-random-bat-velocity game)))))
  (call-next-method game gt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Collision helper

(defun assign-random-bat-velocity (game)
  "Assigns a random velocity to the bat by generating a random angle
   and converting it to a direction vector scaled by MOVEMENT_SPEED."
  (let* ((pi2 (coerce (* 2 pi) 'single-float))
         (angle (random pi2))
         (x (cos angle))
         (y (sin angle)))
    (setf (bat-vel game) (v2* (vector2 x y) +movement-speed+))))

(defmethod draw ((game game-1) gt) ;; GameTime
  "Handles the per-tick drawing of the MonoGame scene."
  (let* ((mg (monogame game))
         (gd (dotnet:invoke mg "GraphicsDevice"))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         ;; Calculate our background color
         (c (pulse-color secs))
         (sb (sprite-batch game)))

    (dotnet:invoke gd "Clear" c)

    ;; Prepare for rendering
    (sprite-batch-begin sb :sampler-state sampler-state:+point-clamp+)

    ;; Draw the slime and bat
    (sprite-draw (slime game) sb (slime-pos game))
    (sprite-draw (bat game)   sb (bat-pos game))

    (dotnet:invoke sb "End"))

  (call-next-method game gt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Non-method functions

#|
// Get the state of keyboard input
KeyboardState keyboardState = Keyboard.GetState();

// If the space key is held down, the movement speed increases by 1.5
float speed = MOVEMENT_SPEED;
if (keyboardState.IsKeyDown(Keys.Space))
{
    speed *= 1.5f;
}

// If the W or Up keys are down, move the slime up on the screen.
if (keyboardState.IsKeyDown(Keys.W) || keyboardState.IsKeyDown(Keys.Up))
{
    _slimePosition.Y -= speed;
}

// if the S or Down keys are down, move the slime down on the screen.
if (keyboardState.IsKeyDown(Keys.S) || keyboardState.IsKeyDown(Keys.Down))
{
    _slimePosition.Y += speed;
}

// If the A or Left keys are down, move the slime left on the screen.
if (keyboardState.IsKeyDown(Keys.A) || keyboardState.IsKeyDown(Keys.Left))
{
    _slimePosition.X -= speed;
}

// If the D or Right keys are down, move the slime right on the screen.
if (keyboardState.IsKeyDown(Keys.D) || keyboardState.IsKeyDown(Keys.Right))
{
    _slimePosition.X += speed;
}
|#

(defun check-keyboard-input (game)
  "Handles keyboard input for moving the slime around"
  (let* ((kb (input:im-keyboard (input-manager game)))
         (speed +movement-speed+))
    ;; 50% faster when space held
    (when (input:is-key-down kb key:+space+)
      (setf speed (* speed +fast-multiplier+)))
    ;; Move in direction(s) pressed
    (when (or (input:is-key-down kb key:+w+) (input:is-key-down kb key:+up+))
      (setf (slime-pos game) (vector2    (x (slime-pos game))
                                       (- (y (slime-pos game)) speed))))
    (when (or (input:is-key-down kb key:+s+) (input:is-key-down kb key:+down+))
      (setf (slime-pos game) (vector2    (x (slime-pos game))
                                       (+ (y (slime-pos game)) speed))))
    (when (or (input:is-key-down kb key:+a+) (input:is-key-down kb key:+left+))
      (setf (slime-pos game) (vector2 (- (x (slime-pos game)) speed)
                                          (y (slime-pos game)))))
    (when (or (input:is-key-down kb key:+d+) (input:is-key-down kb key:+right+))
      (setf (slime-pos game) (vector2 (+ (x (slime-pos game)) speed)
                                          (y (slime-pos game)))))))

#|

GamePadState gamePadState = GamePad.GetState(PlayerIndex.One);

// If the A button is held down, the movement speed increases by 1.5
// and the gamepad vibrates as feedback to the player.
float speed = MOVEMENT_SPEED;
if (gamePadState.IsButtonDown(Buttons.A))
{
    speed *= 1.5f;
    GamePad.SetVibration(PlayerIndex.One, 1.0f, 1.0f);
}
else
{
    GamePad.SetVibration(PlayerIndex.One, 0.0f, 0.0f);
}


// Check thumbstick first since it has priority over which gamepad input
// is movement.  It has priority since the thumbstick values provide a
// more granular analog value that can be used for movement.
if (gamePadState.ThumbSticks.Left != Vector2.Zero)
{
    _slimePosition.X += gamePadState.ThumbSticks.Left.X * speed;
    _slimePosition.Y -= gamePadState.ThumbSticks.Left.Y * speed;
}
else
{
    // If DPadUp is down, move the slime up on the screen.
    if (gamePadState.IsButtonDown(Buttons.DPadUp))
    {
        _slimePosition.Y -= speed;
    }

    // If DPadDown is down, move the slime down on the screen.
    if (gamePadState.IsButtonDown(Buttons.DPadDown))
    {
        _slimePosition.Y += speed;
    }

    // If DPapLeft is down, move the slime left on the screen.
    if (gamePadState.IsButtonDown(Buttons.DPadLeft))
    {
        _slimePosition.X -= speed;
    }

    // If DPadRight is down, move the slime right on the screen.
    if (gamePadState.IsButtonDown(Buttons.DPadRight))
    {
        _slimePosition.X += speed;
    }
}
|#

(defun check-gamepad-input (game)
  "Handles gamepad input for moving the slime around.
   Uses the InputManager's GamePadInfo at PlayerIndex.One."
  (let* ((gp-pad (aref (input:im-game-pads (input-manager game)) 0))
         (speed +movement-speed+))
    ;; Double speed and turn on vibration if A is pressed
    (if (input:is-button-down gp-pad button:+a+)
      (progn
        (setf speed (* speed +fast-multiplier+))
        (input:game-pad-set-vibration gp-pad 1.0f0
                                      (csharp:timespan<-milliseconds 1000)))
      (input:game-pad-stop-vibration gp-pad))
    ;; Check thumbstick first since it has priority over which gamepad input
    ;; is movement.  It has priority since the thumbstick values provide a
    ;; more granular analog value that can be used for movement.
    (if (v2:not= (input:game-pad-left-thumb-stick gp-pad) v2:+zero+)
      ;; Use the thumbstick
      (setf (slime-pos game)
        (vector2 (+ (x (slime-pos game))
                    (* speed (x (input:game-pad-left-thumb-stick gp-pad))))
                 (- (y (slime-pos game))
                    (* speed (y (input:game-pad-left-thumb-stick gp-pad))))))
      ;; Use the d-pad
      (progn
        (when (input:is-button-down gp-pad button:+d-pad-up+)
          (setf (slime-pos game) (vector2 (x (slime-pos game))
                                         (- (y (slime-pos game)) speed))))
        (when (input:is-button-down gp-pad button:+d-pad-down+)
          (setf (slime-pos game) (vector2 (x (slime-pos game))
                                         (+ (y (slime-pos game)) speed))))
        (when (input:is-button-down gp-pad button:+d-pad-left+)
          (setf (slime-pos game) (vector2 (- (x (slime-pos game)) speed)
                                            (y (slime-pos game)))))
        (when (input:is-button-down gp-pad button:+d-pad-right+)
          (setf (slime-pos game) (vector2 (+ (x (slime-pos game)) speed)
                                            (y (slime-pos game)))))))))

