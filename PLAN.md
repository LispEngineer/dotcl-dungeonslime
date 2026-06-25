# Plans

* Author: Douglas P. Fields, Jr - symbolics@lisp.engineer

This document contains the plans and phases of what I am planning
to do with this game & framework.


# Open Bugs

* If the standalone game is exited using the GUI of the game (currently
  by pressing `ESC`), it gives this error:
  ```
  Thread "REPL" error: Thread was interrupted from a waiting state.
  ```
  This only happens if the background REPL has not yet launched and
  its thread is sleeping a bit before starting the REPL.
  It doesn't seem to matter. So put a wrapper around that sleep and
  catch that error and exit?

# Implemented Chapters

* **DONE** Chapter 16: SpriteFonts and Score Display
  * Added `sprite-font.lisp` with `load-font`, `measure-string`, `draw-string`
  * Added score tracking to `game-1` with `score` slot
  * Score increments by 100 when slime collides with bat
  * Score text rendered in top-left corner using `04B_30.ttf` font
  * Font asset: `AdwaitaMono-Regular.ttf` (system font) — the tutorial's
    `04B_30.ttf` download link returns 404
  * SpriteFont loaded via proper MonoGame content pipeline
  * See [doc/chapter-16-plan.md](doc/chapter-16-plan.md) for full plan


# Miscellaneous

* Modify the build with [DotCL 0.1.12](https://github.com/dotcl/dotcl/blob/master/RELEASES.md#v0112--2026-06-18)'s
  new features about building a whole system.

* Update to [DotCL 0.1.11](https://github.com/dotcl/dotcl/blob/master/RELEASES.md#type-declared-net-calls-compile-to-a-direct-call)
  * Remove the various `eval-when` that are no longer necessary
  * **DONE** Change package generator to use the new `(dotnet:invoke (the (...`
  * Figure out how the 0.1.10 capability to have overloaded class names in
    the generic dispatch mechanism works - and prove it with tests

* **DONE** Remove my custom `Vector2` code and use the package generator's code

* Improve C# class package generator:
  * **DONE** Version 10: Added method overload support with clean/dirty classification,
    type-suffixed naming, passthrough &rest dispatch, value-type typed-call optimization,
    and dirty overload documentation.
  * Handle dirty overloads (ref/out) with -ref suffix naming and
    out→multiple-values mapping in a future version.
  * Make simple constructors work in the package generator code, using the name `make`
  * **DONE** Change `/=` to `not=` in the Lispy style
  * Consider casting mutator parameters to the correct type, e.g.,
    `(#!!System.Convert.ToByte 37)`, or `(dotnet:box 37 "System.Byte")`
    in the mutator function implementation
  * Add documentation comments that indicate the return type and
    expected input type(s) of any parameters.
  * Change IsSomething methods to `something?` methods
  * Change `ToSomething` methods to `->something`
  * Handle multiple classes at a time for a single assembly
  * **DONE** Register classes/types with DotCL's CLOS dispatch system
  * Add the assembly version (and other versions?) from which the class package was made
  * Change `GetSomething` methods to ???
  * Make operator overloads take N parameters - assuming they are all the same type
    * This needs more consideration

* **DONE** Package generator for `Color` has non-static constants.
  * Consider forcing them to be made as defconstant, forcing the
    C# assembly and class/struct to be loaded before the constants
    are defined?
  * Same with `SamplerState` but these are static readonly non-constants,
    which probably can be treated as constants?
  * Maybe make two symbols for each of these sorts of things, one which is
    treated as a constant and another that is re-evaluated. Maybe make the
    re-evaluated one have a `!` at the end so it's always re-evaluated?
  * The problem is there is no semantic difference in the code between something
    that just has a getter that will never change, vs. one that can (like
    `CapsLock`).

* Add a Slynk server & `icl` connection `Makefile` target

* Migrate to DotCL 0.1.9
  * Use the new `invoke-generic`
  * Use the new C# `defmethod` dispatching

* Make the `AssemblyToLispy` tests less fragile
  * I upgraded from 10.0.8 to 10.0.9 DotNet and the tests broke.
  * Remove hardcoded paths and find the assemblies in some automated fashion?

* Implement build improvements:
  * Automatically vendor all libraries used
    * [See Dependency Management](https://github.com/LispEngineer/rlgdx#dependency-management)
      in my `rlgdx` project (built upon ABCL) for ideas
  * Automatically find and include all necessary files for the 
  * Build & package for Windows on Linux
  * Build, test & package on Windows for Windows and Linux

* Enhance the generic methods that dispatch on C# classes.
  Rationale: I'd like `width` to work on CLOS classes AND C# classes.
  * Exact class match (e.g., the string of the exact class name)
  * Instance of class match (e.g., that class or any subclass)
  * Make it work with basic `defmethod` not just `defc#method`

* Build a MultiInvoke which does invoke on each one along the way, for example,
  `(multi-invoke mg-game "Window" "ClientBounds" "Width")`.

* Implement a system to convert a CLOS class to a CLR/C# class somehow,
  or really, create a C# proxy for the CLOS class.
  (I'm still noodling ways to do that.)
  * Make it as generic as possible.
  * Maybe a base CLOS class that implements functionality to create that
    proxy on the fly, and has a reference to the proxy for reuse.

* Implement nice helpers for the C# MonoGame classes & calls:
  * Easy access to various Enumerations 
    (e.g., [`Keys`](https://docs.monogame.net/api/Microsoft.Xna.Framework.Input.Keys.html))
  * Easy access to static classes and methods

* Look into the performance of the various `dotnet:` calls in the main
  event loop (e.g., `Update()` and `Draw()`). See if there is optimization
  that can be made.
