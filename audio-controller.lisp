(in-package :dungeon-slime)

(defclass audio-controller ()
  ((active-instances
    :initform nil
    :accessor active-instances
    :documentation "List of active SoundEffectInstance objects")
   (previous-song-volume
    :initform 1.0f0
    :accessor previous-song-volume
    :documentation "Volume of songs before mute")
   (previous-se-volume
    :initform 1.0f0
    :accessor previous-se-volume
    :documentation "Volume of sound effects before mute")
   (muted?
    :initform nil
    :accessor muted?
    :documentation "Whether the audio is currently muted")
   (disposed?
    :initform nil
    :accessor disposed?
    :documentation "Whether this controller has been disposed")))

(defmethod update-audio ((ac audio-controller))
  "Check state of active sound effect instances. If stopped, dispose and remove them."
  (when (disposed? ac) (return-from update-audio))
  (let ((remaining-instances nil))
    (dolist (instance (active-instances ac))
      (if (eq (sei:state instance) sound-state:+stopped+)
          (sei:dispose instance)
          (push instance remaining-instances)))
    (setf (active-instances ac) (nreverse remaining-instances))))

(defmethod play-sound-effect ((ac audio-controller) se)
  "Creates an instance of the sound effect, plays it, and tracks it."
  (when (or (disposed? ac) (null se)) (return-from play-sound-effect))
  (handler-case
      (let ((instance (sound-effect:create-instance se)))
        (sei:play instance)
        (push instance (active-instances ac)))
    (error (c)
      (format *error-output* "Warning: play-sound-effect failed: ~A~%" c))))

(defmethod play-song ((ac audio-controller) song)
  "Plays the given song if not already playing."
  (when (or (disposed? ac) (null song)) (return-from play-song))
  (handler-case
      (unless (eq media-player:state media-state:+playing+)
        (media-player:play song))
    (error (c)
      (format *error-output* "Warning: play-song failed: ~A~%" c))))

(defmethod pause-audio ((ac audio-controller))
  "Pauses all sound effects and the media player."
  (when (disposed? ac) (return-from pause-audio))
  (handler-case
      (progn
        (dolist (instance (active-instances ac))
          (when (eq (sei:state instance) sound-state:+playing+)
            (sei:pause instance)))
        (when (eq media-player:state media-state:+playing+)
          (media-player:pause)))
    (error (c)
      (format *error-output* "Warning: pause-audio failed: ~A~%" c))))

(defmethod resume-audio ((ac audio-controller))
  "Resumes all sound effects and the media player."
  (when (disposed? ac) (return-from resume-audio))
  (handler-case
      (progn
        (dolist (instance (active-instances ac))
          (when (eq (sei:state instance) sound-state:+paused+)
            (sei:resume instance)))
        (when (eq media-player:state media-state:+paused+)
          (media-player:resume)))
    (error (c)
      (format *error-output* "Warning: resume-audio failed: ~A~%" c))))

(defun get-media-volume ()
  (handler-case
      (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume")
    (error () 0.0f0)))

(defun set-media-volume (vol)
  (handler-case
      (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume")
            (coerce vol 'single-float))
    (error () nil)))

(defun get-master-volume ()
  (handler-case
      (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")
    (error () 0.0f0)))

(defun set-master-volume (vol)
  (handler-case
      (setf (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")
            (coerce vol 'single-float))
    (error () nil)))

(defmethod song-volume ((ac audio-controller))
  "Return the current music volume from the MediaPlayer."
  (get-media-volume))

(defmethod (setf song-volume) (new-val (ac audio-controller))
  "Set music volume and record in previous-song-volume for mute/unmute."
  (setf (previous-song-volume ac) (coerce new-val 'single-float))
  (set-media-volume (coerce new-val 'single-float)))

(defmethod sound-effect-volume ((ac audio-controller))
  "Return the current SFX volume from SoundEffect.MasterVolume."
  (get-master-volume))

(defmethod (setf sound-effect-volume) (new-val (ac audio-controller))
  "Set SFX volume and record in previous-se-volume for mute/unmute."
  (setf (previous-se-volume ac) (coerce new-val 'single-float))
  (set-master-volume (coerce new-val 'single-float)))

(defmethod toggle-mute ((ac audio-controller))
  "Toggles the global mute state."
  (when (disposed? ac) (return-from toggle-mute))
  (if (muted? ac)
      ;; Currently muted, so unmute
      (progn
        (set-media-volume (previous-song-volume ac))
        (set-master-volume (previous-se-volume ac))
        (setf (muted? ac) nil))
      ;; Currently unmuted, so mute
      (progn
        (setf (previous-song-volume ac) (get-media-volume))
        (setf (previous-se-volume ac) (get-master-volume))
        (set-media-volume 0.0f0)
        (set-master-volume 0.0f0)
        (setf (muted? ac) t))))

(defmethod adjust-volume ((ac audio-controller) delta)
  "Adjusts global volumes by delta, clamped to [0.0f0, 1.0f0]."
  (when (disposed? ac) (return-from adjust-volume))
  (when (muted? ac) (return-from adjust-volume))
  (let* ((new-song-vol (+ (get-media-volume) delta))
         (new-se-vol (+ (get-master-volume) delta))
         (clamped-song-vol (max 0.0f0 (min 1.0f0 new-song-vol)))
         (clamped-se-vol (max 0.0f0 (min 1.0f0 new-se-vol))))
    (set-media-volume clamped-song-vol)
    (set-master-volume clamped-se-vol)))

(defmethod dispose-audio ((ac audio-controller))
  "Disposes all active instances and marks controller as disposed."
  (when (disposed? ac) (return-from dispose-audio))
  (dolist (instance (active-instances ac))
    (sei:dispose instance))
  (setf (active-instances ac) nil)
  (setf (disposed? ac) t))
