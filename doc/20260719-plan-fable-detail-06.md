# Plan 06 — Dead Code and Consistency Cleanup

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`. Overlaps with qwen findings #1, #3,
#5, #6 in `doc/qwen-code-smells-20260717.md`.

## Context

Accumulated commented-out blocks, duplicate/dead helpers, and two
consistency issues (accessor bypass, mixed float literal types) add noise
and, in the float case, real marshaling risk: DotCL marshals Lisp floats to
`double` by default and reflection will not narrow `double` to `float` for
C# setters, so double-float literals reaching MonoGame single-float APIs
are latent bugs (see CLAUDE.md "C# interop conventions").

Line numbers below are as of 2026-07-19; re-verify before editing.

## Chunks of work

### Chunk 1: Remove commented-out code blocks

Each block: confirm git history preserves it (it does — that is what git is
for), then delete.

* `mg-core.lisp:107-113` — dead window-title code.
* `mg-core.lisp:261-303` — ~44 lines of disabled error handling in `run`.
  Before deleting, check whether any of it should instead be *revived* as a
  `handler-case` around the run loop; if so, that is plan-worthy on its own
  — default to plain deletion and note the option in the commit message.
* `mg-core.lisp:332-335` — disabled second constructor in the
  `define-class` form.
* `csharp.lisp:15-53` — old TimeSpan implementation.
* `utils.lisp:24-37, 52-61` — dead `path-combine` / `file-exists` variants.
* Sweep for others: `grep -n '^;;;* *(' *.lisp` and judge each hit
  (explanatory commented *examples* in docs/headers stay; dead
  implementations go).

### Chunk 2: Redundant use-package

* `gameplay-scene.lisp:7` and `game-1.lisp:7` call
  `(use-package :mg-classes)` at top level although `packages.lisp` already
  `:use`s `:mg-classes` in `:dungeon-slime`. Delete both; build to confirm
  no symbol breakage (if something *was* depending on them, the package
  definition is the right place to fix it).

### Chunk 3: slot-value → accessors in input-manager.lisp

* Replace `slot-value` with the defined accessors at
  `input-manager.lisp:50-51, 197-198, 206-217, 255-261, 282` (re-locate by
  grep). Keep `slot-value` only where an accessor genuinely does not exist
  or where `initialize-instance` ordering requires it — note any such case
  in a comment.

### Chunk 4: Float literal normalization

* Decide the rule (proposed): values that flow into MonoGame/C# `float`
  APIs use single-float literals (`0.5f0`) or are `coerce`d at the interop
  boundary; internal Lisp math may stay double. Simplest consistent rule
  for this codebase: prefer `f0` literals for all gameplay constants.
* Audit: `grep -n '[0-9]e[+-]\?[0-9]' *.lisp` for double-float literals;
  known hotspots are `gameplay-scene.lisp` clamp code (`0.5e0`) and
  `collision.lisp` circle slot initforms (`0.0e0`).
* `collision.lisp` note: circle slots feed pure Lisp math (`collision-test`
  asserts) — changing their type must keep the 47 collision asserts
  passing; adjust test literals if needed.
* Record the chosen rule in CLAUDE.md's interop conventions.

### Chunk 5: Misc small smells (from qwen review, verify each)

* `texture-atlas.lisp:93-95` — local `string-suffix-p` duplicating
  `uiop:string-suffix-p`; replace and delete.
* `load-repl.lisp:29-30` — duplicated content-manager `RootDirectory` init
  (qwen #17); dedupe with the canonical init path if straightforward,
  otherwise leave with a comment.
* Repo-root stray logs: per AGENTS.md, ensure no `run_out*`/`repl_out*`
  files are left behind by this work.

## Verification

* `make check-parens` after every file touched (project rule).
* `make build test` — all tests pass.
* `make run` — title scene renders, Enter starts gameplay, slime moves,
  audio plays (or degrades silently), M mutes, +/- change volume. The
  float normalization chunk in particular needs this live check since
  marshaling issues do not always surface in `--test`.
