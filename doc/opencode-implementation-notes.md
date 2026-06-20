# OpenCode Implementation Notes

## MonoGame Tutorial Chapter 11: Input Management

### Overview

This document describes the implementation of the MonoGame
[Chapter 11](https://docs.monogame.net/articles/tutorials/building_2d_games/11_input_management/)
input management system in Common Lisp using DotCL and CLOS.

The system provides centralized input handling with frame-to-frame state
tracking, enabling detection of "just pressed" and "just released"
transitions for keyboard, mouse, and gamepad input.

### Plan

The implementation followed the Chapter 11 design:

1. **Create an `input-manager.lisp` file** with four CLOS classes
   mirroring the C# `MonoGameLibrary.Input` namespace:
   - `KeyboardInfo` - tracks previous/current `KeyboardState`
   - `MouseInfo` - tracks previous/current `MouseState`, position deltas,
     scroll wheel changes
   - `GamePadInfo` - tracks previous/current `GamePadState` and manages
     timed vibration
   - `InputManager` - aggregates all three device classes, updates them
     each frame

2. **Define a new Lisp package** `:dungeon-slime-input` with local
   nickname `:input` in the `:dungeon-slime` package.

3. **Integrate into the `core` game class** (`mg-core.lisp`):
   - Add an `input-manager` slot (class allocation, singleton per game)
   - Create the input manager in `initialize`
   - Call `input-manager-update` at the start of `update` (before base
     class update), matching the C# `Core.Update` pattern

4. **Refactor `game-1.lisp`** to remove inline input handling and use
   the new input manager, following the one-frame-latency pattern as
   in the C# tutorial.

### What Was Actually Done

#### Files Created

- **`input-manager.lisp`** - The complete input management system

#### Files Modified

- **`packages.lisp`**:
  - Added pre-declarations for 3 missing C# packages
  - Added new `:dungeon-slime-input` package definition with local
    nicknames for all needed C# packages and exports for all public
    functions
  - Added `(:input :dungeon-slime-input)` local nickname to
    `:dungeon-slime` package

- **`csharp.lisp`**:
  - Added `ts-` (TimeSpan subtraction) function
  - Added `ts<=` (TimeSpan less-than-or-equal) function
  - Fixed `ts>=` which incorrectly called `op_GreaterThan` instead of
    `op_GreaterThanOrEqual`

- **`mg-core.lisp`**:
  - Added `input-manager` slot to `core` class
  - Create input manager in `initialize` method
  - Update input manager in `update` method before base call

- **`game-1.lisp`**:
  - Refactored `check-keyboard-input` to use `input:im-keyboard` and
    `input:is-key-down` etc. instead of raw `Keyboard.GetState`
  - Refactored `check-gamepad-input` to use `input:im-game-pads` and
    `input:is-button-down` etc., with timed vibration via
    `input:game-pad-set-vibration`
  - Changed Escape key from continuous `key-down?` to
    `input:was-key-just-pressed` pattern
  - Changed F7 test error from continuous to just-pressed pattern

- **`dungeon-slime.asd`**:
  - Added `input-manager` component between `mg-classes` and `mg-core`,
    depending on `"mg-classes"` and `"csharp"`
  - Added `"input-manager"` dependency to `mg-core`

#### Key Design Notes

##### Package Architecture

The `:dungeon-slime-input` package uses `:use` for `:cl`, `:mg-classes`,
and `:csharp`. It references MonoGame C# wrapper packages through local
nicknames (`:kb-state`, `:gp-state`, `:ms`, etc.) to avoid symbol
conflicts while keeping code concise.

##### One-Frame Latency Pattern

The input state update follows the same pattern as the C# tutorial:
input states are updated in `core:update`, which is called via
`call-next-method` from `game-1:update`. This means `game-1:update`
reads input states from the *previous* frame's update. This ~16ms
latency at 60fps is standard in many game engines and matches the
Chapter 11 behavior.

##### Timed Vibration

The `GamePadInfo` class manages timed vibration internally:
- `game-pad-set-vibration` stores the remaining duration and starts
  vibration
- `game-pad-update` decrements the timer each frame using
  `GameTime.ElapsedGameTime`
- When the timer expires, `game-pad-stop-vibration` is called
  automatically

The C# `TimeSpan` operations for the vibration timer are provided by
the `:csharp` package's `ts-` and `ts<=` functions.

##### Mouse Button Handling

Instead of a C# `MouseButton` enum, keyword symbols are used:
`:left`, `:middle`, `:right`, `:x-button1`, `:x-button2`, with
corresponding `+mouse-left+` etc. constants. A `case` dispatch in
`mouse-button-from-state` maps these to the appropriate
`MouseState` property accessors.

##### API Design

The input manager functions use the `:input` nickname in
`:dungeon-slime` code, producing calls like:
```lisp
(input:was-key-just-pressed (input:im-keyboard (input-manager game))
                            key:+escape+)
(input:is-button-down (aref (input:im-game-pads (input-manager game)) 0)
                      button:+a+)
```

##### Dependency on Generated Packages

The input manager depends on several auto-generated C# packages
(cspackages/). These are pre-declared as empty packages in
`packages.lisp` before the `:dungeon-slime-input` package definition
to satisfy the `:local-nicknames` requirement during compilation.
The actual package contents are loaded later in the ASDF load order,
which is fine since the nickname registration only needs the package
name to exist, not its contents.
