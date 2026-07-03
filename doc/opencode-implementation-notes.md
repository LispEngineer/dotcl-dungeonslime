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

## MonoGame Tutorial Chapter 12: Collision Detection

### Overview

This document describes the implementation of the MonoGame
[Chapter 12](https://docs.monogame.net/articles/tutorials/building_2d_games/12_collision_detection/)
collision detection system in Common Lisp using DotCL and CLOS.

The system provides circle-based collision detection, AABB rectangle collision,
screen boundary blocking for the player, screen boundary bouncing for the enemy
bat, and a trigger collision response when the slime "eats" the bat.

### What Was Actually Done

#### Files Created

- **`collision.lisp`** — CLOS `circle` class and collision utility functions
- **`collision-test.lisp`** — Comprehensive test suite for all collision logic

#### Files Modified

- **`mg-classes.lisp`**:
  - Added `v2-distance-squared` — wraps `Vector2.DistanceSquared` static method
  - Added `v2-reflect` — wraps `Vector2.Reflect` static method (for bounce response)
  - Added `v2-normalize` — returns a normalized copy of a Vector2 via `op_Division`
  - Added `rect-intersects` — wraps `Rectangle.Intersects(Rectangle)` method
  - Added `rect-contains-p` — wraps `Rectangle.Contains(Rectangle/Point/Vector2)` method
  - Exported all new functions from the `:mg-classes` package

- **`packages.lisp`**:
  - Added pre-declaration for `:microsoft-xna-framework-rectangle`
  - Added pre-declaration for `:microsoft-xna-framework-graphics-graphics-device`
  - Added pre-declaration for `:microsoft-xna-framework-graphics-presentation-parameters`
  - Added local nicknames `(:rect ...)`, `(:gd ...)`, `(:pp ...)` to `:dungeon-slime`
  - Added `circle`, `circle-intersects`, `circle-left/right/top/bottom` exports
  - Added `bat-pos`, `bat-vel` to exports
  - Added new `:mg-classes` exports

- **`game-1.lisp`**:
  - Added `bat-pos` (Vector2) and `bat-vel` (Vector2) slots to the `game-1` class
  - Added `assign-random-bat-velocity` function — generates random angle, converts
    to direction vector scaled by MOVEMENT_SPEED
  - Updated `initialize` to set initial bat position (10px right of slime) and
    call `assign-random-bat-velocity` after the C# lifecycle (which loads sprites)
  - Updated `update` with three collision responses:
    1. **Blocking response**: slime bounding circle checked against screen edges;
       if slime drifts outside via keyboard/gamepad input, position is clamped
       back inside
    2. **Bounce response**: bat bounding circle checked at its *new* position;
       if outside, velocity is reflected about the nearest screen-edge normal
       (axis-aligned or diagonal), then normalized via `v2-normalize` before
       `v2-reflect`
    3. **Trigger response**: if slime circle intersects bat circle, bat respawns
       at a random grid-aligned position with new random velocity
  - Updated `draw` to use `bat-pos` slot instead of hardcoded position

- **`dungeon-slime.asd`**:
  - Added `"collision"` component between `"input-manager"` and `"mg-core"`,
    depends on `"mg-classes"`
  - Added `"collision-test"` component between `"game-1"` and `"clr-defmethod-test"`,
    depends on `"collision"` and `"mg-classes"`
  - Added `"collision"` dependency to `"game-1"`
  - Added `"collision-test"` dependency to `"test-harness"`

- **`test-harness.lisp`**:
  - Added `(run-collision-tests)` call in `run-all-tests`

#### Key Design Notes

##### Circle Class — CLOS vs C# Struct

The C# tutorial defines `Circle` as a `readonly struct` implementing `IEquatable<T>`,
with fields `X`, `Y`, `Radius`, computed properties `Top`/`Bottom`/`Left`/`Right`,
and an `Intersects(Circle)` method.

In Lisp, `circle` is a standard CLOS class with `x`, `y`, `radius` slots accessed
via `circle-x`, `circle-y`, `circle-radius`. Boundary computations (`circle-left`,
`circle-right`, `circle-top`, `circle-bottom`) are pure arithmetic functions.
`circle-intersects` uses `v2-distance-squared` (wrapping `Vector2.DistanceSquared`)
to compare squared-distance vs squared-radii-sum, avoiding the sqrt as in the C#
version.

No `IEquatable` implementation is needed — CLOS instances use `equalp` or `eql`.

##### Rectangle Collision — cspackage + Lisp Wrappers

The `Microsoft.Xna.Framework.Rectangle` cspackage provides property accessors:
`left`, `right`, `top`, `bottom`, `center`, `location`, `size`. Instance methods
(`Intersects`, `Contains`) are not generated by the assembly package generator
(which only handles properties), so they are provided as Lisp functions via
`dotnet:invoke` in `mg-classes.lisp`.

##### Vector2 Static Methods

`Vector2.DistanceSquared`, `Vector2.Reflect`, and `Vector2.Normalize` are all
static methods not generated by the cspackage. They are wrapped as Lisp functions
in `mg-classes.lisp`:

- `v2-distance-squared` calls `Vector2.DistanceSquared(v1, v2)`
- `v2-reflect` calls `Vector2.Reflect(vector, normal)`
- `v2-normalize` manually computes `v / Length` via `op_Division` (since
  `Vector2.Normalize()` is an instance void-method on a value-type struct,
  which cannot be safely called through DotCL interop)

##### Bat Velocity and Screen Bouncing

The `assign-random-bat-velocity` function generates a random angle in `[0, 2π)`,
computes `(cos, sin)` direction vector, and multiplies by `MOVEMENT_SPEED`.

For screen bouncing, the bat's *new* position (current + velocity) is checked
against screen edges. The normal is constructed component-by-component (starting
from zero) as a plain Lisp vector. If either axis triggered, the normal is built
and normalized before calling `v2-reflect`.

##### Slime Screen Blocking

Unlike the bat (which bounces), the slime is blocked at screen edges using a
"teleport back" approach: if the slime's bounding circle extends past a screen
edge, the slime's position is clamped to place it back inside. This matches the
C# tutorial's blocking behavior.

##### Trigger Response — Bat Respawn

When `circle-intersects` detects slime-bat overlap, the bat is respawned at a
random grid position: the screen is divided into columns/rows based on bat
sprite dimensions, and a random cell is chosen. A new random velocity is also
assigned.

##### Test Suite

`collision-test.lisp` contains 30 individual test assertions covering:

- Circle construction (default and explicit values)
- Circle boundary computation (`left`/`right`/`top`/`bottom`)
- Circle intersection (true cases: identical, partially overlapping, nested,
  diagonal overlap)
- Circle intersection (false cases: separated, tangent, far apart)
- Circle degenerate cases (zero-radius, zero-radius touching normal)
- `v2-distance-squared` (3-4-5 triangle, same point, negative coords)
- `v2-reflect` (bottom edge, right edge, top edge bounces)
- `v2-normalize` (3-4-5 normalization, zero vector)
- `rect-intersects` (overlapping, non-overlapping, identical, edge-touching,
  containing)
- `rect-contains-p` (center point, outside point, contained rectangle,
  larger rectangle, edge point, outside edge)

All tests are run via `make test` and produced 0 failures.
