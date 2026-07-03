;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.MediaPlayer
;;; Generator Version: 20
;;; Creation Date: 2026-07-03T05:19:00Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-media-media-player
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:game-has-control
   #:visualization-enabled?
   #:play-position
   #:queue
   #:state
   #:move-next
   #:move-previous
   #:pause
   #:play
   #:play-song
   #:play-song-time-span]
   #:play-song-collection-int32
   #:resume
   #:stop
  ))

(cl:in-package :microsoft-xna-framework-media-media-player)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Media.MediaPlayer"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.MediaPlayer")
(cl:defconstant <creation> "2026-07-03T05:19:00Z")
(cl:defconstant <version> 20)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaPlayer")))

(cl:define-symbol-macro game-has-control (dotnet:static <type-str> "GameHasControl"))

(cl:define-symbol-macro visualization-enabled? (dotnet:static <type-str> "IsVisualizationEnabled"))

(cl:define-symbol-macro play-position (dotnet:static <type-str> "PlayPosition"))

(cl:define-symbol-macro queue (dotnet:static <type-str> "Queue"))

(cl:define-symbol-macro state (dotnet:static <type-str> "State"))

(cl:defun move-next ()
  (dotnet:static <type-str> "MoveNext"))

(cl:defun move-previous ()
  (dotnet:static <type-str> "MovePrevious"))

(cl:defun pause ()
  (dotnet:static <type-str> "Pause"))

(cl:defun play (song cl:&optional (start-position cl:nil supplied-start-position))
  "Master wrapper for Microsoft.Xna.Framework.Media.MediaPlayer.Play overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null song) (monoutils:dotnet-p song)) supplied-start-position (cl:or (cl:null start-position) (monoutils:dotnet-p start-position)))
     (dotnet:static <type-str> "Play" song start-position))
    ((cl:and (cl:or (cl:null song) (monoutils:dotnet-p song)) supplied-start-position (cl:numberp start-position))
     (dotnet:static <type-str> "Play" song start-position))
    ((cl:and (cl:or (cl:null song) (monoutils:dotnet-p song)) (cl:not supplied-start-position))
     (dotnet:static <type-str> "Play" song))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-MEDIA-MEDIA-PLAYER"
                    :class-name <type-str>
                    :method-name "Play"
                    :supplied-args (cl:append (cl:list :song song) (cl:when supplied-start-position (cl:list :start-position start-position)))))))

(cl:defun play-song (song)
  "Calls Microsoft.Xna.Framework.Media.MediaPlayer.Play Play(Song) -> Void"
  (dotnet:static <type-str> "Play" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song)))

(cl:defun play-song-time-span] (song start-position)
  "Calls Microsoft.Xna.Framework.Media.MediaPlayer.Play Play(Song, TimeSpan]) -> Void"
  (dotnet:static <type-str> "Play" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song) (cl:the (dotnet "System.Nullable`1[System.TimeSpan]") start-position)))

(cl:defun play-song-collection-int32 (collection index)
  "Calls Microsoft.Xna.Framework.Media.MediaPlayer.Play Play(SongCollection, Int32) -> Void"
  (dotnet:static <type-str> "Play" (cl:the (dotnet "Microsoft.Xna.Framework.Media.SongCollection") collection) (cl:the (dotnet "System.Int32") index)))

;; Note: Microsoft.Xna.Framework.Media.MediaPlayer.Play also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Play(SongCollection, Int32) -> Void

(cl:defun resume ()
  (dotnet:static <type-str> "Resume"))

(cl:defun stop ()
  (dotnet:static <type-str> "Stop"))

