;;; scene.lisp
;;;
;;; Base class and lifecycle protocol for game scenes.
;;; Specializes the standard game loop methods on scene objects.

(in-package :dungeon-slime)

(format *error-output* "[scene.lisp] Loading in package ~S~%" *package*)

;; Base CLOS class for scenes
(defclass scene ()
  ((content
    :accessor scene-content
    :initform nil
    :documentation "The scene's personal ContentManager instance for resource loading.")
   (disposed-p
    :accessor scene-disposed-p
    :initform nil
    :documentation "Tracks whether the scene has been disposed.")
   (game
    :accessor scene-game
    :initarg :game
    :documentation "Reference to the global core game instance.")))

(defmethod initialize-instance :after ((scene scene) &key game)
  "Initializes the scene's private ContentManager using the global game's service provider.
   If the game content manager is not bound or nil (e.g. in unit tests), ContentManager creation is skipped."
  (unless game
    (error "A scene must be initialized with a :game parameter referencing the core game."))
  (when (and (typep game 'core) (slot-boundp game 'content) (content game))
    (setf (scene-content scene)
          (cm:new-i-service-provider-string
           (cm:service-provider (content game))
           +content-default+))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scene Lifecycle Methods
;;
;; These specialize existing core generic functions to reuse the game protocol.

(defmethod initialize ((scene scene))
  "Default initialization calls load-content."
  (format *error-output* "[scene:initialize] Initializing scene: ~S~%" scene)
  (load-content scene))

(defmethod load-content ((scene scene))
  "Hook for loading scene-specific assets. Overridden by subclasses."
  nil)

(defmethod unload-content ((scene scene))
  "Unloads scene-specific assets loaded through the scene's ContentManager."
  (let ((c (scene-content scene)))
    (when c
      (format *error-output* "[scene:unload-content] Unloading scene content: ~S~%" scene)
      (cm:unload c))))

(defmethod update ((scene scene) gt)
  "Hook for updating scene state. Overridden by subclasses."
  nil)

(defmethod draw ((scene scene) gt)
  "Hook for rendering the scene. Overridden by subclasses."
  nil)

(defmethod dispose ((scene scene))
  "Deterministic cleanup of scene resources. Unloads content and disposes ContentManager."
  (unless (scene-disposed-p scene)
    (format *error-output* "[scene:dispose] Disposing scene: ~S~%" scene)
    (unload-content scene)
    (let ((c (scene-content scene)))
      (when c
        (cm:dispose c)
        (setf (scene-content scene) nil)))
    (setf (scene-disposed-p scene) t)))

(defmethod change-scene ((scene scene) next)
  "Delegates a scene transition request to the global game."
  (change-scene (scene-game scene) next))
