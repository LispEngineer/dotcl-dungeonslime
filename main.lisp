;;; main.lisp — MonoGame Game subclass written in Lisp.
;;;
;;; Demonstrates `dotnet:define-class` against the MonoGame `Game` class.
;;; Update + Draw are overridden to animate the background color over
;;; time. main.lisp is compiled into MonoGameLispDemo.fasl by the
;;; project-core build target (#166); main.lisp itself doesn't ship at
;;; runtime.
;;;
;;; Ultimately this will implement the MonoGame's Dungeon Slime tutorial
;;; project in DotCL-flavored ANSI Common Lisp.

(in-package :cl-user)
(format *error-output* "[main.lisp] Loading in package ~S~%" *package*)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))

(require :dotnet-class)
(require "dotcl-thread") ;; Does not work if used as :dotcl-thread
(require "dotcl-repl")

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
         (v2-0 (dotnet:static "Microsoft.Xna.Framework.Vector2" "Zero"))
         (white (dotnet:static "Microsoft.Xna.Framework.Color" "White")))
    (dotnet:invoke gd "Clear" c)
    (dotnet:invoke sb "Begin"
                   (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Deferred")
                   nil nil nil nil nil nil)
    (dotnet:invoke sb "Draw" (logo game) v2-0 white)
    (dotnet:invoke sb "End"))

  (call-next-method game gt))


(format *error-output* "[main.lisp] about to defparameter *cs-game*~%")
(defparameter *cs-game* nil
  "CLR class of the game, vs the CLOS class of the game.")

(defun make-game ()
  "Instantiate Demo.LispGame for Program.cs to Run().
   This first instantiates the C#/CLR object,
   then instantiates the CLOS object with a link to the C# object,
   then associates the C# object with the CLOS object."
  (let* ((cs (dotnet:new "Demo.LispGame")) ;; cs = c-sharp object
         (clos (make-instance 'game-1 :monogame cs)))
    ;; We have to assocaite these two, which is to say associate
    ;; the cs with the clos, since clos is already associated with cs.
    (setf (dotnet:invoke cs "CLOSObject") clos)
    ;; Save these for later global reuse
    (setf *cs-game* cs)
    (setf *game* clos)
    ;; And return our CLR object
    cs))

(format *error-output* "[main.lisp] make-game defined: ~S~%"
        (fboundp 'make-game))
(format *error-output* "[main.lisp] *game*: ~A~%" *game*)
(format *error-output* "[main.lisp] *cs-game*: ~A~%" *cs-game*)
