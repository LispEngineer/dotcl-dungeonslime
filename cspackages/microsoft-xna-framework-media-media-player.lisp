;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.MediaPlayer
;;; Generator Version: 12
;;; Creation Date: 2026-06-28T14:10:16Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-media-media-player
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:game-has-control
   #:is-visualization-enabled
   #:play-position
   #:queue
   #:state
   #:move-next
   #:move-previous
   #:pause
   #:play
   #:resume
   #:stop
  ))

(in-package :microsoft-xna-framework-media-media-player)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Media.MediaPlayer"))
(defconstant <type-str> "Microsoft.Xna.Framework.Media.MediaPlayer")
(defconstant <creation> "2026-06-28T14:10:16Z")
(defconstant <version> 12)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaPlayer")))

(define-symbol-macro game-has-control (dotnet:static <type-str> "GameHasControl"))

(define-symbol-macro is-visualization-enabled (dotnet:static <type-str> "IsVisualizationEnabled"))

(define-symbol-macro play-position (dotnet:static <type-str> "PlayPosition"))

(define-symbol-macro queue (dotnet:static <type-str> "Queue"))

(define-symbol-macro state (dotnet:static <type-str> "State"))

(defun move-next ()
  (dotnet:static <type-str> "MoveNext"))

(defun move-previous ()
  (dotnet:static <type-str> "MovePrevious"))

(defun pause ()
  (dotnet:static <type-str> "Pause"))

(defun play (song)
  (dotnet:static <type-str> "Play" (the (dotnet "Microsoft.Xna.Framework.Media.Song") song)))

;; Note: Microsoft.Xna.Framework.Media.MediaPlayer.Play also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Play(SongCollection, Int32) -> Void

(defun resume ()
  (dotnet:static <type-str> "Resume"))

(defun stop ()
  (dotnet:static <type-str> "Stop"))

