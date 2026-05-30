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

(defconstant +atlas-filename+ (uiop:subpathname* +content-default+ "atlas-definition.lisp")
  "The filename of our Texture Atlas. Within the Content directory.")
(format *error-output* "[game-1.lisp] +atlas-filename+ = ~A~%" +atlas-filename+)

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
         (atlas (ta-from-file (qualify-path +atlas-filename+) cont)))
    (format *error-output* "[game-1:load-content] Loaded atlas = ~A~%" atlas)
    (setf (slime game) (ta-get-region atlas "slime"))
    (setf (bat game) (ta-get-region atlas "bat"))
    (format *error-output* "[game-1:load-content] bat = ~A, slime = ~A~%" (bat game) (slime game)))
  (call-next-method game))

(defmethod update ((game game-1) gt) ;; GameTime
  "Quit the game if ESC key is pressed."
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
  (let* ((mg (monogame game))
         (gd (dotnet:invoke mg "GraphicsDevice"))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         (c (pulse-color secs))
         (sb (sprite-batch game))
        )

    (dotnet:invoke gd "Clear" c)

    ;; Prepare for rendering
    (sprite-batch-begin sb :sampler-state +sampler-state-point-clamp+)

    ;; Draw the slime and bat at a scale of 4, with the bat 10px right of slime
    (tr-draw (slime game) sb +v2-0+                                        +color-white+ 0.0e0 +v2-1+ 4.0e0 +sprite-effects-none+ 0.0e0)
    (tr-draw (bat game)   sb (vector2 (+ 10 (* (width (slime game)) 4)) 0) +color-white+ 0.0e0 +v2-1+ 4.0e0 +sprite-effects-none+ 1.0e0)

    (dotnet:invoke sb "End"))

  (call-next-method game gt))
