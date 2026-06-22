;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.PlayerIndex
;;; Generator Version: 10
;;; Creation Date: 2026-06-21T23:39:49Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-player-index
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

(in-package :microsoft-xna-framework-player-index)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.PlayerIndex"))
(defconstant <type-str> "Microsoft.Xna.Framework.PlayerIndex")
(defconstant <creation> "2026-06-21T23:39:49Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.PlayerIndex")))

(defconstant +four+ (dotnet:static <type-str> "Four"))

(defconstant +one+ (dotnet:static <type-str> "One"))

(defconstant +three+ (dotnet:static <type-str> "Three"))

(defconstant +two+ (dotnet:static <type-str> "Two"))

