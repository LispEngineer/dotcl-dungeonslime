;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Input.GamePad
;;; Generator Version: 9
;;; Creation Date: 2026-06-20T20:20:25Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-input-game-pad
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:maximum-game-pad-count
  ))

(in-package :microsoft-xna-framework-input-game-pad)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Input.GamePad"))
(defconstant <type-str> "Microsoft.Xna.Framework.Input.GamePad")
(defconstant <creation> "2026-06-20T20:20:25Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Input.GamePad")))

(define-symbol-macro maximum-game-pad-count (dotnet:static <type-str> "MaximumGamePadCount"))

