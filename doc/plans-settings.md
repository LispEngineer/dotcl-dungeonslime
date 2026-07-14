# Plan: Implement `CreateOptionsPanel` (MonoGame Tutorial Chapter 20)

*Plan authored by opencode (Qwen3.6-27B-MTP-GGUF) on 2025-07-14*
*Target C# reference: `private void CreateOptionsPanel()` from [MonoGame Gum UI tutorial](https://docs.monogame.net/articles/tutorials/building_2d_games/20_implementing_ui_with_gum/index.html)*

## Objective

Implement the `CreateOptionsPanel` function in Common Lisp within this DotCL/MonoGame project, following the tutorial's pattern. Only the single function is in scope; integration with the rest of the game loop is out of scope (handled separately by the user).

## UI Layout

A `Panel` with five children arranged as:

| Element         | Position              | Purpose                |
|----------------|-----------------------|------------------------|
| TextRuntime    | (10, 10)              | "OPTIONS" title        |
| Label          | (35, 35)              | "Music" label          |
| Slider         | Anchor Top, Y=30      | Music volume (0..1)    |
| Label          | (20, 80)              | "SFX" label            |
| Slider         | Anchor Top, Y=93      | SFX volume (0..1)      |
| Button         | Anchor BottomRight, X=-28, Y=-10 | "BACK" button    |

The panel is docked to `Fill`, initially invisible, and added to the Gum root.

## Files to Modify

1. `packages.lisp` - add local nickname for Label
2. `audio-controller.lisp` - add convenience methods for SongVolume and SoundEffectVolume
3. `title-scene.lisp` - add `create-options-panel` method, 5 event handlers, and wire in `initialize-ui`
4. `doc/implementation-notes.md` - document the event-handling pattern via `*core*`
5. `FILES.md` - note the new method
6. `antigravity-log.md` - log this change

## Detailed Changes

### Step 1: `packages.lisp`

Add `(:lbl :gum-forms-controls-label)` to the `:local-nicknames` of `:dungeon-slime` (and `:dungeon-slime-tests` if needed). The `gum-forms-controls-label` package already exists in `cspackages/` via the generator.

### Step 2: `audio-controller.lisp` - Convenience methods

Add reader+setter methods for `song-volume` and `sound-effect-volume`. These must:
- Store the new volume in the `audio-controller`'s `previous-song-volume` and `previous-se-volume` slots so that `toggle-mute` / `unmute` can restore the slider-adjusted volume.
- Coerce to `single-float` before touching the C# properties (Float vs DoubleFloat reflection mismatch, documented in `implementation-notes.md`).
- Wrap in `handler-case` (per existing patterns for multi-user audio fallback).

```lisp
(defmethod song-volume ((ac audio-controller))
  "Return the current music volume from the MediaPlayer."
  (get-media-volume))

(defmethod (setf song-volume) (new-val (ac audio-controller))
  "Set music volume and record in previous-song-volume for mute/unmute."
  (setf (previous-song-volume ac) new-val)
  (set-media-volume (coerce new-val 'single-float)))

(defmethod sound-effect-volume ((ac audio-controller))
  "Return the current SFX volume from SoundEffect.MasterVolume."
  (get-master-volume))

(defmethod (setf sound-effect-volume) (new-val (ac audio-controller))
  "Set SFX volume and record in previous-se-volume for mute/unmute."
  (setf (previous-se-volume ac) new-val)
  (set-master-volume (coerce new-val 'single-float)))
```

### Step 3: `title-scene.lisp` - Event handlers

Five handlers, using `*core*` global to access the active scene:

```lisp
(defun handle-music-slider-value-changed (sender args)
  "Update music volume as the slider is being moved."
  (declare (ignore args))
  (let* ((scene (active-scene *core*))
         (audio (audio-controller (scene-game scene))))
    (setf (song-volume audio)
          (coerce (cs:value sender) 'single-float))))

(defun handle-music-slider-value-change-completed (sender args)
  "Play UI sound effect after the music slider adjustment completes."
  (declare (ignore args))
  (let* ((scene (active-scene *core*))
         (audio (audio-controller (scene-game scene))))
    (play-sound-effect audio (ui-sound-effect scene))))

(defun handle-sfx-slider-value-changed (sender args)
  "Update SFX volume as the slider is being moved."
  (declare (ignore args))
  (let* ((scene (active-scene *core*))
         (audio (audio-controller (scene-game scene))))
    (setf (sound-effect-volume audio)
          (coerce (cs:value sender) 'single-float))))

(defun handle-sfx-slider-value-change-completed (sender args)
  "Play UI sound effect after the SFX slider adjustment completes."
  (declare (ignore args))
  (let* ((scene (active-scene *core*))
         (audio (audio-controller (scene-game scene))))
    (play-sound-effect audio (ui-sound-effect scene))))

(defun handle-options-button-back (sender args)
  "Return to title panel when the BACK button is clicked."
  (declare (ignore sender args))
  (let ((scene (active-scene *core*)))
    (play-sound-effect (audio-controller (scene-game scene))
                       (ui-sound-effect scene))
    (setf (cs:visible? (title-screen-buttons-panel scene)) t)
    (setf (cs:visible? (options-panel scene)) nil)
    (setf (cs:focused? (options-button scene)) t)))
```

**Note:** `args` is declared ignored in all handlers. In DotCL, event handlers receive `sender` and `args` objects. `handle-music-slider-value-changed` and `handle-sfx-slider-value-changed` read `sender` (the Slider) via `cs:value`. The `_Changed` and `_ChangeCompleted` callbacks share the same `ValueChanged` / `ValueChangeCompleted` C# event delegate. The `_Changed` handlers are the "dragging" handlers; the `_ChangeCompleted` handlers fire after release and handle sound playback.

### Step 4: `title-scene.lisp` - `create-options-panel` method

```lisp
(defmethod create-options-panel ((scene title-scene))
  "Build the options panel with volume sliders for music and SFX."
  (setf (options-panel scene) (panel:new))
  (cs:dock (options-panel scene) dock:+fill+)
  (setf (cs:visible? (options-panel scene)) nil)
  (cs:add-to-root (options-panel scene))

  ;; "OPTIONS" title text at (10, 10)
  (let ((options-text (mono-game-gum-gue-deriving-text-runtime:new)))
    (setf (cs:x options-text) 10)
    (setf (cs:y options-text) 10)
    (setf (cs:text options-text) "OPTIONS")
    (cs:add-child (options-panel scene) options-text))

  ;; "Music" label at (35, 35)
  (let ((music-label (lbl:new)))
    (setf (cs:text music-label) "Music")
    (setf (cs:x music-label) 35)
    (setf (cs:y music-label) 35)
    (cs:add-child (options-panel scene) music-label))

  ;; Music slider: anchored Top, Y=30, range 0..1
  (let ((music-slider (gum-forms-controls-slider:new)))
    (cs:anchor music-slider anchor:+top+)
    (setf (cs:y music-slider) 30.0f0)
    (setf (cs:minimum music-slider) 0.0f0)
    (setf (cs:maximum music-slider) 1.0f0)
    (setf (cs:value music-slider)
          (song-volume (audio-controller (scene-game scene))))
    (setf (cs:small-change music-slider) 0.1f0)
    (setf (cs:large-change music-slider) 0.2f0)
    (cs:add-value-changed music-slider #'handle-music-slider-value-changed)
    (cs:add-value-change-completed music-slider #'handle-music-slider-value-change-completed)
    (cs:add-child (options-panel scene) music-slider))

  ;; "SFX" label at (20, 80)
  (let ((sfx-label (lbl:new)))
    (setf (cs:text sfx-label) "SFX")
    (setf (cs:x sfx-label) 20)
    (setf (cs:y sfx-label) 80)
    (cs:add-child (options-panel scene) sfx-label))

  ;; SFX slider: anchored Top, Y=93, range 0..1
  (let ((sfx-slider (gum-forms-controls-slider:new)))
    (cs:anchor sfx-slider anchor:+top+)
    (setf (cs:y sfx-slider) 93.0f0)
    (setf (cs:minimum sfx-slider) 0.0f0)
    (setf (cs:maximum sfx-slider) 1.0f0)
    (setf (cs:value sfx-slider)
          (sound-effect-volume (audio-controller (scene-game scene))))
    (setf (cs:small-change sfx-slider) 0.1f0)
    (setf (cs:large-change sfx-slider) 0.2f0)
    (cs:add-value-changed sfx-slider #'handle-sfx-slider-value-changed)
    (cs:add-value-change-completed sfx-slider #'handle-sfx-slider-value-change-completed)
    (cs:add-child (options-panel scene) sfx-slider))

  ;; "BACK" button: anchored BottomRight, offset (-28, -10)
  (let ((button (uibutton:new)))
    (setf (options-back-button scene) button)
    (setf (cs:text button) "BACK")
    (cs:anchor button anchor:+bottom-right+)
    (setf (cs:x button) -28.0f0)
    (setf (cs:y button) -10.0f0)
    (cs:add-click button #'handle-options-button-back)
    (cs:add-child (options-panel scene) button)))
```

### Step 5: `title-scene.lisp` - wire in `initialize-ui`

In the `initialize-ui` method, replace the comment `;; TODO: CreateOptionsPanel();` with `(create-options-panel scene)`.

### Step 6: Documentation updates

- **`doc/implementation-notes.md`**: Add a section documenting the `*core*` global pattern for Gum event handlers.
- **`FILES.md`**: Note the new `create-options-panel` method and five event handlers in `title-scene.lisp`.
- **`antigravity-log.md`**: Record the implementation with references to the tutorial and the plan file.

## Binding References

| C# Type/Member | Lisp equivalent |
|---|---|
| `Panel` | `panel:new` |
| `Button` (Gum) | `uibutton:new` |
| `Label` | `lbl:new` (local nickname `lbl` → `gum-forms-controls-label`) |
| `TextRuntime` | `mono-game-gum-gue-deriving-text-runtime:new` |
| `Slider` | `gum-forms-controls-slider:new` |
| `.X` / `.Y` | `cs:x` / `cs:y` generics (from `csharp-generics`, dispatched on FrameworkElement) |
| `.Text` | `cs:text` generic (from `csharp-generics`) |
| `.Dock(...)`, `.Anchor(...)` | `cs:dock` / `cs:anchor` generics |
| `.AddToRoot()` | `cs:add-to-root` generic |
| `.AddChild(...)` | `cs:add-child` generic |
| `.IsVisible` | `cs:visible?` generic |
| `.IsFocused` | `cs:focused?` generic |
| `.Minimum`, `.Maximum`, `.Value`, `.SmallChange`, `.LargeChange` | `cs:minimum`, `cs:maximum`, `cs:value`, `cs:small-change`, `cs:large-change` (from `range-base.lisp`) |
| `.Click += ...` | `cs:add-click` |
| `.ValueChanged += ...` | `cs:add-value-changed` |
| `.ValueChangeCompleted += ...` | `cs:add-value-change-completed` |
| `Gum.Wireframe.Dock.Fill` | `dock:+fill+` (from `gum-wireframe-dock.lisp`) |
| `Gum.Wireframe.Anchor.Top` | `anchor:+top+` (from `gum-wireframe-anchor.lisp`) |
| `Gum.Wireframe.Anchor.BottomRight` | `anchor:+bottom-right+` |

## Known Risks

1. **Float coercion**: All volume values passed to C# properties must be `single-float` (Float vs DoubleFloat reflection mismatch documented in `implementation-notes.md`).
2. **Audio device absent**: Event handlers that call `play-sound-effect` already handle the `nil` sound effect case gracefully via existing `handler-case` in `play-sound-effect`.
3. **Event handler signature**: C# events pass `object sender` and `EventArgs e` (or `ValueChangedEventArgs`). The DotCL `dotnet:add-event` bridge delivers these as two Lisp arguments. The handler must accept both, even if `args` is unused.
