;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; SpriteFont helper functions for text rendering in MonoGame.
;;;
;;; Chapter 16 of the MonoGame Dungeon Slime tutorial covers SpriteFonts.
;;; This file provides Lispy wrappers for loading, measuring, and
;;; drawing text using MonoGame's SpriteFont class.
;;;
;;; SpriteFont is a sealed C# class from MonoGame with no virtual methods,
;;; so this is implemented as pure helper functions operating on the native
;;; C# object, similar to the pattern used for SoundEffect and Song helpers.

(in-package :dungeon-slime)
(require :dotnet-class)

(format *error-output* "[sprite-font.lisp] Loading in package ~S~%" *package*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SpriteFont Helper Functions

(defun load-font (content-manager &key (name "fonts/04B_30"))
  "Load a SpriteFont from the ContentManager using the content pipeline.
   Returns a C# SpriteFont object.

   The NAME parameter is the asset name (without extension) used by the
   ContentManager. The default is \"fonts/04B_30\"."
  (dotnet:invoke-generic content-manager "Load"
    '("Microsoft.Xna.Framework.Graphics.SpriteFont")
    name))

(defun measure-string (font string)
  "Measure the pixel dimensions of a string using the given SpriteFont.
   Returns a C# Vector2 with X = width (in pixels) and Y = height (in pixels)."
  (dotnet:invoke font "MeasureString" string))

(defun draw-string (sprite-batch font string position color
                    &key (rotation 0.0f0) (origin v2:+zero+)
                         (scale v2:+one+) (effects sprite-effects:+none+)
                         (layer-depth 0.0f0))
  "Draw text using the given SpriteFont.

   Keyword arguments match the C# SpriteBatch.DrawString overloads,
   providing a Lisp-friendly interface with sensible defaults.

   Arguments:
     sprite-batch - The SpriteBatch to draw on
     font         - The SpriteFont to use
     string       - The text to render
     position     - A Vector2 defining where to draw the text
     color        - The Color to tint the text
     rotation     - Rotation in radians (default 0.0)
     origin       - Origin Vector2 for rotation/scaling (default Vector2.Zero)
     scale        - Scale Vector2 (default Vector2.One)
     effects      - SpriteEffects enum value (default None)
     layer-depth  - Layer depth float (default 0.0)"
  (dotnet:invoke sprite-batch "DrawString"
    font string position color
    rotation origin scale effects layer-depth))