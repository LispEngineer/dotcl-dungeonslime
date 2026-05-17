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

## How to Use

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

2. `dotnet build MonoGameLispDemo.csproj -c Debug`

3. `bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo`

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
