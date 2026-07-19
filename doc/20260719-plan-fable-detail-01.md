# Plan 01 — Documentation/Code Drift Repair

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

> **✅ DONE (2026-07-19, implemented by Claude Fable).** All five chunks and
> the verification steps completed; per-chunk annotations below. Docs-only
> change: no `.lisp`/`.asd`/`.cs`/`Makefile` edits. `make build` and
> `make test` verified passing afterward. (Note: `make check-parens` fails
> on pre-existing git-ignored `scratch/test_*.lisp` files, unrelated to
> this plan — plan 02 should exclude `scratch/` from the sweep.)

## Context

The committed `dungeon-slime.asd` includes `cspackages/` via an `eval-when`
that pushes `cspackages/` onto `asdf:*central-registry*` and a plain
`:depends-on ("csharp-assembly-packages")` (see `dungeon-slime.asd:10-26`).
Three documents describe *other* mechanisms:

* `CLAUDE.md` ("Build pipeline: two separate DotCL compile phases" section)
  describes a `read`-time splice of the cspackages `.asd`'s `:components`
  into the root system via a `*cspackages-components*` variable, asserts
  cspackages "is never a `:depends-on` system dependency", and instructs new
  files to add `,@(mapcar (lambda (comp) (second comp))
  *cspackages-components*)` to their `:depends-on`. None of this exists in
  the current `.asd`.
* `doc/implementation-notes.md`, section "Wiring `dungeon-slime.asd` to the
  Generator's Self-Contained `.asd`", documents the same superseded splice
  mechanism as if current.
* `doc/BUILD-GUIDE.md` describes the pre-NuGet build model: a sibling
  `../dotcl` checkout, a `ProjectReference`, an `Import` of `Dotcl.targets`,
  and old target names (`DotclResolveDeps`/`DotclCompileRoot`). The project
  now uses the `DotCL.Runtime` NuGet package (v0.1.18, `DungeonSlime.csproj`
  `PackageReference`) whose targets are `_DotCLResolveDeps` /
  `_DotCLCompileRoot`. BUILD-GUIDE has a self-correcting note admitting
  this but the body was never updated.
* `asd-simplification-plan.md` (repo root) proposes a third, never-adopted
  `asd-module` ASDF component-class design.

An implementer following CLAUDE.md today will write `.asd` code against a
variable that no longer exists.

## Chunks of work

### Chunk 1: Fix CLAUDE.md ✅

> Done. "Build pipeline" section rewritten to the `*central-registry*` +
> plain `:depends-on` mechanism, including the `csharp-generics` exception
> (`--no-csharp-generic-in-asd` / `--ensure-type-in-generic`) and the lazy
> `+unbound-marker+` lookups that made it possible. The "Consequence"
> instruction now says new files need no special `.asd` treatment. Extra
> finding: the "Package pre-declaration" section was *also* stale — the ~40
> stubs were deleted from `packages.lisp` in the same 2026-07-11 change
> (verified via `git log -S`); that section was replaced with "Special
> packages in `packages.lisp`" describing the three remaining special
> `defpackage` forms. Also fixed `DotclCompileRoot` → `_DotCLCompileRoot`
> in the Gotchas section.

* Rewrite the "Build pipeline" architecture section to describe the actual
  mechanism: `*central-registry*` pushnew + ordinary `:depends-on`, with
  `cspackages/csharp-generics` as the one root-system component that stays
  in phase 2 (it needs `type-aliases`).
* Note *why* the plain `:depends-on` now works when the docs said it could
  not: the generator's lazy/memoized constant lookup
  (`cspackages/csharp-assembly-utils.lisp`, `+unbound-marker+`) removed the
  load-time `dotnet:resolve-type` calls that previously forced phase-2
  compilation.
* Replace the "Consequence: any new file ... must list `,@(mapcar ...)`"
  instruction with the actual current rule (new files that use wrapper
  packages need no special `.asd` treatment beyond normal `:depends-on`
  entries for project files; verify this by inspecting how `mg-classes`,
  `input-manager`, `audio-controller` are declared now).
* Keep the "Package pre-declaration" section but re-verify it against
  `packages.lisp` — the stub-defpackage rationale may still be accurate.

### Chunk 2: Fix implementation-notes.md ✅

> Done. Dated "Superseded (2026-07-11)" blockquote added at the top of the
> "Wiring ..." section (historical text preserved unchanged), and a new
> section "Replacing the Splice with a Plain `:depends-on` (Package
> Generator v45)" added after it documenting what changed (commits
> `9630352`..`fa9c4d7`, 2026-07-11), the three generator mechanisms that
> made it possible, the stub-package removal, and the practical rule going
> forward. Also updated the still-current "DotCL Compilation Caching"
> section and the `WriteOutDirForLisp` csproj snippet to the current
> `_DotCLCompileRoot` target name.

* Do **not** delete the historical splice-mechanism section — this project's
  docs intentionally preserve history. Instead, add a dated "Superseded"
  note at the top of that section pointing at the current mechanism, and
  add a short new section documenting the change (what changed, when — use
  `git log dungeon-slime.asd` to find the commit — and why it became
  possible).

### Chunk 3: Fix or retire BUILD-GUIDE.md ✅

> Done — took the preferred "update" route. Full rewrite against the
> current `DungeonSlime.csproj`: NuGet `DotCL.Runtime` 0.1.18 (auto-imported
> targets), `DotclBuildInit`/`build-setup.lisp`, Gum and MGCB package
> references, contrib and raw-`.wav` copy items, the
> `CopyReferencesBeforeLisp`/`WriteOutDirForLisp` custom targets, and a
> three-stage pipeline walkthrough (`_DotCLResolveDeps` →
> `_DotCLBundleDeps` → `_DotCLCompileRoot`, then C#/MGCB, then execution).
> Attribution section kept, with a note recording the 2026-07-19 rewrite.

* Either update the line-by-line csproj walkthrough to the current csproj
  (NuGet `DotCL.Runtime`, `CopyReferencesBeforeLisp`, `WriteOutDirForLisp`,
  `DotclProjectAsd`, `DotclBuildInit`/`build-setup.lisp`), or convert the
  file into an explicitly historical document with a banner pointing at
  CLAUDE.md + implementation-notes.md as current sources. Updating is
  preferred; the two custom targets and the two-phase pipeline deserve one
  accurate walkthrough somewhere.

### Chunk 4: Disposition of asd-simplification-plan.md ✅

> Done — header added in place (file left at the repo root to avoid
> delete/re-add churn in the working tree): a "Superseded (never adopted)"
> blockquote pointing at the current mechanism and the two documenting
> sections, ending "do not implement".

* The `asd-module` proposal was overtaken by the simpler `*central-registry*`
  approach. Move the file to `doc/` with a header noting it was superseded,
  or add that header in place. Do not silently delete.

### Chunk 5: Sweep for other stale references ✅

> Done. Grep sweep run; fixed: FILES.md's `dungeon-slime.asd` entry (was
> still describing the splice) and its `packages.lisp` entry (was still
> describing the stubs); AGENTS.md/GEMINI.md's example build-failure
> message updated to the current `DotCL.Runtime.ProjectCore.targets` form
> (note: AGENTS.md is a symlink to GEMINI.md, so one edit covers both).
> Left untouched as intentionally historical: README-original.md,
> antigravity-log.md, antigravity-memory.md, ornith-1.0-35B-plan-for-split.md,
> opencode-*.md, doc/issue-49-continued.md (already accurate). README.md
> needed no changes (already describes the current mechanism at lines
> ~409-428). FILES.md spot-check: `settings.lisp` present; generated
> `cspackages/` files (e.g. the MediaState package) are correctly not
> enumerated individually.

* `grep -rn 'cspackages-components\|Dotcl.targets\|DotclResolveDeps\|DotclCompileRoot' --include='*.md' .`
  and fix any remaining hits (README.md, FILES.md, AGENTS.md/GEMINI.md).
* Verify FILES.md still lists every source file accurately (spot-check a
  few recent additions, e.g. the MediaState package and `settings.lisp`).

## Verification

* `make check-parens` (no Lisp files should change, but cheap).
* `make build test` still passes (docs-only change; confirms nothing was
  accidentally edited in code).
* Re-read the updated CLAUDE.md sections against `dungeon-slime.asd` and
  `DungeonSlime.csproj` line by line.
