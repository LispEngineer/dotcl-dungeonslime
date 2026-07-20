# Bug Report: `dotnet:define-class` captures `self` from its own compile-time package, not the caller's

> **Fixed upstream in DotCL `0.1.19`.** `%process-ctor-form` and
> `dotnet:define-class` now compute `(self-sym (intern "SELF" *package*))` at
> the *caller's* macroexpansion time and splice `,self-sym` into the emitted
> lambda list, instead of a literal `self` token whose package identity was
> fixed at `dotnet-class.lisp`'s own compile time. This matches the "Suggested
> Fix" direction below (hygienic, caller-resolved `self`), though via
> per-expansion `intern` rather than a single fixed exported symbol. The
> `packages.lisp` workaround in this project has been removed; see the
> "Resolved upstream" note in
> [`doc/implementation-notes.md`](implementation-notes.md) for verification
> steps.

* Reported by: Douglas P. Fields, Jr. — symbolics@lisp.engineer
* Source repository: [dotcl-dungeonslime](https://github.com/LispEngineer/dotcl-dungeonslime)
  (a Common Lisp/DotCL port of the MonoGame "Dungeon Slime" tutorial)
* Report drafted by: Claude Sonnet 5 (Anthropic), acting as a coding assistant
  for the above author, from investigation of a real failure in that project
* DotCL version: `0.1.18` (also reproduced against a local dev build,
  `0.1.18+1.g5c4cd1e`)
* Platform: Linux (Arch), x86_64, .NET 10
* Affected file: `contrib/dotnet-class/dotnet-class.lisp`

## Summary

`dotnet:define-class`'s expansion binds each method body's implicit receiver
to a literal `self` parameter:

```lisp
;; contrib/dotnet-class/dotnet-class.lisp, inside the defmacro dotnet:define-class
`(list ,name ,(dotnet::%resolve-type return-type)
       (list ,@param-types)
       (lambda (self ,@param-names)
         (declare (ignorable self))
         ,@body)
       ,override
       ...)
```

`contrib/dotnet-class/dotnet-class.lisp` has **no `in-package` form**. Because
of that, the `self` symbol embedded in this backquote template is whatever
the reader happened to intern it as when `dotnet-class.lisp` itself was
*compiled* — i.e. wherever `*package*` pointed at that time (in practice,
`COMMON-LISP-USER`, since that's the ambient default for a fresh Lisp image
compiling a standalone contrib module). Because that macro is unhygienic
(ordinary backquote, no `gensym`/package-qualification of `self`), the
lambda-list symbol it embeds is **fixed at the macro's own compile time**,
independent of the package the macro is later *used* from.

The `,@body` splice, by contrast, is the caller's own source forms, read by
the caller's own reader under the caller's own `*package*`. Any bare `self`
a user writes inside a `dotnet:define-class` method body is therefore read
as `<caller-package>::SELF` — a *different* symbol from whatever
`dotnet-class.lisp` captured, unless the caller happens to be compiling in
the exact same package `dotnet-class.lisp` itself was compiled in.

The result: the emitted lambda's parameter and its own body disagree on what
symbol `self` names. At call time this manifests as:

```
;; Unhandled error in foreign callback: #<UNBOUND-VARIABLE: SELF>
```

## Why This Is Especially Surprising for Users

Two facts make this bug easy to trigger unknowingly and hard to diagnose:

1. **FASLs bake in the compile-time package, not the load-time one.** If
   `dotnet-class.lisp` is consumed via a pre-built FASL (e.g. the one shipped
   inside the `dotcl` dotnet tool package,
   `contrib/dotnet-class/dotnet-class.fasl`) rather than recompiled from
   source, `self` is permanently `COMMON-LISP-USER::SELF` for that FASL, no
   matter what package `*package*` is bound to when the FASL is `load`ed
   later. Loading the FASL under a different package does **not** re-resolve
   the symbol.
2. **It appears to work in some code paths and not others**, purely as a
   side effect of *how* `dotnet-class` gets loaded, not anything the user
   controls directly. In our project, a full MSBuild-driven `dotnet build`
   happened to recompile `dotnet-class.lisp` from source late enough (via
   ASDF's normal compile-op/load-op-per-dependency sequencing) that its
   captured `self` ended up matching our project's own package by accident.
   But loading the exact same project via a plain `(asdf:load-system
   "dungeon-slime")` from a `dotcl` REPL — the officially documented way to
   get a live REPL against the game (`make repl` in our Makefile) — resolves
   the `"dotnet-class"` ASDF dependency by `require`-ing the tool's shipped,
   pre-built FASL instead, which was compiled under `COMMON-LISP-USER`. Same
   project, same source code, two different outcomes, with no obvious cause
   from the user's side.

This is not specific to any one downstream project's package name — it will
happen for *any* consumer of `dotnet:define-class` whose own package isn't
literally `COMMON-LISP-USER` (or whatever else happens to be ambient when
`dotnet-class.lisp` was last compiled), the moment a method body references
`self` directly (which the macro's own documentation examples in
`doc/package-dotnet.md`/`doc/dotnet-dotcl-interop.md` explicitly show as the
intended usage, e.g. `(dotnet:call-base self "Update" game-time)`).

## Reproduction

```lisp
;; From a fresh dotcl REPL, after (require :dotnet-class):
(in-package :my-package)   ; any package other than whatever dotnet-class.lisp
                            ; itself was compiled under
(require :dotnet-class)
(macroexpand-1
  '(dotnet:define-class "X" ("System.Object")
     (:methods ("M" () :returns Void (foo self)))))

;; => (DOTNET:%DEFINE-CLASS "X" "System.Object" NIL NIL
;;     (LIST (LIST "M" "System.Void" (LIST)
;;                 (LAMBDA (COMMON-LISP-USER::SELF)      ; <-- captured package
;;                   (DECLARE (IGNORABLE COMMON-LISP-USER::SELF))
;;                   (FOO SELF))                          ; <-- MY-PACKAGE::SELF
;;                 NIL NIL))
;;     NIL NIL NIL NIL NIL NIL NIL)
```

Note the lambda parameter is `COMMON-LISP-USER::SELF` while the body's `SELF`
(inside `(FOO SELF)`) is `MY-PACKAGE::SELF` — visibly different package
prefixes in the same printed form (the reader prints `SELF` unqualified only
for the symbol matching the *current* `*package*` at print time; the other
one shows its full package prefix). Invoking any emitted method at runtime
whose body references `self` then signals `UNBOUND-VARIABLE: SELF` from the
C#→Lisp callback boundary.

A full worked example, including the exact end-user-visible failure
(`(dotnet:invoke *mg-game* "Run")` failing from a `dotcl` REPL after loading
a MonoGame-based game defined with `dotnet:define-class`), is written up in
this project's [`doc/implementation-notes.md`](implementation-notes.md),
under the heading `` `make repl` and "Unbound variable: SELF" in Foreign
Callbacks ``.

## Suggested Fix

Add `(in-package :dotnet)` (or whatever package is appropriate) to the top
of `contrib/dotnet-class/dotnet-class.lisp`, and make the macro hygienic
with respect to `self` — e.g. have the `defmacro dotnet:define-class`
expansion explicitly reference a symbol from a fixed, exported location
(such as `dotnet:self`, interned once in the `DOTNET` package and exported),
rather than relying on an unqualified `self` token whose package identity
depends on ambient compile-time state. Concretely, changing:

```lisp
(lambda (self ,@param-names)
  (declare (ignorable self))
  ,@body)
```

to explicitly use (and export) `dotnet::self`/`dotnet:self` — e.g.

```lisp
(lambda (dotnet:self ,@param-names)
  (declare (ignorable dotnet:self))
  ,@body)
```

— combined with documenting that method bodies must reference `dotnet:self`
(or with `dotnet` added to callers' `:use` list so it resolves unqualified)
would make the captured symbol identity independent of whichever package
happened to be ambient when `dotnet-class.lisp` was compiled, and would work
identically whether `dotnet-class` is loaded from source or from a
pre-built, shipped FASL.

## Workaround (in place in this project)

Since `contrib/dotnet-class/dotnet-class.lisp` isn't part of our project and
we can't modify the installed DotCL distribution, we work around this in
`packages.lisp`: immediately after defining our own package, we `intern` and
`export` a `SELF` symbol in it, then reload `dotnet-class.lisp`'s *source*
(located via `asdf:system-relative-pathname`, not the pre-built FASL) with
`*package*` bound to our own package, forcing the reader to reuse our
already-interned `SELF` symbol when the macro recompiles. Full details and
verification steps are in
[`doc/implementation-notes.md`](implementation-notes.md).
