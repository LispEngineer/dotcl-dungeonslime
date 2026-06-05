# dotcl MonoGame Common Lisp Dungeon Slime

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

### DotCL Version

As of 0.1.7, using the pre-compiled, provided `dotcl` installed with
`dotnet tool install --global dotcl` does not work for me.
As of 0.1.8 I am still using the self-compiled `dotcl` but I did
not test the `dotnet tool install`ed one.

I am using a patched 0.1.8 that fixes a minor bug in the
provided readline (backwards history) and also allows the
readline to be interrupted (i.e., to stop a background thread).
The game should build fine without these minor patches, which
I have already submitted to DotCL.

### Build & Launch Steps

Preparation:

1. First, get, build and install `dotcl` in the sibling directory `../dotcl`.
   * This project's build files assume this was done there, and that the `dotcl`
     was locally built rather than retrieved from NuGet.

2. To use the MonoGame Content Builder, in this project's home directory:
   `dotnet tool restore`
   * This installs `dotnet-mgcb` and `dotnet-mgcb-editor` and `dotnet-mgcb-editor-linux`
     among other things.

You can then use the provided `Makefile` to build, test, and run the project:

* **Build the project:** `make build` (runs the `dotnet build` command)
* **Run the test suite:** `make test` (runs the game in `--test` mode)
* **Run the game:** `make run` (runs the GUI game)
* **Clean build files:** `make clean`
* **Run MonoGame Content Builder**: `make mgcb`

Or manually run the steps:

1. To build: `dotnet build MonoGameLispDemo.csproj -v d -c Debug`
   * `-v n` makes Lisp compilation errors be shown.
   * `-v d` shows more details.
   * `-v diag` shows the most, but I haven't really noticed a difference.

2. To run: `bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo`
   * To run in test mode, add `--test` to the command line, and it will
     not invoke the game.

3. If you want to edit the `.mgcb` file, execute: `dotnet tool run mgcb-editor-linux`

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


# Source File Descriptions

## Documentation

* [README-original.md](README-original.md): The original
  author SANO-san's README. Note: in Japanese.

* [clr-interop-ideas.md](clr-interop-ideas.md): I've had some thoughts
  and ideas on extending DotCL for interoperability with CLR and C#
  in a more coder-friendly way.

* [lispdoc.md](doc/lispdoc.md) describes DotCL's `LispDoc`
  annotation, which I thought would generate docstrings.
  This does not work as of DotCL 0.1.8.

* [BUILD-GUIDE.md](doc/BUILD-GUIDE.md) describes in great detail how this
  project is built when you call `dotnet build`.

* [dotnet-static-generic.md](doc/dotnet-static-generic.md) describes how
  the current `dotnet:static-generic` function works, as I wanted to
  create an analoguous `monoutils:invoke-generic` function. I hope that
  function or an analog will be incorporated into DotCL.

* [dotcl-form-evaluation.md](doc/dotcl-form-evaluation.md) explains how
  DotCL 0.1.8 evaluates and compiles a form. (It only does compilation,
  no interpretive evaluation.)

* [clr-generic-functions.md](doc/clr-generic-functions.md) describes the design
  and implementation plan of the custom C# class-aware generic function system.

* [dotcl-generic.md](doc/dotcl-generic.md) details the internal workings of
  generic functions and method dispatch inside the DotCL 0.1.8 runtime environment.

* [package-dotnet.md](doc/package-dotnet.md) provides detailed documentation of
  all 30 standard symbols and the 2 extra WinForms symbols in the DotCL `DOTNET` package.

* [package-dotcl.md](doc/package-dotcl.md) lists the exported symbols in the `DOTCL` package.

* [package-dotcl-mop.md](doc/package-dotcl-mop.md) lists the exported symbols in the `DOTCL-MOP` package.

* [package-dotcl-internal.md](doc/package-dotcl-internal.md) provides detailed documentation of all 154 internal/system symbols in the `DOTCL-INTERNAL` package.

* [GEMINI.md](GEMINI.md) - Contains useful references on libraries for
  human consumption. Used to provide guidance to Google's 
  [Antigravity CLI](https://antigravity.google/product/antigravity-cli)
  (formerly called Gemini CLI)
  which the author sometimes uses with Gemini to figure things out.
  (See below for notes on the author's use of ML assistance.)

## Lisp

* `settings.lisp`: Defines system-wide Lisp settings (e.g., `declaim`).

* `constants.lisp`: Defines system-wide constants; very often these are
  Lispy versions of C# enumerations.

* `clr-generic.lisp`: Implements the Version 1 C# class-aware generic function
  system macros (`defc#generic`, `defc#method`) and dispatch/specificity resolution logic.

* `clr-generic-test.lisp`: Startup test suite verifying C# generic function 
  dispatching, interface specificity, and alias resolution.

* `mg-classes.lisp`: Defines basic MonoGame classes and functions in a Lisp-friendly way 
  (e.g. `vector2`, `rect`, accessors `x`, `y`, `width`, `height`, and `sprite-batch-begin` helpers).

* `texture-region.lisp`: Implements the CLOS classes `texture-region` and 
  `texture-atlas` and associated drawing/retrieval functions, plus a safe Lisp form reader
  from a filename.

* `mg-core.lisp`: Creates a C# class `MonoGameCLOSProxy` which acts as a proxy between the
  MonoGame Game C# world and the Lisp CLOS world. Defines a base CLOS
  class called `core` which defines all the methods that are the target
  of this proxy class. Importantly, the `core` must be given a reference
  to an instantiated proxy class when instantiated! 
  
  This base `core` class has mostly administrative functionality:
  * Start and stop the background REPL
  * Set up the game window size, etc.
  * Save various MonoGame-relevant items in CLOS slots in the
    "constructor" (via `initialize-instance :after`)

* `game-1.lisp`: An extension of the `core` class above that actually
  will implement the MonoGame Dungeon Slime logic. For now, it also will
  steadily rotate the background color between black and red, which speed can
  be controlled with `color-cycle-period`. Changing that acts as a good test
  that the in-game REPL is working.

* `game-repl.lisp`: Provides functions to launch a background thread which
  operates a Lisp REPL. Sorta klugey for now but works.

* `load-repl.lisp`: Not a part of the sources of the game; use this like
  `(load "load-repl.lisp")` from a clean `dotcl` REPL instance to get the
  entire game loaded and ready for REPL hacking.

* `load-system-test.lisp`: Proof of concept that we can load a system using
  ASDF and use it in our binary. Also has related changes in `.csproj` file.

* `main.lisp`: The main functions which instantiate the MonoGame Game class
  by creating the CLOS and C# objects, associating them together, and
  returning the C# class. It also stores the two classes in `*game*` and
  `*cs-game*` (C sharp game).

* `monoutils.lisp`: Lisp stub for the `MonoUtils.cs` class, which defines
  several C# functions intended to be used from Lisp land. Works similarly
  to DotCL's `dotnet` package. Also contains the documentation strings for
  the functions as I couldn't figure out how to set them in the C# source.

* `poc-test.lisp`: Optional Proofs of Concept and Tests that can be run by
  including them in the `.asd` file (commented out by default). Useful during
  development only.

* `sprite.lisp`: The Sprite class from the Dungeon Slime tutorial
  [Chapter 8](https://docs.monogame.net/articles/tutorials/building_2d_games/08_the_sprite_class/index.html) 
  as a CLOS class.

* `animation.lisp`: The Animation and Animated Sprite classes from
  Chapter 9 of the tutorial.

* `texture-region.lisp`: The texture region class from Chapter 7 of the
  Dungeon Slime MonoGame tutorial translated into Lisp.

* `type-aliases.lisp`: Provides MonoGame-specific and other C# type aliases
  into `dotnet::*type-aliases*` mostly for ease of reading the code.

* `MonoGameLispDemo.asd`: ASDF system definition file for this game.

* `explore.lisp`: Just some functions I load into the REPL to explore
  the areas of DotCL.

* `csharp.lisp`: Useful utilities for calling into C# library classes.

## C#

* `CsharpSanityGame.cs`: A MonoGame instance fully in C# to prove that
  MonoGame has loaded correctly.

* `MonoUtils.cs`: Containts the C# implementation of an `invoke-generic`
  function that is akin to `dotnet:static-generic`. Also has a
  `MonoUtilsRegistrar` class which will register the functions in the
  DotCL environment under the `MONOUTILS` package; this needs to be
  called at some point before use to make the functions visible to
  Lisp.

* `Program.cs`: Main launcher for the stand-alone executable. 
  Optional arguments:
  * `--csharp-sanity`
  * `--base`
  * `--test` will prevent the actual MonoGame from running

### Deprecated C# Files

* `BaseCaller.cs`: *Deprecated!* My implementation of methods that can call the "base"
  class method of another class. Made before DotCL 0.1.8 added `call-base`.
  I might go back to using it if performance dictates, because it provides
  a `Func` that can be cached and called quickly without further reflection. 

* `MonoGameLispUtilities.cs`: *Deprecated!* My implementation of helper functions
  such as making non-generic versions of calls like `Load<Texture2D>`. Not needed
  anymore with my `invoke-generic` function in MonoUtils.

## MonoGame Files

* `Content/`: All the files that the game needs for pictures, etc.

* `Content.mgcb`: MonoGame Content Builder configuration. This references all
  the content that the `ContentManager` can load. I think there is something a
  little off with my configuration, but it works.

## Project Files

* `MonoGameLispDemo.csproj`: This is the C# Project file for the game. Its
  mystical incantations produce the final standalone binary. For more
  details, see the [BUILD-GUIDE.md](doc/BUILD-GUIDE.md).


# Including Lisp Libraries

It's very complicated to use a third party library right now in DotCL and
this application, and have them available in the binary.

1. Download the library using an SBCL with QuickLisp, because QuickLisp
   does not yet support DotCL.

2. You can then load the package with the DotCL built-in ASDF. However,
   it requires some strange manner to make it work so it can be used
   in the normal build process as well as loading from a REPL. See
   [`load-system-test.lisp`](load-system-test.lisp) for details.

3. However, that doesn't make it possible for the binary to get these
   files when transferred to another system. So, the *source* needs to
   be copied to the binary output in a `contrib` directory. I've added
   a section to the `.csproj` that does that.

TO DO: See if it is possible to have the DotCL compiled FASL files used
instead?

I've [submitted a request](https://github.com/dotcl/dotcl/issues/32)
with DotCL to automate this somehow.


# A Note on ML/AI & Tooling

You may have noticed some references to Antigravity and Gemini. I do use
Antigravity CLI (and the predecessor Gemini CLI) in my recreational coding,
including this project. I also use the Gemini Code Assist plug-in for VS
Code, my primary IDE. (I also use vi (vim), IntelliJ, Rider, and Emacs on
occasion.)

Almost none of the code herein is written by AI/ML tools. I enjoy the act
of writing code (and especially documentation) and knowing how everything 
is put together, so I like it this way, for now.

Where I have found the tools to be extremely useful are in several cases:

* **Explanations**: Gemini 3.5 Flash especially has been extremely good at
  explaining what is going on in SANO-san's DotCL and how it interacts with
  C# / CLR. I have found its explanations to be so clear that I have been
  saving some of them in various `.md` files herein.

* **Troubleshooting**: When I hit a wall and can't figure something out,
  Gemini often is able to get me going again. And, I mean, much faster than
  my traditional Googling it and reading docs and staring at the screen.
  Embarrassingly, although I've been Lisping for almost 40 years now, I still
  sometimes make dumb errors like having a paren in the wrong place, which it
  finds very quickly. (I don't use paredit or other structural editing
  tools. I am happy this way. I do love "rainbow parentheses" though!)

* **Coding**: When I have something well defined that I just don't feel like
  writing (usually because I've written it a jillion times before), I will
  ask Gemini to do it. I usually overspecify my instructions compared to what
  I have seen other tool users do, but it also means that in general the
  output gets pretty close to my standards and I can use it with only
  some edits.

I do not submit ML-developed CLs / PRs (Change Lists / Pull Requests) to
others in general. In the rare case if I would include tool-generated code, I
have fully vetted it and would vouch for it as if I wrote it myself. 


# Functionality Implemented

MonoGame Dungeon Slime features:
* All Chapters 1-8 content
  * Classes are implemented as CLOS classes
    * The base CLOS Core class does callbacks into a MonoGame proxy Game class.
  * We don't use an XML file to define the Texture Atlas; we use a Lisp property list.
  * Except: this is currently still doing the original MonoGame demo's color cycling
* Chapter 9 (animations): partial implementation

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
* `dotnet-p`: Tells if the argument is a Lisp-embedded dotnet/C#/CLR object.
* `boxed-dotnet-p`: Tells if the argument is a boxed dotnet/C#/CLR object,
  created with `dotnet:box`.
* `get-type`: Returns the Type object of a DotNet object, or nil if not a DotNet
  object. But if the arg is a string, tries to get the DotNet type of that name.
* `get-type-full-name`: Returns the string of the type name from `get-type` or nil.
  So if you pass it a string, it should return the same thing.

C# Class-Aware Generic Function System (Version 1):
* Implemented the `defc#generic` and `defc#method` macros in `clr-generic.lisp` 
  to support C# class type dispatch.
* Uses reflection (`IsAssignableFrom` checks) to dynamically verify subclassing or 
  interface implementation on the first argument of the generic function.
* Performs topological class/interface inheritance specificity sorting on applicable 
  methods to find the most specific target method.
* Employs deterministic interface precedence sorting, utilizing alphabetical class 
  names to break ties between unrelated classes/interfaces.
* Supports type alias resolution via `dotnet::*type-aliases*` inside method specializers 
  (e.g., `"GAMETIME"` resolves to `"Microsoft.Xna.Framework.GameTime"`).
* Integrates a startup test suite in `clr-generic-test.lisp` checking type dispatch, 
  interface precedence specificity (`ArrayList` vs `Hashtable` dispatching 
  to `ICollection` vs `IDictionary`), and type alias resolution.

Texture Regions, Sprites and Texture Atlases:
* Implemented the CLOS classes `texture-region`, `sprite` and `texture-atlas` 
  to manage sprite sheet subdivisions.
* Created `safe-read-form-from-file` in `texture-atlas.lisp` to securely load
  Lisp-based texture atlas descriptions without read-time evaluation.
* Implemented `ta-from-file` in `texture-atlas.lisp` which loads a `texture-atlas` from a Lisp
  form description file (like `Content/test-atlas.lisp`), converting symbol/keyword region
  names to strings for the atlas registry. It is accompanied by a validation test
  that runs on startup.

Lisp library usage. (See above.)

## Use of ASDF in the Game at Runtime

`(require "asdf")` fails at runtime with the error
`DotCL.LispErrorException: REQUIRE: module "asdf" not found`
due to a combination of two issues:

1. ASDF is skipped during build dependency bundling:
   Standard Lisp libraries in DotCL (like ASDF) do not define individual
   `:components` children and have `NIL` pathnames (since they are
   precompiled and shipped directly with the compiler). 
   This causes DotCL's `--resolve-deps` tool to treat ASDF as a built-in package and
   skip outputting it to the bundle manifest (`dotcl-deps.txt`). As a result, 
   MSBuild never copied the prebuilt `asdf.fasl` into the game's
   output directory.

2. Missing `contrib` directory at runtime:
   At runtime, DotCL's `MODULE-PROVIDE-CONTRIB` function dynamically searches for modules in a
   `contrib/` subdirectory relative to the
   executing process's `AppContext.BaseDirectory`
   (which for the game is `bin/Debug/net10.0/ubuntu.24.04-x64/` ). 
   Because the `contrib/` folder was not copied to the build output directory, 
   DotCL was unable to locate `asdf.fasl` dynamically.

## Deprecated Functionality

BaseCaller: This is a class that works around the missing base class
calling function in the dotnet package. Run the built binary with
the `--base` argument to see it work (in C#).
* Call a base method taking Void returning Void
* Get a `Func<>` to call any base method
* Invoke that `Func`tion
* Get any type by String name, even if System.Type.GetType() would fail
* Deprecated because SANO-san implemented `dotnet:call-base`

## Open Bugs

(none)


# TO DO

* Break the code into different packages for everything and get it
  all out of the `:cl-user` namespace.
  * This is made somewhat more complicated by the "concatenate and compile"
    mechanism the DotCL system uses to build a binary.

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

* If the standalone game is exited using the GUI of the game (currently
  by pressing `ESC`), it gives this error:
  ```
  Thread "REPL" error: Thread was interrupted from a waiting state.
  ```
  This only happens if the background REPL has not yet launched and
  its thread is sleeping a bit before starting the REPL.
  It doesn't seem to matter. So put a wrapper around that sleep and
  catch that error and exit?

# Open Questions

* How do I make a multimethod `defmethod` which can specialize on the class of a
  C# class?

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

* [Getting types of non-Lisp objects](https://github.com/dotcl/dotcl/issues/31)

* FR:[Extend multimethods to C# types](https://github.com/dotcl/dotcl/issues/29)

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

* MGCB: To copy the `test-atlas.lisp` file to the output Content directory,
  add it to the `.mgcb` file and change the `Build Action` to `Copy`.

* To run the game as another user: (Remember I use Kubuntu 24.04 under Wayland)
  * `cp -a bin/Debug/net10.0/ubuntu.24.04-x64/ /tmp` (or wherever)
  * `xhost +si:localuser:dummy`
  * `su - dummy` (or any other user)
  * `export DISPLAY=:0` (use X11)
  * `/tmp/ubuntu.24.04-x64/MonoGameLispDemo` (optionally add `--test`)

* DotCL compiles the root system by concatenating
  all source files in the system (in the order defined in the `.asd`file)
  into a single `.concat.lisp` file.

* DotCL keeps track of generic functions in an internal C# dictionary (_gfRegistry)
  to manage CLOS dispatch and compilation. Even after calling fmakunbound, 
  the generic function object remains registered.
  See: `public static void RemoveGfRegistryEntry(Symbol sym, bool isSetf = false)`
