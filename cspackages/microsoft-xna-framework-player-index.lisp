;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.PlayerIndex
;;; Generator Version: 8
;;; Creation Date: 2026-06-17T21:36:15Z

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
(defconstant <creation> "2026-06-17T21:36:15Z")
(defconstant <version> 8)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.PlayerIndex")))

(defconstant +four+ (dotnet:static <type-str> "Four"))

(defconstant +one+ (dotnet:static <type-str> "One"))

(defconstant +three+ (dotnet:static <type-str> "Three"))

(defconstant +two+ (dotnet:static <type-str> "Two"))

