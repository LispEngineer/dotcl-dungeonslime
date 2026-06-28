;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffectInstance
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:54Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-audio-sound-effect-instance
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:is-disposed
   #:is-looped
   #:pan
   #:pitch
   #:state
   #:volume
   #:apply3-d
   #:apply3-d-audio-listener-audio-emitter
   #:apply3-d-audio-listener[]-audio-emitter
   #:dispose
   #:dispose-boolean
   #:finalize
   #:pause
   #:play
   #:resume
   #:stop
   #:stop-boolean
  ))

(in-package :microsoft-xna-framework-audio-sound-effect-instance)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundEffectInstance"))
(defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffectInstance")
(defconstant <creation> "2026-06-28T22:57:54Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffectInstance")))

(defun is-disposed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsDisposed"))

(defun is-looped (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsLooped"))

(defun (setf is-looped) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_IsLooped" new-value))

(defun pan (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Pan"))

(defun (setf pan) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Pan" new-value))

(defun pitch (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Pitch"))

(defun (setf pitch) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Pitch" new-value))

(defun state (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_State"))

(defun volume (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Volume"))

(defun (setf volume) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Volume" new-value))

(defun apply3-d (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" args))

(defun apply3-d-audio-listener-audio-emitter (obj listener emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener, AudioEmitter) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listener emitter))

(defun apply3-d-audio-listener[]-audio-emitter (obj listeners emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener[], AudioEmitter) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listeners emitter))

(defun dispose (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose" args))

(defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose Dispose() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose"))

(defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose" disposing))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Finalize"))

(defun pause (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Pause"))

(defun play (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Play"))

(defun resume (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Resume"))

(defun stop (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" args))

(defun stop (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop"))

(defun stop-boolean (obj immediate)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" immediate))

