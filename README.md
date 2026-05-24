# dotcl MonoGame Demonstration v2

* Author: [Douglas P. Fields, Jr.](mailto:symbolics@lisp.engineer)
* License: MIT (see [LICENSE](LICENSE)), per original author
* Changes Copyright: Douglas P. Fields, Jr.
* Original Copyright: SANO,Masatoshi
* [Original README](README-original.md)

This is an extension of the 
[original MonoGame demo](https://github.com/dotcl/dotcl/tree/master/samples/MonoGameLispDemo)
from
[dotcl](https://github.com/dotcl/dotcl) creator 
[SANO-san](https://github.com/snmsts). 

The goals of this code are:

1. Move as much of the functionality into basic Common Lisp and
   CLOS as possible.

2. Make a clean set of Lispy functions for interacting with MonoGame.

3. Implement the [MonoGame 2D Dungeon Slime demo](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
   in as Lispy a manner as I can.

This is heavily a work in progress. The code may not be as clean as I
would like, but this is a proof of concept for creating my own
game in SANO-san's awesome DotCL Common Lisp later.

## How to Use

I've built and tested this on Ubuntu 24.04 on x64 only. I make no
guarantees that this will work on any other platform.

You will need to check out [dotcl](https://github.com/dotcl/dotcl) 
in a sibling directory to this one
and build and install the `dotcl` tool. This demo uses various files
assuming they are in that sibling directory. These references are
in the `MonoGameLispDemo.csproj` file.

(As of 0.1.7, using the pre-compiled, provided `dotcl` installed with
`dotnet tool install --global dotcl` does not work for me.
As of 0.1.8 I am still using the self-compiled `dotcl` but I did
not test the `dotnet tool install`ed one.)

So, all the steps:

1. First, get, build and install `dotcl` in the sibling directory `../dotcl`.
   * This project's build files assume this was done there, and that the `dotcl`
     was locally built rather than retrieved from NuGet.

2. To use the MonoGame Content Builder, in this project's home directory:
   `dotnet tool restore`
   * This installs `dotnet-mgcb` and `dotnet-mgcb-editor` and `dotnet-mgcb-editor-linux`
     among other things.

2. `dotnet build MonoGameLispDemo.csproj -v d -c Debug`
   * `-v n` makes Lisp compilation errors be shown.
   * `-v d` shows more details.
   * `-v diag` shows the most, but I haven't really noticed a difference.

3. `bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo`

### How to Load in REPL

First, build the game per the above - this will ensure the C#
files are all compiled into `.dll` files which we can load, and
the ContentManager can load its content.

Invoke DotCL with `rlwrap --always-readline dotcl` (or omit rlwrap
if you prefer).

You will need to edit `load-repl.lisp` for your directory structure,
sorry!

```lisp
;; Load all the necessary dependencies and make a game instance as
;; cl-user::*mg-game*
(load "load-repl.lisp")

;; Execute the game then, with this:
(dotnet:invoke *mg-game* "Run")

;; After the game executes and returns to the REPL, clean up with this:
(dotnet:invoke *mg-game* "Dispose")
;; otherwise the game window will just sit there and cause grief.
```

To run the game a second time: (**NOT** working)

```lisp
(setf *mg-game* (make-game))
(setf (dotnet:invoke (content *game*) "RootDirectory") "/home/dfields/src/cl/MonoGameLispDemo-standalone/bin/Debug/net10.0/ubuntu.24.04-x64/Content")
(dotnet:invoke *mg-game* "Run")
```

Note that this currently does **NOT** work.
It seems others have tried;
[see this issue](https://github.com/MonoGame/MonoGame/issues/7816).
In my case, it shows the game window and then segfaults out.


## Related Documents

* [README-original.md](README-original.md) The original
  author SANO-san's README. Note: in Japanese.

* [lispdoc.md](doc/lispdoc.md) describes DotCL's `LispDoc`
  annotation, which I thought would generate docstrings.
  This does not work as of 0.1.8.

* [BUILD-GUIDE.md](doc/BUILD-GUIDE.md) describes in great detail how this
  project is built when you call `dotnet build`.

* [dotnet-static-generic.md](doc/dotnet-static-generic.md) describes how
  the current `dotnet:static-generic` function works, as I wanted to
  create an analoguous `monoutils:invoke-generic` function. I hope that
  function or an analog will be incorporated into DotCL.

* [GEMINI.md](GEMINI.md) - Contains useful references on libraries for
  human consumption. Used to provide guidance to Google's 
  [Antigravity CLI](https://antigravity.google/product/antigravity-cli)
  (formerly called Gemini CLI)
  which the author sometimes uses with Gemini to figure things out.


# Functionality Implemented

MonoGame Dungeon Slime features:
* All "[Chapter 04: Creating a Class Library](https://docs.monogame.net/articles/tutorials/building_2d_games/04_creating_a_class_library/index.html?tabs=vscode)" content
  * Except: The base Core class and Game1 are both CLOS classes
    * The base CLOS Core class does callbacks into the MonoGame Game class
  * Except: this is currently still doing the original MonoGame demo's color cycling

Basic in-game REPL:
* Launches a super simplistic REPL background thread that uses
  standard input and output. Control-D will exit the REPL.
* Demonstrate the REPL interacting with live game state with
  `(setf color-cycle-period 1.0)` to speed the color cycling.
* Evaluate `(exit)` to quit the game.
* Submitted change for `dotcl-repl` with `console-read-key-interruptable`
  to use a busy wait loop checking `Console.KeyAvailable` and sleeping for
  50ms intervals, trapping `ThreadInterruptedException` so that the REPL
  thread can be interrupted cleanly.
* REPL is started and stopped by the MonoGame `Game.Run()` by hooking into
  `BeginRun()` and `EndRun()`
* Note that the background REPL spawned when running from a top level
  REPL session does not interact well if the top level REPL is using rlwrap
  like `rlwrap --always-readline dotcl`.

`MonoUtils` Lisp Package written in C#:
* Proof of concept "MonoUtils" package written in C#.
* Provide a shim in `monoutils.lisp`.
* Have the top level `.asd` file include this shim and make the 
  `main.lisp` depend on it.
* Proof of concept "Add3" function exposed to Lisp as: `(monoutils:add3 1 2 3)`.
* Implement a `monoutils:invoke-generic` as an analog to the existing
  `dotnet:static-generic`. It supports resolving generic type arguments via Lisp type
  aliases (e.g., `'("TEXTURE2D")` instead of the fully qualified 
  `'("Microsoft.Xna.Framework.Graphics.Texture2D")`) registered in
  `dotnet::*type-aliases*`. 
  * Used for calling `Load<Texture2D>()` dynamically.

## Deprecated Functionality

BaseCaller: This is a class that works around the missing base class
calling function in the dotnet package. Run the built binary with
the `--base` argument to see it work (in C#).
* Call a base method taking Void returning Void
* Get a `Func<>` to call any base method
* Invoke that `Func`tion
* Get any type by String name, even if System.Type.GetType() would fail
* Deprecated because SANO-san implemented `dotnet:call-base`


# TO DO

* Refactor `main.lisp` into multiple logical files.

* Make the Run() spawn the background REPL if it was executed from
  the DotCL repl.

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

* Figure out how a C# only Lisp package can be imported using just
  a `require` statement, like most Lisp packages. I am guessing this
  will require a package stub to be created somewhere/somehow.

* If the standalone game is exited using the GUI of the game (currently
  by pressing `ESC`), it gives this error:
  ```
  Thread "REPL" error: Thread was interrupted from a waiting state.
  ```
  I don't know why, and it doesn't seem to matter, but...?

# Open Questions

* How do I pass a boolean "False" to a C# function with `dotnet:invoke`?
  * Do I just send in `nil`?
  * Try `(dotnet:box nil "BOOL")` as in 
    `(dotnet:invoke an-object "AMethod" (dotnet:box nil "BOOL"))`

* Is there a fast way to invoke C# functions/methods without going through
  introspection? I.e., a way to say "save the method call to X(a1, a2, a3)"
  and then invoke that method call on an object quickly with minimal overhead,
  preferably as if it were being directly invoked?

* In `dotnet:define-class`, how would I specify a field of class
  `Func<object, object[], object>`?


## Issues Filed

* [Enable `dotcl-repl:readline` to be interrupted](https://github.com/dotcl/dotcl/pull/28)

* [Fix backwards `dotcl-repl` history](https://github.com/dotcl/dotcl/pull/27)

* [Invoke non-static methods with generic type arguments](https://github.com/dotcl/dotcl/issues/23)

* [Omit default parameters in `dotnet:invoke`](https://github.com/dotcl/dotcl/issues/24)

* [Add constructor arguments to `dotnet:define-class`](https://github.com/dotcl/dotcl/issues/13).
  * Changed to "support multiple constructors", because SANO-san 
    implemented the constructor arguments

* [Add `base` support in Lisp](https://github.com/dotcl/dotcl/issues/14).
  * CLOSED: SANO-san implemented this

* [Add array indexer](https://github.com/dotcl/dotcl/issues/15).
  * CLOSED: SANO-san implemented this


# Miscellaneous Notes

* Quicklisp: You can use SBCL to load Quicklisp packages. As of now,
  Quicklisp does not load in DotCL (there are DotCL language issues
  and also needs a DotCL-specific socket implementation). However,
  once loaded in SBCL, you can use DotCL's ASDF to load those systems,
  e.g., `(asdf:load-system "MonoGameLispDemo")`.
  * I may work on the Quicklisp DotCL implementation at some point.
