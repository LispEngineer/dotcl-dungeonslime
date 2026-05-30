;;; Actual implementation of the MonoGame Game as a CLOS sub-class
;;; of the core game class.
;;;
;;; Ultimately this will implement the MonoGame's Dungeon Slime tutorial
;;; project in DotCL-flavored ANSI Common Lisp.

(in-package :cl-user)
(use-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[game-1.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame Icon info

(defconstant +icon-rect+ (rect 0 0 128 128)
  "The icon part of the logo")

(defconstant +wordmark-rect+ (rect 150 34 458 58)
  "The wordmark part of the logo")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Game Functions

(defparameter color-cycle-period 6.0
  "How fast we cycle through hues in seconds.")

(defparameter rotation-period 5.0
  "How fast we rotate the logo in seconds.")

;; Animated background color: hue cycles with elapsed time.
(defun pulse-color (seconds)
  "Return Color cycling through brightness over a specified period."
  (let* ((t-norm (mod seconds color-cycle-period))
         (frac (/ t-norm color-cycle-period))
         (a (round (* 255 frac))))
    (dotnet:new "Microsoft.Xna.Framework.Color" a 0 0)))

(defun rotation (seconds)
  "Return the rotation amount for the given time in Radians."
  (°2R (/ (* 360 seconds) rotation-period)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLOS Object game-1, with parent class core

(defparameter *game* nil
  "The CLOS object of the MonoGame Game")

(defconstant +atlas-texture+ "images/atlas"
  "The filename (without extension) of our texture atlas.")

;; MonoGame Game implemented as a CLOS class
(defclass game-1 (core)
  ((slime
    :accessor slime
    :documentation "A Texture2D picture of a slime")
   (bat
    :accessor bat
    :documentation "A Texture2D picture of a bat")))

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
         (atlas-texture (monoutils:invoke-generic cont "Load" '("TEXTURE2D") +atlas-texture+))
         (atlas (make-instance 'texture-atlas :texture atlas-texture)))
    (format *error-output* "[game-1:load-content] Loaded atlas texture = ~A~%" atlas-texture)
    (ta-add-region atlas "slime" 0 0 20 20)
    (ta-add-region atlas "bat" 20 0 20 20)
    (format *error-output* "[game-1:load-content] atlas = ~A~%" atlas)
    (setf (slime game) (ta-get-region atlas "slime"))
    (setf (bat game) (ta-get-region atlas "bat")))
  (call-next-method game))

(defmethod update ((game game-1) gt) ;; GameTime
  "Quit the game if ESC key is pressed."
  ; if (Keyboard.GetState().IsKeyDown(Keys.Escape))
  ;     Exit();
  ; base.Update(gameTime);
  (let* ((kb-state (dotnet:static "Microsoft.Xna.Framework.Input.Keyboard" "GetState"))
         ;; This will return nil or t
         (esc-down (dotnet:invoke kb-state "IsKeyDown" +esc-key+)))
    (when esc-down
      (format *error-output* "[game-1:update] esc-down = ~A~%" esc-down)
      (force-output *error-output*) ;; finish-output alternatively
      (dotnet:invoke (monogame game) "Exit")))

  (call-next-method game gt))

(defmethod draw ((game game-1) gt) ;; GameTime
  "Handles the per-tick drawing of the MonoGame scene."
  ;(format t "[main.lisp] game-1:draw: game = ~A, gt = ~A~%" game gt)
  (let* ((mg (monogame game))
         ;(_unused1 (format t "[main.lisp] game-1:draw: mg = ~A~%" mg))
         (gd (dotnet:invoke mg "GraphicsDevice"))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         (c (pulse-color secs))
         (sb (sprite-batch game))
         #|
         (rot (rotation secs))
         (client-bounds (dotnet:invoke (dotnet:invoke (monogame game) "Window") "ClientBounds"))
         (cb-w (width client-bounds))
         (cb-h (height client-bounds))
         (l-w (width logo))
         (l-h (height logo))
         (i-w (width +icon-rect+))
         (i-h (height +icon-rect+))
         (w-w (width +wordmark-rect+))
         (w-h (height +wordmark-rect+))
         ;; 
         (logo-ctr (v2* (vector2 l-w l-h) 0.5e0))
         ;; The center of an offset (Source Rectangle) is not offset by the
         ;; source rectangle's x and y, so we can just use these:
         (screen-ctr (vector2 (* cb-w 0.5) (* cb-h 0.5)))
         (icon-ctr (vector2 (* i-w 0.5) (* i-h 0.5)))
         (wordmark-ctr (vector2 (* w-w 0.5) (* w-h 0.5)))
         |#
        )

    (dotnet:invoke gd "Clear" c)

#|
    // Begin the sprite batch to prepare for rendering.
    SpriteBatch.Begin(samplerState: SamplerState.PointClamp);

    // Draw the slime texture region at a scale of 4.0
    _slime.Draw(SpriteBatch, Vector2.Zero, Color.White, 0.0f, Vector2.One, 4.0f, SpriteEffects.None, 0.0f);

    // Draw the bat texture region 10px to the right of the slime at a scale of 4.0
    _bat.Draw(SpriteBatch, new Vector2(_slime.Width * 4.0f + 10, 0), Color.White, 0.0f, Vector2.One, 4.0f, SpriteEffects.None, 1.0f);

    // Always end the sprite batch when finished.
    SpriteBatch.End();
|#

    ;; Prepare for rendering
    (sprite-batch-begin sb :sampler-state +sampler-state-point-clamp+)

    ;; Draw the slime and bat at a scale of 4, with the bat 10px right of slime
    (tr-draw (slime game) sb +v2-0+                                      +color-white+ 0.0e0 +v2-1+ 4.0e0 +sprite-effects-none+ 0.0e0)
    (tr-draw (bat game)   sb (vector2 (+ 10 (* (width (slime game)) 4))) +color-white+ 0.0e0 +v2-1+ 4.0e0 +sprite-effects-none+ 1.0e0)

#|
    ;; Use the full Draw call with every parameter
    (dotnet:invoke sb "Draw" logo                  ;; Texture
                             screen-ctr            ;; Position
                             +icon-rect+           ;; Source Rectangle
                             +color-white+         ;; Color
                             rot                   ;; float rotation, e.g. (°2R 45)
                             icon-ctr              ;; origin
                             1e0                   ;; float scale
                             +sprite-effects-none+ ;; effects
                             0e0)                  ;; float Layer Depth

    (dotnet:invoke sb "Draw" logo                  ;; Texture
                             screen-ctr            ;; Position
                             +wordmark-rect+       ;; Source Rectangle
                             +color-white+         ;; Color
                             (- rot)               ;; float rotation, e.g. (°2R 45)
                             wordmark-ctr          ;; origin
                             1e0                   ;; float scale
                             +sprite-effects-none+ ;; effects
                             1e0)                  ;; float Layer Depth
|#

    (dotnet:invoke sb "End"))

  (call-next-method game gt))
