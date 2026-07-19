# Plan 09 — Functional Gap Fixes: Start Button and Background Music

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

Two self-flagged TODOs are real user-visible defects, not just smells:

1. `title-scene.lisp:205-217` — `handle-start-clicked` is a
   "TODO: CODE ME" stub. Clicking the Gum **Start** button does nothing;
   only the keyboard path (Enter/Space in the title scene's `update`)
   starts the game.
2. `game-1.lisp:43` — "TODO: Start playing the background music (missed
   from Chapter 17)": background music is not (re)started on the scene
   flow the tutorial specifies.

Both are small, high-visibility fixes.

## Chunks of work

### Chunk 1: Wire the Start button

* Find the keyboard start path in `title-scene.lisp`'s `update` (the
  Enter/Space branch) — it queues the gameplay scene via `change-scene`
  and presumably plays a UI sound. Extract that into a `start-game`
  function on the title scene.
* Implement `handle-start-clicked` to call it. Mind the existing pattern:
  the other Gum handlers (`title-scene.lisp:226-271`) reach into `*core*`
  for scene/audio access — follow the same pattern for consistency (the
  global-state redesign is qwen #2 and out of scope here).
* Check whether the Options button / panel visibility interacts (Start
  should probably be ignored or the click swallowed while the options
  panel is open — match what the keyboard path does).

### Chunk 2: Background music behavior

* Read Chapter 17 of the MonoGame tutorial for the intended behavior
  (theme song starts at title scene, gameplay scene switches to its own
  track — `gameplay-scene.lisp:167` already sets up looping music for
  gameplay, so the gap is likely the *title/theme* side and/or resuming
  after returning to title via Escape).
* Implement per tutorial: likely `play-song` in `title-scene`'s
  `load-content`/`initialize`, via the existing `audio-controller`
  machinery. Preserve the `handler-case` audio-degradation convention so
  restricted environments stay silent rather than crashing.
* Verify Escape-from-gameplay → title transition restores the title music
  and re-entering gameplay restarts the gameplay track without doubling
  (the scene `dispose` path should stop the old song — check
  `audio-controller`'s song handling for stop-on-switch).

### Chunk 3: Regression note in docs

* Tick off both TODOs; update README.md's chapter-status section if it
  tracks Chapter 17/20 completeness caveats.

## Verification

* `make check-parens`, `make build test`.
* `make run`:
  * Click Start with the mouse → gameplay begins (with its music).
  * Keyboard Enter/Space path still works identically.
  * Title music plays on launch; Escape from gameplay returns to title
    with title music; re-Start works repeatedly without audio doubling.
  * `M` mute and volume keys still behave across scene switches.
* If running under a restricted/silent environment, at minimum confirm no
  crash and that the game degrades as before.
