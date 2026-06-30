;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Generator Version: 17
;;; Creation Date: 2026-06-30T04:00:13Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-audio-sound-effect
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-byte[]-int32-audio-channels
   #:new-byte[]-int32-int32-int32-audio-channels-int32-int32
   #:duration
   #:disposed?
   #:name
   #:create-instance
   #:dispose
   #:finalize
   #:from-file
   #:from-stream
   #:get-sample-duration
   #:get-sample-size-in-bytes
   #:initialize
   #:play
   #:play-single-single-single
  ))

(cl:in-package :microsoft-xna-framework-audio-sound-effect)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundEffect"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffect")
(cl:defconstant <creation> "2026-06-30T04:00:13Z")
(cl:defconstant <version> 17)

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

(cl:defun play (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffect.Play overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" args))

(cl:defun play (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play() -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play"))

(cl:defun play-single-single-single (obj volume pitch pan)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play(Single, Single, Single) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" volume pitch pan))

