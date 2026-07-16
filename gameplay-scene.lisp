;;; gameplay-scene.lisp
;;;
;;; Encapsulates the main game play logic (slime eating bat, boundaries, collision).
;;; Manages gameplay-specific sprites, tilemap, sound effects, and music.

(in-package :dungeon-slime)
(use-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[gameplay-scene.lisp] Loading in package ~S~%" *package*)

(defparameter color-cycle-period 6.0
  "How fast we cycle through hues in seconds.")

(defun pulse-color (seconds)
  "Return Color cycling through brightness over a specified period."
  (let* ((t-norm (mod seconds color-cycle-period))
         (frac (/ t-norm color-cycle-period))
         (a (round (* 255 frac))))
    (color:new a 0 0)))

;; Gameplay Scene CLOS class
(defclass gameplay-scene (scene)
  ((slime
    :accessor slime
    :documentation "Animated Sprite of a slime.")
   (slime-pos
    :accessor slime-pos
    :initform v2:+zero+
    :documentation "Current position of the slime.")
   (bat
    :accessor bat
    :documentation "Animated Sprite of a bat.")
   (bat-pos
    :accessor bat-pos
    :documentation "Current position of the bat.")
   (bat-vel
    :accessor bat-vel
    :documentation "Current velocity of the bat.")
   (tilemap
    :accessor tilemap
    :documentation "The level's tilemap.")
   (room-bounds
    :accessor room-bounds
    :documentation "The bounds of the room based on the tilemap size.")
   (bounce-sound
    :accessor bounce-sound
    :initform nil
    :documentation "SoundEffect for bat bounce.")
   (collect-sound
    :accessor collect-sound
    :initform nil
    :documentation "SoundEffect for slime eating bat.")
   (theme-song
    :accessor theme-song
    :initform nil
    :documentation "Song for background music.")
   (score
    :accessor score
    :initform 0
    :documentation "Player's current score.")
   (score-text
    :initform "Score"
    :initarg :score-text
    :accessor score-text
    :documentation "Prefix string for score display.")
   (score-font
    :accessor score-font
    :initform nil
    :documentation "Loaded SpriteFont for score rendering.")
   (score-text-position
    :accessor score-text-position
    :initform v2:+zero+
    :documentation "Precomputed position for score text.")
   (score-text-origin
    :accessor score-text-origin
    :initform v2:+zero+
    :documentation "Precomputed origin for score text alignment.")))

(defun assign-random-bat-velocity (scene)
  "Assigns a random velocity to the bat by generating a random angle
   and converting it to a direction vector scaled by +movement-speed+."
  (let* ((pi2 (coerce (* 2 pi) 'single-float))
         (angle (random pi2))
         (x (cos angle))
         (y (sin angle))
         (direction (v2:new x y))
         (velocity (v2:* direction +movement-speed+)))
    (setf (bat-vel scene) velocity)))

(defun assign-random-bat-position (scene)
  "Assigns a random position to the bat, ensuring it is not within 15% of the edge of the play field
   and is at least 20% of the play field diagonal distance away from the slime."
  (let* ((bounds (room-bounds scene))
         (w (float (dotnet:invoke bounds "Width") 0.0f0))
         (h (float (dotnet:invoke bounds "Height") 0.0f0))
         (min-x (* 0.15f0 w))
         (max-x (* 0.85f0 w))
         (min-y (* 0.15f0 h))
         (max-y (* 0.85f0 h))
         (diag-sq (+ (* w w) (* h h)))
         (min-dist-sq (* 0.04f0 diag-sq)) ; 20% of diagonal squared
         (sp (slime-pos scene)))
    (loop
      (let* ((rand-x (+ min-x (random (- max-x min-x))))
             (rand-y (+ min-y (random (- max-y min-y))))
             (dx (- rand-x (cs:x sp)))
             (dy (- rand-y (cs:y sp)))
             (dist-sq (+ (* dx dx) (* dy dy))))
        (when (>= dist-sq min-dist-sq)
          (setf (bat-pos scene) (v2:new rand-x rand-y))
          (return))))))

(defmethod initialize ((scene gameplay-scene))
  "Initialize gameplay assets. First loads content via call-next-method,
   then sets up initial bat state and score coordinates."
  (call-next-method scene)
  (let* ((game (scene-game scene)))
    ;; Set initial position of the bat (ensuring it is not within 15% of the edge of the play field)
    (assign-random-bat-position scene)
    ;; Assign random velocity
    (assign-random-bat-velocity scene)
    ;; Precompute score text position and origin
    (let* ((room (room-bounds scene))
           (tm (tilemap scene))
           (ts (tileset tm))
           (font (score-font scene)))
      (setf (score-text-position scene)
            (v2:new (rect:left room)
                    (* 0.5f0 (tile-height ts) (cs:x (scale tm)))))
      (let* ((text (format nil "~a: 0" (score-text scene)))
             (size (measure-string font text)))
        (setf (score-text-origin scene)
              (v2:new 0.0f0 (* 0.5f0 (cs:y size))))))))

(defmethod load-content ((scene gameplay-scene))
  "Loads all textures, tilemap, sound effects, and music using the scene's ContentManager.
   Starts theme song playback."
  (format *error-output* "[gameplay-scene:load-content] Loading gameplay assets...~%")
  (let* ((game (scene-game scene))
         (cont (scene-content scene))
         (atlas (ta-from-file (qualify-path +atlas-filename+) cont)))
    (setf (slime scene) (ta-create-animated-sprite atlas "slime-animation"))
    (setf (scale (slime scene)) (v2:new 4.0e0))
    (setf (bat scene) (ta-create-animated-sprite atlas "bat-animation"))
    (setf (scale (bat scene)) (v2:new 4.0e0))
    
    ;; Load tilemap
    (let ((tm (tm-from-file cont +tilemap-filename+)))
      (setf (scale tm) (v2:new 4.0e0))
      (setf (tilemap scene) tm)
      (let* ((ts (tileset tm))
             (tm-width  (round (* (columns tm) (tile-width ts) (cs:x (scale tm)))))
             (tm-height (round (* (rows tm) (tile-height ts) (cs:y (scale tm))))))
        (setf (room-bounds scene) (rect:new 0 0 tm-width tm-height))))
        
    ;; Audio
    (handler-case
        (progn
          (setf (bounce-sound scene) (sound-effect:from-file (qualify-path "Content/audio/bounce.wav")))
          (setf (collect-sound scene) (sound-effect:from-file (qualify-path "Content/audio/collect.wav")))
          (let* ((qualified-path (qualify-path "Content/audio/theme.ogg"))
                 (uri (system-uri:new qualified-path system-uri-kind:+relative-or-absolute+)))
            (setf (theme-song scene) (song:from-uri "theme" uri)))
          ;; Play theme song
          (play-song (audio-controller game) (theme-song scene))
          (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "IsRepeating") t))
      (error (c)
        (format *error-output* "Warning: Failed to load audio resources: ~A~%" c)
        (setf (bounce-sound scene) nil)
        (setf (collect-sound scene) nil)
        (setf (theme-song scene) nil)))
        
    ;; Score Font
    (setf (score-font scene) (load-font cont))))

(defun check-gameplay-keyboard-input (scene)
  "Handles keyboard input for moving the slime around."
  (let* ((game (scene-game scene))
         (kb (im-keyboard (input-manager game)))
         (speed +movement-speed+))
    ;; Audio Controls
    (when (was-key-just-pressed kb key:+m+)
      (toggle-mute (audio-controller game)))
    (when (or (was-key-just-pressed kb key:+oem-plus+)
              (was-key-just-pressed kb key:+add+))
      (adjust-volume (audio-controller game) 0.1f0))
    (when (or (was-key-just-pressed kb key:+oem-minus+)
              (was-key-just-pressed kb key:+subtract+))
      (adjust-volume (audio-controller game) -0.1f0))
    ;; 50% faster when space held
    (when (is-key-down kb key:+space+)
      (setf speed (* speed +fast-multiplier+)))
    ;; Move in direction(s) pressed
    (when (or (is-key-down kb key:+w+) (is-key-down kb key:+up+))
      (setf (slime-pos scene) (v2:new (cs:x (slime-pos scene))
                                     (- (cs:y (slime-pos scene)) speed))))
    (when (or (is-key-down kb key:+s+) (is-key-down kb key:+down+))
      (setf (slime-pos scene) (v2:new (cs:x (slime-pos scene))
                                     (+ (cs:y (slime-pos scene)) speed))))
    (when (or (is-key-down kb key:+a+) (is-key-down kb key:+left+))
      (setf (slime-pos scene) (v2:new (- (cs:x (slime-pos scene)) speed)
                                     (cs:y (slime-pos scene)))))
    (when (or (is-key-down kb key:+d+) (is-key-down kb key:+right+))
      (setf (slime-pos scene) (v2:new (+ (cs:x (slime-pos scene)) speed)
                                     (cs:y (slime-pos scene)))))))

(defun check-gameplay-gamepad-input (scene)
  "Handles gamepad input for moving the slime around."
  (let* ((game (scene-game scene))
         (gp-pad (aref (im-game-pads (input-manager game)) 0))
         (speed +movement-speed+))
    ;; Double speed and vibration if A is pressed
    (if (is-button-down gp-pad button:+a+)
      (progn
        (setf speed (* speed +fast-multiplier+))
        (game-pad-set-vibration gp-pad 1.0f0
                                (ts:from-milliseconds 1000)))
      (game-pad-stop-vibration gp-pad))
    ;; Check thumbstick first
    (if (v2:not= (game-pad-left-thumb-stick gp-pad) v2:+zero+)
      (setf (slime-pos scene)
        (v2:new (+ (cs:x (slime-pos scene))
                   (* speed (cs:x (game-pad-left-thumb-stick gp-pad))))
                 (- (cs:y (slime-pos scene))
                   (* speed (cs:y (game-pad-left-thumb-stick gp-pad))))))
      (progn
        (when (is-button-down gp-pad button:+d-pad-up+)
          (setf (slime-pos scene) (v2:new (cs:x (slime-pos scene))
                                         (- (cs:y (slime-pos scene)) speed))))
        (when (is-button-down gp-pad button:+d-pad-down+)
          (setf (slime-pos scene) (v2:new (cs:x (slime-pos scene))
                                         (+ (cs:y (slime-pos scene)) speed))))
        (when (is-button-down gp-pad button:+d-pad-left+)
          (setf (slime-pos scene) (v2:new (- (cs:x (slime-pos scene)) speed)
                                         (cs:y (slime-pos scene)))))
        (when (is-button-down gp-pad button:+d-pad-right+)
          (setf (slime-pos scene) (v2:new (+ (cs:x (slime-pos scene)) speed)
                                         (cs:y (slime-pos scene)))))))))

(defun clamp-slime-to-bounds (scene r-bounds)
  "Keep the slime within room bounds by clamping its position to each edge."
  (let* ((slime-width (cs:width (slime scene)))
         (slime-height (cs:height (slime scene)))
         (sp (slime-pos scene))
         (slime-bounds
           (make-instance 'circle
             :x (+ (cs:x sp) (* slime-width 0.5e0))
             :y (+ (cs:y sp) (* slime-height 0.5e0))
             :radius (* slime-width 0.5e0))))
    (when (< (circle-left slime-bounds) (rect:left r-bounds))
      (setf (slime-pos scene) (v2:new (rect:left r-bounds) (cs:y sp))))
    (when (> (circle-right slime-bounds) (rect:right r-bounds))
      (setf (slime-pos scene) (v2:new (- (rect:right r-bounds) slime-width) (cs:y sp))))
    (when (< (circle-top slime-bounds) (rect:top r-bounds))
      (setf (slime-pos scene) (v2:new (cs:x sp) (rect:top r-bounds))))
    (when (> (circle-bottom slime-bounds) (rect:bottom r-bounds))
      (setf (slime-pos scene) (v2:new (cs:x sp) (- (rect:bottom r-bounds) slime-height))))))

(defun clamp-bat-to-bounds (scene new-bat-pos r-bounds game)
  "Reflect the bat off room edges, play bounce sound on impact, and return clamped position."
  (let* ((bat-width (cs:width (bat scene)))
         (bat-height (cs:height (bat scene)))
         (bat-bounds
           (make-instance 'circle
             :x (+ (cs:x new-bat-pos) (* bat-width 0.5e0))
             :y (+ (cs:y new-bat-pos) (* bat-height 0.5e0))
             :radius (* bat-width 0.5e0)))
         (normal-x 0.0e0)
         (normal-y 0.0e0))
    ;; Reflect off left or right edge
    (if (< (circle-left bat-bounds) (rect:left r-bounds))
        (progn
          (setf normal-x 1.0e0)
          (setf new-bat-pos (v2:new (rect:left r-bounds) (cs:y new-bat-pos))))
        (when (> (circle-right bat-bounds) (rect:right r-bounds))
          (setf normal-x -1.0e0)
          (setf new-bat-pos (v2:new (- (rect:right r-bounds) bat-width) (cs:y new-bat-pos)))))
    ;; Reflect off top or bottom edge
    (if (< (circle-top bat-bounds) (rect:top r-bounds))
        (progn
          (setf normal-y 1.0e0)
          (setf new-bat-pos (v2:new (cs:x new-bat-pos) (rect:top r-bounds))))
        (when (> (circle-bottom bat-bounds) (rect:bottom r-bounds))
          (setf normal-y -1.0e0)
          (setf new-bat-pos (v2:new (cs:x new-bat-pos) (- (rect:bottom r-bounds) bat-height)))))
    ;; Reflect velocity and play sound when a wall was hit
    (unless (and (= normal-x 0.0e0) (= normal-y 0.0e0))
      (let ((normal (v2:normalize* (v2:new normal-x normal-y))))
        (setf (bat-vel scene) (v2:reflect (bat-vel scene) normal))
        (play-sound-effect (audio-controller game) (bounce-sound scene))))
    new-bat-pos))

(defun handle-slime-bat-collision (scene game)
  "Check if the slime eats the bat; if so, update score, play sound, and reposition bat."
  (let* ((slime-width (cs:width (slime scene)))
         (slime-height (cs:height (slime scene)))
         (sp (slime-pos scene))
         (bat-width (cs:width (bat scene)))
         (bat-height (cs:height (bat scene)))
         (bp (bat-pos scene))
         (slime-bounds
           (make-instance 'circle
             :x (+ (cs:x sp) (* slime-width 0.5e0))
             :y (+ (cs:y sp) (* slime-height 0.5e0))
             :radius (* slime-width 0.5e0)))
         (bat-bounds
           (make-instance 'circle
             :x (+ (cs:x bp) (* bat-width 0.5e0))
             :y (+ (cs:y bp) (* bat-height 0.5e0))
             :radius (* bat-width 0.5e0))))
    (when (circle-intersects slime-bounds bat-bounds)
      (play-sound-effect (audio-controller game) (collect-sound scene))
      (setf (score scene) (+ (score scene) 100))
      (assign-random-bat-position scene)
      (assign-random-bat-velocity scene))))

(defmethod update ((scene gameplay-scene) gt)
  "Updates slime/bat animated frames, handles keyboard/gamepad inputs,
   and computes boundaries, wall reflections, and slime-vs-bat collisions.
   Returns to title scene if Escape key is pressed."
  (let* ((game (scene-game scene))
         (kb (im-keyboard (input-manager game))))
    (when (was-key-just-pressed kb key:+escape+)
      (format *error-output* "[gameplay-scene:update] Escape pressed; returning to title screen...~%")
      (change-scene scene (make-instance 'title-scene :game game))
      (return-from update))

    ;; Animate sprites
    (update (slime scene) gt)
    (update (bat scene) gt)

    ;; Read movement input
    (check-gameplay-keyboard-input scene)
    (check-gameplay-gamepad-input scene)

    ;; Collision detection and response
    (let ((r-bounds (room-bounds scene))
          (new-bat-pos (v2:+ (bat-pos scene) (bat-vel scene))))
      (clamp-slime-to-bounds scene r-bounds)
      (setf new-bat-pos (clamp-bat-to-bounds scene new-bat-pos r-bounds game))
      (setf (bat-pos scene) new-bat-pos)
      (handle-slime-bat-collision scene game))))

(defmethod draw ((scene gameplay-scene) gt)
  "Clears screen to pulsing color, renders tilemap, slime, bat, and score text."
  (let* ((game (scene-game scene))
         (gd (graphics-device game))
         (sb (sprite-batch game))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         (bg-color (pulse-color secs)))
    ;; Clear graphics device
    (dotnet:invoke gd "Clear" bg-color)

    ;; Render sprites
    (sprite-batch:begin sb :sampler-state sampler-state:+point-clamp+)

    ;; Draw tilemap
    (draw (tilemap scene) sb)

    ;; Draw actors
    (sprite-draw (slime scene) sb (slime-pos scene))
    (sprite-draw (bat scene)   sb (bat-pos scene))

    ;; Draw score text
    (let* ((font (score-font scene))
           (score-val (score scene))
           (pos (score-text-position scene))
           (origin (score-text-origin scene))
           (text (format nil "~a: ~a" (score-text scene) score-val)))
      (draw-string sb font text
                   (v2:new (+ 30.0f0 (cs:x pos)) (+ 0.0f0 (cs:y pos)))
                   color:+red+
                   :origin origin))

    (dotnet:invoke sb "End")))

(defmethod dispose ((scene gameplay-scene))
  "Stop music playing and delegate cleanup to base scene class."
  (format *error-output* "[gameplay-scene:dispose] Stopping gameplay music...~%")
  (media-player:stop)
  (call-next-method))
