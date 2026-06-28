;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:31:09Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-audio-sound-effect
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
   #:is-disposed
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

(in-package :microsoft-xna-framework-audio-sound-effect)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundEffect"))
(defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffect")
(defconstant <creation> "2026-06-28T22:31:09Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffect")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Audio.SoundEffect. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-byte[]-int32-audio-channels (buffer sample-rate channels)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect constructor new(Byte[], Int32, AudioChannels)"
  (dotnet:new <type-str> buffer sample-rate channels))

(defun new-byte[]-int32-int32-int32-audio-channels-int32-int32 (buffer offset count sample-rate channels loop-start loop-length)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect constructor new(Byte[], Int32, Int32, Int32, AudioChannels, Int32, Int32)"
  (dotnet:new <type-str> buffer offset count sample-rate channels loop-start loop-length))

(defun duration (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_Duration"))

(defun is-disposed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_IsDisposed"))

(defun name (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "get_Name"))

(defun (setf name) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "set_Name" new-value))

(defun create-instance (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "CreateInstance"))

(defun dispose (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Dispose"))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Finalize"))

(defun from-file (path)
  (dotnet:static <type-str> "FromFile" (the (dotnet "System.String") path)))

(defun from-stream (stream)
  (dotnet:static <type-str> "FromStream" (the (dotnet "System.IO.Stream") stream)))

(defun get-sample-duration (size-in-bytes sample-rate channels)
  (dotnet:static <type-str> "GetSampleDuration" (the (dotnet "System.Int32") size-in-bytes) (the (dotnet "System.Int32") sample-rate) (the (dotnet "Microsoft.Xna.Framework.Audio.AudioChannels") channels)))

(defun get-sample-size-in-bytes (duration sample-rate channels)
  (dotnet:static <type-str> "GetSampleSizeInBytes" (the (dotnet "System.TimeSpan") duration) (the (dotnet "System.Int32") sample-rate) (the (dotnet "Microsoft.Xna.Framework.Audio.AudioChannels") channels)))

(defun initialize ()
  (dotnet:static <type-str> "Initialize"))

(defun play (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffect.Play overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" args))

(defun play (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play() -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play"))

(defun play-single-single-single (obj volume pitch pan)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffect.Play Play(Single, Single, Single) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffect") obj) "Play" volume pitch pan))

