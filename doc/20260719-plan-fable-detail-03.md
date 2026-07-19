# Plan 03 — Separate the Test System from the Production Build

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

Nine test-ish files are ordinary components of the production
`dungeon-slime` system (`dungeon-slime.asd:34-62`): `load-system-test`,
`typed-calls-test`, `poc-test`, `collision-test`, `scene-test`,
`clr-defmethod-test`, `tilemap-test`, `audio-test`, `cspackages-test`, plus
`test-harness`. Consequences: every build compiles them, the shipped game
FASL contains them, and `main.lisp`'s `--test` path depends on them being
loaded. The qwen review (`doc/qwen-code-smells-20260717.md`, finding #9)
ranked this its top priority. A `:dungeon-slime-tests` package already
exists in `packages.lisp` but most test code actually lives in
`:dungeon-slime`.

Constraint: DotCL's MSBuild integration compiles the single system named by
`<DotclProjectAsd>`/the root system, in two phases, concatenating all
components. Whether a *secondary* system (`dungeon-slime/tests`) can be
built and loaded by the same pipeline needs a small experiment before
committing to a design — this is the main risk in this plan.

## Chunks of work

### Chunk 1: Feasibility spike (do first, throwaway)

* In a scratch branch of the working tree (no commits — experiment only),
  add a trivial `defsystem "dungeon-slime/tests"` to `dungeon-slime.asd`
  with one dummy file, and determine:
  * Does `dotnet build` compile it? (Likely not — only the root system.)
  * Can `make repl` `asdf:load-system` it after the root loads?
  * Can `Program.cs`/`main.lisp` load it at runtime when `--test` is
    passed (via `asdf:load-system` against source, or a second FASL)?
* Decide between two designs based on findings:
  * **Design A (preferred if loadable at runtime):** true secondary system;
    `--test` triggers `(asdf:load-system "dungeon-slime/tests")` then
    `run-all-tests`. Production FASL contains no test code.
  * **Design B (fallback):** keep tests compiled in the same build product
    but behind a clean package boundary, and gate compilation with an
    MSBuild property / second `.asd` used only by a `make build-with-tests`
    variant. More moving parts; only if A fails.
* Record findings in `doc/implementation-notes.md` regardless of outcome.

### Chunk 2: Move test code into the tests package

Independent of chunk 1's outcome:

* Move all test functions/files into the `:dungeon-slime-tests` package
  (extend `packages.lisp`'s existing definition; tests can `:use` or
  nickname `:dungeon-slime` internals — `::` access from the test package
  is acceptable per current style in `test-harness.lisp`).
* Files with zero asserts (`poc-test`, `audio-test`, `load-system-test`)
  are smoke tests; keep them but label them as such in `test-harness.lisp`
  output.

### Chunk 3: Wire the chosen design

* Implement Design A or B from chunk 1.
* Update `dungeon-slime.asd`: tests and `test-harness` leave the root
  system's `:components`; `main.lisp`'s `--test` branch updated to load
  them.
* Update `Makefile` (`test` target unchanged externally), `CLAUDE.md`
  ("There is no separate unit test framework" paragraph), and `FILES.md`.
* Watch for hidden coupling: `test-harness` currently `:depends-on`
  production files like `texture-atlas` and `game-1` — the tests system
  must `:depends-on ("dungeon-slime")` as a whole rather than individual
  components.

### Chunk 4: Verify no production regression

* Confirm the game binary no longer contains test symbols (in a REPL:
  `(find-package :dungeon-slime-tests)` before loading the tests system
  should be the stub only / NIL depending on design).
* Measure and record build time before/after in
  `doc/implementation-notes.md` (the win may be modest; the structural
  cleanliness is the point).

## Verification

* `make build test` — all tests still run and pass via `--test`.
* `make repl`, then `(dungeon-slime-tests::run-all-tests)` — REPL flow
  still works.
* `make run` — game launches to title scene, scene transition to gameplay
  works (Enter), confirming production code path unaffected.
* `make check-parens` clean.
