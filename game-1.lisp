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
  "Speed multiplier when moving")

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
    :documentation "An Animated Sprite of a bat")))

(defmethod initialize-instance :after ((game game-1) &key)
  ;; This code runs immediately after a game-1 object is created
  ;; and its initial keyword arguments are processed.
  (format *error-output* "[game-1:initialize-instance:after] Booting up game-1...~%")
  (format *error-output* "[game-1:initialize-instance:after] game-1 booted.~%"))

(defmethod initialize ((game game-1))
  "Does nothing, for now. Just call the base class's initialize."
  ;; equivalent to C# base.Initialize()
  (call-next-method game))

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
   Updates the animated sprites."
  (let* ((kb-state (keyboard-state))
         ;; This will return nil or t
         (esc-down  (key-down? kb-state key:+escape+))
         (left-down (key-down? kb-state key:+f7+)))
    (when esc-down
      (format *error-output* "[game-1:update] esc-down = ~A~%" esc-down)
      (force-output *error-output*) ;; finish-output alternatively
      (dotnet:invoke (monogame game) "Exit"))
    ;; To test error handling in the game, we intentionally cause a Lisp error when
    ;; the left button is pressed.
    ;; TODO: Intentionally cause a C# exception when right is pressed.
    (when left-down
      (format *error-output* "[game-1:update] left-down = ~A; intentionally causing error~%" left-down)
      (error "This is a test error in lisp code.")
      (format *error-output* "[game-1:update] left-down = ~A; error caused~%" left-down)))
  ;; Send our updates to our other objects
  (update (slime game) gt)
  (update (bat game)   gt)
  ;; Chapter 10 additions
  (check-keyboard-input game)
  (check-gamepad-input game)
  (call-next-method game gt))

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

    ;; Draw the slime and bat at a scale of 4, with the bat 10px right of slime's starting point
    (sprite-draw (slime game) sb (slime-pos game))
    (sprite-draw (bat game)   sb (vector2 (+ 10 (width (slime game)) 4) 0.0e0))

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
  (let ((kb-state (#!!Microsoft.Xna.Framework.Input.Keyboard.GetState))
        (speed +movement-speed+))
    ;; 50% faster when space held
    (when (kb-state:is-key-down kb-state key:+space+)
      (setf speed (* speed 1.5f0)))
    ;; Move in direction(s) pressed
    (when (or (kb-state:is-key-down kb-state key:+w+) (kb-state:is-key-down kb-state key:+up+))
      (setf (slime-pos game) (vector2    (x (slime-pos game))
                                      (- (y (slime-pos game)) speed))))
    (when (or (kb-state:is-key-down kb-state key:+s+) (kb-state:is-key-down kb-state key:+down+))
      (setf (slime-pos game) (vector2    (x (slime-pos game))
                                      (+ (y (slime-pos game)) speed))))
    (when (or (kb-state:is-key-down kb-state key:+a+) (kb-state:is-key-down kb-state key:+left+))
      (setf (slime-pos game) (vector2 (- (x (slime-pos game)) speed)
                                         (y (slime-pos game)))))
    (when (or (kb-state:is-key-down kb-state key:+d+) (kb-state:is-key-down kb-state key:+right+))
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

;; Partially implemented - need to add package generator capabilities
(defun check-gamepad-input (game)
  "Handles gamepad input for moving the slime around"
  ;; Check thumbstick first since it has priority over which gamepad input
  ;; is movement.  It has priority since the thumbstick values provide a
  ;; more granular analog value that can be used for movement.
  (let ((gps (#!!Microsoft.Xna.Framework.Input.GamePad.GetState pi:+one+))
        (speed +movement-speed+))
    ;; Double speed and turn on vibration if A is pressed
    (if (gp-state:is-button-down gps button:+a+)
      (progn
        (setf speed (* speed 1.5f0))
        (#!!Microsoft.Xna.Framework.Input.GamePad.SetVibration pi:+one+ 1.0f0 1.0f0))
      (#!!Microsoft.Xna.Framework.Input.GamePad.SetVibration pi:+one+ 0.0f0 0.0f0))
    ;; Check thumbstick then D-pad
    (if (v2:not= (ts:left (gp-state:thumb-sticks gps)) v2:+zero+)
      ;; Use the thumbstick
      ;; _slimePosition.X += gamePadState.ThumbSticks.Left.X * speed;
      ;; _slimePosition.Y -= gamePadState.ThumbSticks.Left.Y * speed;
      (setf (slime-pos game)
        (vector2 (+ (x (slime-pos game))
                    (* speed (x (ts:left (gp-state:thumb-sticks gps)))))
                 (- (y (slime-pos game))
                    (* speed (y (ts:left (gp-state:thumb-sticks gps)))))))
      ;; Use the d-pad
      (progn
        (when (gp-state:is-button-down gps button:+d-pad-up+)
          (setf (slime-pos game) (vector2 (x (slime-pos game))
                                         (- (y (slime-pos game)) speed))))
        (when (gp-state:is-button-down gps button:+d-pad-down+)
          (setf (slime-pos game) (vector2 (x (slime-pos game))
                                         (+ (y (slime-pos game)) speed))))
        (when (gp-state:is-button-down gps button:+d-pad-left+)
          (setf (slime-pos game) (vector2 (- (x (slime-pos game)) speed)
                                            (y (slime-pos game)))))
        (when (gp-state:is-button-down gps button:+d-pad-right+)
          (setf (slime-pos game) (vector2 (+ (x (slime-pos game)) speed)
                                            (y (slime-pos game)))))))))

