;;; game-1.lisp
;;;
;;; Bootstrap class for DungeonSlime. Inherits from core.
;;; Initializes the game and queues the title scene.

(in-package :dungeon-slime)
(use-package :mg-classes)
(require :dotnet-class)

(format *error-output* "[game-1.lisp] Loading in package ~S~%" *package*)

(defparameter *game* nil
  "The CLOS object of the MonoGame Game")

(defconstant +atlas-texture+ "images/atlas"
  "The filename (without extension) of our texture atlas.")

(defconstant +atlas-filename+ (uiop:subpathname* +content-default+ "atlas-definition.lisp")
  "The filename of our Texture Atlas. Within the Content directory.")

(defconstant +tilemap-filename+ (uiop:subpathname* +content-default+ "tilemap-definition.lisp")
  "The filename of our Tilemap configuration. Within the Content directory.")

(defconstant +movement-speed+ 5.0f0
  "Speed when moving")

(defconstant +fast-multiplier+ 3.0f0
  "Speed multiplier when moving fast")

;; MonoGame Game implemented as a CLOS class.
;; Inherits from core, serves as a bootstrap container for scenes.
(defclass game-1 (core)
  ())

(defmethod initialize-instance :after ((game game-1) &key)
  "Initial setup logs."
  (format *error-output* "[game-1:initialize-instance:after] Booting up game-1...~%")
  (format *error-output* "[game-1:initialize-instance:after] game-1 booted.~%"))

(defmethod initialize ((game game-1))
  "Initialize the game, call core initialize, and set the starting title scene."
  (call-next-method game)
  (change-scene game (make-instance 'title-scene :game game)))

(defmethod load-content ((game game-1))
  "Loads global content by calling base core load-content method."
  (call-next-method game))

(defmethod update ((game game-1) gt)
  "Delegate update calls to the core loop."
  (call-next-method game gt))

(defmethod draw ((game game-1) gt)
  "Delegate draw calls to the core loop."
  (call-next-method game gt))
