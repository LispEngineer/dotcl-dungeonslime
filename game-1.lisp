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

;; MonoGame Game implemented as a CLOS class
(defclass game-1 (core)
  ((logo
    ;; This is a Texture2D instance
    :accessor logo)))

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
  "Load our logo then pass to base class."
  (format *error-output* "[game-1:load-content] Loading logo...~%")
  (let* ((cont (content game))
         #|
         ;; Use our C# helper to invoke generic Content.Load<Texture2D>
         (l (dotnet:static "MonoGameLispUtilities" "LoadTexture2D" cont "images/logo")))
         |#
         ;; Use monoutils:invoke-generic to load generic Content.Load<Texture2D>
         ;; TEXTURE2D
         (l (monoutils:invoke-generic cont "Load" '("TEXTURE2D") "images/logo")))
    (format *error-output* "[game-1:load-content] Loaded logo = ~A~%" l)
    (setf (logo game) l))
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
         (client-bounds (dotnet:invoke (dotnet:invoke (monogame game) "Window") "ClientBounds"))
         (logo (logo game))
         (cb-w (width client-bounds))
         (cb-h (height client-bounds))
         (l-w (width logo))
         (l-h (height logo))
         ;; Put the logo smack in the middle of the window
         (pos (vector2 (- (* cb-w 0.5) (* l-w 0.5)) (- (* cb-h 0.5) (* l-h 0.5)))))

    (dotnet:invoke gd "Clear" c)
    (dotnet:invoke sb "Begin"
                   (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Deferred")
                   nil nil nil nil nil nil)
    (dotnet:invoke sb "Draw" logo pos +color-white+)
    (dotnet:invoke sb "End"))

  (call-next-method game gt))
