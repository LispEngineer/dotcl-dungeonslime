;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundEffectInstance
;;; Generator Version: 18
;;; Creation Date: 2026-07-03T01:18:56Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-audio-sound-effect-instance
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:disposed?
   #:looped?
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
(cl:defconstant <creation> "2026-07-03T01:18:56Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundEffectInstance")))

(cl:defun disposed? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsDisposed"))

(cl:defun looped? (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "get_IsLooped"))

(cl:defun (cl:setf looped?) (new-value obj)
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

(cl:defun apply3-d (obj listener emitter)
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null listener) (monoutils:dotnet-p listener)) (cl:or (cl:null emitter) (monoutils:dotnet-p emitter)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listener emitter))
    ((cl:and (cl:or (cl:null listener) (monoutils:dotnet-p listener)) (cl:or (cl:null emitter) (monoutils:dotnet-p emitter)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listener emitter))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT-INSTANCE"
                    :class-name <type-str>
                    :method-name "Apply3D"
                    :supplied-args (cl:append (cl:list :listener listener) (cl:list :emitter emitter))))))

(cl:defun apply3-d-audio-listener-audio-emitter (obj listener emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener, AudioEmitter) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listener emitter))

(cl:defun apply3-d-audio-listener[]-audio-emitter (obj listeners emitter)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Apply3D Apply3D(AudioListener[], AudioEmitter) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Apply3D" listeners emitter))

(cl:defun dispose (obj cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Dispose overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Dispose"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT-INSTANCE"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

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

(cl:defun stop (obj cl:&optional (immediate cl:nil supplied-immediate))
  "Master wrapper for Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and supplied-immediate (cl:typep immediate 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" immediate))
    ((cl:and (cl:not supplied-immediate))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop"))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-AUDIO-SOUND-EFFECT-INSTANCE"
                    :class-name <type-str>
                    :method-name "Stop"
                    :supplied-args (cl:append (cl:when supplied-immediate (cl:list :immediate immediate)))))))

(cl:defun stop (obj)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop"))

(cl:defun stop-boolean (obj immediate)
  "Calls Microsoft.Xna.Framework.Audio.SoundEffectInstance.Stop Stop(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Audio.SoundEffectInstance") obj) "Stop" immediate))

