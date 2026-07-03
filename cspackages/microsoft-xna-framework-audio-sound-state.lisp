;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundState
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-audio-sound-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+paused+
   #:+playing+
   #:+stopped+
  ))

(cl:in-package :microsoft-xna-framework-audio-sound-state)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundState"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundState")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundState")))

(cl:defconstant +paused+ (dotnet:static <type-str> "Paused"))

(cl:defconstant +playing+ (dotnet:static <type-str> "Playing"))

(cl:defconstant +stopped+ (dotnet:static <type-str> "Stopped"))

