# Plan 01 — Documentation/Code Drift Repair

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

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

### Chunk 1: Fix CLAUDE.md

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

### Chunk 2: Fix implementation-notes.md

* Do **not** delete the historical splice-mechanism section — this project's
  docs intentionally preserve history. Instead, add a dated "Superseded"
  note at the top of that section pointing at the current mechanism, and
  add a short new section documenting the change (what changed, when — use
  `git log dungeon-slime.asd` to find the commit — and why it became
  possible).

### Chunk 3: Fix or retire BUILD-GUIDE.md

* Either update the line-by-line csproj walkthrough to the current csproj
  (NuGet `DotCL.Runtime`, `CopyReferencesBeforeLisp`, `WriteOutDirForLisp`,
  `DotclProjectAsd`, `DotclBuildInit`/`build-setup.lisp`), or convert the
  file into an explicitly historical document with a banner pointing at
  CLAUDE.md + implementation-notes.md as current sources. Updating is
  preferred; the two custom targets and the two-phase pipeline deserve one
  accurate walkthrough somewhere.

### Chunk 4: Disposition of asd-simplification-plan.md

* The `asd-module` proposal was overtaken by the simpler `*central-registry*`
  approach. Move the file to `doc/` with a header noting it was superseded,
  or add that header in place. Do not silently delete.

### Chunk 5: Sweep for other stale references

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
