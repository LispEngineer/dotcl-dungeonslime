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
      (if (string-equal (dotnet:invoke (sei:state instance) "ToString") "Stopped")
          (dotnet:invoke instance "Dispose")
          (push instance remaining-instances)))
    (setf (active-instances ac) (nreverse remaining-instances))))

(defmethod play-sound-effect ((ac audio-controller) se)
  "Creates an instance of the sound effect, plays it, and tracks it."
  (when (disposed? ac) (return-from play-sound-effect))
  (let ((instance (sound-effect:create-instance se)))
    (sei:play instance)
    (push instance (active-instances ac))))

(defmethod play-song ((ac audio-controller) song)
  "Plays the given song if not already playing."
  (when (disposed? ac) (return-from play-song))
  (unless (string-equal (dotnet:invoke media-player:state "ToString") "Playing")
    (media-player:play song)))

(defmethod pause-audio ((ac audio-controller))
  "Pauses all sound effects and the media player."
  (when (disposed? ac) (return-from pause-audio))
  (dolist (instance (active-instances ac))
    (when (string-equal (dotnet:invoke (sei:state instance) "ToString") "Playing")
      (sei:pause instance)))
  (when (string-equal (dotnet:invoke media-player:state "ToString") "Playing")
    (media-player:pause)))

(defmethod resume-audio ((ac audio-controller))
  "Resumes all sound effects and the media player."
  (when (disposed? ac) (return-from resume-audio))
  (dolist (instance (active-instances ac))
    (when (string-equal (dotnet:invoke (sei:state instance) "ToString") "Paused")
      (sei:resume instance)))
  (when (string-equal (dotnet:invoke media-player:state "ToString") "Paused")
    (media-player:resume)))

(defun get-media-volume ()
  (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume"))

(defun set-media-volume (vol)
  (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume")
        (coerce vol 'single-float)))

(defun get-master-volume ()
  (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume"))

(defun set-master-volume (vol)
  (setf (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")
        (coerce vol 'single-float)))

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
    (dotnet:invoke instance "Dispose"))
  (setf (active-instances ac) nil)
  (setf (disposed? ac) t))
