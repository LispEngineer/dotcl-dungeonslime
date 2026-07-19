# Plan 07 — Replace Remaining Raw .NET Interop with cspackages Wrappers

Part of the 2026-07-19 enhancement plan; see
`doc/20260719-plan-fable-overview.md`.

## Context

The project-wide refactor to generated wrappers is largely done (see
"Refactoring Raw .NET Interop Calls" in `doc/implementation-notes.md`), but
a residue of raw `dotnet:invoke` / `dotnet:static` string-based calls
remains. Some are justified by generator gaps or bugs (several carry
explanatory FIXME comments); each should end either wrapped or documented
as deliberately raw with the upstream reason.

Known sites (as of 2026-07-19; re-grep before editing:
`grep -n 'dotnet:invoke\|dotnet:static\|dotnet:new' *.lisp`):

* `mg-core.lisp:116` — window title setter via raw invoke; FIXME says the
  generated `set-title` is broken (generator bug).
* `mg-core.lisp:206` — `(dotnet:static "System.GC" "Collect")` in scene
  transition.
* `audio-controller.lisp:82,87,93,98` — raw `MediaPlayer.Volume` /
  `SoundEffect.MasterVolume` statics despite `media-player:` /
  `sound-effect:` wrapper packages existing.
* `gameplay-scene.lisp:167` — raw `MediaPlayer.IsRepeating`.
* `gameplay-scene.lisp:350-351,354` and `title-scene.lisp:167,385` — raw
  `GameTime` accessors and `GraphicsDevice.Clear` / `SpriteBatch.Draw`
  overloads, with comments citing generator gaps.

## Chunks of work

### Chunk 1: Audit and classify

For every raw-interop hit, classify:

1. **Wrapper exists and works** → mechanical replacement.
2. **Wrapper exists but is broken** (e.g. `game-window:set-title`) →
   attempt once to confirm still broken on the current generator version;
   if broken, keep raw call but normalize the comment to a standard form:
   `;; RAW-INTEROP: <wrapper> broken as of dotcl-packagegen <ver>, see <ref>`
   so future regenerations can grep for retry candidates.
3. **Class not in the manifest** (`System.GC` likely) → add a `--class`
   line to the Makefile `cspackages` target (or plan-05 manifest), run
   `make cspackages`, then wrap. Follow CLAUDE.md: check whether a new
   package stub must be added to `packages.lisp`'s pre-declaration block
   and a nickname to the `:local-nicknames` list.
4. **Overload/generic gap** the generator cannot express → same
   RAW-INTEROP comment treatment as case 2.

### Chunk 2: Mechanical replacements (case 1)

* `audio-controller.lisp` statics → `media-player:` / `sound-effect:`
  accessors. Note these calls sit inside `handler-case` degradation
  wrappers — preserve that behavior exactly.
* `gameplay-scene.lisp:167` `IsRepeating` → `media-player:` setter if
  generated (check `cspackages/` for the MediaPlayer package's exports;
  the MediaState package was added recently, MediaPlayer wrappers likely
  exist).

### Chunk 3: New wrappers (case 3)

* `System.GC` → wrap and replace the `mg-core.lisp:206` call. Separately
  consider (do not do without user sign-off) removing the manual
  `GC.Collect` entirely — qwen finding #11 flags it as an anti-pattern,
  but a collect at scene transition is a deliberate, defensible choice in
  games; default is keep-but-wrapped.
* Any others discovered in chunk 1's audit.
* Note: `make cspackages` regeneration should ideally ride on plan 05's
  improvements, but does not depend on them.

### Chunk 4: Documentation

* Update the "Refactoring Raw .NET Interop Calls" section in
  `doc/implementation-notes.md` with the final list of
  deliberately-remaining raw calls and their reasons.

## Verification

* `make check-parens`, `make build test`.
* `make run` — specifically exercise the touched paths: window title
  visible, music loops (IsRepeating), volume +/- and mute work, scene
  transition (title → gameplay → Escape back) does not error at the GC
  call, background clears render correctly in both scenes.
