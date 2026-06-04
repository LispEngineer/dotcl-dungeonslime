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
;; DotNet Interop

(defconstant +false+
  (dotnet:box nil "System.Boolean")
  "Use this when .NET interop does not properly interpret a nil as
   a boolean false in C#")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C# Enumeration References

(defconstant +key-esc+
  (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Escape")
  "Cache this enumerated value from C# for quick and easy reuse")

;; Docstrings mostly omitted hereonout because code is self-explanatory

(defconstant +key-left+
  (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Left"))

(defconstant +color-white+
  (dotnet:static "Microsoft.Xna.Framework.Color" "White")
  "Color White")

(defconstant +sprite-effects-none+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteEffects" "None"))
(defconstant +sprite-effects-flip-horizontally+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteEffects" "FlipHorizontally"))
(defconstant +sprite-effects-flip-vertically+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteEffects" "FlipVertically"))

(defconstant +sprite-sort-mode-back-to-front+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "BackToFront"))
(defconstant +sprite-sort-mode-deferred+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Deferred"))
(defconstant +sprite-sort-mode-front-to-back+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "FrontToBack"))
(defconstant +sprite-sort-mode-immediate+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Immediate"))
(defconstant +sprite-sort-mode-texture+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SpriteSortMode" "Texture"))

(defconstant +sampler-state-point-clamp+
  (dotnet:static "Microsoft.Xna.Framework.Graphics.SamplerState" "PointClamp"))

