;;; main.lisp — MonoGame Game subclass written in Lisp.
;;;
;;; Demonstrates `dotnet:define-class` against the MonoGame `Game` class.
;;; Update + Draw are overridden to animate the background color over
;;; time. main.lisp is compiled into MonoGameLispDemo.fasl by the
;;; project-core build target (#166); main.lisp itself doesn't ship at
;;; runtime.

(in-package :cl-user)
(format *error-output* "[main.lisp] loading in package ~S~%" *package*)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))

(require :dotnet-class)
(require "dotcl-thread") ;; Does not work if used as :dotcl-thread
(require "dotcl-repl")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Proofs of concept & functionality tests

;; Expose our C# function "add3" by creating the package and exported
;; symbol during compilation.

;; Test Add3
(format t "Add3 sum = ~A~%" (monoutils:add3 1 2.0 9/3))
(handler-case
    (monoutils:add3 1 "two" 3)
  (type-error (c)
    (format t "Caught expected type error: ~A~%" c)))

(format *error-output* "invoke-generic docs: ~A~%"
  (documentation 'monoutils:invoke-generic 'function))

;; Test call-base functionality
(let ((child (dotnet:new "Child")))
  (dotnet:invoke child "Speak")
  (dotnet:call-base child "Speak"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DotCL Type Definitions

;; Type aliases visible at compile-time too: dotnet:define-class resolves
;; short names while macroexpanding, so eval-when keeps the registration
;; effective in both compile and load phases.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (gethash "GAME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Game")
  (setf (gethash "GAMETIME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GameTime")
  (setf (gethash "GRAPHICSDEVICEMANAGER" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GraphicsDeviceManager")
  (setf (gethash "TEXTURE2D" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Graphics.Texture2D")
  ;; Create an alias for the functions returned from DynamicBaseCaller
  ;; (This does not seem to work.)
  (setf (gethash "BASEFUNC" dotnet::*type-aliases*)
        "System.Func`3[[System.Object],[System.Object[]],[System.Object]]"))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame Core CLOS Object

(defparameter *core* nil
  "The singleton instance of the MonoGame Core CLOS class")

(defconstant +window-defaults+
  '(:title "Dungeon Slime"
    :width 1280
    :height 720
    :full-screen nil)
  "Default size, type and title of the game window")

(defconstant +content-default+ "Content"
  "The default content directory for the ContentManager")

;; MonoGame Core implemented as a CLOS class
;; See: https://docs.monogame.net/articles/tutorials/building_2d_games/04_creating_a_class_library/index.html?tabs=vscode#creating-our-first-library-module
(defclass core ()
  ((monogame
    ;; This is a reference to the C# MonoGame Game class instance
    :initarg :monogame ;; This MUST be initialized with this keyword
    :accessor monogame)
   (window-info
    ;; This is a plist with keys :title, :width, :height, :full-screen
    ;; that configures the initial game window
    :initarg :window-info
    :initform nil
    :accessor window-info)
   ;; In the C# Core, these next are all static fields, so use :allocation :class
   (graphics
    ;; This is an instance of GraphicsDeviceManager on the monogame instance
    :initarg :graphics
    :allocation :class
    :accessor graphics)
   (graphics-device
    ;; This is an instance of GraphicsDevice on the monogame instance
    :initarg :graphics-device
    :allocation :class
    :accessor graphics-device)
   (sprite-batch
    ;; This is created during the LoadContent call
    :initarg :sprite-batch
    :allocation :class
    :accessor sprite-batch)
   (content
    ;; This is our ContentManager
    :initarg :content
    :allocation :class
    :accessor content)))

(defmethod initialize-instance :after ((game core) &key)
  ;; This code runs immediately after a core object is created
  ;; and its initial keyword arguments are processed.
  (when (null (monogame game))
    (error "core must be initialized with a MonoGame Game C# class instance"))
  (when *core*
    (error "only one core is permitted"))

  (format *error-output* "[core:initialize-instance:after] Booting up core...~%")
  (format *error-output* "[core:initialize-instance:after] monogame = ~A~%" (monogame game))

  ;; Save our singleton instance
  (setf *core* game)

  (let* ((mg (monogame game))
         (gdm (dotnet:new "Microsoft.Xna.Framework.GraphicsDeviceManager" mg)))

    ;; Get the GraphicsDeviceManager from the C# class instance
    (setf (graphics game) gdm)

    ;; Set the graphic window size & type
    (setf (dotnet:invoke gdm "PreferredBackBufferWidth")
      (getf (window-info game) :width (getf +window-defaults+ :width)))
    (setf (dotnet:invoke gdm "PreferredBackBufferHeight")
      (getf (window-info game) :height (getf +window-defaults+ :height)))
    (setf (dotnet:invoke gdm "IsFullScreen")
      (getf (window-info game) :full-screen (getf +window-defaults+ :full-screen)))
    (dotnet:invoke gdm "ApplyChanges") ;; Make the changes above live

    ;; Set the title of the game window (on C# Window.Title property)
    (setf (dotnet:invoke (dotnet:invoke mg "Window") "Title")
      (getf (window-info game) :title (getf +window-defaults+ :title)))

    ;; Save the C# class's ContentManager
    (let ((cs-content (dotnet:invoke mg "Content")))
      (setf (content game) cs-content)
      ;; and set its root directory to Content/
      (setf (dotnet:invoke cs-content "RootDirectory")
        +content-default+))

    ;; Ensure mouse pointer is visible by default
    (setf (dotnet:invoke mg "IsMouseVisible") T))

  (format *error-output* "[core:initialize-instance:after] core booted.~%"))

(defmethod initialize ((game core))
  "First ensures the base class is initialized. Then sets up the
   graphics-device and sprite-batch."

  (format *error-output* "[core:initialize] started...~%")

  (let* ((monogame (monogame game))
         (base-gd (dotnet:invoke monogame "GraphicsDevice")))

    ;; Initialize the base class, which in Core is the monogame class
    (dotnet:call-base monogame "Initialize")

    (setf (graphics-device game) base-gd)
    (setf (sprite-batch game)
      (dotnet:new "Microsoft.Xna.Framework.Graphics.SpriteBatch" base-gd)))

  (format *error-output* "[core:initialize] complete.~%"))

(defmethod load-content ((game core))
  "Just calls the monogame base class equivalent."
  ; protected override void LoadContent() { _spriteBatch = new SpriteBatch(GraphicsDevice); }
  (format *error-output* "[core:load-content] calling Game.LoadContent()~%")
  (dotnet:call-base (monogame game) "LoadContent")
  (format *error-output* "[core:load-content] Game.LoadContent() complete~%"))

(defmethod update ((game core) gt) ;; GameTime
  "Just calls the monogame base class equivalent."
  (dotnet:call-base (monogame game) "Update" gt))

(defmethod draw ((game core) gt) ;; GameTime
  "Just calls the monogame base class equivalent."
  (dotnet:call-base (monogame game) "Draw" gt))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLOS Object game-1, with parent class core

(defconstant +esc-key+
  (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Escape")
  "Cache this enumerated value from C# for quick and easy reuse")

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
         (l (monoutils:invoke-generic cont "Load" '("Microsoft.Xna.Framework.Graphics.Texture2D") "images/logo")))
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLR (C#) Object

;; Demo.LispGame: subclass of Game.
(dotnet:define-class "Demo.LispGame" (Game)

  (:fields
    ;; The CLOS Object that this CLR object is wrapping
    ;; TODO: Figure out the proper class instead of just Object
    ("CLOSObject" Object))

  (:ctor ()
    ;; In dotcl 0.1.7, only zero-argument constructors are supported with the define-class macro.
    ;; This restriction was silently lifted in 0.1.8.
  )

  ;; However, as of 0.1.8, multiple constructors are not yet supported, so
  ;; leaving this commented out for now. If it is the only :ctor, then it
  ;; does indeed work. If it is left in as a second constructor, it seems to
  ;; be silently ignored.
  #|
  (:ctor ((clos-obj Object))
    (setf (dotnet:invoke self "CLOSObject") clos-obj))
  |#

  ;; Note: There is no current way using the dotnet package to call
  ;; the base class of a given new class you've created.
  (:methods
    ("Initialize" () :returns Void :override t
      (format *error-output* "[Demo.LispGame] Initialize: self = ~A~%" self)
      ;; This will call the base of this C# object if desired
      (initialize (dotnet:invoke self "CLOSObject")))

    ("Draw" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        ;(format t "[main.lisp] Demo.LispGame.Draw: clos-instance = ~A~%" clos-instance)
        ;; This will call the base of this C# object if desired
        (draw clos-instance gt)))

    ("LoadContent" () :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        (format *error-output* "[Demo.LispGame] LoadContent: clos-instance = ~A~%" clos-instance)
        ;; This will call the base of this C# object if desired
        (load-content clos-instance)))

    ("Update" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        ;; This will call the base of this C# object if desired
        (update clos-instance gt)))))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; REPL

(defun run-repl ()
  "Run a super basic CL REPL with the current standard input and output."
  (format t "~%--- MonoGame Lisp REPL started ---~%")
  (loop
    (let ((line (dotcl-repl:readline "MONOGAME-LISP> ")))
      (when (null line) ;; Exit on Ctrl+D; TODO: exit the game after confirmation?
        (format t "Exiting MONOGAME-LISP REPL.~%")
        (return))
      (handler-case
          (let* ((input (make-string-input-stream line))
                 (form (read input nil nil)))
            (when form
                (let ((results (multiple-value-list (eval form))))
                  (dolist (res results)
                    (prin1 res)
                    (terpri)))))
        (error (c)
          (format t "Error: ~A~%" c))))))

(defun start-background-repl ()
  "Starts a REPL in a background thread."
  (dotcl-thread:make-thread #'run-repl :name "REPL"))

(format *error-output* "[main.lisp] Spawning background REPL until control-D~%")
(start-background-repl)

