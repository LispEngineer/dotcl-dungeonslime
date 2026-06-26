(in-package :dungeon-slime)

(format *error-output* "[audio-test.lisp] Testing audio loading...~%")

(defun run-audio-tests ()
  (format *error-output* "  Starting audio tests...~%")
  (let ((orig-media-vol (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume"))
        (orig-master-vol (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")))
    (format *error-output* "  MediaPlayer State: ~A (type: ~A)~%"
            (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "State")
            (type-of (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "State")))
    (format *error-output* "  MediaPlayer State ToString: ~A~%"
            (dotnet:invoke (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "State") "ToString"))
    (format *error-output* "  MediaPlayer Volume: ~A~%"
            (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume"))
    (format *error-output* "  SoundEffect MasterVolume: ~A~%"
            (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume"))
    
    (let ((bounce-path "Content/audio/bounce.wav")
          (collect-path "Content/audio/collect.wav")
          (theme-path "Content/audio/theme.ogg"))
      
      (format *error-output* "  Testing SoundEffect:from-file~%")
      (let ((bounce (sound-effect:from-file bounce-path)))
        (if bounce
            (format *error-output* "  [PASS] Loaded bounce.wav~%")
            (format *error-output* "  [FAIL] Failed to load bounce.wav~%")))
            
      (let ((collect (sound-effect:from-file collect-path)))
        (if collect
            (format *error-output* "  [PASS] Loaded collect.wav~%")
            (format *error-output* "  [FAIL] Failed to load collect.wav~%")))
            
      (format *error-output* "  Testing Song:from-uri~%")
      (let* ((uri (system-uri:new theme-path system-uri-kind:+relative+))
             (theme (song:from-uri "theme" uri)))
        (if theme
            (format *error-output* "  [PASS] Loaded theme.ogg~%")
            (format *error-output* "  [FAIL] Failed to load theme.ogg~%")))

      (format *error-output* "  Testing audio-controller~%")
      (let ((controller (make-instance 'audio-controller)))
        ;; Reset global volume for test environment
        (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume") 1.0f0)
        (setf (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume") 1.0f0)
        (if (not (muted? controller))
            (format *error-output* "  [PASS] audio-controller defaults~%")
            (format *error-output* "  [FAIL] audio-controller defaults~%"))
        (adjust-volume controller 0.5f0)
        (if (= (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume") 1.0f0)
            (format *error-output* "  [PASS] adjust-volume upper bound~%")
            (format *error-output* "  [FAIL] adjust-volume upper bound~%"))
        (adjust-volume controller -1.5f0)
        (if (= (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume") 0.0f0)
            (format *error-output* "  [PASS] adjust-volume lower bound~%")
            (format *error-output* "  [FAIL] adjust-volume lower bound~%"))
        (toggle-mute controller)
        (if (muted? controller)
            (format *error-output* "  [PASS] toggle-mute~%")
            (format *error-output* "  [FAIL] toggle-mute~%"))
        ;; Restore mute state of this controller instance
        (toggle-mute controller)))

    ;; Restore original global volumes
    (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume")
          (coerce orig-media-vol 'single-float))
    (setf (dotnet:static "Microsoft.Xna.Framework.Audio.SoundEffect" "MasterVolume")
          (coerce orig-master-vol 'single-float))
    (format *error-output* "  Audio tests completed.~%")))
