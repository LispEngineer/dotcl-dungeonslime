;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.Song
;;; Generator Version: 16
;;; Creation Date: 2026-06-30T03:12:15Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-media-song
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:album
   #:artist
   #:duration
   #:genre
   #:is-disposed
   #:is-protected
   #:is-rated
   #:name
   #:play-count
   #:position
   #:rating
   #:track-number
   #:=
   #:dispose
   #:equals
   #:equals-song
   #:equals-object
   #:finalize
   #:from-uri
   #:get-hash-code
   #:not=
  ))

(cl:in-package :microsoft-xna-framework-media-song)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Media.Song"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Media.Song")
(cl:defconstant <creation> "2026-06-30T03:12:15Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.Song")))

(cl:defun album (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Album"))

(cl:defun artist (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Artist"))

(cl:defun duration (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Duration"))

(cl:defun genre (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Genre"))

(cl:defun is-disposed (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsDisposed"))

(cl:defun is-protected (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsProtected"))

(cl:defun is-rated (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsRated"))

(cl:defun name (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Name"))

(cl:defun play-count (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_PlayCount"))

(cl:defun position (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Position"))

(cl:defun rating (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Rating"))

(cl:defun track-number (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_TrackNumber"))

(cl:defun = (song1 song2)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

(cl:defun dispose (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Dispose"))

(cl:defun equals (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Media.Song.Equals overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" args))

(cl:defun equals-song (obj song)
  "Calls Microsoft.Xna.Framework.Media.Song.Equals Equals(Song) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" song))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Media.Song.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" obj))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Finalize"))

(cl:defun from-uri (name uri)
  (dotnet:static <type-str> "FromUri" (cl:the (dotnet "System.String") name) (cl:the (dotnet "System.Uri") uri)))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "GetHashCode"))

(cl:defun not= (song1 song2)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (cl:the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

