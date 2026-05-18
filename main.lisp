;;; main.lisp — MonoGame Game subclass written in Lisp.
;;;
;;; Demonstrates `dotnet:define-class` against the MonoGame `Game` class.
;;; Update + Draw are overridden to animate the background color over
;;; time. main.lisp is compiled into MonoGameLispDemo.fasl by the
;;; project-core build target (#166); main.lisp itself doesn't ship at
;;; runtime.

(in-package :cl-user)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))

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
  (format *error-output* "Booting up game-1...~%")

  (let* ((monogame (monogame game))
         ;; Really should check if monogame is nil first, but for now ...
         (content (dotnet:invoke monogame "Content")))

    ;; Quick sanity check; change this to an error in the future.
    (if monogame
      (format *error-output* "Monogame passed to game~%")
      (format *error-output* "No monogame passed to game~%"))

    ;; Do the initialization per the MonoGame demo:
    ;; https://docs.monogame.net/articles/tutorials/building_2d_games/03_the_game1_file/index.html#exploring-the-game1-class

    ;; Changes: The GraphicsDeviceManager was already instantiated in the
    ;; monogame C# class, so we just have to get it.
    ;; Original: _graphics = new GraphicsDeviceManager(this);
    (setf (graphics game) (dotnet:invoke monogame "GDM"))
    ;; Content.RootDirectory = "Content";
    (setf (dotnet:invoke content "RootDirectory") "Content")
    ;; IsMouseVisible = true;
    (setf (dotnet:invoke monogame "IsMouseVisible") T)))

(defmethod draw ((game game-1) gt) ;; GameTime
  "Handles the per-tick drawing of the MonoGame scene."
  ;(format t "[main.lisp] game-1:draw: game = ~A, gt = ~A~%" game gt)
  (let* ((mg (monogame game))
         ;(_unused1 (format t "[main.lisp] game-1:draw: mg = ~A~%" mg))
         (gd (dotnet:invoke mg "GraphicsDevice"))
         (total (dotnet:invoke gt "TotalGameTime"))
         (secs (dotnet:invoke total "TotalSeconds"))
         (c (pulse-color secs)))
    (dotnet:invoke gd "Clear" c)
    ;; Invoke the base class draw as well now
    ;; THIS DOES NOT WORK
    ;; (dotnet:invoke (dotnet:invoke mg "base") "Draw" gt)
    ))

(defmethod load-content ((game game-1))
  "Creates the Sprite Batch from our Content directory."
  ; protected override void LoadContent() { _spriteBatch = new SpriteBatch(GraphicsDevice); }
  (let* ((mg (monogame game))
         (gd (dotnet:invoke mg "GraphicsDevice")))
    (format *error-output* "[main.lisp] game-1:load-content: gd = ~A~%" gd)
    (setf (sprite-batch game) (dotnet:new "Microsoft.Xna.Framework.Graphics.SpriteBatch" gd))
    (format *error-output* "[main.lisp] game-1:load-content: sprite-batch = ~A~%" (sprite-batch game))))

(defmethod update ((game game-1) gt) ;; GameTime
  "Quit the game if ESC key is pressed."
  ; if (Keyboard.GetState().IsKeyDown(Keys.Escape))
  ;     Exit();
  ; base.Update(gameTime);
  (let* ((kb-state (dotnet:static "Microsoft.Xna.Framework.Input.Keyboard" "GetState"))
         ;; Keys is an enumerated type; we can get the value of Escape this way
         (esc-key (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Escape"))
         ;; This will return nil or t
         (esc-down (dotnet:invoke kb-state "IsKeyDown" esc-key)))
    (when esc-down
      (format *error-output* "[main.lisp] game-1:update: esc-down = ~A~%" esc-down)
      (dotnet:invoke (monogame game) "Exit"))))


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
    ;; The CLOS Object that this CLR object is wrapping
    ("CLOSObject" Object)
    ;; The MonoGame GraphicsDeviceManager that is created in the constructor
    ("GDM" "Microsoft.Xna.Framework.GraphicsDeviceManager")
    ("DrawBaseFunc" Object))

  (:ctor ()
    ;; Currently, only zero-argument constructors are supported with the define-class macro.
    (let* ((gdm (dotnet:new "Microsoft.Xna.Framework.GraphicsDeviceManager" self))
           ;; We need to create an array of Type (Type[]) for calling CallBaseMethodBuilder
           (type-type (dotnet:static "System.Type" "GetType" "System.Type"))
           (type-arr (dotnet:static "System.Array" "CreateInstance" type-type 1)))
      (setf (dotnet:invoke self "GDM") gdm)
      (format *error-output* "[main.lisp] Demo.LispGame:ctor: 1~%")
      ;; Save the delegate of the superclass Draw invoker
      ;(setf (dotnet:ref type-arr 0) type-type) ;; THIS DOES NOT WORK: System.MissingMethodException: Method 'System.Type[].set_Item' not found.
      (dotnet:invoke type-arr "SetValue" type-type 0)
      (format *error-output* "[main.lisp] Demo.LispGame:ctor: ~A~%" type-arr)
      #| ;; Ignore this non-working code for now
      (setf (dotnet:invoke self "DrawBaseFunc")
        ;; The below does not work:
        ;; DOTNET:STATIC DynamicBaseCaller.CallBaseMethodBuilder: Method 'Draw' with matching signature not found on base type 'Game'.
        ;; But it should work:
        ;; CallBaseMethodBuilder(object target, string methodName, Type[] paramTypes)
        (dotnet:static "DynamicBaseCaller" "CallBaseMethodBuilder" self "Draw" type-arr))
      |#
      (format t "[main.lisp] Demo.LispGame:ctor: GDM = ~A; DBF = ~A~%"
        gdm (dotnet:invoke self "DrawBaseFunc"))))

  ;; Note: There is no current way using the dotnet package to call
  ;; the base class of a given new class you've created.
  (:methods
    ("Draw" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        ;(format t "[main.lisp] Demo.LispGame.Draw: clos-instance = ~A~%" clos-instance)
        (draw clos-instance gt)))

    ("LoadContent" () :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        (format t "[main.lisp] Demo.LispGame.LoadContent: clos-instance = ~A~%" clos-instance)
        (load-content clos-instance)))

    ("Update" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        (update clos-instance gt)))))


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
