# Gemini and Antigravity Instructions

# General Instructions

* Do include detailed comments with any code written,
  or changes to code made.
* Update the `README.md` file with documentation on new features.
* Update `antigravity-log.md` with any explanation you provide me,
  and a log of any changes you make to any files.
  * Create this file if it does not exist


# Language

This software targets the [dotcl](https://github.com/dotcl/dotcl)
Common Lisp environment on top of the DotNet CLR. It also uses the
[MonoGame](https://monogame.net/) library for the user interface.
This is targeting the .Net (DotNet) 10 release.

This code is written primarily in Common Lisp. Additional utilities
are written in C# to ease the interface between the dotcl Common
Lisp environment and C#/MonoGame.

It is running on Ubuntu 24.04 on the x86_64 platform. When possible,
try to keep the code cross-platform.

This project is publicly available at https://github.com/LispEngineer/dotcl-dungeonslime .

Some useful Common Lisp documentation:
* [Common Lisp HyperSpec](https://www.lispworks.com/documentation/HyperSpec/Front/index.htm)
* [Common Lisp Nova Spec](https://novaspec.org/cl/)
* [Practical Common Lisp](https://gigamonkeys.com/book/)
* [Common Lisp Cookbook](https://lispcookbook.github.io/cl-cookbook/)
* [Common Lisp Recipes]() is not available in HTML format online.
* [Common Lisp: The Language](https://www.cs.cmu.edu/Groups/AI/html/cltl/cltl2.html)
* [Lisp Games](https://github.com/lispgames/lispgames.github.io/wiki/Lisp-Games)
  * [Common Lisp Game Notes](https://github.com/lispgames/lispgames.github.io/wiki/Common-Lisp)
  * [Free Game Assets](https://github.com/lispgames/lispgames.github.io/wiki/Assets)

MonoGame information:
* [Microsoft.Xna.Framework API Documentation](https://docs.monogame.net/api/Microsoft.Xna.Framework.html)
* [All MonoGame Docs](https://docs.monogame.net/)
* [MonoGame Dungeon Slime Tutorial](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
* [MonoGame GitHub Repo](https://github.com/MonoGame/MonoGame)
* [Local MonoGame Source](../MonoGame) - sibling to this directory

.NET (DotNet) information:
* [.NET Site](https://dotnet.microsoft.com/en-us/)
* [.NET Docs](https://learn.microsoft.com/en-us/dotnet/?WT.mc_id=dotnet-35129-website)
* [.NET API Docs](https://learn.microsoft.com/en-us/dotnet/api/?view=net-10.0)
* [C# Language Reference](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/)
* [CLR Introduction](https://github.com/dotnet/runtime/blob/main/docs/design/coreclr/botr/intro-to-clr.md)
* [.NET Runtime GitHub Repo](https://github.com/dotnet/runtime)

dotcl information:
* [dotcl GitHub Repo](https://github.com/dotcl/dotcl)
* [Local dotcl Source](../dotcl-clean) - sibling to this directory


# Libraries

The Common Lisp libraries in use are:
* Package management: [ASDF GitHub](https://github.com/fare/asdf)
  * [ASDF Site](https://asdf.common-lisp.dev/)
  * [ASDF Manual - HTML](https://asdf.common-lisp.dev/asdf.html)
  * [ASDF Manual - PDF](https://asdf.common-lisp.dev/asdf.pdf)
  * [ASDF Best Practices](https://gitlab.common-lisp.net/asdf/asdf/blob/master/doc/best_practices.md)
  * [UIOP Readme](https://gitlab.common-lisp.net/asdf/asdf/blob/master/uiop/README.md)
  * [UIOP Manual - HTML](https://asdf.common-lisp.dev/uiop.html)
  * [UIOP Manual - PDF](https://asdf.common-lisp.dev/uiop.pdf)
  * This is provided by DotCL

The NuGet (.NET) libraries in use are:
* [MonoGame](https://monogame.net/)

## Other Libraries of Interest but Not in Use

* [QuickLisp](www.quicklisp.org/beta/) - Package downloader for CL
  * [QuickLisp Libraries](https://www.quicklisp.org/beta/releases.html)
  * This is not yet working/available on DotCL
  * [Qlot](https://github.com/fukamachi/qlot) - project-local library 
    installer using Quicklisp
    * [Qlot HN Discussion](https://news.ycombinator.com/item?id=41167921)
  * [Ultralisp](https://ultralisp.org/) - Frequently updated package repository
    for QuickLisp

* [gefjon-utils](https://github.com/gefjon/gefjon-utils)
  * This provides some nice things like `print-all-slots-mixin` in `clos.lisp`

* [McCLIM](https://mcclim.common-lisp.dev/): Open source Common Lisp
  Interface Manager
  * [McCLIM Documentation PDF](https://mcclim.common-lisp.dev/static/documents/mcclim.pdf)

* [Roswell](https://roswell.github.io/) - Common Lisp environment setup utility
  * [Roswell Day 1](https://fukamachi.hashnode.dev/day-1-roswell-as-a-common-lisp-implementation-manager) -
    See the author's Days 2-5 articles as well

* [OCIL](https://github.com/ocicl/ocicl) - An ASDF alternative built on
  OCI (Open Container Initiative) containers
  * [OCIL HN Discussion](https://news.ycombinator.com/item?id=35973000)
  


# Code Style Instructions

## C# Code Style

* You must keep an open brace of a block on the same line as
  what preceeds it, rather than alone on a new line, separated by
  exactly one space.
* Every block on an `if` or `else` must be surrounded by braces.
* The `else` clause in an `if` statment should have the close and
  open brace on the same line as the `else`, each separated by 
  exactly one space.

## Common Lisp Code Style

* Do not use the short-circuit binary operators `and` and `or` as
  flow control mechanisms. In other words, do *not* write code
  like this:
  ```lisp
  (and arg-type
       spec-type
    (dotnet:invoke spec-type "IsAssignableFrom" arg-type))
  ```
  But rather, write code like this:
  ```lisp
  (when (and arg-type spec-type)
    (dotnet:invoke spec-type "IsAssignableFrom" arg-type))
  ```

