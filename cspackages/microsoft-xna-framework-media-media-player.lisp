;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.MediaPlayer
;;; Generator Version: 15
;;; Creation Date: 2026-06-29T00:59:06Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-media-media-player
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

(cl:in-package :microsoft-xna-framework-media-media-player)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Media.MediaPlayer"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.MediaPlayer")
(cl:defconstant <creation> "2026-06-29T00:59:06Z")
(cl:defconstant <version> 15)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaPlayer")))

(cl:define-symbol-macro game-has-control (dotnet:static <type-str> "GameHasControl"))

(cl:define-symbol-macro is-visualization-enabled (dotnet:static <type-str> "IsVisualizationEnabled"))

(cl:define-symbol-macro play-position (dotnet:static <type-str> "PlayPosition"))

(cl:define-symbol-macro queue (dotnet:static <type-str> "Queue"))

(cl:define-symbol-macro state (dotnet:static <type-str> "State"))

(cl:defun move-next ()
  (dotnet:static <type-str> "MoveNext"))

(cl:defun move-previous ()
  (dotnet:static <type-str> "MovePrevious"))

(cl:defun pause ()
  (dotnet:static <type-str> "Pause"))

(cl:defun play (song)
  (dotnet:static <type-str> "Play" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song)))

;; Note: Microsoft.Xna.Framework.Media.MediaPlayer.Play also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Play(SongCollection, Int32) -> Void

(cl:defun resume ()
  (dotnet:static <type-str> "Resume"))

(cl:defun stop ()
  (dotnet:static <type-str> "Stop"))

