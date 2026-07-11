# Follow-up to dotcl/dotcl#49: getting a plain `:depends-on` working

* Author: Douglas P. Fields, Jr. - symbolics@lisp.engineer
* Related: [dotcl/dotcl#49](https://github.com/dotcl/dotcl/issues/49) (closed,
  "delivered in 0.1.17")
* Status: **Resolved** (generator v45's `--ensure-type-in-generic`, plus
  one unrelated test fix) — see "Resolution" below. Kept as a full
  timeline because the underlying architectural question — should this
  have been this hard? — is still worth raising.

This is a follow-up investigation after trying to actually apply the fix
described in #49. The short version: the fix in DotCL 0.1.17 plus the
generator's switch to `define-symbol-macro` genuinely fixes the *original*
problem (per-class type constants), but `dotcl-package-generator`'s newer
CLOS generic-dispatch file (`csharp-generics.lisp`) hits the exact same
class of problem in a form that can't be fixed the same way, because it
uses the Lisp reader's `#.` (read-time-eval) syntax, not a runtime call.
Manually splitting that one file out gets `make build` passing again, but
uncovers a second, distinct problem underneath: a `find-class` failure at
FASL-load time in the deployed test binary, caused by the same generator
change (removing eager `EnsureDotNetTypeClass` calls) that fixed the build
in the first place. We also tried the generator's own `--ensure-type` flag
to restore that eager registration, which doesn't fix it — it just moves
the original build failure to the *other* build phase, which turns out to
be genuinely informative about why. A new, more targeted generator flag
(`--ensure-type-in-generic`, v45) finally resolves it. Full timeline below,
then the resolution, then the case for a deeper fix.

## Recap: why a plain `:depends-on` was broken

DotCL's MSBuild pipeline compiles a project in two phases:

1. `_DotCLResolveDeps` — compiles the project's ASDF `:depends-on` system
   graph, standalone, *before* the project's own .NET assembly references
   (e.g. `MonoGame.Framework.dll`, referenced via `PackageReference` in the
   `.csproj`) are loaded into the build process's runtime.
2. `_DotCLCompileRoot` — compiles the project's own `:components`, *after*
   those assembly references are loaded.

`dotcl-package-generator`'s generated wrapper files call
`(dotnet:resolve-type "Some.Fully.Qualified.Name")` to get a handle on the
C# type they wrap. If `cspackages/csharp-assembly-packages.asd` is a normal
ASDF system dependency (`:depends-on`), its files compile/load in phase 1 —
before `MonoGame.Framework.dll` is loaded — so any unconditional
`resolve-type` call for a MonoGame type fails with `DOTNET: type not found`.

This project's workaround (still in place today) is to not use
`:depends-on` at all: instead, `dungeon-slime.asd` re-parses
`cspackages/csharp-assembly-packages.asd`'s own `:components` form and
splices those file entries directly into `dungeon-slime`'s own
`:components`, forcing every one of them (and the file-level dependents
in this project) to compile in phase 2, after the assembly is loaded.

## What #49 fixed, and what it doesn't cover

snmsts's fix (DotCL 0.1.17): on a `resolve-type` miss, the runtime now
eagerly loads managed assemblies from `AppContext.BaseDirectory` and
retries — lazy (first use only), memoized, auto-invalidated. Critically,
by his own comment on the issue, **this only helps at the deployed app's
actual runtime**, not during the build: the build process's
`AppContext.BaseDirectory` is dotcl's own build/task directory, not this
project's output folder, so the auto-load probe can't find
`MonoGame.Framework.dll` there.

So the actual unlock is generator-side: emit `(cl:define-symbol-macro
<type> (dotnet:resolve-type "..."))` instead of `(cl:defconstant <type>
...)`. A symbol-macro's init-form isn't evaluated when the macro is
*defined* — only when the macro is *used* (expanded) in code that's
actually evaluated. So the dependency's fasl now loads cleanly during
`_DotCLResolveDeps` (no immediate `resolve-type` call), and the reference
only actually resolves later, when the wrapper function that uses `<type>`
is called at the deployed app's real runtime — where 0.1.17's
auto-resolution probe does find the assembly.

## What we tried, and how far it got

We tried this simplification against `dungeon-slime.asd`:

```lisp
(defsystem "dungeon-slime"
  ...
  :depends-on ("dotnet-class"
               "dotcl-thread"
               "dotcl-repl"
               "anaphora"
               "csharp-assembly-packages")   ; <-- plain dependency, no splicing
  :components ((:file "packages")
               ...))
```

(plus a small `eval-when` that pushes `cspackages/` onto
`asdf:*central-registry*` so ASDF can find the system by name, and removing
the ~40 stub `defpackage` pre-declarations from `packages.lisp` that the
splicing hack needed).

**Attempt 1 — generator v41 (defconstant, as of 2026-07-11 morning):**
failed immediately, as expected — `<type>` was still a `defconstant`:

```lisp
(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
```
```
error : dotcl resolve-deps failed for .../dungeon-slime.asd:
DOTNET: type not found: Microsoft.Xna.Framework.Vector2
```

**Attempt 2 — generator v43 (2.43.0):** `<type>` was now a
`define-symbol-macro`, but every generated file *also* had this
unconditional block, left over from before the symbol-macro switch:

```lisp
(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Vector2")
...

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))
```

That `eval-when (:load-toplevel :execute)` form runs unconditionally the
moment the file loads — same failure, same error message, for the same
underlying reason (this call isn't deferred at all, symbol-macro or not).

**Attempt 3 — generator v44 (2.44.0, `EnsureDotNetTypeClass` removed):**
we regenerated again. Confirmed clean this time — grepped every file in
`cspackages/`; zero `eval-when` blocks, zero non-symbol-macro
`resolve-type` calls, `<type>` is used nowhere else in its own file. And
yet:

```
error : dotcl resolve-deps failed for .../dungeon-slime.asd:
DOTNET: type not found: Microsoft.Xna.Framework.Vector2
```

still fails, identically, even after `rm -rf obj bin` to rule out any
MSBuild/FASL caching artifact.

## The actual remaining blocker: `csharp-generics.lisp`

The generator ships one more file per batch,
`cspackages/csharp-generics.lisp` (~9,700 lines in this project's case),
implementing unified CLOS generic-function dispatch across every wrapped
C# class. Its own header explains the mechanism:

```lisp
;;; Unified CLOS generic functions dispatching on C# runtime type.
;;; Each defmethod below specializes on #.(dotnet:class-for-type ...),
;;; resolved and registered at read time (DotCL 0.1.17+ required) --
;;; see doc/make-everything-defgeneric.md.
```

And, true to that comment, here's a representative sample (there are 1,537
occurrences of this pattern in the file, across 74 distinct C# types,
including `Microsoft.Xna.Framework.Vector2`):

```lisp
(cl:defmethod x ((obj! #.(dotnet:class-for-type "Microsoft.Xna.Framework.Vector2")) cl:&rest args)
  ...)
(cl:defmethod y ((obj! #.(dotnet:class-for-type "Microsoft.Xna.Framework.Vector2")) cl:&rest args)
  ...)
(cl:defmethod normalize ((obj! #.(dotnet:class-for-type "Microsoft.Xna.Framework.Vector2")) cl:&rest args)
  ...)
```

`#.` is Lisp's *read-time* eval syntax — it runs during `read`, before
`eval-when`, before compilation, before anything resembling deferred
execution. There's no way to make `#.(dotnet:class-for-type "...")` lazy
without changing what it *is* structurally: an ASDF `defmethod` specializer
has to be a real class object at the moment the `defmethod` form is built,
because CLOS method specializers aren't values that can be computed later
inside the method body — they're part of the method's identity, needed to
add it to the generic function's method table in the first place.

So this file *must* have real `.NET` class objects available the moment it
is read — which, under `:depends-on`, is during `_DotCLResolveDeps`,
before `MonoGame.Framework.dll` is loaded. Confirmed by grepping the build
error's target type (`Microsoft.Xna.Framework.Vector2`) directly against
this file — it's there, at (e.g.) line 7108, in a `csharp-generics.lisp`
that's part of `cspackages/csharp-assembly-packages.asd`'s own
`:components`, alongside everything else.

This is a materially different, harder problem than the per-class
`<type>` constant:

| | Per-class `<type>` | `csharp-generics.lisp` specializers |
|---|---|---|
| Mechanism | `defconstant`/`define-symbol-macro` init-form | `#.` reader macro |
| When it runs | load-time (deferrable to first-use via symbol-macro) | **read-time** (cannot be deferred by any evaluation-time construct) |
| Fix applied | ✅ symbol-macro (v43+), `EnsureDotNetTypeClass` removed (v44) | ❌ still blocks `_DotCLResolveDeps` |

With generator v44, the *per-class* wrapper files (e.g.
`microsoft-xna-framework-vector2.lisp`) are genuinely `:depends-on`-safe —
they contain no code that runs before first actual use. But
`csharp-assembly-packages.asd` bundles `csharp-generics.lisp` in the same
system, and that file alone reintroduces the original failure mode through
a different, non-deferrable mechanism.

## Direction 3, tried by hand: split `csharp-generics.lisp` out

Of the three directions above, (3) is the cheapest to try without any
generator change, so we tried it directly: comment `csharp-generics` out of
`cspackages/csharp-assembly-packages.asd`'s `:components`, and instead add
it as an ordinary component of `dungeon-slime.asd` itself (the depending
project), positioned after `type-aliases.lisp` (which loads
`MonoGame.Framework.dll`) and depending on the whole
`"csharp-assembly-packages"` system:

```lisp
;; cspackages/csharp-assembly-packages.asd:
;;   (:file "csharp-generics" :depends-on (...))   ; <-- commented out

;; dungeon-slime.asd's own :components:
(:file "packages")
(:file "settings" :depends-on ("packages"))
(:file "type-aliases" :depends-on ("packages" "settings"))   ; loads MonoGame.Framework.dll
(:file "monoutils" :depends-on ("packages" "type-aliases"))
(:file "utils" :depends-on ("packages" "type-aliases"))
(:file "cspackages/csharp-generics" :depends-on ("csharp-assembly-packages"))
(:file "constants")
...
```

**This builds.** Every other generated file goes through the plain
`:depends-on ("csharp-assembly-packages" ...)` on `dungeon-slime`; only
`csharp-generics.lisp` needs manual placement, and only because of its `#.`
read-time class resolution.

## New failure: `make test` fails at runtime, not build time

`make build` succeeds, but `make test` (which actually runs the built
binary) doesn't:

```
Unhandled exception. DotCL.LispErrorException: FIND-CLASS: no class named INotifyCollectionChanged
   at DotCL.Runtime.LoadFasl(String filePath, LispObject filespec, Boolean isVerbose, Boolean isPrint)
   at DotCL.Runtime.Load(LispObject[] args)
   at DotCL.DotclHost.LoadFromManifest(String manifestPath)
```

This is not a `.NET` resolution error — it's a plain CLOS `find-class`
failure, and it happens while **loading precompiled FASLs** into the
deployed test binary's own fresh process, before any of our own code runs.
`INotifyCollectionChanged` is, not coincidentally, the very first
per-class `defmethod` block in `csharp-generics.lisp` (line 6384 of 9,700).

**Root cause:** comparing the currently-committed (working) v44 files
against the original, actually-shipped v41 files (`git show
21966f1:cspackages/microsoft-xna-framework-vector2.lisp`) shows every v41
per-class file had this, which v44 removed entirely:

```lisp
;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))
```

The `:load-toplevel` situation means "run this every time this file's
compiled FASL is loaded, in *any* process." That's exactly what guaranteed,
unconditionally, that every class existed by the time `csharp-generics.lisp`
(loaded right after, in file order) tried to use it.

`csharp-generics.lisp`'s specializers are built via
`#.(dotnet:class-for-type "...")`, evaluated once, in the **build
process**, while generating the FASL — `class-for-type` does register the
class, but only in that transient build process. The resulting FASL then
carries a reference to that class that DotCL's FASL format reconstructs via
a plain `find-class` lookup by name at load time. The deployed test binary
is a **separate OS process** with its own fresh Lisp image; nothing in it
has ever created a CLOS class called `INotifyCollectionChanged`, because
v44 removed the one thing that used to do that unconditionally, in every
process, on every load.

## Experiment: re-enabling `--ensure-type`

The generator actually already ships a flag for exactly this — `--ensure-type`
(sticky, applies to the current and all subsequent `--class`, OFF by
default since v44) re-emits the "Register C# Type with CLOS" block, now
restricted to `(:load-toplevel :execute)` (no `:compile-toplevel`, "for the
same ASDF-dependency-phase reason as `<type>` itself"). Per your request, we
tried turning it on: added `--ensure-type` to the `Makefile`'s
`cspackages` target (right after `--enable-defgeneric`, so it applies to
every subsequent `--class`), regenerated, and rebuilt.

**Result: it doesn't fix the problem, and it's informative about why.**
`_DotCLResolveDeps` (phase 1) now succeeds — but `_DotCLCompileRoot`
(phase 2) fails instead, with the *same* error, for the *same* type:

```
error : dotcl compile-project failed for .../dungeon-slime.asd:
DOTNET: type not found: Microsoft.Xna.Framework.Vector2
```

This is the key finding: **the failure didn't go away, it moved phases.**
That makes sense once you notice that `csharp-assembly-packages` is now a
genuine ASDF system *dependency* of `dungeon-slime`, not a spliced-in set
of components — and an ASDF `:depends-on` system's entire FASL always
loads *before any* of the depending system's own components, regardless of
which build phase is doing the loading. `type-aliases.lisp` (the file that
loads `MonoGame.Framework.dll`) is a component *of* `dungeon-slime`, so it
can never run before `csharp-assembly-packages`'s FASL — including its
newly-reinstated eager `EnsureDotNetTypeClass` calls — has already loaded
completely, in *every* phase that reloads the dependency graph, not just
`_DotCLResolveDeps`. `_DotCLCompileRoot` turns out to *also* reload the full
`:depends-on` graph before compiling the root system's own files (needed to
make the dependency's packages/macros visible), and at that point in
`_DotCLCompileRoot`, `type-aliases.lisp` hasn't executed yet either.

So: **as long as `csharp-assembly-packages` is a genuine ASDF system
dependency (rather than spliced into the root system's own components),
nothing in it can safely do an eager, unconditional
`resolve-type`/`EnsureDotNetTypeClass` call for any assembly-provided type —
in *either* build phase** — because the depending project's own
assembly-loading code is, by construction, always compiled/loaded strictly
after the whole dependency graph, in both phases alike. We reverted this
experiment (removed `--ensure-type` from the `Makefile`, regenerated) to
get back to the "builds, but `make test` fails" state described above.

## Possible directions (for discussion)

None of these are things we can unilaterally fix from the dungeon-slime
side — flagging for snmsts's take:

1. **Reorder the DotCL build phases.** The deepest fix: if
   `_DotCLResolveDeps` ran *after* the consuming project's own
   `PackageReference` assemblies were loaded (rather than before), none of
   this — not the original #49 issue, not this follow-up — would be
   necessary in the first place. It's not obvious why dependency-graph
   compilation needs to precede assembly loading; the two phases seem to
   exist for a different reason (making a dependency's packages/macros
   visible to the root system's compilation) that doesn't actually require
   assemblies to stay unloaded. Note this alone wouldn't be sufficient by
   itself given the `_DotCLCompileRoot` finding above — the dependency
   graph reloads *there* too, so the assembly would need to be loaded
   before *both* phases, not just the first one.

2. **Defer CLOS registration in `csharp-generics.lisp` to runtime.**
   Instead of `#.(dotnet:class-for-type "...")` as a literal specializer,
   register these methods programmatically after the fact — e.g. via
   `closer-mop:ensure-method` or an equivalent, called from a
   `define-symbol-macro`-guarded, first-use-triggered registration
   function, rather than baking the class object into the `defmethod` form
   at read time. This keeps the generic-dispatch feature but defers the
   actual `.NET` type resolution the same way the per-class fix already
   does — and, unlike `--ensure-type`, defers it all the way to actual
   first use in the deployed app, not merely to "whenever this FASL next
   loads," which we've now shown is still too early in every build phase.

3. **Split `csharp-generics.lisp` out of `csharp-assembly-packages.asd`.**
   This is the one we actually got working for `make build` (see above) —
   the generator could emit the generics file as a separate,
   non-`:depends-on`-able unit (e.g. its own system, or simply excluded
   from `:components` and documented as "splice this one file manually"),
   so every *other* generated file goes through a plain `:depends-on` while
   only this one file keeps needing the phase-2 splicing workaround. Note
   this alone does *not* fix the remaining `make test` failure — that needs
   (2) as well, since simply moving `csharp-generics.lisp` later doesn't
   change that its `#.(dotnet:class-for-type ...)` literals still need
   their classes to already exist in the fresh deployed process, and
   nothing currently guarantees that once `--ensure-type` is off.

## Current repro

* DotCL runtime: 0.1.17
* Generator: 2.44.0 (package format version 44)
* `dungeon-slime.asd`: plain `:depends-on ("csharp-assembly-packages" ...)`,
  plus `csharp-generics.lisp` manually pulled out of
  `cspackages/csharp-assembly-packages.asd` and added as `dungeon-slime`'s
  own component (direction 3 above)
* `make build` succeeds; `make test` fails:
  ```
  Unhandled exception. DotCL.LispErrorException: FIND-CLASS: no class named INotifyCollectionChanged
     at DotCL.Runtime.LoadFasl(String filePath, LispObject filespec, Boolean isVerbose, Boolean isPrint)
     at DotCL.Runtime.Load(LispObject[] args)
     at DotCL.DotclHost.LoadFromManifest(String manifestPath)
  ```
* Re-enabling `--ensure-type` (generator flag, OFF by default since v44)
  does not fix this; it moves the *original* build failure from
  `_DotCLResolveDeps` to `_DotCLCompileRoot`, confirming that no eager
  type-registration call is safe anywhere in a `:depends-on`'d
  `csharp-assembly-packages`, in either build phase, for as long as it
  remains a genuine system dependency rather than spliced into the root.

## Resolution

Generator v45 added a new, more targeted flag: `--ensure-type-in-generic`.
Instead of re-emitting "Register C# Type with CLOS" in every per-class
file (where, per the finding above, it can never be safe while
`csharp-assembly-packages` is a real `:depends-on`), it emits that
`eval-when` *inside `csharp-generics.lisp` itself*, immediately before each
class's own `#.(dotnet:class-for-type ...)` specializer block:

```lisp
;; System.Collections.Specialized.INotifyCollectionChanged (system-collections-specialized-i-notify-collection-changed)
;; Register C# Type with CLOS (--ensure-type-in-generic) --
;; :compile-toplevel is required here, unlike --ensure-type's own
;; per-class eval-when: #.(dotnet:class-for-type ...) below is
;; read-time-evaluated, i.e. already resolved at COMPILE time of
;; this file, so influencing same-simple-name collision order
;; relative to it requires running at compile time too.
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Collections.Specialized.INotifyCollectionChanged")))

(cl:defmethod add-collection-changed ((obj! #.(dotnet:class-for-type "System.Collections.Specialized.INotifyCollectionChanged")) cl:&rest args)
  (cl:apply (cl:function system-collections-specialized-i-notify-collection-changed:add-collection-changed) obj! args))
```

This works because `csharp-generics.lisp` (per direction 3, already pulled
out of `cspackages/csharp-assembly-packages.asd` and placed as
`dungeon-slime`'s own component, positioned after `type-aliases.lisp`)
never loads until `MonoGame.Framework.dll` is already loaded, in *every*
build phase and at deployed runtime alike — unlike the individual per-class
files, which remain genuinely `:depends-on`-safe (no eager anything) since
they're never the ones needing the class pre-registered. The registration
now lives exactly where both requirements — "must run after the assembly
loads" and "must run before this file's own `#.` specializers need the
class" — are simultaneously satisfiable, because both requirements attach
to the same file instead of being split across two different ASDF systems
loaded in two different phases.

With this, `make build test` passes completely: 79 assertions, 0 failures.

One unrelated bug surfaced along the way and needed a separate fix:
`cspackages-test.lisp` read constant properties like `+ZERO+`/`+ONE+` via
`(symbol-value (find-symbol "+ZERO+" v2-pkg))`. That only ever worked
because the original v41 generator emitted these as plain `defconstant`s;
current generator versions correctly emit `define-symbol-macro` instead for
"dynamic" (mutable-value-type) constants, to avoid presenting one shared
mutable boxed .NET object as if it were an immutable constant. `symbol-value`
reads a real special-variable binding and does not expand symbol-macros, so
it failed with "Unbound variable: +ZERO+" — the fix was swapping
`symbol-value` for `eval` at all five call sites (`+ZERO+`, `+ONE+`,
`+UNIT-X+`, `+UNIT-Y+`, `+EMPTY+`), since `eval` evaluates the symbol as an
ordinary form and correctly goes through symbol-macro expansion. This bug
was pre-existing and had nothing to do with the phase-ordering work above —
it just took getting this far through the test suite to expose it, since
this project had never previously reached this test path with a
`define-symbol-macro`-based generator version.

## The case for a deeper fix, despite the resolution above

The generator-side fix above works, and `dungeon-slime.asd` now uses a
plain ASDF `:depends-on` for everything except one file that needs manual
placement — a real simplification over the original all-or-nothing splice.
But it's worth being blunt about what it took to get here: three separate,
non-obvious mechanisms (`defconstant` → `define-symbol-macro` for per-class
type constants; `EnsureDotNetTypeClass` removed from every per-class file
specifically so it stops running too early; `EnsureDotNetTypeClass`
*re-added*, but only inside one specific hand-placed file, at exactly the
one position in exactly the one build where it's safe) — plus a full day of
back-and-forth generator releases — to correctly answer one underlying
question every time: *is `MonoGame.Framework.dll` loaded yet, right now, in
this process, at this exact point in this exact build phase?*

That question shouldn't need answering at all. **The better resolution
would be for DotCL to guarantee that every C#/CLR assembly a project
references is loaded and available in *every* Lisp process the build
pipeline ever spins up — `_DotCLResolveDeps`, `_DotCLCompileRoot`, and the
final deployed runtime alike — with no phase, ever, in which a referenced
assembly is not yet loaded.** If that were true:

* The original #49 issue would never have existed — a plain `:depends-on`
  on `csharp-assembly-packages` would have worked the first time, with no
  generator changes at all.
* `defconstant`-vs-`define-symbol-macro` for `<type>` would be purely a
  performance/semantics choice (as Doug's original comment on #49 already
  wanted — a real constant, not a deferred computation on every access),
  never a correctness requirement.
* `#.(dotnet:class-for-type "...")` at read time in `csharp-generics.lisp`
  would just work, in whichever file it happened to live, with no
  `EnsureDotNetTypeClass` companion call needed anywhere, in any file, ever.
* This project's entire `dungeon-slime.asd` could go back to one flat list
  of ordinary `:depends-on` systems, with zero special-cased files, zero
  manual splicing, and zero "must run after type-aliases.lisp" ordering
  constraints on generated code.

Every workaround in this document — the splice, the symbol-macro, the
`--ensure-type`/`--ensure-type-in-generic` flags, the careful manual
placement of one file relative to another — exists purely to route around
the fact that assembly availability is phase- and process-dependent rather
than a fixed, always-true property of the build. That's a lot of
accumulated complexity, spread across two separate projects
(`dotcl-package-generator` and this one), to compensate for something that
feels like it should be a build-system invariant rather than something
every consumer has to reason about individually.
