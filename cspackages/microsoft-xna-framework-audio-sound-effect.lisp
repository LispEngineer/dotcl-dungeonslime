;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

(cl:in-package :microsoft-xna-framework-audio-sound-effect)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffect"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffect")
(cl:defconstant <creation> "2026-07-03T13:50:10Z")
(cl:defconstant <version> 23)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffect")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Audio.SoundEffect. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-byte[]-int32-audio-channels (buffer sample-rate channels)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect constructor new(Byte[], Int32, AudioChannels)"
  (dotnet:new <type-str> buffer sample-rate channels))

(cl:defun new-byte[]-int32-int32-int32-audio-channels-int32-int32 (buffer offset count sample-rate channels loop-start loop-length)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect constructor new(Byte[], Int32, Int32, Int32, AudioChannels, Int32, Int32)"
  (dotnet:new <type-str> buffer offset count sample-rate channels loop-start loop-length))

(cl:defun duration (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_Duration"))

(cl:defun disposed? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_IsDisposed"))

(cl:defun name (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_Name"))

(cl:defun (cl:setf name) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "set_Name" new-value))

(cl:defun create-instance (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "CreateInstance"))

(cl:defun dispose (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Dispose"))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Finalize"))

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

(cl:defun play (obj cl:&optional (volume cl:nil supplied-volume) (pitch cl:nil supplied-pitch) (pan cl:nil supplied-pan))
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffect.Play overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-volume (cl:numberp volume) supplied-pitch (cl:numberp pitch) supplied-pan (cl:numberp pan))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" volume pitch pan))
    ((cl:and (cl:not supplied-volume) (cl:not supplied-pitch) (cl:not supplied-pan))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT"
                    :class-name <type-str>
                    :method-name "Play"
                    :supplied-args (cl:append (cl:when supplied-volume (cl:list :volume volume)) (cl:when supplied-pitch (cl:list :pitch pitch)) (cl:when supplied-pan (cl:list :pan pan)))))))

(cl:defun play (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play() -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play"))

(cl:defun play-single-single-single (obj volume pitch pan)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play(Single, Single, Single) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" volume pitch pan))

