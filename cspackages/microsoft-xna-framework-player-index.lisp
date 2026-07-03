;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.PlayerIndex
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-player-index
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+four+
   #:+one+
   #:+three+
   #:+two+
  ))

(cl:in-package :microsoft-xna-framework-player-index)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.PlayerIndex"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.PlayerIndex")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.PlayerIndex")))

(cl:defconstant +four+ (dotnet:static <type-str> "Four"))

(cl:defconstant +one+ (dotnet:static <type-str> "One"))

(cl:defconstant +three+ (dotnet:static <type-str> "Three"))

(cl:defconstant +two+ (dotnet:static <type-str> "Two"))

