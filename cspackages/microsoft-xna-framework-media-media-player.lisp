;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.MediaPlayer
;;; Generator Version: 31
;;; Creation Date: 2026-07-04T20:26:18Z

(cl:in-package :microsoft-xna-framework-media-media-player)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaPlayer"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.MediaPlayer")
(cl:defconstant <creation> "2026-07-04T20:26:18Z")
(cl:defconstant <version> 31)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.MediaPlayer")))

(cl:define-symbol-macro game-has-control (dotnet:static <type-str> "GameHasControl"))

(cl:define-symbol-macro visualization-enabled? (dotnet:static <type-str> "IsVisualizationEnabled"))

(cl:define-symbol-macro play-position (dotnet:static <type-str> "PlayPosition"))

(cl:define-symbol-macro queue (dotnet:static <type-str> "Queue"))

(cl:define-symbol-macro state (dotnet:static <type-str> "State"))

(cl:defun muted? ()
  (dotnet:static <type-str> "IsMuted"))

(cl:defun (cl:setf muted?) (new-value)
  (cl:setf (dotnet:static <type-str> "IsMuted") new-value))

(cl:defun repeating? ()
  (dotnet:static <type-str> "IsRepeating"))

(cl:defun (cl:setf repeating?) (new-value)
  (cl:setf (dotnet:static <type-str> "IsRepeating") new-value))

(cl:defun shuffled? ()
  (dotnet:static <type-str> "IsShuffled"))

(cl:defun (cl:setf shuffled?) (new-value)
  (cl:setf (dotnet:static <type-str> "IsShuffled") new-value))

(cl:defun volume ()
  (dotnet:static <type-str> "Volume"))

(cl:defun (cl:setf volume) (new-value)
  (cl:setf (dotnet:static <type-str> "Volume") new-value))

(cl:defun move-next ()
  (dotnet:static <type-str> "MoveNext"))

(cl:defun move-previous ()
  (dotnet:static <type-str> "MovePrevious"))

(cl:defun pause ()
  (dotnet:static <type-str> "Pause"))

(cl:defun play (song cl:&optional (start-position cl:nil supplied-start-position))
  "Master wrapper for Microsoft.Xna.Framework.Media.MediaPlayer.Play overloads. Dispatches at runtime.

Play(Song) -> Void

Play(Song, TimeSpan]) -> Void

Play(SongCollection, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null song) (dotnet:object-type song)) supplied-start-position (cl:or (cl:null start-position) (dotnet:object-type start-position)))
     (dotnet:static <type-str> "Play" song start-position))
    ((cl:and (cl:or (cl:null song) (dotnet:object-type song)) supplied-start-position (cl:numberp start-position))
     (dotnet:static <type-str> "Play" song start-position))
    ((cl:and (cl:or (cl:null song) (dotnet:object-type song)) (cl:not supplied-start-position))
     (dotnet:static <type-str> "Play" song))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-MEDIA-MEDIA-PLAYER"
                    :class-name <type-str>
                    :method-name "Play"
                    :supplied-args (cl:append (cl:list :song song) (cl:when supplied-start-position (cl:list :start-position start-position)))))))

;; Note: Microsoft.Xna.Framework.Media.MediaPlayer.Play also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Play(SongCollection, Int32) -> Void

(cl:defun resume ()
  (dotnet:static <type-str> "Resume"))

(cl:defun stop ()
  (dotnet:static <type-str> "Stop"))

