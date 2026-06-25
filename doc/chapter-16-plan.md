# Chapter 16 Plan: Working with SpriteFonts

* Author: Douglas P. Fields, Jr. - symbolics@lisp.engineer
* AI Assistance: OpenCode (Qwen3.6-35B-A3B-MTP-GGUF)
* Date: 2026-06-25
* Based on: [MonoGame Tutorial Chapter 16](https://docs.monogame.net/articles/tutorials/building_2d_games/16_working_with_spritefonts/index.html)

## Overview

Chapter 16 adds text rendering via `SpriteFont` and a score tracking system
to the Dungeon Slime game. The MonoGame tutorial adds a score counter that
increments when the slime "eats" the bat.

## Changes from the Tutorial

The tutorial is adapted for idiomatic Common Lisp as follows:

1. **Score origin computation**: The C# tutorial measures just `"Score"`
   to compute the text origin. We will measure `"Score: 0"` (including
   the number) to ensure proper left-center alignment of the full
   score string.

2. **String formatting**: The C# `$"Score: {_score}"` is translated to
   `(format nil "Score: ~a" score)`.

3. **No CLOS class for SpriteFont**: `SpriteFont` is a sealed C# class
   from MonoGame with no virtual methods. It is wrapped purely as
   helper functions operating on the native C# object, similar to the
   pattern used for `SoundEffect` and `Song` helper functions.
   This avoids unnecessary CLOS indirection.

## Implementation Steps

### Step 1: Font Asset Files

Create the following files:

- `Content/fonts/04B_30.ttf` - Download from the MonoGame tutorial site
  (`https://docs.monogame.net/articles/tutorials/building_2d_games/files/04B_30.ttf`).
  This is a pixel font with a permissive license.

- `Content/fonts/04B_30.spritefont` - SpriteFont XML description with:
  - `<FontName>04B_30.ttf</FontName>`
  - `<Size>17.5</Size>`
  - `<UseKerning>true</UseKerning>`
  - `<CharacterRegions>` covering ASCII 32-126

### Step 2: Content Pipeline Configuration

Update `Content.mgcb` to add a SpriteFont entry:

```
#begin Content/fonts/04B_30.spritefont
/importer:FontDescriptionImporter
/processor:FontDescriptionProcessor
/processorParam:FontSize=17.5
/processorParam:UseKerning=true
/processorParam:CharacterRegions=32,126
/build:Content/fonts/04B_30.spritefont
```

This uses the proper `FontDescriptionImporter` so the font is processed
through the content pipeline and becomes loadable via `ContentManager.Load`.

### Step 3: SpriteFont Helper Functions

Create a new file `sprite-font.lisp` with the following Lisp-friendly functions:

```lisp
(in-package :dungeon-slime)

(defun load-font (content-manager &key (name "fonts/04B_30"))
  "Load a SpriteFont from the ContentManager using the content pipeline.
   Returns a C# SpriteFont object."
  (dotnet:invoke-generic content-manager "Load"
    '("Microsoft.Xna.Framework.Graphics.SpriteFont")
    name))

(defun measure-string (font string)
  "Measure the pixel dimensions of a string using the given SpriteFont.
   Returns a C# Vector2 with X = width and Y = height."
  (dotnet:invoke font "MeasureString" string))

(defun draw-string (sprite-batch font string position color
                    &key (rotation 0.0f0) (origin v2:+zero+)
                         (scale v2:+one+) (effects sprite-effects:+none+)
                         (layer-depth 0.0f0))
  "Draw text using the given SpriteFont. Keyword arguments match the
   C# SpriteBatch.DrawString overloads."
  (dotnet:invoke sprite-batch "DrawString"
    font string position color
    rotation origin scale effects layer-depth))
```

**Decision: New file (`sprite-font.lisp`)** instead of adding to
`mg-classes.lisp`. This follows the project's modular architecture
pattern (see `sprite.lisp`, `tilemap.lisp`, `collision.lisp`, etc.)
and keeps core MonoGame math helpers separate from SpriteFont
interop helpers.

### Step 4: Update `game-1.lisp`

#### 4a: Add slots to `game-1` class

```lisp
;; Add to game-1 class slots:
(score :accessor score :initform 0 :documentation "Player's score")
(score-text :initform "Score" :initarg :score-text :accessor score-text
            :documentation "Prefix string for score display")
(score-font :accessor score-font :initform nil
            :documentation "Loaded SpriteFont for score rendering")
(score-text-position :accessor score-text-position
                     :initform v2:+zero+
                     :documentation "Precomputed position for score text")
(score-text-origin :accessor score-text-origin
                   :initform v2:+zero+
                   :documentation "Precomputed origin for score text alignment")
```

#### 4b: Update `load-content` method

After loading the existing content, load the font:

```lisp
(setf (score-font game) (load-font cont))
```

#### 4c: Update `initialize` method

After `call-next-method` (which loads content, making the font available):

```lisp
;; Precompute score text position: left edge of room bounds,
;; vertically centered on the first tile row.
(let* ((room (room-bounds game))
       (tm (tilemap game))
       (font (score-font game)))
  (setf (score-text-position game)
    (vector2 (rect:left room) (* 0.5f0 (tile-height (tileset tm)))))
  ;; Measure the full score string ("Score: 0") to compute origin.
  ;; Using the number ensures proper left-center alignment.
  (let* ((text (format nil "~a: 0" (score-text game)))
         (size (measure-string font text)))
    (setf (score-text-origin game)
      (vector2 0.0f0 (* 0.5f0 (y size))))))
```

#### 4d: Update collision response in `update`

In the slime-vs-bat trigger section (where `collect-sound` plays and
the bat respawns), add:

```lisp
;; Increase the player's score.
(setf (score game) (+ (score game) 100))
```

#### 4e: Update `draw` method

After drawing the slime and bat sprites:

```lisp
;; Draw the score
(let* ((sb (sprite-batch game))
       (font (score-font game))
       (score (score game))
       (pos (score-text-position game))
       (origin (score-text-origin game))
       (text (format nil "~a: ~a" (score-text game) score)))
  (draw-string sb font text pos +color-white+ :origin origin))
```

### Step 5: Update Package Exports

Update `packages.lisp` to export from `dungeon-slime`:
- `score-font` (accessor)
- `load-font`
- `measure-string`
- `draw-string`

Add `sprite-font` as a dependency in the ASDF system.

### Step 6: Update Documentation

- `FILES.md`: Add entry for `sprite-font.lisp`
- `PLAN.md`: Add Chapter 16 entry
- `README.md`: Note Chapter 16 is implemented
- `implementation-notes.md`: Document the SpriteFont approach

## File Summary

| File | Action | Description |
|------|--------|-------------|
| `Content/fonts/04B_30.ttf` | Create | Download font file (pixel font) |
| `Content/fonts/04B_30.spritefont` | Create | SpriteFont XML description |
| `Content.mgcb` | Modify | Add SpriteFont pipeline entry |
| `sprite-font.lisp` | Create | `load-font`, `measure-string`, `draw-string` |
| `game-1.lisp` | Modify | Add score slots, update `load-content`, `initialize`, `update`, `draw` |
| `packages.lisp` | Modify | Export new symbols |
| `dungeon-slime.asd` | Modify | Add `sprite-font.lisp` as dependency |
| `FILES.md` | Modify | Document new file |
| `PLAN.md` | Modify | Add Chapter 16 entry |
| `README.md` | Modify | Note Chapter 16 implemented |
| `implementation-notes.md` | Modify | Document SpriteFont approach |

## Testing

- Run the game and verify score text appears in the top-left corner
- Verify score increments by 100 when slime collides with bat
- Verify text is properly left-aligned and positioned
- Run `make test` to ensure no regressions
