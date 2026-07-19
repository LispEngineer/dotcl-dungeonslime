# Code Smells and Architecture Smells Analysis
# Date: 2026-07-17
# Model: Qwen3.6-27B-MTP-GGUF-UD-Q8_K_XL

## Code Smells

### 1. Mixed Float Types (Consistency)

Files like `gameplay-scene.lisp`, `sprite.lisp`, `input-manager.lisp`,
and `collision.lisp` mix `single-float` (`0.0f0`) and `double-float`
(`0.0e0`) indiscriminately. For example, `gameplay-scene.lisp:304` uses
`0.5e0` (double) with `cs:width` and `cs:height`, while `sprite.lisp:51`
defaults `scale` to `v2:+one+` which is single-float. This causes implicit
coercion and potential precision issues, especially with MonoGame's
single-float API.

Affected: `gameplay-scene.lisp`, `sprite.lisp`, `collision.lisp`,
`tilemap.lisp`, `title-scene.lisp`

### 2. Global State Proliferation

Several critical pieces of state are globals: `*core*`, `*game*`,
`*cs-game*`, and `color-cycle-period`. Worse, UI event handlers in
`title-scene.lisp:227-271` reach directly into `*core*` to get the active
scene, audio controller, etc. This creates tight coupling and makes testing
or re-entrancy impossible.

Affected: `mg-core.lisp:15`, `game-1.lisp:12`, `main.lisp:13-14`,
`gameplay-scene.lisp:12`, `title-scene.lisp:227`

### 3. Commented-Out Code Accumulation

Large blocks of commented-out code remain as reference throughout the
codebase, acting as clutter and potential source of confusion:

- `mg-core.lisp:260-303`: ~44 lines of old error handling in `run`
- `utils.lisp:24-36`: dead `path-combine` using C# interop
- `csharp.lisp:16-52`: entire old TimeSpan implementation
- `settings.lisp:8-13`: commented `eval-when`
- `mg-core.lisp:107-110`: dead window title code

### 4. Repeated Circle Construction Pattern

Creating temporary `circle` instances for collision is copy-pasted in three
nearly identical blocks in `gameplay-scene.lisp:242-258`,
`gameplay-scene.lisp:264-270`, and `gameplay-scene.lisp:298-311`. A helper
function like `sprite-circle-bounds` would eliminate the duplication and the
per-frame allocation.

### 5. `slot-value` Bypassing Accessors

`input-manager.lisp` uses `slot-value` directly instead of accessor
functions in several places (`input-manager.lisp:50-51`, `196-197`,
`205-207`, `281-287`). This bypasses any potential encapsulation and is
inconsistent with the rest of the codebase, which typically uses named
accessors.

### 6. Dead/Duplicated Functions

- `texture-atlas.lisp:93-95` defines `string-suffix-p` duplicating
  `uiop:string-suffix-p` used immediately below it
- `utils.lisp:37-50` has a `path-combine` that produces verbose debug
  output on every call
- `MonoGameLispUtilities.cs:20-37` contains commented-out generic
  `LoadTexture2D` that is never used

### 7. `return-from` as Control Flow

`title-scene.lisp:108-117` uses `(return-from update)` in the middle of
`update` for early exits. Restructuring with `unless`/`when` could improve
readability in some places, though guard clauses like in `audio-controller.lisp`
using `return-from` are acceptable.

---

## Architecture Smells

### 8. Overloaded `dungeon-slime` Package

`packages.lisp:74-163`: the main package uses 6 other packages
(`:utils :mg-classes :monoutils :csharp :game-repl`) and declares ~30
local nicknames. This makes it unclear where any given symbol comes from
and increases name collision risk. Consider splitting into domain-specific
packages (e.g., `dungeon-slime.rendering`, `dungeon-slime.audio`,
`dungeon-slime.input`).

### 9. Game Logic Mixed with Test/POC Code

The `.asd` system includes `poc-test.lisp`, `load-system-test.lisp`,
`typed-calls-test.lisp`, `collision-test.lisp`, `scene-test.lisp`,
`audio-test.lisp`, `cspackages-test.lisp`, and `clr-defmethod-test.lisp`
as components of the main system. These experimentally-loaded files
increase build time and FASL size for production runs. Tests should be a
separate ASDF system (e.g., `dungeon-slime-tests`) that depends on
`dungeon-slime`.

### 10. No Object Pooling for Collision Circles

Every frame, `gameplay-scene.lisp` creates 2-3 temporary `circle`
instances for collision detection. In a game loop, this generates GC
pressure. An object pool or a lighter-weight tuple/struct approach would
help.

### 11. Manual GC Collection in Scene Transitions

`mg-core.lisp:207` calls `(dotnet:static "System.GC" "Collect")`
explicitly during scene transitions. Forcing GC is generally an
anti-pattern and should only be used as a debugging aid. The transition
system works correctly without it; the explicit GC call adds latency to
scene changes.

### 12. Fragmented Audio Error Handling

`audio-controller.lisp` wraps nearly every method in `handler-case` with
silent error suppression. The volume getter/setter functions (lines 80-100)
hide all errors and return defaults, making debugging audio issues
difficult. Consider a logging level system or a flag to make audio errors
more visible during development.

### 13. Reader Macro Complexity

`csharp.lisp:77-138` implements a `#!` dispatch macro with three modes
(prefix shorthand, list-call, synonym). This is powerful but non-standard,
complex, and fragile. Any reader change in DotCL could break it. The
three-mode design also makes it hard to debug macroexpand issues.

### 14. Input Handling Fragmentation

Input is handled in three separate places: the state-tracking
`input-manager.lisp`, scene-specific
`check-gameplay-keyboard-input` and `check-gameplay-gamepad-input` in
`gameplay-scene.lisp`, and inline input handling in
`title-scene.lisp:96-131`. A command/action mapping system would
centralize input routing and make input re-binding possible.

### 15. ASDF Dependency Graph Complexity

`dungeon-slime.asd` has 34+ file components with intricate dependency
chains. The dependency graph is deep and wide, with many implicit
transitive dependencies not explicitly declared. For example, `game-1`
depends on `mg-core`, `title-scene`, and `gameplay-scene`, but those in
turn depend on many other files. A layer diagram or modularization would
help clarify structure.

### 16. `game-1` is a Bootstrap-Only Class

`game-1.lisp:32-37` defines `game-1` as a subclass of `core` with an
empty body. It exists solely to override `initialize` to start Gum and the
title scene. This could potentially be inlined into `core` or replaced
with a configuration option or initialization callback.

### 17. `load-repl.lisp` Duplicates Initialization

`load-repl.lisp:29-30` sets `RootDirectory` on the content manager
manually, duplicating what `mg-core.lisp` already does during
`initialize-instance`. This is a maintenance risk if the initialization
paths ever diverge.

### 18. Magic Strings and Numbers in UI Code

`title-scene.lisp` has hardcoded UI positions (50, -12, -50, 35, 80,
-28, -10), text strings ("OPTIONS", "Music", "SFX", "BACK", "Start",
"DUNGEON", "SLIME"), and colors (24, 33, 58). These should be extracted
to constants or a configuration data structure, especially positions
which will likely need tweaking as the UI evolves.

### 19. `*content-directory*` Resolution is Fragile

`type-aliases.lisp` has complex compile-time and load-time logic to find
the build output directory via `obj/dotcl-outdir.txt`. This breaks if the
file does not exist, and the path resolution logic is duplicated across
`type-aliases.lisp` and `utils.lisp`. A single, well-documented path
resolution utility would reduce this fragility.

---

## Priority Recommendations

| Priority | Issue | Impact |
|----------|-------|--------|
| High | #9 Tests mixed with production | Build artifacts include dead code |
| High | #8 Overloaded package | Maintainability, name collisions |
| Medium | #1 Mixed float types | Potential precision bugs |
| Medium | #2 Global state | Testability, re-entrancy |
| Medium | #11 Manual GC call | Performance anti-pattern |
| Low | #3 Commented code | Code clutter |
| Low | #4 Duplicated circle creation | Minor GC pressure |
| Low | #18 Magic strings/numbers | Maintainability |
