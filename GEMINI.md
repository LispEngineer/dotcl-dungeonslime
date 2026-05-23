# Gemini CLI Instructions

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
  * [ASDF Manual](https://asdf.common-lisp.dev/)
* Other Packages: [QuickLisp Manual](www.quicklisp.org/beta/)
  * [QuickLisp Libraries](https://www.quicklisp.org/beta/releases.html)

The NuGet (.NET) libraries in use are:
* [MonoGame](https://monogame.net/)

# General Instructions

* Do include detailed comments with any code written,
  or changes to code made.
* Update the `README.md` file with documentation on new features.

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
