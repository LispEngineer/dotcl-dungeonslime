# Plan 10 — Unit Tests for Pure Game Logic

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

Existing tests (per `test-harness.lisp` and the `*-test.lisp` files) cover
collision math (47 asserts), cspackages interop (59), typed calls (30),
tilemap (17), and scene lifecycle — but none of the gameplay logic. The
project convention is plain Lisp `assert`-style tests, no framework, output
to stderr, aggregated in `test-harness.lisp`, run via `--test`.

Untested logic that runs without a graphics device (or can be made to, with
light refactoring):

* `clamp-slime-to-bounds` / `clamp-bat-to-bounds` (reflection) in
  `gameplay-scene.lisp`
* bat velocity randomization / reflection math
* `handle-slime-bat-collision` scoring (+100 path)
* `pulse-color` (continuity + range — pairs with the plan-08 fix)
* `input-manager` just-pressed / just-released frame transitions
* `audio-controller` mute/unmute/volume-adjust state logic

If plan 03 (separate test system) has landed, new test files go in the
tests system; otherwise follow the current pattern (new `.asd` component +
`test-harness` registration) and plan 03 will migrate them.

## Chunks of work

### Chunk 1: Testability audit and light seams

* The clamp/reflect/score logic lives inside scene methods that take a
  live scene with sprites. Where a function needs only numbers/vectors,
  extract the arithmetic into standalone functions (e.g.
  `reflect-velocity`, `clamp-position`) taking plain arguments — same
  style as `collision.lisp`, which is why collision is the best-tested
  area. Keep extractions minimal; do not redesign the scene protocol.
* `input-manager`: `keyboard-info` etc. wrap real `KeyboardState` CLR
  structs. Check whether a `KeyboardState` can be constructed directly
  from key arrays via the cspackages wrapper (MonoGame supports
  `new KeyboardState(params Keys[])`) — if yes, the prev/current
  transition logic is testable against real CLR states with no mocking.
  `scene-test.lisp`'s `mock-game`/`mock-scene` shows the project's
  existing mocking idiom if not.
* `audio-controller`: mute/volume bookkeeping is Lisp-side state; test it
  with audio unavailable (the `handler-case` degradation path) — this
  doubles as a regression test for restricted environments.

### Chunk 2: Write the tests

* One new file per area or one `gameplay-logic-test.lisp` — follow the
  existing granularity (separate files per subsystem). Suggested:
  `gameplay-logic-test.lisp` (clamps, reflection, scoring, pulse-color)
  and `input-manager-test.lisp` and `audio-controller-test.lisp`.
* Include boundary cases: exactly-at-edge clamps, zero velocity, period
  boundary for `pulse-color`, mute-when-already-muted, volume clamping at
  0.0/1.0.
* Register in `test-harness.lisp` and the `.asd` (per whichever structure
  plan 03 left).

### Chunk 3: Exit-code correctness

* If not already done by plan 04 chunk 3: ensure a failing assert causes
  the `--test` run to exit nonzero (check how `run-all-tests` and
  `main.lisp` handle a signaled `error` from `assert`). Add a
  deliberately-failing scratch test to prove it, then remove it.

## Verification

* `make check-parens`, `make build test` — new tests run and pass, stderr
  output lists them alongside existing suites.
* Temporarily break one clamp constant, confirm the matching test fails
  and the process exits nonzero, restore.
* `(dungeon-slime-tests::run-all-tests)` from `make repl` also runs them.
