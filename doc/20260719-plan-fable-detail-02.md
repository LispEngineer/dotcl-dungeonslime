# Plan 02 — Makefile and Build Hygiene

> **✅ DONE (2026-07-19, implemented by Claude).** All five chunks below are
> complete; see per-chunk annotations. Verified with a full cold cycle:
> `make deep-clean && make build && make test` (all passing), plus targeted
> checks of `check-parens` (fails fast on a real imbalance, ignores
> `scratch/`) and `content-fonts` (touches `.spritefont` only when its `.ttf`
> is newer, confirmed via `git status` showing no tracked diff from the
> mtime-only touch).

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

Several build rituals exist only as prose gotchas in CLAUDE.md /
`doc/implementation-notes.md` and must be remembered by every contributor
(human or AI). Encoding them as Makefile targets is the most material
practical improvement available to the build system without touching the
DotCL/MSBuild internals (which live upstream in the `DotCL.Runtime` NuGet
package and are not this repo's to change).

Current pain points, all verified against the working tree:

1. `make test` / `make run` do not build first; the documented workaround is
   remembering to type `make build test`.
2. `make check-parens` is manual, yet a paren imbalance produces misleading
   errors deep inside the DotCL `.concat.lisp` compile (MSB3073 exit 134).
   The check takes well under a second — it should gate every build.
3. `make clean` misses the second, independent ASDF FASL cache at
   `~/.cache/common-lisp/dotcl-<ver>-linux-x64/<abs-source-path>/`, which
   has already caused stale-wrapper bugs ("no package named
   MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D" after a full clean —
   `doc/implementation-notes.md`, "A Second, Independent FASL Cache").
4. Editing `Content/fonts/04B_30.ttf` silently does nothing unless the
   `.spritefont` is touched (MGCB only watches the `.spritefont` XML).
5. Small defects: `.PHONY` (Makefile:36) omits `mgcb`, `build-actual`, and
   `all`; `build:` (Makefile:40) carries an ambiguous commented-out
   `cspackages` prerequisite.

## Chunks of work

### Chunk 1: check-parens gates the build

> **✅ DONE.** `build-actual` now depends on `check-parens` (Makefile:68).
> `check_parens.py` was confirmed to exit nonzero on a real imbalance
> (tested against a temporarily-broken copy of `utils.lisp`, exit code 2).
> A temporarily-unbalanced file placed directly under `scratch/` did *not*
> fail the check — `check-parens`'s `find` now excludes `*/scratch/*`
> (Makefile:51), since several already-unbalanced throwaway `.lisp` files
> live there permanently and would otherwise break every `make build`.

* Make `build-actual` depend on `check-parens` (or add the find/xargs
  invocation as the first recipe line of `build-actual`). Prefer the
  prerequisite form so `make check-parens` stays independently runnable.
* Confirm `check_parens.py` exits nonzero on imbalance (read the script;
  test by temporarily unbalancing a scratch file under `scratch/`).

### Chunk 2: combined build+test / build+run targets

> **✅ DONE.** Added `check: build test` (Makefile:42) as an alias alongside
> the pre-existing `all: build test`; kept both since `all` was already in
> use. `test`/`run` left unchanged (still no implicit build). CLAUDE.md's
> Commands section documents `make check` as the one to run before declaring
> a change done.

* Keep `test` and `run` as-is (fast, no build — this is intentional for
  iteration). Add:
  * `check: build test` — the "one command before declaring victory"
    target. (`all` already equals `build test`; either rename or keep both
    with `check` as an alias, but document whichever in CLAUDE.md.)
* Update CLAUDE.md's Commands section to mention the new target(s).

> **✅ Also updated README.md** (not called for explicitly by this chunk, but
> found to carry the same drift): its "Makefile" command list and manual
> "Or manually run the steps" section documented the old manual
> `touch Content/fonts/04B_30.spritefont` font-rebuild workaround and the
> pre-`scratch/`-exclusion `check-parens` `find` invocation. Both were
> updated to describe the automated `content-fonts`/`check-parens`
> behavior; `doc/implementation-notes.md`'s narrative/historical sections
> (the MSBuild-incremental-caching discussion, old debugging-log entries)
> were left as-is since they describe past incidents rather than current
> command usage — only its "Second, Independent FASL Cache" section
> (already updated) gave a live, now-superseded manual recipe.

### Chunk 3: deep-clean target for the hidden FASL cache

> **✅ DONE.** Added `deep-clean: clean` (Makefile:211-217). Verified the
> on-disk cache layout directly: it is
> `~/.cache/common-lisp/dotcl-<version>-linux-x64/<abspath-with-leading-slash>`
> (the version directory varies — this checkout alone had six, from
> `0.1.14` through `0.1.18+1.g5c4cd1e`, accumulated across the project's
> rolling dotcl upgrades), so the target globs `dotcl-*-linux-x64` rather
> than hardcoding a version and iterates each match with a shell `for` loop,
> echoing and `rm -rf`-ing only the fully-expanded, project-specific
> subtree — never a bare glob of `~/.cache/common-lisp`. Referenced from the
> FASL-cache gotchas in both CLAUDE.md and
> `doc/implementation-notes.md` (which previously gave the manual `rm -rf`
> recipe directly; that recipe is now `make deep-clean`).

* Add `deep-clean: clean` that additionally removes
  `~/.cache/common-lisp/dotcl-*-linux-x64$(abspath .)` (mind the path
  construction: the cache key is the absolute source path appended to the
  versioned prefix; verify the exact layout on disk under
  `~/.cache/common-lisp/` before writing the rm). Echo what is being
  removed; use `rm -rf` only on the fully-expanded, project-specific path —
  never a bare glob of `~/.cache/common-lisp`.
* Reference this target from the "MSBuild incremental caching" and FASL
  cache gotchas in CLAUDE.md and implementation-notes.md.

### Chunk 4: spritefont freshness

> **✅ DONE.** Added `content-fonts` (Makefile:56-63), reading each
> `.spritefont`'s `<FontName>` to find its `.ttf` and touching the
> `.spritefont` if the `.ttf` is newer, and wired it as a `build-actual`
> prerequisite alongside `check-parens`. Both of the project's two
> `.spritefont` files reference the same `04B_30.ttf`. Verified end-to-end:
> `touch Content/fonts/04B_30.ttf && make content-fonts` touched both
> `.spritefont` files, and `git status` showed no diff (mtime-only change,
> not tracked content). The manual-touch note in CLAUDE.md was replaced with
> a description of the automated target.

* Add a `content-fonts` helper target (or a recipe line in `build-actual`
  before `dotnet build`) that touches each `Content/fonts/*.spritefont`
  whose same-stem `.ttf` (check the `<FontName>` reference inside the
  `.spritefont` XML — the stem may not match) is newer. A two-line shell
  `if [ file -nt file ]` per font pair is sufficient; there are only two
  `.spritefont` files.
* Remove or soften the corresponding manual-touch note in CLAUDE.md.

### Chunk 5: Makefile defect sweep

> **✅ DONE.** `.PHONY` (Makefile:36-37) now lists every phony target,
> including the new ones. `build: build-actual # cspackages build-actual`
> was replaced with a plain `build: build-actual` plus a real comment above
> it (Makefile:44-47) explaining that `cspackages` is deliberately not a
> prerequisite, since it's generated/vendored and regenerated only manually.

* Fix `.PHONY` to include every phony target (`all build build-actual test
  run clean deep-clean cspackages repl check-parens check mgcb
  content-fonts`).
* Resolve `build: build-actual # cspackages build-actual` — delete the
  comment and add a real comment explaining that `cspackages` is
  deliberately *not* a prerequisite (generated files are vendored; regen is
  manual). Per project convention, regularly-run commands belong in the
  Makefile, and ambiguity does not.

## Verification

> **✅ All performed.** One finding changed the plan: introducing a
> deliberate imbalance in a copy of a file *under `scratch/`* does **not**
> fail `check-parens` (by design — see Chunk 1 annotation above); the
> fail-fast behavior was instead confirmed against a real project file
> (`utils.lisp`), restored immediately after. `make deep-clean && make build
> && make test` ran clean from a fully cleared cache (all six stale
> `dotcl-*-linux-x64` cache dirs removed) with build and all tests passing.
> `content-fonts` was verified directly (see Chunk 4 annotation) rather than
> via a full `make build` + MGCB-log inspection, since the Lisp-side
> `check-parens`/`content-fonts` prerequisites don't themselves invoke MGCB.

* `make check-parens` passes; introduce a deliberate imbalance in a copy of
  a file under `scratch/`, confirm the target fails, remove the scratch
  file.
* `make check` (or equivalent) performs build then test, and fails fast on
  a paren imbalance without invoking `dotnet build`.
* `make deep-clean && make build test` — full cold rebuild succeeds and
  tests pass (this also proves the cache path removal is correct and
  scoped).
* `touch Content/fonts/04B_30.ttf && make build` — confirm MGCB rebuilds
  the font (watch for the font in the MGCB output section of the build
  log).
