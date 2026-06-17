;; Game Constants

(in-package :dungeon-slime)
(require :dotnet-class)

(format *error-output* "[constants.lisp] Loading in package ~S~%" *package*)

(defconstant +window-defaults+
  '(:title "Dungeon Slime"
    :width 1280
    :height 720
    :full-screen nil)
  "Default size, type and title of the game window")

(defconstant +content-default+ "Content"
  "The default content directory for the MonoGame ContentManager")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DotNet Interop

(defconstant +false+
  (dotnet:box nil "System.Boolean")
  "Use this when .NET interop does not properly interpret a nil as
   a boolean false in C#")
