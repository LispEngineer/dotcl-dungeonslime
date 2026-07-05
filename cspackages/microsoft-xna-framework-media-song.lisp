;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.Song
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :microsoft-xna-framework-media-song)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Media.Song"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.Song")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.Song")))

(cl:defun album (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Album"))

(cl:defun artist (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Artist"))

(cl:defun duration (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Duration"))

(cl:defun genre (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Genre"))

(cl:defun disposed? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_IsDisposed"))

(cl:defun protected? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_IsProtected"))

(cl:defun rated? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_IsRated"))

(cl:defun name (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Name"))

(cl:defun play-count (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_PlayCount"))

(cl:defun position (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Position"))

(cl:defun rating (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_Rating"))

(cl:defun track-number (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "get_TrackNumber"))

(cl:defun = (song1 song2)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

(cl:defun dispose (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "Dispose"))

(cl:defun equals (obj! song)
  "Master wrapper for Microsoft.Xna.Framework.Media.Song.Equals overloads. Dispatches at runtime.

Equals(Song) -> Boolean

Equals(Object) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null song) (dotnet:object-type song)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "Equals" song))
    ((cl:and (cl:or (cl:null song) (dotnet:object-type song)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "Equals" song))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-MEDIA-SONG"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :song song))))))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "Finalize"))

(cl:defun from-uri (name uri)
  (dotnet:static <type-str> "FromUri" (cl:the (dotnet "System.String") name) (cl:the (dotnet "System.Uri") uri)))

(cl:defun get-hash-code (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj!) "GetHashCode"))

(cl:defun not= (song1 song2)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

