# Plan 05 — cspackages Regeneration Ergonomics

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

`make cspackages` (Makefile:52-167) invokes the external `dotcl-packagegen`
tool with a hand-maintained block of ~85 `--class` flags grouped by
assembly. Pain points:

1. Adding a class means editing raw Makefile continuation lines; the class
   list is data masquerading as build script.
2. Bootstrap ordering: the target reflects over MonoGame/Gum DLLs in
   `$(BIN_DIR)`, so it silently requires a prior `make build` (the Makefile
   comment at :58-61 calls this "a bootstrapping problem").
3. Every generated file embeds its creation timestamp twice, so
   regeneration dirties ~80 files; `revert-cspackages-timestamps.sh` cleans
   this up post-hoc (works, but is a symptom — the real fix belongs in the
   generator).

This is lower priority than plans 01-04: regeneration only happens when a
new .NET class is wrapped. Do it opportunistically, ideally the next time a
class is added (e.g. wrapper gaps found in plan 07).

## Chunks of work

### Chunk 1: Class manifest file

* Check first whether `dotcl-packagegen` >= current version supports a
  response/manifest file input (`@file` or `--manifest`); the tool lives at
  `../package-generator` and is the same user's project — if it lacks one,
  the *better* fix is adding manifest support there, and a note should be
  left for the user rather than working around it here.
* If the tool supports (or gains) manifest input: move the class list to
  `cspackages-manifest.txt` (or `.lisp` data) at repo root, grouped by
  assembly with comments preserved, and shrink the Makefile target to
  discovery of `REF_DIR`/`BIN_DIR` plus one invocation.
* If not: generate the flag block from a simple data file via shell in the
  recipe (`sed`/`awk` over a `classes.txt`), keeping the Makefile short.
  Keep whichever approach is simpler to read six months from now.

### Chunk 2: Encode the bootstrap dependency

* Make the `cspackages` target fail fast with a clear message when
  `$(BIN_DIR)MonoGame.Framework.dll` is absent, telling the user to run
  `make build` first (a guard `test -f ... || { echo ...; exit 1; }`).
  Making `cspackages` *depend* on `build-actual` is also acceptable but
  changes current behavior (regeneration would always rebuild first) —
  choose the guard unless the user prefers the dependency.

### Chunk 3: Timestamp churn — upstream note

* File the timestamp issue where it belongs: add a short entry to a doc
  (or the `../package-generator` issue tracker if the user wants) proposing
  a `--no-timestamp` / `--reproducible` generator flag, which would retire
  `revert-cspackages-timestamps.sh` entirely. No change in this repo beyond
  a comment in the Makefile linking the script to that proposal.

### Chunk 4: Regeneration verification target

* Add `make cspackages-verify`: regenerate into a temp dir and diff against
  the vendored `cspackages/` (ignoring the timestamp lines), so drift
  between the committed wrappers and what the current generator would emit
  is detectable on demand. Useful before/after generator upgrades.

## Verification

* `make cspackages` from a built tree produces zero git diff (after
  timestamp reversion) when the class list is unchanged — proves the
  manifest refactor emits the identical flag set.
* Delete `bin/` (or run from pre-build state) and confirm the new guard
  message appears instead of a cryptic generator error.
* `make build test` still passes afterward.
