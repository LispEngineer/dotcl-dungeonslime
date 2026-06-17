;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Generator Version: 6
;;; Creation Date: 2026-06-17T03:38:46Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-graphics-sampler-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+anisotropic-clamp+
   #:+anisotropic-wrap+
   #:+linear-clamp+
   #:+linear-wrap+
   #:+point-clamp+
   #:+point-wrap+
   #:dispose
  ))

(in-package :microsoft-xna-framework-graphics-sampler-state)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Graphics.SamplerState"))
(defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SamplerState")
(defconstant <creation> "2026-06-17T03:38:46Z")
(defconstant <version> 6)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SamplerState")))

(defconstant +anisotropic-clamp+ (dotnet:static <type-str> "AnisotropicClamp"))

(defconstant +anisotropic-wrap+ (dotnet:static <type-str> "AnisotropicWrap"))

(defconstant +linear-clamp+ (dotnet:static <type-str> "LinearClamp"))

(defconstant +linear-wrap+ (dotnet:static <type-str> "LinearWrap"))

(defconstant +point-clamp+ (dotnet:static <type-str> "PointClamp"))

(defconstant +point-wrap+ (dotnet:static <type-str> "PointWrap"))

(defun dispose (obj disposing)
  (dotnet:invoke obj "Dispose" disposing))

