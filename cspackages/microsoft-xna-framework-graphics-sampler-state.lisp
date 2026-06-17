;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 5
;;; Creation Date: 2026-06-16T22:31:24Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sampler-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:anisotropic-clamp
   #:anisotropic-wrap
   #:linear-clamp
   #:linear-wrap
   #:point-clamp
   #:point-wrap
   #:dispose
  ))

(in-package :microsoft-xna-framework-graphics-sampler-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(defconstant <creation> "2026-06-16T22:31:24Z")
(defconstant <version> 5)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState")))

(define-symbol-macro anisotropic-clamp (dotnet:static <type-str> "AnisotropicClamp"))

(define-symbol-macro anisotropic-wrap (dotnet:static <type-str> "AnisotropicWrap"))

(define-symbol-macro linear-clamp (dotnet:static <type-str> "LinearClamp"))

(define-symbol-macro linear-wrap (dotnet:static <type-str> "LinearWrap"))

(define-symbol-macro point-clamp (dotnet:static <type-str> "PointClamp"))

(define-symbol-macro point-wrap (dotnet:static <type-str> "PointWrap"))

(defun dispose (obj disposing)
  (dotnet:invoke obj "Dispose" disposing))

