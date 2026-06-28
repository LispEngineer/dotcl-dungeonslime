;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Audio.SoundState
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T01:32:47Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-audio-sound-state
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

(in-package :microsoft-xna-framework-audio-sound-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Audio.SoundState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Audio.SoundState")
(defconstant <creation> "2026-06-28T01:32:47Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Audio.SoundState")))

(defconstant +paused+ (dotnet:static <type-str> "Paused"))

(defconstant +playing+ (dotnet:static <type-str> "Playing"))

(defconstant +stopped+ (dotnet:static <type-str> "Stopped"))

