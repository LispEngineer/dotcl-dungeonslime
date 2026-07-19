# Plan 12 — Pause and Game-Over States

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`. The game-over half depends on plan
11 (the lose condition); the pause half is independent and can be done
first.

## Context

The tutorial's later chapters add an in-gameplay pause panel and a
game-over panel (Gum UI), a gameplay state machine, and audio
pause/resume. In this port: `audio-controller.lisp` already implements
`pause-audio` / `resume-audio` but nothing calls them; there is no pause
key, no state machine in `gameplay-scene`, no lose condition (until plan
11), and no game-over UI. The Gum UI infrastructure and event-handler
patterns already exist in `title-scene.lisp` (panels, buttons, sliders)
and `game-1.lisp` (`initialize-gum`) — reuse those patterns rather than
inventing new UI plumbing.

## Chunks of work

### Chunk 1: Gameplay state machine

* Add a `state` slot to `gameplay-scene` with values `:playing`, `:paused`,
  `:game-over` (plain keywords; compare with `eq` — per the project's
  recent enum-comparison cleanup, avoid stringifying).
* `update` dispatches on state: `:playing` runs the existing logic;
  `:paused` and `:game-over` skip world updates but still process the
  relevant input/UI. `draw` always renders the world (dimmed or overlaid
  when not `:playing` — tutorial draws the world beneath the panel).

### Chunk 2: Pause

* Toggle: Escape (currently Escape exits to title — check
  `gameplay-scene`'s current Escape handling and follow the tutorial:
  Escape opens the pause panel; the panel's buttons are Resume and Quit)
  and gamepad Start.
* Pause panel via Gum, modeled on `create-options-panel` in
  `title-scene.lisp` (and plan 08 chunk 6's slider/button helpers if
  landed): Resume button → `:playing`; Quit button → `change-scene` to
  title.
* Call `pause-audio` on entering `:paused`, `resume-audio` on leaving —
  finally exercising the existing controller functions. Preserve
  `handler-case` degradation.

### Chunk 3: Game over

* Plan 11 leaves wall/self collision as an immediate scene reset; replace
  that with entering `:game-over`.
* Game-over panel: "Game Over" text, Retry button (reinitialize
  slime/bat/score and return to `:playing` — factor a `reset-gameplay`
  function out of scene `initialize` so retry does not rebuild
  content/tilemap), Quit button (to title).
* Stop or pause gameplay music on game over per tutorial behavior; play a
  game-over/lose sound if the tutorial's asset set includes one (check
  `Content/audio/`).

### Chunk 4: Tests and docs

* State-transition tests (pure logic): playing→paused→playing preserves
  slime/bat/score; playing→game-over on collision flag; retry resets
  score and segment count. Structure the transitions as testable
  functions on the scene where feasible.
* README.md chapter table update; FILES.md if new files are added.

## Verification

* `make check-parens`, `make build test`.
* `make run`:
  * Escape during gameplay pauses: world freezes, panel shows, music
    pauses; Resume continues exactly where left off, music resumes.
  * Quit from pause returns to title (title music per plan 09).
  * Driving the slime into a wall or itself shows game over; Retry
    restarts a fresh run with score 0; Quit returns to title.
  * Mute/volume keys still work in all states.
