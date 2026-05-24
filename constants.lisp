;; Game Constants

(in-package :cl-user)
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
;; C# Enumeration References

(defconstant +esc-key+
  (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Escape")
  "Cache this enumerated value from C# for quick and easy reuse")

