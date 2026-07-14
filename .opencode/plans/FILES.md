# Files

This document tracks the contents and purpose of files in this repository.

## Core Game Files

- `audio-controller.lisp` - Audio management: play sound effects, songs, mute/unmute, volume adjustment. Provides `song-volume` and `sound-effect-volume` convenience methods on `audio-controller` that update `previous-song-volume` and `previous-se-volume` slots.
- `audio-test.lisp` - Audio loading tests (SoundEffect.FromFile, Song.FromUri).
- `collision.lisp` - Circle and rectangle collision detection.
- `constants.lisp` - Project constants.
- `game-1.lisp` - Main game class, inherits from MonoGame Game. Initializes Gum, creates scenes, runs game loop.
- `gameplay-scene.lisp` - Active gameplay with slime, bats, tilemap, score.
- `input-manager.lisp` - Input manager following MonoGame Chapter 11 pattern with one-frame latency.
- `load-repl.lisp` - REPL loader script for interactive loading of dungeon-slime ASDF system.
- `main.lisp` - Creates game instance and runs it.
- `mg-classes.lisp` - MonoGame utility wrappers for Vector2, Rectangle, GameTime.
- `mg-core.lisp` - Core game infrastructure class (Core).
- `monoutils.lisp` - C# interop utilities and MonoUtilsRegistrar initialization.
- `scene.lisp` - Scene base class with lifecycle management.
- `settings.lisp` - Reader macros and compiler declaims.
- `sprite-font.lisp` - SpriteFont helper functions: load-font, measure-string, draw-string.
- `texture-atlas.lisp` - Texture atlas for sprite and animation management.
- `texture-region.lisp` - Texture region abstraction.
- `tilemap.lisp` - Tilemap rendering and room boundary computation.
- `tileset.lisp` - Tileset metadata.
- `title-scene.lisp` - Title screen with scrolling background, Gum UI panels, and options panel with volume sliders. Contains `create-options-panel` method and five event handlers for Gum UI controls.
- `type-aliases.lisp` - Assembly loading and class registration at build/load time.
- `utils.lisp` - Path qualification and utility functions.

## C# Packages

- `csharp.lisp` - TimeSpan operator wrappers.
- `cspackages/` - Auto-generated C# wrapper packages for MonoGame and Gum types.
- `game-repl.lisp` - In-game REPL support.

## Test Files

- `cspackages-test.lisp` - Tests for C# package generation: constructor overloads, property accessors.
- `clr-defmethod-test.lisp` - Tests for CLR defmethod dispatch on CLOS, dotnet:define-class, and raw CLR types.
- `collision-test.lisp` - Circle and rectangle collision tests.
- `load-system-test.lisp` - Tests for ASDF system loading and Quicklisp integration.
- `poc-test.lisp` - Proof-of-concept tests for C# interop.
- `scene-test.lisp` - Scene lifecycle tests (initialize, transition, dispose).
- `test-harness.lisp` - Test runner that orchestrates all test files.
- `tilemap-test.lisp` - Tilemap rendering tests.
- `typed-calls-test.lisp` - Tests for typed C# method calls and property accessors.

## Build and Configuration

- `DungeonSlime.csproj` - MSBuild project file with DotCL integration.
- `Content.mgcb` - MonoGame content pipeline manifest.
- `Makefile` - Build targets: build, run, test, repl, clean, check-parens.
- `check_parens.py` - Parentheses balance checker for Lisp files.
- `dungeon-slime.asd` - ASDF system definition with cspackages integration.
- `packages.lisp` - Package definitions and local nicknames for all generated C# packages.
- `packages.asd` - ASDF system for packages.lisp.
- `.csproj` - MSBuild project configuration.

## Documentation

- `doc/enable-audio-under-wsl-ubuntu24.04.md` - Guide for enabling audio under WSL2.
- `doc/implementation-notes.md` - Implementation details, challenge resolutions, and gotchas.
- `doc/make-everything-defgeneric.md` - Documentation for the csharp-generics defgeneric pattern.

## Scratch and Temporary

- `.opencode/` - Opencode configuration and plans.
- `scratch/` - Temporary experiments and scratch files (not committed to Git).
