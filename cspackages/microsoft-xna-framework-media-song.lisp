;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Media.Song
;;; Generator Version: 10
;;; Creation Date: 2026-06-25T23:47:26Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-media-song
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

(in-package :microsoft-xna-framework-media-song)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Media.Song"))
(defconstant <type-str> "Microsoft.Xna.Framework.Media.Song")
(defconstant <creation> "2026-06-25T23:47:26Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Media.Song")))

(defun album (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Album"))

(defun artist (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Artist"))

(defun duration (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Duration"))

(defun genre (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Genre"))

(defun is-disposed (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsDisposed"))

(defun is-protected (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsProtected"))

(defun is-rated (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_IsRated"))

(defun name (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Name"))

(defun play-count (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_PlayCount"))

(defun position (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Position"))

(defun rating (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_Rating"))

(defun track-number (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "get_TrackNumber"))

(defun = (song1 song2)
  (dotnet:static <type-str> "op_Equality" (the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

(defun dispose (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Dispose"))

(defun equals (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Media.Song.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" args))

(defun equals-song (obj song)
  "Calls Microsoft.Xna.Framework.Media.Song.Equals Equals(Song) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" song))

(defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Media.Song.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Equals" obj))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "Finalize"))

(defun from-uri (name uri)
  (dotnet:static <type-str> "FromUri" (the (dotnet "System.String") name) (the (dotnet "System.Uri") uri)))

(defun get-hash-code (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Media.Song") obj) "GetHashCode"))

(defun not= (song1 song2)
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "Microsoft.Xna.Framework.Media.Song") song1) (the (dotnet "Microsoft.Xna.Framework.Media.Song") song2)))

