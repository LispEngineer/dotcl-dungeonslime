(in-package :dungeon-slime)

(format *error-output* "[audio-test.lisp] Testing audio loading...~%")

(defun run-audio-tests ()
  (format *error-output* "  Starting audio tests...~%")
  
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
    (let* ((uri (dotnet:new "System.Uri" theme-path (dotnet:static "System.UriKind" "Relative")))
           (theme (song:from-uri "theme" uri)))
      (if theme
          (format *error-output* "  [PASS] Loaded theme.ogg~%")
          (format *error-output* "  [FAIL] Failed to load theme.ogg~%")))

    (format *error-output* "  Testing audio-controller~%")
    (let ((controller (make-instance 'audio-controller)))
      ;; Reset global volume for test environment
      (setf (dotnet:static "Microsoft.Xna.Framework.Media.MediaPlayer" "Volume") 1.0f0)
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
          (format *error-output* "  [FAIL] toggle-mute~%")))

    (format *error-output* "  Audio tests completed.~%")))

(run-audio-tests)
