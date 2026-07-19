# Plan 02 — Makefile and Build Hygiene

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

* Make `build-actual` depend on `check-parens` (or add the find/xargs
  invocation as the first recipe line of `build-actual`). Prefer the
  prerequisite form so `make check-parens` stays independently runnable.
* Confirm `check_parens.py` exits nonzero on imbalance (read the script;
  test by temporarily unbalancing a scratch file under `scratch/`).

### Chunk 2: combined build+test / build+run targets

* Keep `test` and `run` as-is (fast, no build — this is intentional for
  iteration). Add:
  * `check: build test` — the "one command before declaring victory"
    target. (`all` already equals `build test`; either rename or keep both
    with `check` as an alias, but document whichever in CLAUDE.md.)
* Update CLAUDE.md's Commands section to mention the new target(s).

### Chunk 3: deep-clean target for the hidden FASL cache

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

* Add a `content-fonts` helper target (or a recipe line in `build-actual`
  before `dotnet build`) that touches each `Content/fonts/*.spritefont`
  whose same-stem `.ttf` (check the `<FontName>` reference inside the
  `.spritefont` XML — the stem may not match) is newer. A two-line shell
  `if [ file -nt file ]` per font pair is sufficient; there are only two
  `.spritefont` files.
* Remove or soften the corresponding manual-touch note in CLAUDE.md.

### Chunk 5: Makefile defect sweep

* Fix `.PHONY` to include every phony target (`all build build-actual test
  run clean deep-clean cspackages repl check-parens check mgcb
  content-fonts`).
* Resolve `build: build-actual # cspackages build-actual` — delete the
  comment and add a real comment explaining that `cspackages` is
  deliberately *not* a prerequisite (generated files are vendored; regen is
  manual). Per project convention, regularly-run commands belong in the
  Makefile, and ambiguity does not.

## Verification

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
