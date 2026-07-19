# Plan 04 — Continuous Integration

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

There is no CI (`.github/` does not exist; no workflow YAML anywhere). All
verification is manual, including the multi-user portability checks and the
verification checklists in past plan docs. The two most damaging failure
modes CI would catch automatically are paren imbalances (misleading deep
build errors) and doc/build drift discovered only at the next human build.

Challenges specific to this project:

* The build needs the .NET 10 SDK, the `DotCL.Runtime` NuGet package
  (public NuGet — fine), and a **DotCL-patched Quicklisp** at `~/quicklisp/`
  (`build-setup.lisp` warns-and-continues without it, but then `anaphora`
  fails to resolve — so CI must install it; check `build-setup.lisp` and
  README for the exact Quicklisp provenance, a patched setup per DotCL
  PR #245).
* MGCB content build on Linux needs its native dependencies; the MonoGame
  docs list required apt packages for headless content builds (notably
  fonts/freetype for `.spritefont` processing). Wine is *not* needed for
  DesktopGL content on current MonoGame 3.8.x, but verify during the spike.
* `make test` runs the real executable with `--test`. Audio init is already
  wrapped in `handler-case` and degrades to silent mode (see "Multi-User
  Portability" in `doc/implementation-notes.md`). Graphics: inspect whether
  `--test` in `main.lisp` actually constructs a `GraphicsDevice` — if it
  does, the runner needs `xvfb-run`; if tests run before any window is
  created, plain headless works. Determine empirically.

## Chunks of work

### Chunk 1: Local dry-run script

* Before writing any YAML, create `scratch/ci-dryrun.sh` replicating the
  intended CI steps locally from a pristine clone in a temp dir:
  fresh clone → install quicklisp step → `make check-parens` →
  `make build` → `make test`. This flushes out the hidden assumptions
  (quicklisp path, `MSBuildEnableWorkloadResolver`, MGCB deps) cheaply.

### Chunk 2: Minimal workflow — parens + build

* `.github/workflows/ci.yml`, `ubuntu-latest`:
  1. checkout
  2. `actions/setup-dotnet` with the SDK major matching
     `<TargetFramework>` in `DungeonSlime.csproj` (currently net10.0; read
     it rather than hardcoding if easy)
  3. apt-install MGCB native deps (from chunk 1 findings)
  4. install the patched Quicklisp to `~/quicklisp` (from chunk 1; if it
     must be fetched from a DotCL release artifact, pin the version)
  5. `make check-parens`
  6. `make build`
* Cache: NuGet packages (`~/.nuget/packages`) keyed on the csproj; also
  consider caching `~/quicklisp`.

### Chunk 3: Test step

* Add `make test` (or the plan-02 `check` target), wrapped in `xvfb-run -a`
  if chunk 1 showed a display is required.
* Test output goes to stderr; ensure the step fails on nonzero exit — check
  how `main.lisp` sets the process exit code on test failure. **If test
  failures do not currently produce a nonzero exit code, fix that first**
  (small change in `main.lisp`/`test-harness.lisp`: count failures, exit
  nonzero) — otherwise CI green is meaningless.

### Chunk 4: Guardrails

* Add a job step greping for stale doc markers fixed in plan 01 (e.g.
  `*cspackages-components*` outside `doc/` history sections) — optional,
  cheap drift tripwire.
* Badge in README.md.
* Document in CLAUDE.md that CI exists and what it runs.

## Verification

* The dry-run script passes locally from a pristine temp-dir clone.
* Push to a branch; workflow goes green. Then a deliberate scratch-branch
  paren imbalance and a deliberate failing assert each turn it red (two
  separate pushes), confirming both gates actually gate. (Branch pushes
  for CI verification require user involvement — this project's agents
  never touch git state; hand the final verification to the user.)
