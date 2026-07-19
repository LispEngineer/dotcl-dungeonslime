# Plan 11 — Chapter 19: Snake-Style Gameplay Rewrite

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`. Largest single work item; schedule
after plans 06-10.

## Context

The port currently implements the tutorial's *interim* gameplay: the slime
moves freely under direct input, a bat bounces around, and eating the bat
scores +100. The MonoGame Dungeon Slime tutorial's Chapter 19 ("The Game
Mechanics") replaces this with the defining snake mechanics:

* The slime becomes a chain of segments moving on a fixed grid at a timed
  cadence (movement tick), head-directed.
* Input sets the head's *next direction* (with reversal disallowed), not
  the position directly.
* Eating the bat appends a segment and respawns the bat at a random free
  tile.
* Segments interpolate visually between grid positions between ticks.
* Colliding with the wall or the slime's own body ends the game (the lose
  condition consumed by plan 12).

No segment/grid logic exists anywhere in the codebase today. Reference the
upstream tutorial (https://docs.monogame.net/articles/tutorials/building_2d_games/,
Chapter 19) and its C# source for exact constants (tick interval, grid
cell size = tilemap tile size, initial length).

## Chunks of work

### Chunk 1: Slime object

Following the tutorial's `Slime` class decomposition:

* New `slime.lisp`: CLOS class `slime` owning: list/vector of segment
  structs (each with `at` position, `to` position, `direction` v2),
  current input-buffered next direction, movement timer, the animated
  sprite, and a `movement-progress` for interpolation.
* Segment representation: the tutorial uses a struct with `At`/`To`
  vectors; a simple Lisp struct (or class) with single-float v2 pairs
  matches the existing `mg-classes` style.
* Methods: `initialize` (head + N segments at start tile), `handle-input`
  (buffer direction, forbid 180° reversal), `move` (tick: cascade
  positions tail→head), `grow`, `update` (timer + interpolation), `draw`
  (draw sprite at each segment's interpolated position), plus
  `head-bounds` returning a `circle` for collision (reuse plan 08's
  `sprite-circle-bounds`).
* Pure logic (direction cascade, reversal check, growth) written as
  plain functions where possible for testability.

### Chunk 2: Bat object

* New `bat.lisp` mirroring the tutorial's `Bat` class: sprite, position,
  velocity, bounce SFX; `randomize-velocity`, `update`, `draw`,
  `bounds`. Mostly extraction of existing bat code from
  `gameplay-scene.lisp` into a class — behavior unchanged.

### Chunk 3: Gameplay scene rewrite

* `gameplay-scene.lisp` becomes the coordinator: owns `slime` and `bat`
  instances, the tilemap, score, and the room bounds rectangle.
* Update loop: forward input to slime; on slime move tick, check
  head-vs-wall and head-vs-body collisions (signal game-over state —
  minimal handling here, full screen in plan 12: for now, reset the scene
  as the tutorial's chapter does before its GameOver panel exists);
  head-vs-bat eats: `grow`, respawn bat at a random tile not occupied by
  the slime, +100, collect SFX.
* Keep keyboard and gamepad direction input; delete the free-movement
  handlers (plan 08's `move-slime` helper gets subsumed — coordinate if
  both plans are in flight).
* Constants (tick interval, initial segment count) into `constants.lisp`.

### Chunk 4: Tests

* Plain-Lisp tests for: direction cascade over a 3-segment move; reversal
  rejection; growth appends at tail correctly; self-collision detection
  (head position equals any body segment tile); bat respawn never lands
  on a slime tile (run the picker with a seeded/deterministic sequence or
  assert-over-many-iterations).
* Register per the plan-03/10 test structure.

### Chunk 5: Docs

* README.md chapter table: mark Chapter 19 done; FILES.md entries for
  `slime.lisp` / `bat.lisp`; `.asd` components with correct
  `:depends-on`.

## Verification

* `make check-parens`, `make build test` (new logic tests pass).
* `make run`: slime advances on a grid at a steady cadence; direction
  changes take effect at the next tick; reversal into itself is ignored;
  eating the bat grows the slime, respawns the bat, adds 100, plays the
  collect sound; hitting a wall or the body resets (interim game-over);
  motion between ticks is smooth (interpolation), not teleporting.
* Escape back to title and re-entering gameplay yields a fresh slime.
