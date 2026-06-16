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


# Miscellaneous

* Improve C# class package generator:
  * Change `/=` to `not=` in the Lispy style
  * Change `ToSomething` methods to `->something`
  * Handle Enumerations
  * Handle multiple classes at a time for a single assembly
  * Register classes/types with DotCL's CLOS dispatch system
  * Add the assembly version (and other versions?) from which the class package was made
  * Change `GetSomething` methods to ???
  * Make operator overloads take N parameters - assuming they are all the same type
    * This needs more consideration

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
