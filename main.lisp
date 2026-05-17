;;; main.lisp — MonoGame Game subclass written in Lisp.
;;;
;;; Demonstrates `dotnet:define-class` against the MonoGame `Game` class.
;;; Update + Draw are overridden to animate the background color over
;;; time. main.lisp is compiled into MonoGameLispDemo.fasl by the
;;; project-core build target (#166); main.lisp itself doesn't ship at
;;; runtime.

(in-package :cl-user)

(format *error-output* "[main.lisp] loading in package ~S~%" *package*)

(require :dotnet-class)

;; Type aliases visible at compile-time too: dotnet:define-class resolves
;; short names while macroexpanding, so eval-when keeps the registration
;; effective in both compile and load phases.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (gethash "GAME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Game")
  (setf (gethash "GAMETIME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GameTime")
  (setf (gethash "GRAPHICSDEVICEMANAGER" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GraphicsDeviceManager"))

;; Animated background color: hue cycles with elapsed time.
(defun pulse-color (seconds)
  "Return Color RGB cycling through hues over a 6-second period."
  (let* ((t-norm (mod seconds 6.0))
         (phase (floor t-norm 2.0))
         (frac  (mod t-norm 2.0))
         (a (round (* 255 (- 1.0 (abs (- 1.0 frac))))))
         (b (round (* 255 (abs (- 1.0 frac)))))
         (r 0) (g 0) (bl 0))
    (case phase
      (0 (setf r b g a bl 0))      ; red→green
      (1 (setf r 0 g b bl a))      ; green→blue
      (2 (setf r a g 0 bl b)))     ; blue→red
    (dotnet:new "Microsoft.Xna.Framework.Color" r g bl)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLOS Object

;; MonoGame Game implemented as a CLOS class
(defclass game-1 ()
  ((monogame
    ;; This is a reference to the C# MonoGame Game class instance
    :initarg :monogame
    :accessor monogame)
   (graphics
    ;; This is an instance of GraphicsDeviceManager on the monogame instance
    :initarg :graphics
    :accessor graphics)
   (sprite-batch
    ;; This is created during the LoadContent call
    :initarg :sprite-batch
    :accessor sprite-batch)))

(defmethod initialize-instance :after ((game game-1) &key)
  ;; This code runs immediately after a game-1 object is created
  ;; and its initial keyword arguments are processed.
  (format t "Booting up game-1...~%")

  (if (monogame game)
    (format t "Monogame passed to game~%")
    (format t "No monogame passed to game~%")))

  ;; To-Do: these 3 c# things:
  #|
  _graphics = new GraphicsDeviceManager(this);
  Content.RootDirectory = "Content";
  IsMouseVisible = true;
  |#

(defmethod draw ((game game-1) gt) ;; GameTime
  "Handles the per-tick drawing of the MonoGame scene."
  (format t "[main.lisp] game-1:draw: game = ~A, gt = ~A~%" game gt)
  (let* ((mg (monogame game))
         (_unused1 (format t "[main.lisp] game-1:draw: mg = ~A~%" mg))
         (gd (dotnet:invoke mg "GraphicsDevice"))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         (c (pulse-color secs)))
    (dotnet:invoke gd "Clear" c)))


(defparameter *game*
  "The CLOS object of the game"
  nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLR (C#) Object

;; Demo.LispGame: subclass of Game. The constructor must instantiate a
;; GraphicsDeviceManager(this) — its mere construction registers it on
;; the Game so GraphicsDevice gets initialized later.
(dotnet:define-class "Demo.LispGame" (Game)
  (:fields
    ;; The CLOS Object that his CLR object is wrapping
    ("CLOSObject" Object)
    ;; The MonoGame GraphicsDeviceManager that is created in the constructor
    ("GDM" "Microsoft.Xna.Framework.GraphicsDeviceManager"))
  (:ctor ()
    ;; Currently, only zero-argument constructors are supported with the define-class macro.
    (let ((gdm (dotnet:new "Microsoft.Xna.Framework.GraphicsDeviceManager" self)))
      (setf (dotnet:invoke self "GDM") gdm)))
  (:methods
    ("Draw" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        (format t "[main.lisp] Demo.LispGame.Draw: clos-instance = ~A~%" clos-instance)
        (draw clos-instance gt)))))


(format *error-output* "[main.lisp] about to defparameter *cs-game*~%")
(defparameter *cs-game*
  "CLR class of the game, vs the CLOS class of the game."
  nil)

(defun make-game ()
  "Instantiate Demo.LispGame for Program.cs to Run().
   This first instantiates the C#/CLR object,
   then instantiates the CLOS object with a link to the C# object,
   then associates the C# object with the CLOS object."
  (let* ((cs (dotnet:new "Demo.LispGame")) ;; cs = C# object
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
