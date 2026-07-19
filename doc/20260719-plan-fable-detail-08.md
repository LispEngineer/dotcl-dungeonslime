# Plan 08 — Gameplay-Code Refactors and Small Fixes

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`. Overlaps with qwen findings #4, #18.

## Context

Localized duplication and magic values in the scene code, plus one likely
logic bug. All chunks are small and independent; line numbers are as of
2026-07-19 — re-verify by grep before editing.

## Chunks of work

### Chunk 1: Collision-circle helper

`gameplay-scene.lisp` builds a `circle` from a sprite + position in three
near-identical places (`:246-250`, `:264-268`, `:302-311`), every frame.

* Add a helper (suggested: `sprite-circle-bounds sprite position` in
  `collision.lisp` or `gameplay-scene.lisp`) returning the bounding circle;
  replace all three sites.
* Optional stretch (qwen #10, GC pressure): give `gameplay-scene` two
  reusable `circle` instances mutated in place instead of fresh
  `make-instance` per frame. Only do this if the helper keeps a clean API
  (e.g. `(update-circle-bounds circ sprite pos)`); measure nothing —
  correctness first, this game is not GC-bound.

### Chunk 2: Slime-movement helper

`check-gameplay-keyboard-input` (`gameplay-scene.lisp:195-206`) and
`check-gameplay-gamepad-input` (`:228-239`) each repeat a 3-line
`(setf (slime-pos scene) (v2:new (+/- (cs:x ...)) ...))` block four times
(up/down/left/right) — 8 copies.

* Add `(move-slime scene dx dy)` (single-float deltas) and collapse both
  handlers to four calls each. Keyboard and gamepad speeds may differ —
  preserve exact current values.

### Chunk 3: Audio accessor dedup

`audio-controller.lisp:80-100` — four near-identical `handler-case`-wrapped
static accessors (`get-media-volume`, `set-media-volume`,
`get-master-volume`, `set-master-volume`).

* Extract the shared pattern into a local macro or a
  `with-audio-degradation` wrapper macro (returns a default on CLR error),
  keeping the four public function names and exact degradation semantics.
  If plan 07 already rewrote these to wrappers, rebase this chunk on that.

### Chunk 4: pulse-color fix

`pulse-color` (`gameplay-scene.lisp:15-20`) documents "cycling through
brightness" but computes `(color:new (round (* 255 frac)) 0 0)` — a red
sawtooth that snaps from 255 to 0 each period. The title scene's prompt
(`title-scene.lisp:191`) shows the intended idiom: a sine pulse.

* Rewrite using the sine form (`(+ base (* amplitude (sin ...)))`) so
  brightness rises and falls continuously; confirm intended look with
  `make run` (the score text or slime tint — find the call site first).
* Add a plain-Lisp test asserting continuity at the period boundary
  (value at t=period-epsilon ≈ value at t=period+epsilon) — goes with
  plan 10's test batch but can land here.

### Chunk 5: Magic numbers and strings → named constants

Self-flagged FIXMEs first, then the obvious clusters:

* `title-scene.lisp:124` `scroll-speed 30.0f0` (FIXME'd) — constant.
* `title-scene.lisp:94` `"audio/ui"` (FIXME "Magic string") — constant.
* `title-scene.lisp:150` background color `(24 33 58)`; `:191` pulse
  constants `0.6/0.4/4.0`.
* `gameplay-scene.lisp:314` score increment `100`; `:12`
  `color-cycle-period` should likely be `defconstant`/`alexandria`-style
  `+color-cycle-period+` rather than an exported mutable `defparameter` —
  unless runtime tweaking from the REPL is intended, in which case leave
  it and add a comment saying so.
* Gum UI layout offsets in `title-scene.lisp:288-374` (`50, -12, -50, 35,
  80, 93, -28, -10`...): hoisting *every* one produces constant-soup;
  instead group them into a few `let`-bound locals or a layout plist per
  panel with descriptive keys. Judgement call — favor readability over
  completeness.
* Home for constants: `constants.lisp` already exists in the system —
  put cross-file constants there; scene-local ones stay file-local.

### Chunk 6: create-options-panel slider dedup

`title-scene.lisp:309-375` builds two sliders differing only in label,
position, initial value, and callback.

* Extract `(make-volume-slider parent label y initial-value on-change)`
  (exact parameter set per the actual diff between the two blocks).

## Verification

* `make check-parens` after each file edit; `make build test`.
* `make run` — verify: slime moves identically in all four directions via
  keyboard and gamepad (if available); bat bounce and eat/+100 unchanged;
  score/pulse coloring now pulses smoothly; options panel sliders still
  adjust music/SFX volumes.
