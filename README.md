# dotcl MonoGame Demonstration v2

* Author: [Douglas P. Fields, Jr.](mailto:symbolics@lisp.engineer)
* License: MIT (see [LICENSE](LICENSE)), per original author
* Changes Copyright: Douglas P. Fields, Jr.
* Original Copyright: SANO,Masatoshi

This is an extension of the 
[original MonoGame demo](https://github.com/dotcl/dotcl/tree/master/samples/MonoGameLispDemo)
from
[dotcl](https://github.com/dotcl/dotcl) creator 
[SANO-san](https://github.com/snmsts). 

The goals of this code are:

1. Move as much of the functionality into basic Common Lisp and
   CLOS as possible.

2. Make a clean set of Lispy functions for interacting with MonoGame.

3. Eventually: Implement the [MonoGame 2D Dungeon Slime demo](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
   in as Lispy a manner as I can.

This is heavily a work in progress.

## How to Use (vendored version)

I've built and tested this on Ubuntu 24.04 on x64 only. I make no
guarantees that this will work on any other platform.

The `vendor/dotcl` directory contains these pre-built dotcl 0.1.7 files:
* `dotcl.core` - pre-compiled DotCL Common Lisp compiler core
* `DotCL.Runtime.dll` - DotCL's C# Runtime
* `Dotcl.targets` - MSBuild target instructions

I got these from an earlier local build and install of dotcl 0.1.7 checked out
freshly from GitHub. In theory, this project now has no dependency
on any other dotcl local code.

1. `dotnet clean` (if necessary)

2. `dotnet build MonoGameLispDemo.csproj -v n -c Debug`
   * `-v n` makes Lisp compilation errors be shown.
   * `-v d` shows more detail than `n`.

3. `bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo`

When upgrading dotcl, make sure to upgrade these vendored files.

# Functionality Implemented

MonoGame Dungeon Slime features:
* All "[Chapter 03: The Game1 File](https://docs.monogame.net/articles/tutorials/building_2d_games/03_the_game1_file/index.html#exploring-the-game1-class)" content
  * Except: this is currently still doing the original MonoGame demo's color cycling

BaseCaller: This is a class that works around the missing base class
calling function in the dotnet package. Run the built binary with
the `--base` argument to see it work (in C#).
* Call a base method taking Void returning Void
* Get a `Func<>` to call any base method
* Invoke that `Func`tion
* Get any type by String name, even if System.Type.GetType() would fail

Basic REPL:
* Launches a super simplistic REPL background thread that uses
  standard input and output. Control-D will exit the REPL.
* Demonstrate the REPL interacting with live game state with
  `(setf color-cycle-period 1.0)` to speed the color cycling.
* Evaluate `(exit)` to quit the game.


# TO DO

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


# Open Questions

* How do I make an invocation on the `base` of a C# class?
  * Doesn't seem to be possible with the `dotnet` package.
  * Created a C# helper class to do this for me.

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

* Does not appear the `dotnet` package exposes a way to get or set the
  value of a standard C# array.


## Issues Filed

* [Add constructor arguments to dotnet:define-class](https://github.com/dotcl/dotcl/issues/13).

* [Add `base` support in Lisp](https://github.com/dotcl/dotcl/issues/14).

* [Add array indexer](https://github.com/dotcl/dotcl/issues/15).


# Appendix

## How to Use (dotcl sibling)

I've built and tested this on Ubuntu 24.04 on x64 only. I make no
guarantees that this will work on any other platform.

You will need to check out [dotcl](https://github.com/dotcl/dotcl)
in a sibling directory to this one
and build and install the `dotcl` tool. This demo uses various files
assuming they are in that sibling directory. These references are
in the `MonoGameLispDemo.csproj` file.

(As of 0.1.7, using the pre-compiled, provided `dotcl` installed with
`dotnet tool install --global dotcl` does not work for me.)

So, all the steps:

1. First, get, build and install `dotcl` in the sibling directory `../dotcl`.
   * This project's build files assume this was done there, and that the `dotcl`
     was locally built rather than retrieved from NuGet.

2. `dotnet build MonoGameLispDemo.csproj -v n -c Debug`
   * `-v n` makes Lisp compilation errors be shown.

3. `bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo`





---
---
# Original README from SANO-san 
Below here is the original README from SANO,Masatoshi

# MonoGameLispDemo — dotcl を C# プロジェクトに組み込むレシピ (MonoGame 版)

dotcl を **既存の .NET プロジェクトのインプロセスランタイムとして埋め込む**
ための定型を、MonoGame DesktopGL アプリで実演するサンプル。Common Lisp が
分かる読者が、自分の C# ゲームプロジェクトに同じパターンを適用できる
ことを目的にしている。

要点:

- C# 側は **boot と `Game.Run()` だけ**。`Game` サブクラス (`Demo.LispGame`)
  は Lisp 側で `dotnet:define-class` で emit する
- ctor 内で `GraphicsDeviceManager(this)` を生成、`Draw` を override して
  `GraphicsDevice.Clear(...)` で背景色を毎フレーム書き込む
- 背景色は `(pulse-color seconds)` で時間経過に応じてグラデーション

## デモを起動すると

ウィンドウが開き、背景色が 6 秒周期で 赤 → 緑 → 青 → 赤 とグラデーション
する。`Game.Update` / `Game.Draw` ループは MonoGame 側で回り、`Draw`
override の中の Lisp コード (`pulse-color` を呼んで `Color` を作る)
だけが毎フレーム評価される。

## 構成

```
MonoGameLispDemo/
├── MonoGameLispDemo.csproj   # net10.0-windows / win-x64 / DesktopGL
├── MonoGameLispDemo.asd      # ASDF 定義: depends-on dotnet-class
├── main.lisp                 # Demo.LispGame を define-class で emit
├── Program.cs                # boot + Run() のみ
└── CsharpSanityGame.cs       # 環境診断用 (--csharp-sanity フラグで起動)
```

`MonoGameLispDemo.csproj` 内の `<Import Project=".../Dotcl.targets" />`
が `main.lisp` をビルド時に compile-file → `bin/.../dotcl-fasl/` に
配置する (#166 project-core flow)。実行時は `DotclHost.LoadFromManifest`
が manifest を読んでまとめて load する。

## なぜ DesktopGL / win-x64 か

- **DesktopGL (SDL2 + OpenGL)** は ARM64 含めて移植性が高い。WindowsDX
  (SharpDX) は Snapdragon Windows ARM64 で描画が出ないことを確認
- **`<RuntimeIdentifier>win-x64</RuntimeIdentifier>`** は SDL2 の native
  バイナリ (`MonoGame.Library.SDL`) が win-arm64 を ship していないため。
  win-x64 に固定して Prism (x64 emulation) で走らせる。dev サンプルとして
  は性能ペナルティ許容範囲

## 環境診断

レンダリングが真っ黒な場合、Lisp 連携か MonoGame 環境かの切り分けに

```
MonoGameLispDemo.exe --csharp-sanity
```

を使う。純 C# の `CsharpSanityGame` (赤一色 Clear) を立ち上げる。これも
真っ黒なら MonoGame / GPU ドライバ側、これだけ動けば dotcl 連携側の
バグを疑う。

## 実行

```bash
dotnet build MonoGameLispDemo.csproj -c Debug
./bin/Debug/net10.0-windows/win-x64/MonoGameLispDemo.exe
```

`net10.0-windows` ターゲット + `win-x64` RID なので、x64 版の
**.NET Desktop Runtime** が `C:\Program Files\dotnet\x64\` 以下に必要
(ASP.NET Core Runtime ではない)。
