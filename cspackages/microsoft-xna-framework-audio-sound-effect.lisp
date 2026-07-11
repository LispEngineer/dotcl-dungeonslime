;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Generator Version: 44
;;; Creation Date: 2026-07-11T16:30:12Z

(cl:in-package :microsoft-xna-framework-audio-sound-effect)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffect"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffect")
(cl:defconstant <creation> "2026-07-11T16:30:12Z")
(cl:defconstant <version> 44)

(cl:defun new (buffer sample-rate channels cl:&optional (sample-rate2 cl:nil supplied-sample-rate2) (channels2 cl:nil supplied-channels2) (loop-start cl:nil supplied-loop-start) (loop-length cl:nil supplied-loop-length))
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffect constructor overloads. Dispatches at runtime.

new(Byte[], Int32, AudioChannels)

new(Byte[], Int32, Int32, Int32, AudioChannels, Int32, Int32)
"
  (cl:cond
    ((cl:and (cl:or (cl:null buffer) (dotnet:object-type buffer)) (cl:numberp sample-rate) (cl:numberp channels) supplied-sample-rate2 (cl:numberp sample-rate2) supplied-channels2 (cl:or (cl:null channels2) (dotnet:object-type channels2)) supplied-loop-start (cl:numberp loop-start) supplied-loop-length (cl:numberp loop-length))
     (dotnet:new <type-str> buffer sample-rate channels sample-rate2 channels2 loop-start loop-length))
    ((cl:and (cl:or (cl:null buffer) (dotnet:object-type buffer)) (cl:numberp sample-rate) (cl:or (cl:null channels) (dotnet:object-type channels)) (cl:not supplied-sample-rate2) (cl:not supplied-channels2) (cl:not supplied-loop-start) (cl:not supplied-loop-length))
     (dotnet:new <type-str> buffer sample-rate channels))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :buffer buffer) (cl:list :sample-rate sample-rate) (cl:list :channels channels) (cl:when supplied-sample-rate2 (cl:list :sample-rate2 sample-rate2)) (cl:when supplied-channels2 (cl:list :channels2 channels2)) (cl:when supplied-loop-start (cl:list :loop-start loop-start)) (cl:when supplied-loop-length (cl:list :loop-length loop-length)))))))

(cl:defun distance-scale ()
  (dotnet:static <type-str> "DistanceScale"))

(cl:defun (cl:setf distance-scale) (new-value)
  (cl:setf (dotnet:static <type-str> "DistanceScale") new-value))

(cl:defun doppler-scale ()
  (dotnet:static <type-str> "DopplerScale"))

(cl:defun (cl:setf doppler-scale) (new-value)
  (cl:setf (dotnet:static <type-str> "DopplerScale") new-value))

(cl:defun master-volume ()
  (dotnet:static <type-str> "MasterVolume"))

(cl:defun (cl:setf master-volume) (new-value)
  (cl:setf (dotnet:static <type-str> "MasterVolume") new-value))

(cl:defun speed-of-sound ()
  (dotnet:static <type-str> "SpeedOfSound"))

(cl:defun (cl:setf speed-of-sound) (new-value)
  (cl:setf (dotnet:static <type-str> "SpeedOfSound") new-value))

(cl:defun duration (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "get_Duration"))

(cl:defun disposed? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "get_IsDisposed"))

(cl:defun name (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "get_Name"))

(cl:defun (cl:setf name) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "set_Name" new-value))

(cl:defun create-instance (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "CreateInstance"))

(cl:defun dispose (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "Dispose"))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "Finalize"))

(cl:defun from-file (path)
  (dotnet:static <type-str> "FromFile" (cl:the (dotnet "System.String") path)))

(cl:defun from-stream (stream)
  (dotnet:static <type-str> "FromStream" (cl:the (dotnet "System.IO.Stream") stream)))

(cl:defun get-sample-duration (size-in-bytes sample-rate channels)
  (dotnet:static <type-str> "GetSampleDuration" (cl:the (dotnet "System.Int32") size-in-bytes) (cl:the (dotnet "System.Int32") sample-rate) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.AudioChannels") channels)))

(cl:defun get-sample-size-in-bytes (duration sample-rate channels)
  (dotnet:static <type-str> "GetSampleSizeInBytes" (cl:the (dotnet "System.TimeSpan") duration) (cl:the (dotnet "System.Int32") sample-rate) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.AudioChannels") channels)))

(cl:defun initialize ()
  (dotnet:static <type-str> "Initialize"))

(cl:defun play (obj! cl:&optional (volume cl:nil supplied-volume) (pitch cl:nil supplied-pitch) (pan cl:nil supplied-pan))
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffect.Play overloads. Dispatches at runtime.

Play() -> Boolean

Play(Single, Single, Single) -> Boolean
"
  (cl:cond
    ((cl:and supplied-volume (cl:numberp volume) supplied-pitch (cl:numberp pitch) supplied-pan (cl:numberp pan))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "Play" volume pitch pan))
    ((cl:and (cl:not supplied-volume) (cl:not supplied-pitch) (cl:not supplied-pan))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj!) "Play"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT"
                    :class-name <type-str>
                    :method-name "Play"
                    :supplied-args (cl:append (cl:when supplied-volume (cl:list :volume volume)) (cl:when supplied-pitch (cl:list :pitch pitch)) (cl:when supplied-pan (cl:list :pan pan)))))))

