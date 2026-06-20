# dotcl MonoGame Common Lisp Dungeon Slime

* Author: [Douglas P. Fields, Jr.](mailto:symbolics@lisp.engineer)
* License: MIT (see [LICENSE](LICENSE)), per original author
* Changes Copyright: Douglas P. Fields, Jr.
* Original Copyright: [SANO, Masatoshi](https://github.com/snmsts)
* [Original README](README-original.md)

This is an implementation of the 
[MonoGame 2D Dungeon Slime demo](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
in as Lispy a fashion as possible. It is a learning vehicle for how
to build MonoGame games in DotCL Common Lisp. Learnings will also be
passed on to the [DotCL](https://github.com/dotcl/dotcl) project as
feature suggestions and bug reports.

The goals of this project are:

1. Move as much of the functionality into basic Common Lisp and
   CLOS as possible.

2. Make a clean set of Lispy functions for interacting with MonoGame.

3. Build various utilities and frameworks to make interacting with
   C#, CLR and MonoGame (and other non-Common Lisp platform things)
   ergonomic, reliable and well-documented.

This is heavily a work in progress. The code may not be as clean as I
would like, but this is primarily a proof of concept for creating another
game in SANO-san's awesome DotCL Common Lisp later.


# How to Use

I've built and tested this on Ubuntu 24.04 on x64 only. I make no
guarantees that this will work on any other platform.

You will need to check out [dotcl](https://github.com/dotcl/dotcl) 
in a sibling directory to this one
and build and install the `dotcl` tool. This demo uses various files
assuming they are in that sibling directory. These references are
in the `DungeonSlime.csproj` file.

## DotCL Version

As of 0.1.9 the game works "out of the box," and a custom patched
`dotcl` is no longer necessary.
* I will migrate to using the new 0.1.9 features in due course.

As of 0.1.8 I am still using the self-compiled `dotcl` but I did
not test the `dotnet tool install`ed one.
* I am using a patched 0.1.8 that fixes a minor bug in the
  provided readline (backwards history) and also allows the
  readline to be interrupted (i.e., to stop a background thread).
  The game should build fine without these minor patches, which
  I have already submitted to DotCL.

As of 0.1.7, using the pre-compiled, provided `dotcl` installed with
`dotnet tool install --global dotcl` does not work for me.

## Build & Launch Steps

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
* **Check Lisp parentheses balance:** `make check-parens`

Or manually run the steps:

1. To build: `dotnet build DungeonSlime.csproj -v d -c Debug`
   * `-v n` makes Lisp compilation errors be shown.
   * `-v d` shows more details.
   * `-v diag` shows the most, but I haven't really noticed a difference.

2. To run: `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime`
   * To run in test mode, add `--test` to the command line, and it will
     not invoke the game.

3. To generate assembly metadata (work in progress):
   `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime --assembly <path-to-dll> [--output <output-path>]`
   * `--assembly <filename>`: Resolves the assembly and computes its input directory automatically.
   * `--output <filename>`: The destination filepath for the generated S-expression plist.
     If set to `-`, or if the parameter is omitted entirely, it defaults to standard output
     (stdout), with diagnostic logs routed to standard error (stderr) to keep the payload clean.
   * Example: `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime --assembly /home/dfields/.nuget/packages/monogame.framework.desktopgl/3.8.4.1/lib/net8.0/MonoGame.Framework.dll --output /tmp/mg.lisp`

4. If you want to edit the `.mgcb` file, execute: `dotnet tool run mgcb-editor-linux`

5. To check Lisp parentheses balance manually:
   `find . -type f \( -name "*.lisp" -o -name "*.asd" \) ! -path "*/obj/*" ! -path "*/bin/*" ! -path "*/.git/*" | xargs python3 check_parens.py`
   * Parentheses balance is usually not much of a problem for human coders due to IDE
     support, but it seems to trip up AI assistance a lot. The problem is compounded
     due to DotCL's mechanism of concatenating all Lisp files into a single input during
     compilation phase.

## How to Load in REPL

First, build the game per the above - this will ensure the C#
files are all compiled into `.dll` files which we can load, and
the ContentManager can load its content.

Invoke DotCL with `rlwrap --always-readline dotcl` (or omit rlwrap
if you prefer).

You will need to edit `load-repl.lisp` for your directory structure,
sorry!

```lisp
;; Load all the necessary dependencies and make a game instance as
;; dungeon-slime::*mg-game*
(load "load-repl.lisp")
(in-package :dungeon-slime)

;; Execute the game then, with this:
(dotnet:invoke *mg-game* "Run")

;; After the game executes and returns to the REPL, clean up with this:
(dotnet:invoke *mg-game* "Dispose")
;; otherwise the game window will just sit there and cause grief.

;; To run the tests from the REPL:
(dungeon-slime-tests::run-all-tests)
```

It is not possible to run the game a second time after it exits
under the current MonoGame system.
It seems others have tried;
[see this issue](https://github.com/MonoGame/MonoGame/issues/7816).
In my case, it shows the game window and then segfaults out.

## Migration to Arch Linux (EndeavorOS)

I moved from Ubuntu 24.04 to Arch EndeavorOS on 2026-06-19. At the same time,
DotCL 0.1.12 was released.

To compile on the new platform, I needed to do:
* `dotnet restore`
* `make clean`
* `make build`

This build failed because there was no `anaphora`, so:

* `rlwrap /home/dfields/.roswell/impls/x86-64/linux/sbcl-bin/2.6.5/bin/sbcl`
  ```lisp
  (load "~/quicklisp/setup.lisp")
  (ql:quickload "anaphora")
  ``` 

This didn't help. 
* Patch my `~/quicklisp` per [DotCL patch](https://github.com/quicklisp/quicklisp-client/pull/245/changes/0ca1ed4412d8b640b5c918bac4c8a7a7630aca2d)
* Run DotCL: `dotcl`
  ```lisp
  (load "~/quicklisp/setup.lisp") 
  (ql:quickload "anaphora")
  (anaphora:awhen 37 (format t "It is: ~S~%" it))
  ;; First mkdir -p ~/.config/dotcl
  (ql:add-to-init-file)
  ```

It still does not build. However, this works:
* `make repl`

Note that rlwrap on Arch doesn't work *at all* with dotcl now.

However, the `make build` still fails, no `anaphora`.


# A Note on ML/AI & Tooling

You may have noticed references to Antigravity or Gemini. I do use
Antigravity CLI (and the predecessor Gemini CLI) in my recreational coding,
including this project. I also use the Gemini Code Assist plug-in for VS
Code, my primary IDE. (I also use vi (vim), IntelliJ, Rider, and Emacs on
occasion.)

Most of the code herein is written by myself. I enjoy the act
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

## ML/AI Generated Code in this Repo

As an experiment in highly agentic coding, which so far has been interesting, 
nearly 100% of the code of `AssemblyToLispy.cs` has been authored by the AI assistant. 
Detailed documentation was established in `assembly-to-lispy.md` first, and then refined 
with implementation choices and details as work progressed. It contains over 1,100 lines 
of C# code, backed by a robust native Common Lisp test suite that performs recursive schema 
and live CLR semantic reflection validation across `System.Runtime.dll`, `System.Console.dll`, 
`AssemblyToLispyTestTarget.dll`, `MonoGame.Framework.dll`, `DotCL.Runtime.dll`, 
`DungeonSlime.dll`, and `NVorbis.dll`.

This development approach has been extended to the modular test framework under the `tests/`
directory (for testing capabilities), with plans to also use the AI assistant for
the Lisp stub/package generator for C# assemblies.

Additionally, the Lisp Package generator has been heavily coded with ML/AI assistance.


# Functionality Implemented

MonoGame Dungeon Slime features:
* All Chapters 1-9 content
  * Classes are implemented as CLOS classes
    * The base CLOS Core class does callbacks into a MonoGame proxy Game class.
  * We don't use an XML file to define the Texture Atlas; we use a Lisp property list.
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
* `dotnet-p`: Tells if the argument is a Lisp-embedded dotnet/C#/CLR object.
* `boxed-dotnet-p`: Tells if the argument is a boxed dotnet/C#/CLR object,
  created with `dotnet:box`.
* `get-type`: Returns the Type object of a DotNet object, or nil if not a DotNet
  object. But if the arg is a string, tries to get the DotNet type of that name.
* `get-type-full-name`: Returns the string of the type name from `get-type` or nil.
  So if you pass it a string, it should return the same thing.

MonoGame Framework Classes: Texture Regions, Sprites and Texture Atlases:
* Implemented the CLOS classes `texture-region`, `sprite` and `texture-atlas` 
  to manage sprite sheet subdivisions.
* `animation` and `animated-sprite` contain sprite lists (and delays), and then
  implement them for MonoGame tapping both the `Draw` and `Update` callbacks.
* Implemented `ta-from-file` in `texture-atlas.lisp` which loads a `texture-atlas` from a Lisp
  form description file (like `Content/test-atlas.lisp`), converting symbol/keyword region
  names to strings for the atlas registry. It is accompanied by a validation test
  that runs on startup.

Lisp utility functionality:
* `safe-read-form-from-file` is used to securely load
  Lisp-based texture atlas descriptions without read-time evaluation.

C# Class-Aware Generic Function System (Version 1):
* NOTE: This may have been superseded by DotCL's 0.1.9 ability to dispatch
  C# types in (CLOS) methods.
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


C# Direct Method Call Optimization (DotCL 0.1.11+):
* Utilizes DotCL 0.1.11 direct-call compilation feature by wrapping C# instance
  method receivers in type declarations using `(the (dotnet "Type") ...)`.
* Speeds up method invocation significantly by avoiding runtime reflection and boxing.
* Handled automatically by the Lisp package generator for generated reference type stubs.

## Deprecated Functionality

BaseCaller: This is a class that works around the missing base class
calling function in the dotnet package. Run the built binary with
the `--base` argument to see it work (in C#).
* Call a base method taking Void returning Void
* Get a `Func<>` to call any base method
* Invoke that `Func`tion
* Get any type by String name, even if System.Type.GetType() would fail
* Deprecated because SANO-san implemented `dotnet:call-base`


# Where to Go Next

* [My implementation plan](PLAN.md)
* [File descriptions](FILES.md)