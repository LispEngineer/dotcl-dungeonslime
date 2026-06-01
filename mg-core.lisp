;;; Core CLOS and .NET MonoGame Game class definitions
;;;
;;; These are focused around basic functionality rather
;;; than any game specific functionality.

(in-package :cl-user)
(require :dotnet-class)

(format *error-output* "[mg-core.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame Core CLOS Object

(defparameter *core* nil
  "The singleton instance of the MonoGame Core CLOS class")

;; MonoGame Core implemented as a CLOS class
;; See: https://docs.monogame.net/articles/tutorials/building_2d_games/04_creating_a_class_library/index.html?tabs=vscode#creating-our-first-library-module
(defclass core ()
  ((monogame
    ;; This is a reference to the C# MonoGame Game class instance
    :initarg :monogame ;; This MUST be initialized with this keyword
    :accessor monogame
    :documentation "This is a reference to the C# MonoGame Game class instance,
                    which is acting as a proxy of this class. This MUST be provided
                    as an initarg in make-instance!")
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

(defmethod dispose ((game core))
  "Calls the base class's Dispose after doing our own disposing.
   Note that in the C# class, Dispose() is NOT virtual."
  ;; Unload the content first
  (format *error-output* "[core:dispose] unloading content...~%")
  (dotnet:invoke (content game) "Unload")
  (format *error-output* "[core:dispose] unloading content complete~%")
  ;; Delete our *core* so we can recreate a game.
  (format *error-output* "[core:dispose] destroying *core* singleton instance~%")
  (setf *core* nil)
  (format *error-output* "[core:dispose] calling super/Game.Dispose()~%")
  ;; This works to call the base class Dispose even though it's not virtual.
  ;; Sort of like calling super.Dispose()
  (dotnet:call-base (monogame game) "Dispose"))

(defmethod begin-run ((game core))
  "Start our background REPL - if configured to do so."
  (format *error-output* "[core:begin-run] Possibly spawning background REPL until control-D~%")
  ;; Call start-background-repl exported from the game-repl package.
  (game-repl:start-background-repl)
  (dotnet:call-base (monogame game) "BeginRun"))

(defmethod end-run ((game core))
  "Stop our background REPL - if running."
  ;; Call kill-background-repl exported from the game-repl package.
  (game-repl:kill-background-repl)
  (dotnet:call-base (monogame game) "EndRun"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MonoGame CLR (C#) Object

;; MonoGameLispProxy: subclass of (MonoGame) Game.
;; This forwards all method calls to a contained CLOS object,
;; and contains just a single field holding said CLOS object.
;; If any calls have to be forwarded to the base Game class,
;; the CLOS instance will have to handle that.
;; This implements a non-virtual Dispose() method that will
;; also be proxied to the CLOS object; I highly recommend that CLOS
;; then also call the shadowed/hidden base Game.Dispose().
(dotnet:define-class "MonoGameCLOSProxy" (Game)

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

  (:methods
    ("Initialize" () :returns Void :override t
      (format *error-output* "[MonoGameCLOSProxy] Initialize: self = ~A~%" self)
      ;; This will call the base of this C# object if desired
      (initialize (dotnet:invoke self "CLOSObject")))

    ("Draw" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        ;(format t "[main.lisp] MonoGameCLOSProxy.Draw: clos-instance = ~A~%" clos-instance)
        ;; This will call the base of this C# object if desired
        (draw clos-instance gt)))

    ("LoadContent" () :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        (format *error-output* "[MonoGameCLOSProxy] LoadContent: clos-instance = ~A~%" clos-instance)
        ;; This will call the base of this C# object if desired
        (load-content clos-instance)))

    ("Update" ((gt GameTime)) :returns Void :override t
      (let ((clos-instance (dotnet:invoke self "CLOSObject")))
        ;; This will call the base of this C# object if desired
        (update clos-instance gt)))

    ("BeginRun" () :returns Void :override t
      ;; https://docs.monogame.net/api/Microsoft.Xna.Framework.Game.html#Microsoft_Xna_Framework_Game_BeginRun
      (format *error-output* "[MonoGameCLOSProxy] BeginRun~%")
      (begin-run (dotnet:invoke self "CLOSObject")))

    ("EndRun" () :returns Void :override t
      ;; https://docs.monogame.net/api/Microsoft.Xna.Framework.Game.html#Microsoft_Xna_Framework_Game_EndRun
      (format *error-output* "[MonoGameCLOSProxy] EndRun~%")
      (end-run (dotnet:invoke self "CLOSObject")))

    ("Dispose" () :returns Void
      ;; https://docs.monogame.net/api/Microsoft.Xna.Framework.Game.html#Microsoft_Xna_Framework_Game_Dispose
      ;; Clean up after running a game
      ;; This is NOT a virtual method, so it will hide the super class's
      ;; method of the same name.
      ;; The receiver should probably call MonoGame's Game.Dispose()
      (dispose (dotnet:invoke self "CLOSObject")))))
