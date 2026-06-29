;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffectInstance
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:47Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-audio-sound-effect-instance
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

(cl:in-package :microsoft-xna-framework-audio-sound-effect-instance)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundEffectInstance"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundEffectInstance")
(cl:defconstant <creation> "2026-06-29T01:13:47Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffectInstance")))

(cl:defun is-disposed (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsDisposed"))

(cl:defun is-looped (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsLooped"))

(cl:defun (cl:setf is-looped) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_IsLooped" new-value))

(cl:defun pan (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Pan"))

(cl:defun (cl:setf pan) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Pan" new-value))

(cl:defun pitch (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Pitch"))

(cl:defun (cl:setf pitch) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Pitch" new-value))

(cl:defun state (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_State"))

(cl:defun volume (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_Volume"))

(cl:defun (cl:setf volume) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "set_Volume" new-value))

(cl:defun apply3-d (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" args))

(cl:defun apply3-d-audio-listener-audio-emitter (obj listener emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener, AudioEmitter) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listener emitter))

(cl:defun apply3-d-audio-listener[]-audio-emitter (obj listeners emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener[], AudioEmitter) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listeners emitter))

(cl:defun dispose (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose" args))

(cl:defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose Dispose() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose"))

(cl:defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose" disposing))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Finalize"))

(cl:defun pause (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Pause"))

(cl:defun play (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Play"))

(cl:defun resume (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Resume"))

(cl:defun stop (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" args))

(cl:defun stop (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop"))

(cl:defun stop-boolean (obj immediate)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" immediate))

