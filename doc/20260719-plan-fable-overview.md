# Enhancement Plan Overview — 2026-07-19 (Fable)

Survey of potential improvements to the DotCL Dungeon Slime project, produced
2026-07-19 after a full review of the build system, Lisp/C# sources, tests,
and existing analysis docs (including `doc/qwen-code-smells-20260717.md`).
Each numbered plan below has a corresponding detail file
`doc/20260719-plan-fable-detail-NN.md` breaking it into tangible chunks of
work suitable for independent implementation.

The plans are ordered so that earlier ones reduce risk or friction for later
ones, but most are independent and can be done in any order. Plans 01-05
address the build/compile system; 06-10 address code quality and testing;
11-12 add missing game features.

## Build and compile system

### 01 — Documentation/code drift repair (high value, low effort)

> **✅ DONE (2026-07-19, implemented by Claude Fable).** All five chunks
> completed; see the annotations in
> [20260719-plan-fable-detail-01.md](20260719-plan-fable-detail-01.md).
> Notable extra finding during implementation: the stub-`defpackage` block
> in `packages.lisp` that CLAUDE.md said to preserve had *also* already
> been removed on 2026-07-11, so that CLAUDE.md section was rewritten too.

`CLAUDE.md` and `doc/implementation-notes.md` still describe the old
`*cspackages-components*` read-splice mechanism for including `cspackages/`
in the build, and instruct contributors to add
`,@(mapcar ... *cspackages-components*)` to `:depends-on` lists. The
committed `dungeon-slime.asd` no longer works that way — it pushes
`cspackages/` onto `asdf:*central-registry*` and uses a plain
`:depends-on ("csharp-assembly-packages")`. `doc/BUILD-GUIDE.md` still
describes the pre-NuGet sibling-`../dotcl` build model, and
`asd-simplification-plan.md` proposes a third (never-adopted) `asd-module`
design. Any AI or human contributor following the current docs will work
against code that no longer exists. This is the cheapest material
improvement available and should land first.

### 02 — Makefile and build hygiene (material build-system improvement)

The single most material *behavioral* build improvement: encode the manual
rituals currently documented only as gotchas into Makefile targets.
Includes: a combined build+test target; wiring `make check-parens` in as a
prerequisite of the build (paren imbalances currently surface as misleading
errors deep in the DotCL `.concat.lisp` compile); a `deep-clean` target that
also clears the second, hidden ASDF FASL cache under `~/.cache/common-lisp/`
(today the recovery procedure lives only in `implementation-notes.md`);
automating the `.spritefont` touch when the `.ttf` is newer; and small
fixes (`.PHONY` omissions, the ambiguous commented-out `cspackages`
prerequisite on `build:`).

### 03 — Separate test system from the production build

All nine test files (`poc-test`, `collision-test`, `test-harness`, etc.) are
components of the production `dungeon-slime` system, inflating every build
and shipping test code in the game FASL. Split them into a
`dungeon-slime/tests` secondary system while keeping `--test` and
`(dungeon-slime-tests::run-all-tests)` working. This was also the qwen
review's top-ranked finding.

### 04 — Continuous integration

No CI exists; all verification is manual. A GitHub Actions workflow running
`check-parens` + `dotnet build` + `--test` (with the graphics/audio-dependent
tests already degrading gracefully) would catch paren imbalances, doc-drift
regressions, and build breaks automatically.

### 05 — cspackages regeneration ergonomics

The ~85-line hand-maintained `--class` flag block in the Makefile becomes a
data manifest; the bootstrap ordering (`make cspackages` requires a prior
`make build`) gets an explicit dependency; timestamp-churn reversion stays
but is documented in-line.

## Code quality and refactoring

### 06 — Dead code and consistency cleanup

Remove the large commented-out blocks (`mg-core.lisp` run error-handling,
`csharp.lisp` old TimeSpan, `utils.lisp` dead path helpers), the redundant
top-level `use-package` calls, `slot-value` bypassing accessors in
`input-manager.lisp`, and normalize float literals to single-float where
values cross into MonoGame APIs.

### 07 — Replace remaining raw .NET interop with cspackages wrappers

A handful of raw `dotnet:invoke`/`dotnet:static` string calls remain
(`MediaPlayer`, `SoundEffect.MasterVolume`, `GC.Collect`, window title,
`GraphicsDevice.Clear`). Route them through generated wrappers, adding any
missing classes to the generator manifest where a wrapper gap (not a
generator bug) is the cause.

### 08 — Gameplay-code refactors and small fixes

Extract duplicated per-frame patterns (`sprite-circle-bounds` helper for the
3× repeated collision-circle construction; a slime-movement helper replacing
8 near-identical `setf` blocks across keyboard and gamepad handlers;
deduplicate the four `handler-case`-wrapped audio volume accessors), fix the
`pulse-color` sawtooth-vs-pulse bug, and hoist self-flagged magic
numbers/strings into named constants.

### 09 — Functional gap fixes: Start button and background music

`handle-start-clicked` in `title-scene.lisp` is a "TODO: CODE ME" stub, so
the Gum Start button does nothing (only keyboard Enter/Space starts the
game). `game-1.lisp` also carries a TODO for restarting background music
missed from Chapter 17. Small, user-visible wins.

### 10 — Unit tests for pure game logic

The existing tests cover interop and collision math but none of the gameplay
logic: bounds clamping, bat reflection, scoring, input just-pressed
transitions, audio-controller mute/volume state, `pulse-color`. Add plain
Lisp assert-style tests (per project convention) for the logic that runs
without a live graphics device.

## Feature completion (vs. the MonoGame tutorial)

### 11 — Chapter 19: snake-style gameplay rewrite

The game is still the early "slime moves freely, eat the bat for +100"
version. The tutorial's defining feature — grid-based snake movement with
growing body segments and self-collision — is entirely absent. Largest
single chunk of work; lands after the refactors in 06-10 so it builds on
clean code.

### 12 — Pause and game-over states

`pause-audio`/`resume-audio` exist but nothing calls them; there is no pause
key, pause UI, lose condition, or game-over screen. Depends on plan 11 for
the lose condition (self-collision) but the pause half can be done
independently.

## Suggested sequencing

1. **01, 02** — cheap, de-risk everything after.
2. **03, 04** — test system split, then CI that exercises it.
3. **05** — whenever cspackages next needs regeneration.
4. **06, 07, 08, 09** — code quality, in roughly that order (dead-code
   removal first shrinks the diff surface for the rest).
5. **10** — tests for the now-cleaner logic.
6. **11, 12** — feature work last, on the improved foundation.
