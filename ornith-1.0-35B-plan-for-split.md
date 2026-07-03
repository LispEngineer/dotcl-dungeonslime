# Split DungeonSlime package generator into separate project

**Session ID:** ses_0db9f4675ffeRczGX1z2L6jCZC
**Created:** 7/2/2026, 3:49:06 PM
**Updated:** 7/2/2026, 4:36:17 PM

---

## User

Hi there. I'd like you to review this repository. Then, make a plan to do this:

I'd like you to make a plan to split out the assembly package generator code and tests into a new project in the
directory ../package-generator please. This package should contain all the code to generate the C# Lisp Packages exactly a
it works today. It should generate an executable that can also be installed by dotnet (like the `dotcl` command is
installed by dotnet). The goal for the first version would be to make as few changes to the existing code as possible,
however taking out tests that reference anything but standard DotNet assemblies is fine (e.g., MonoGame). The second part
of the plan should be to remove the package generator and all the attendant tests from the current DungeonSlime repository
The system can keep DungeonSlime tests that test MonoGame generated packages though, since those will not be in the packag
generator tests anymore. 

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 39.9s)

_Thinking:_

The user wants me to review the repository and then make a plan to split out the package generator code. Let me start by exploring the repository structure to understand what we're working with.


Let me start by reviewing the repository structure.



**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime</path>
<type>directory</type>
<entries>
.aider.chat.history.md
.aider.input.history
.aider.tags.cache.v4/
.config/
.git/
.gitignore
.mgstats
.vscode/
AGENTS.md
animation.lisp
antigravity-log.md
antigravity-memory.md
assembly-package-generator.lisp
assembly-to-lispy-tests-final.lisp
AssemblyToLispy.cs
AssemblyToLispyTestTarget/
audio-controller.lisp
audio-test.lisp
BaseCaller.cs
bin/
build-setup.lisp
check_parens.py
CheckSound.cs
clr-defmethod-test.lisp
clr-generic-test.lisp
clr-generic.lisp
collision-test.lisp
collision.lisp
constants.lisp
Content.mgcb
Content/
csharp.lisp
cspackages-test.lisp
cspackages/
doc/
dungeon-slime.asd
DungeonSlime.csproj
enable-dummy.sh
explore.lisp
FILES.md
game-1.lisp
game-repl.lisp
GEMINI.md
input-manager.lisp
LICENSE
load-repl.lisp
load-system-test.lisp
main.lisp
Makefile
mg-classes.lisp
mg-core.lisp
MonoGameLispUtilities.cs
MonoUtils.cs
monoutils.lisp
obj/
opencode-continue.txt
opencode.json
package-generator-tests.lisp
packages.lisp
PLAN.md
poc-test.lisp
Program.cs
README-original.md
README.md
scratch/
settings.lisp
sprite-font.lisp
sprite.lisp
test-harness.lisp
tests/
texture-atlas.lisp
texture-region.lisp
tilemap-test.lisp
tilemap.lisp
tileset.lisp
type-aliases.lisp
typed-calls-test.lisp
utils.lisp

(78 entries)
</entries>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/README.md"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/README.md</path>
<type>file</type>
<content>
1: # dotcl MonoGame Common Lisp Dungeon Slime
2: 
3: * Author: [Douglas P. Fields, Jr.](mailto:symbolics@lisp.engineer)
4: * License: MIT (see [LICENSE](LICENSE)), per original author
5: * Changes Copyright: Douglas P. Fields, Jr.
6: * Original Copyright: [SANO, Masatoshi](https://github.com/snmsts)
7: * [Original README](README-original.md)
8: 
9: This is an implementation of the 
10: [MonoGame 2D Dungeon Slime demo](https://docs.monogame.net/articles/tutorials/building_2d_games/index.html)
11: in as Lispy a fashion as possible. It is a learning vehicle for how
12: to build MonoGame games in DotCL Common Lisp. Learnings will also be
13: passed on to the [DotCL](https://github.com/dotcl/dotcl) project as
14: feature suggestions and bug reports.
15: 
16: The goals of this project are:
17: 
18: 1. Move as much of the functionality into basic Common Lisp and
19:    CLOS as possible.
20: 
21: 2. Make a clean set of Lispy functions for interacting with MonoGame.
22: 
23: 3. Build various utilities and frameworks to make interacting with
24:    C#, CLR and MonoGame (and other non-Common Lisp platform things)
25:    ergonomic, reliable and well-documented.
26: 
27: This is heavily a work in progress. The code may not be as clean as I
28: would like, but this is primarily a proof of concept for creating another
29: game in SANO-san's awesome DotCL Common Lisp later.
30: 
31: 
32: # How to Use
33: 
34: I've built and tested this on Ubuntu 24.04 on x64 only. I make no
35: guarantees that this will work on any other platform.
36: 
37: You will need to check out [dotcl](https://github.com/dotcl/dotcl) 
38: in a sibling directory to this one
39: and build and install the `dotcl` tool. This demo uses various files
40: assuming they are in that sibling directory. These references are
41: in the `DungeonSlime.csproj` file.
42: 
43: ## DotCL Version
44: 
45: As of 0.1.9 the game works "out of the box," and a custom patched
46: `dotcl` is no longer necessary.
47: * I will migrate to using the new 0.1.9 features in due course.
48: 
49: As of 0.1.8 I am still using the self-compiled `dotcl` but I did
50: not test the `dotnet tool install`ed one.
51: * I am using a patched 0.1.8 that fixes a minor bug in the
52:   provided readline (backwards history) and also allows the
53:   readline to be interrupted (i.e., to stop a background thread).
54:   The game should build fine without these minor patches, which
55:   I have already submitted to DotCL.
56: 
57: ## Build & Launch Steps
58: 
59: Preparation:
60: 
61: 1. To use the MonoGame Content Builder, in this project's home directory:
62:    `dotnet tool restore`
63:    * This installs `dotnet-mgcb` and `dotnet-mgcb-editor` and `dotnet-mgcb-editor-linux`
64:      among other things.
65: 
66: ### The Upgraded Build System (DotCL 0.1.15+)
67: 
68: As of DotCL 0.1.15, the project build system is migrated to a pure NuGet package reference structure
69: (`<PackageReference Include="DotCL.Runtime" Version="0.1.15" />`). This removes the need for a local
70: sibling `dotcl` repository check-out.
71: 
72: Key features of the updated build system:
73: 1. **Quicklisp Integration via Build-Init**: The project utilizes DotCL's `<DotclBuildInit>`
74:    task pointing to [build-setup.lisp](build-setup.lisp). At build time, this script loads the local
75:    Quicklisp installation (`~/quicklisp/setup.lisp`) to register ASDF system search hooks.
76:    External systems (such as `anaphora`) are resolved, compiled, and bundled into the output
77:    directory automatically without requiring manual `CL_SOURCE_REGISTRY` environment variables
78:    or wrappers.
79: 2. **Automated Reference Copying**: A custom MSBuild target (`CopyReferencesBeforeLisp`) copies
80:    all referenced NuGet assemblies (like `MonoGame.Framework.dll`) to the output folder before
81:    Lisp compilation runs, preventing compile-time assembly load errors.
82: 3. **Decoupled Compile-time Assemblies**: The Lisp compilation process does not require loading
83:    `DungeonSlime.dll` during the `:compile-toplevel` phase (avoiding circular dependency or file
84:    missing errors on clean builds). The assembly is dynamically loaded only during runtime
85:    `:load-toplevel` and `:execute` phases, so that custom C# types (such as `MonoUtilsRegistrar`)
86:    are successfully resolved during standalone interactive REPL sessions.
87: 4. **Self-Contained Executable Bundle**: Compiled dependency FASLs (e.g. `anaphora.fasl`,
88:    `dotcl-repl.fasl`) and the load manifest (`dotcl-deps.txt`) are placed next to the executable
89:    in the `dotcl-fasl/` directory. Additionally, the standard `contrib/` Lisp library is copied
90:    directly from the restored NuGet package cache folder (`$(_DotCLContribDir)`) to the build
91:    output directory, allowing the entire `bin/` directory to be copied and run standalone on
92:    another machine.
93: 
94: You can use the provided `Makefile` to build, test, and run the project:
95: 
96: * **Build the project:** `make build` (runs the consolidated `dotnet build` command in a single step)
97: * **Run the test suite:** `make test` (runs the game in `--test` mode)
98: * **Run the game:** `make run` (runs the GUI game)
99: * **Clean build files:** `make clean` (cleans temporary directories and compiled FASL files)
100: * **Run MonoGame Content Builder**: `make mgcb`
101: * **Check Lisp parentheses balance:** `make check-parens`
102: 
103: Or manually run the steps:
104: 
105: 1. To build: `dotnet build DungeonSlime.csproj -v d -c Debug`
106:    * `-v n` makes Lisp compilation errors be shown.
107:    * `-v d` shows more details.
108:    * `-v diag` shows the most, but I haven't really noticed a difference.
109: 
110: 2. To run: `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime`
111:    * To run in test mode, add `--test` to the command line, and it will not invoke the game.
112: 
113: 3. To generate assembly metadata (work in progress):
114:    `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime --assembly <path-to-dll> [--output <output-path>]`
115:    * `--assembly <filename>`: Resolves the assembly and computes its input directory automatically.
116:    * `--output <filename>`: The destination filepath for the generated S-expression plist.
117:      If set to `-`, or if the parameter is omitted entirely, it defaults to standard output
118:      (stdout), with diagnostic logs routed to standard error (stderr) to keep the payload clean.
119:    * Example: `bin/Debug/net10.0/ubuntu.24.04-x64/DungeonSlime --assembly /home/dfields/.nuget/packages/monogame.framework.desktopgl/3.8.4.1/lib/net8.0/MonoGame.Framework.dll --output /tmp/mg.lisp`
120: 
121: 4. If you want to edit the `.mgcb` file, execute: `dotnet tool run mgcb-editor-linux`
122: 
123: 5. To check Lisp parentheses balance manually:
124:    `find . -type f \( -name "*.lisp" -o -name "*.asd" \) ! -path "*/obj/*" ! -path "*/bin/*" ! -path "*/.git/*" | xargs python3 check_parens.py`
125:    * Parentheses balance is usually not much of a problem for human coders due to IDE support,
126:      but it seems to trip up AI assistance a lot. The problem is compounded due to DotCL's
127:      mechanism of concatenating all Lisp files into a single input during compilation phase.
128: 
129: ## How to Load in REPL
130: 
131: First, build the game per the above. This ensures the C# files are compiled and copied into the
132: output directory, and the ContentManager assets are generated.
133: 
134: Invoke DotCL REPL using the provided Makefile target:
135: `make repl`
136: (Which executes `dotcl --eval '(load "load-repl.lisp")' --eval '(in-package :dungeon-slime)' repl`
137: directly).
138: 
139: Alternatively, invoke DotCL manually with `rlwrap --always-readline dotcl` (or omit rlwrap if you
140: prefer), then:
141: 
142: ```lisp
143: ;; Load all the necessary dependencies and make a game instance as
144: ;; dungeon-slime::*mg-game*
145: (load "load-repl.lisp")
146: (in-package :dungeon-slime)
147: 
148: ;; Execute the game then, with this:
149: (dotnet:invoke *mg-game* "Run")
150: 
151: ;; After the game executes and returns to the REPL, clean up with this:
152: (dotnet:invoke *mg-game* "Dispose")
153: ;; otherwise the game window will just sit there and cause grief.
154: 
155: ;; To run the tests from the REPL:
156: (dungeon-slime-tests::run-all-tests)
157: ```
158: 
159: It is not possible to run the game a second time after it exits
160: under the current MonoGame system.
161: It seems others have tried;
162: [see this issue](https://github.com/MonoGame/MonoGame/issues/7816).
163: In my case, it shows the game window and then segfaults out.
164: 
165: ## Test with Another User
166: 
167: This test ensures that there are no unmet dependencies when the application is
168: built and run by another user (as if on another computer).
169: 
170: Create another user, I use one called `dummy`.
171: 
172: * `cp -a bin /tmp` to copy the built application there
173: * Enable the user to write to your X session: `xhost +si:localuser:dummy`
174: * `su - dummy`
175:   * `export DISPLAY=:0`
176:   * `/tmp/bin/Debug/net10.0/arch-x64/DungeonSlime` to run the game; ensure it works
177: 
178: ## Portable Execution & Multi-User Testing Considerations
179: 
180: To ensure the application is fully portable and runs successfully when executed
181: by another user account (or from a different directory), several design and
182: build system choices are implemented.
183: 
184: ### Portable Design Features Implemented
185: 1. **Raw Sound File Copying**: Raw `.wav` audio files are explicitly copied to
186:    the output folder via the MSBuild project file (`DungeonSlime.csproj`) so they
187:    are available on disk for native filesystem loading.
188: 2. **C# Interop Path Qualification**: Relative paths passed to filesystem-based
189:    constructors (like `SoundEffect.FromFile` and `Song.FromUri`) are resolved
190:    relative to the executable's directory using `qualify-path`. The paths are
191:    coerced to strings using `uiop:native-namestring` to prevent interop method
192:    signature mismatch crashes.
193: 3. **Flexible URI Parsing**: Theme song URIs are constructed using
194:    `system-uri-kind:+relative-or-absolute+` to ensure they parse Unix absolute
195:    paths correctly without throwing formatting exceptions.
196: 4. **Graceful Subsystem Fallback**: Audio hardware initialization and loading is
197:    protected by `handler-case` blocks. If the target environment blocks sound server
198:    connections (e.g. PipeWire socket permissions), the game runs in silent mode
199:    rather than crashing.
200: 
201: ### Guidelines for Future Portable Development
202: - **Qualify Filesystem Paths**: Never pass raw relative strings directly to
203:   foreign filesystem methods. Wrap them in `qualify-path` to ensure directory
204:   independence.
205: - **Ensure String Conversion**: Always call `uiop:native-namestring` on resolved
206:   pathnames before passing them to C# constructors to avoid type dispatch failures.
207: - **Declare Custom Assets in Project File**: Any raw asset loaded directly via the
208:   filesystem (bypassing the MonoGame `ContentManager` pipeline) must be declared
209:   as `<Content>` with `<CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>`
210:   in `DungeonSlime.csproj`.
211: - **Trap Host Subsystem Exceptions**: Wrap host hardware and driver initialization
212:   routines (sound, graphics, network) in `handler-case` blocks so the game degrades
213:   gracefully on restricted host environments.
214: 
215: # A Note on ML/AI & Tooling
216: 
217: You may have noticed references to Antigravity or Gemini. I do use
218: Antigravity CLI (and the predecessor Gemini CLI) in my recreational coding,
219: including this project. I also use the Gemini Code Assist plug-in for VS
220: Code, my primary IDE. (I also use vi (vim), IntelliJ, Rider, and Emacs on
221: occasion.)
222: 
223: Most of the code herein is written by myself. I enjoy the act
224: of writing code (and especially documentation) and knowing how everything 
225: is put together, so I like it this way, for now.
226: 
227: Where I have found the tools to be extremely useful are in several cases:
228: 
229: * **Explanations**: Gemini 3.5 Flash especially has been extremely good at
230:   explaining what is going on in SANO-san's DotCL and how it interacts with
231:   C# / CLR. I have found its explanations to be so clear that I have been
232:   saving some of them in various `.md` files herein.
233: 
234: * **Troubleshooting**: When I hit a wall and can't figure something out,
235:   Gemini often is able to get me going again. And, I mean, much faster than
236:   my traditional Googling it and reading docs and staring at the screen.
237:   Embarrassingly, although I've been Lisping for almost 40 years now, I still
238:   sometimes make dumb errors like having a paren in the wrong place, which it
239:   finds very quickly. (I don't use paredit or other structural editing
240:   tools. I am happy this way. I do love "rainbow parentheses" though!)
241: 
242: * **Coding**: When I have something well defined that I just don't feel like
243:   writing (usually because I've written it a jillion times before), I will
244:   ask Gemini to do it. I usually overspecify my instructions compared to what
245:   I have seen other tool users do, but it also means that in general the
246:   output gets pretty close to my standards and I can use it with only
247:   some edits.
248: 
249: I do not submit ML-developed CLs / PRs (Change Lists / Pull Requests) to
250: others in general. In the rare case if I would include tool-generated code, I
251: have fully vetted it and would vouch for it as if I wrote it myself. 
252: 
253: ## ML/AI Generated Code in this Repo
254: 
255: As an experiment in highly agentic coding, which so far has been interesting, 
256: nearly 100% of the code of `AssemblyToLispy.cs` has been authored by the AI assistant. 
257: Detailed documentation was established in `assembly-to-lispy.md` first, and then refined 
258: with implementation choices and details as work progressed. It contains over 1,100 lines 
259: of C# code, backed by a robust native Common Lisp test suite that performs recursive schema 
260: and live CLR semantic reflection validation across `System.Runtime.dll`, `System.Console.dll`, 
261: `AssemblyToLispyTestTarget.dll`, `MonoGame.Framework.dll`, `DotCL.Runtime.dll`, 
262: `DungeonSlime.dll`, and `NVorbis.dll`.
263: 
264: This development approach has been extended to the modular test framework under the `tests/`
265: directory (for testing capabilities), with plans to also use the AI assistant for
266: the Lisp stub/package generator for C# assemblies.
267: 
268: Additionally, the Lisp Package generator has been primarily coded by ML/AI (Antigravity CLI).
269: 
270: The file `input-manager.lisp` was generated by OpenCode 1.17.8 running the model
271: Qwen-Coder-Next hosted on my Strix Halo 395+ and llama-cpp with the command:
272: `./llama-server --port 8765 --no-mmap -ngl 999 -fa 1 -c 32768 -ctk q8_0 -ctv q8_0 -m ~/models/Qwen3-Coder-Next-UD-Q4_K_XL.gguf`.
273: This `.gguf` file is about 50G.
274: 
275: The Chapter 12 is being worked on also by OpenCode, but this time by the
276: `Qwen3-Coder-Next-UD-Q8_K_XL-00001-of-00003.gguf` quantization, which is much larger
277: at around 86G. I'm sure I could get better 
278: command-line parameters but this is what I'm using:
279: `./llama-server --port 8765 --no-mmap -ngl 999 -fa 1 -c 32768 -ctk q8_0 -ctv q8_0 -m ~/models/UD-Q8_K_XL/Qwen3-Coder-Next-UD-Q8_K_XL-00001-of-00003.gguf`.
280: 
281: The Chapter 12 work (collision detection) was also generated by OpenCode
282: (the big-pickle model).
283: 
284: 
285: # Functionality Implemented
286: 
287: MonoGame Dungeon Slime features:
288: * All Chapters 1-9 content
289:   * Classes are implemented as CLOS classes
290:     * The base CLOS Core class does callbacks into a MonoGame proxy Game class.
291:   * We don't use an XML file to define the Texture Atlas; we use a Lisp property list.
292: * All Chapter 11 content (input management)
293:   * `KeyboardInfo`, `MouseInfo`, `GamePadInfo`, and `InputManager` CLOS classes
294:   * Frame-to-frame state tracking for "just pressed" / "just released" detection
295:   * Timed vibration management for gamepads
296: * All Chapter 12 content (collision detection)
297:   * `circle` CLOS class with boundary functions and intersection testing
298:   * Screen boundary blocking for the player slime
299:   * Screen boundary bouncing for the enemy bat via `Vector2.Reflect`
300:   * Slime-vs-bat trigger response with random respawn
301:   * Rectangle intersection and containment utilities
302: * All Chapter 13 content (tilemaps)
303:   * Tilemap loaded via S-expression lists instead of XML
304:   * Tilemap and Tileset CLOS classes
305:   * Room boundaries scaled according to tilemap
306: * All Chapter 14 content (audio)
307:   * Looped background music playback using `media-player` static methods
308:   * Bounce sound effects triggered on screen boundary collisions
309:   * Collect sound effects triggered on slime-vs-bat collisions
310:   * Automated loading verification test suite in `audio-test.lisp`
311: * All Chapter 15 content (audio controller)
312:    * `audio-controller` CLOS class for centralized audio lifecycle management
313:    * Tracks and disposes of `SoundEffectInstance` objects automatically
314:    * Global mute state (`M` key) and volume controls (`+` / `-` keys)
315: * All Chapter 16 content (SpriteFonts)
316:    * `sprite-font.lisp` with `load-font`, `measure-string`, `draw-string` helpers
317:    * Score tracking system with `score` slot on `game-1`
318:    * Score increments by 100 when slime collides with bat
319:    * Score text rendered in top-left corner using `04B_30.ttf` monospace font
320:      (system font `AdwaitaMono-Regular.ttf` — tutorial download 404s)
321:    * SpriteFont loaded via proper MonoGame content pipeline
322: 
323: Basic in-game REPL:
324: * Launches a super simplistic REPL background thread that uses
325:   standard input and output. Control-D will exit the REPL.
326: * Demonstrate the REPL interacting with live game state with
327:   `(setf color-cycle-period 1.0)` to speed the color cycling.
328: * Evaluate `(exit)` to quit the game.
329: * Submitted change for `dotcl-repl` with `console-read-key-interruptable`
330:   to use a busy wait loop checking `Console.KeyAvailable` and sleeping for
331:   50ms intervals, trapping `ThreadInterruptedException` so that the REPL
332:   thread can be interrupted cleanly.
333: * REPL is started and stopped by the MonoGame `Game.Run()` by hooking into
334:   `BeginRun()` and `EndRun()`
335: * Note that the background REPL spawned when running from a top level
336:   REPL session does not interact well if the top level REPL is using rlwrap
337:   like `rlwrap --always-readline dotcl`.
338: 
339: `MonoUtils` Lisp Package written in C#:
340: * Proof of concept "MonoUtils" package written in C#.
341: * Provide a shim in `monoutils.lisp`.
342: * Have the top level `.asd` file include this shim and make the 
343:   `main.lisp` depend on it.
344: * Proof of concept "Add3" function exposed to Lisp as: `(monoutils:add3 1 2 3)`.
345: * Implement a `monoutils:invoke-generic` as an analog to the existing
346:   `dotnet:static-generic`. It supports resolving generic type arguments via Lisp type
347:   aliases (e.g., `'("TEXTURE2D")` instead of the fully qualified 
348:   `'("Microsoft.Xna.Framework.Graphics.Texture2D")`) registered in
349:   `dotnet::*type-aliases*`. 
350:   * Used for calling `Load<Texture2D>()` dynamically.
351: * `dotnet-p`: Tells if the argument is a Lisp-embedded dotnet/C#/CLR object.
352: * `boxed-dotnet-p`: Tells if the argument is a boxed dotnet/C#/CLR object,
353:   created with `dotnet:box`.
354: * `get-type`: Returns the Type object of a DotNet object, or nil if not a DotNet
355:   object. But if the arg is a string, tries to get the DotNet type of that name.
356: * `get-type-full-name`: Returns the string of the type name from `get-type` or nil.
357:   So if you pass it a string, it should return the same thing.
358: 
359: MonoGame Framework Classes: Texture Regions, Sprites and Texture Atlases:
360: * Implemented the CLOS classes `texture-region`, `sprite` and `texture-atlas` 
361:   to manage sprite sheet subdivisions.
362: * `animation` and `animated-sprite` contain sprite lists (and delays), and then
363:   implement them for MonoGame tapping both the `Draw` and `Update` callbacks.
364: * Implemented `ta-from-file` in `texture-atlas.lisp` which loads a `texture-atlas` from a Lisp
365:   form description file (like `Content/test-atlas.lisp`), converting symbol/keyword region
366:   names to strings for the atlas registry. It is accompanied by a validation test
367:   that runs on startup.
368: 
369: Lisp utility functionality:
370: * `safe-read-form-from-file` is used to securely load
371:   Lisp-based texture atlas descriptions without read-time evaluation.
372: 
373: C# Class-Aware Generic Function System (Version 1.1):
374: * NOTE: This may have been superseded by DotCL's 0.1.9 ability to dispatch
375:   C# types in (CLOS) methods.
376: * Implemented the `defc#generic` and `defc#method` macros in `clr-generic.lisp` 
377:   to support C# class type dispatch.
378: * Refactored in DotCL 0.1.14 to use `dotnet:is-instance-of` for dynamic assignability 
379:   checks instead of manual reflection (`IsAssignableFrom` checks).
380: * Performs topological class/interface inheritance specificity sorting on applicable 
381:   methods to find the most specific target method.
382: * Employs deterministic interface precedence sorting, utilizing alphabetical class 
383:   names to break ties between unrelated classes/interfaces.
384: * Supports type alias resolution via `dotnet::*type-aliases*` inside method specializers 
385:   (e.g., `"GAMETIME"` resolves to `"Microsoft.Xna.Framework.GameTime"`).
386: * Integrates a startup test suite in `clr-generic-test.lisp` checking type dispatch, 
387:   interface precedence specificity (`ArrayList` vs `Hashtable` dispatching 
388:   to `ICollection` vs `IDictionary`), and type alias resolution.
389: 
390: 
391: C# Direct Method Call Optimization (DotCL 0.1.11+):
392: * Utilizes DotCL 0.1.11 direct-call compilation feature by wrapping C# instance
393:   method receivers in type declarations using `(the (dotnet "Type") ...)`.
394: * Speeds up method invocation significantly by avoiding runtime reflection and boxing.
395: * Handled automatically by the Lisp package generator for all generated type stubs
396:   (both reference types and value types starting in generator v10).
397: 
398: C# Lisp Package Generator v10: Method Overload Support:
399: * Automatic classification of methods into clean (no ref/out/params) and dirty (has
400:   special parameter modifiers) overloads.
401: * Type-suffixed naming for multi-overload methods (e.g., `contains-vector-2`,
402:   `contains-rectangle`).
403: * Passthrough &rest functions for multi-overload dispatch via DotCL runtime resolver.
404: * Dirty overload documentation comments listing skipped overloads.
405: * Value-type typed-call optimization for struct receivers.
406: * Static method argument type hints for improved DotCL caching.
407: * All method wrappers previously hand-written in `mg-classes.lisp` (DistanceSquared,
408:   Reflect, Intersects, Contains) are now auto-generated and tested via
409:   `cspackages-test.lisp`.
410: 
411: C# Lisp Package Generator v11: Object Constructor Support:
412: * Generates `new` wrapper functions for C# classes and structs.
413: * Handles overload resolution using passthrough `new` functions and type-suffixed wrappers
414:   (e.g. `new-single-single`, `new-int32-int32-int32-int32`).
415: * Avoids naming collisions by skipping type-suffixed wrappers for 0-argument constructors
416:   when a type has multiple constructors.
417: * Automatically injects parameterless default constructors for structs (value types),
418:   which are otherwise omitted by the Reflection API.
419: 
420: C# Lisp Package Generator v12: Generic Method Support:
421: * Generates wrapper functions for generic methods of exactly one type argument.
422: * The wrapper accepts a `type` parameter (a type name string, alias, or System.Type object) as its first argument, followed by `obj` (for instance methods), and regular arguments.
423: * Calls `dotnet:invoke-generic` or `dotnet:static-generic` passing `(list type)` under the hood.
424: 
425: C# Lisp Package Generator v13 & v14: Operator Dispatch & Comparison Qualification:
426: * Resolves runtime `System.MissingMethodException` errors for operator calls (such as `+`, `-`, `*`, `/`) by generating type-based and count-based dispatching templates.
427: * Qualifies the standard Common Lisp comparison function `cl:=` inside emitted dispatcher templates, preventing name resolution collisions with shadowed `=` operators.
428: 
429: C# Lisp Package Generator v15: Namespace Safety & Standard Lisp Symbol Protection:
430: * Protects critical Lisp syntax symbols (`Quote`, `Function`, `T`, `Nil`) from shadowing by mapping conflicting C# member names to `quote!`, `function!`, `t!`, and `nil!`.
431: * Qualifies all other standard Common Lisp symbols (such as `defun`, `apply`, `cond`, `and`, `or`, `error`, `the`, `setf`, `length`, `nth`, etc.) with the `cl:` package prefix inside emitted wrappers, ensuring robust namespace safety.
432: 
433: C# Lisp Package Generator v16: Overload Static Tracking:
434: * Tracks `is-static-overload-p` per method overload inside multi-overload method groups (Case 3), rather than relying on group-wide `static-p` resolution.
435: * Resolves naming and dispatch collisions between static and instance methods with the same name (such as `Vector2.Normalize`), ensuring static overloads are correctly generated as static wrappers (using `dotnet:static` and not introducing an implicit `obj` receiver).
436: 
437: C# Lisp Package Generator v17: Idiomatic Naming Conventions:
438: * Maps C# field/property name `"NaN"` directly to `"nan"` in `camel-to-kebab` (generating constant wrappers as `+nan+`).
439: * Maps methods/properties named `"IsNaN"` to `"nan?"`.
440: * Converts C# predicate method/property names starting with `"Is"` followed by an uppercase letter (e.g. `IsEmpty`, `IsActive`) to Lisp predicates ending with a question mark `?` (e.g. `empty?`, `active?`), removing the `is-` prefix.
441: 
442: C# Lisp Package Generator v18: Index-Based Positional Overload Dispatch:
443: * Determines the positional parameter prefix of overloads based solely on the lack of default values up to `min-len`, ignoring C# parameter names. This enables positional parameter generation even when parameter names vary across C# overloads (e.g. `TimeSpan.FromMilliseconds` value vs milliseconds).
444: * Maps positional parameters back by index rather than name inside the invocation block generator, avoiding unbound parameter name errors inside the master wrapper body.
445: * Introduces optional positional parameters using `cl:&optional` (with `supplied-p` variables) instead of keyword arguments for parameters between `min-len` and `max-mandatory-len`, ensuring arity-based overload signatures (such as binary/unary operator overloads like `+`) can be called positionally.
446: * Generates a package-name string literal constant inside the fallback branch of master wrappers when raising `csharp-overload-not-found`, providing robust package-independent diagnostics at runtime.
447: 
448: ## Deprecated Functionality
449: 
450: BaseCaller: This is a class that works around the missing base class
451: calling function in the dotnet package. Run the built binary with
452: the `--base` argument to see it work (in C#).
453: * Call a base method taking Void returning Void
454: * Get a `Func<>` to call any base method
455: * Invoke that `Func`tion
456: * Get any type by String name, even if System.Type.GetType() would fail
457: * Deprecated because SANO-san implemented `dotnet:call-base`
458: 
459: 
460: # Where to Go Next
461: 
462: * [My implementation plan](PLAN.md)
463: * [File descriptions](FILES.md)
464: 
465: # Credits
466: 
467: The font Adwaita is used as `Content/fonts/04B_30.ttf` and is
468: [licensed](https://gitlab.gnome.org/GNOME/adwaita-fonts/-/blob/main/LICENSE)
469: permissively. This choice was made by OpenCode in a seemingly aribtrary
470: manner, but it works and is permitted in my interpretation.

(End of file - total 470 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/dungeon-slime.asd"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/dungeon-slime.asd</path>
<type>file</type>
<content>
1: (eval-when (:compile-toplevel :load-toplevel :execute)
2:   (defparameter *cspackages-components*
3:     (let* ((base-dir (uiop:pathname-directory-pathname
4:                       (cond (*load-pathname* *load-pathname*)
5:                             (*load-truename* *load-truename*)
6:                             (t *default-pathname-defaults*))))
7:            (cspackages-dir (uiop:subpathname base-dir "cspackages/")))
8:       (if (uiop:directory-exists-p cspackages-dir)
9:           (mapcar (lambda (file)
10:                     (let ((name (pathname-name file)))
11:                       (list :file (concatenate 'string "cspackages/" name)
12:                             :pathname (uiop:subpathname cspackages-dir (concatenate 'string name ".lisp"))
13:                             :depends-on '("packages" "utils" "monoutils"))))
14:                   (remove-if-not (lambda (file)
15:                                    (string-equal (pathname-type file) "lisp"))
16:                                  (uiop:directory-files cspackages-dir)))
17:           nil))))
18: 
19: (defsystem "dungeon-slime"
20:   :description "dotcl Common Lisp implementation of the MonoGame Dungeon Slime demo"
21:   :version "0.2"
22:   :depends-on ("dotnet-class"
23:                "dotcl-thread"
24:                "dotcl-repl"
25:                "anaphora")
26:   ;; Do not include any of the "depends-on" stuff above in the "depends-on"
27:   ;; clauses in the components!
28:   :components #.(append
29:                  '((:file "packages")
30:                    (:file "settings" :depends-on ("packages")) ;; Load this file early, it contains declaims
31:                    (:file "type-aliases" :depends-on ("packages" "settings"))
32:                    (:file "monoutils" :depends-on ("packages"))
33:                    (:file "utils" :depends-on ("packages"))
34:                   )
35:                  *cspackages-components*
36:                  '((:file "constants")
37:                    (:file "load-system-test")
38:                    (:file "csharp" :depends-on ("packages"))
39:                    (:file "assembly-package-generator" :depends-on ("packages" "utils"))
40:                   )
41:                  (list
42:                   `(:file "package-generator-tests" :depends-on ("utils" "assembly-package-generator"
43:                                                                  ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
44:                   '(:file "clr-generic" :depends-on ("monoutils"))
45:                   `(:file "typed-calls-test" :depends-on ("utils" ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
46:                   `(:file "poc-test" :depends-on 
47:                     ("monoutils" "constants" "settings" "csharp" "utils"
48:                      ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
49:                   '(:file "clr-generic-test" :depends-on ("clr-generic" "type-aliases"))
50:                   '(:file "game-repl" :depends-on ("packages"))
51:                   `(:file "mg-classes" :depends-on ("type-aliases" "clr-generic" "constants" "packages" ,@ (mapcar (lambda (comp) (second comp)) *cspackages-components*)))
52:                   '(:file "texture-region" :depends-on ("monoutils" "constants" "mg-classes" "clr-generic"))
53:                   '(:file "tileset" :depends-on ("texture-region" "mg-classes" "constants"))
54:                   '(:file "tilemap" :depends-on ("tileset" "texture-region" "mg-classes" "constants" "mg-core"))
55:                   '(:file "sprite" :depends-on ("mg-classes" "texture-region"))
56:                   '(:file "animation" :depends-on ("csharp" "texture-region"))
57:                   '(:file "texture-atlas" :depends-on ("utils" "texture-region" "monoutils" "constants" "mg-classes" "clr-generic" "animation"))
58:                   `(:file "input-manager" :depends-on ("mg-classes" "csharp" ,@ (mapcar (lambda (comp) (second comp)) *cspackages-components*)))
59:                   '(:file "collision" :depends-on ("mg-classes"))
60:                   `(:file "audio-controller" :depends-on ("utils" "mg-classes" ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
61:                   '(:file "mg-core" :depends-on ("monoutils" "type-aliases" "constants" "input-manager" "audio-controller"))
62:                   '(:file "sprite-font" :depends-on ("mg-classes" "clr-generic"))
63:                   '(:file "game-1" :depends-on ("constants" "mg-classes" "type-aliases" "mg-core" "monoutils" "collision" "tilemap" "tileset" "sprite-font"))
64:                   '(:file "collision-test" :depends-on ("collision" "mg-classes"))
65:                   '(:file "clr-defmethod-test" :depends-on ("packages" "utils"))
66:                   '(:file "tilemap-test" :depends-on ("tilemap" "tileset" "mg-classes" "texture-region"))
67:                   '(:file "audio-test" :depends-on ("packages"))
68:                   `(:file "cspackages-test" :depends-on 
69:                     ("utils" "mg-classes" ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
70:                   '(:file "test-harness" :depends-on ("collision-test" "audio-test" "tilemap-test" "clr-defmethod-test" "poc-test" "clr-generic-test" "package-generator-tests" "cspackages-test" "load-system-test" "texture-atlas" "utils" "mg-classes" "game-1" "typed-calls-test"))
71:                   '(:file "main" :depends-on
72:                     ("mg-core" "game-1" "type-aliases" "constants" "monoutils" "game-repl" "settings")))))

(End of file - total 72 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 60.4s)

_Thinking:_

Now let me look at the package generator code, tests, and the cspackages directory to understand the full scope of what needs to be extracted.


**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages</path>
<type>directory</type>
<entries>
.vscode/
microsoft-xna-framework-audio-sound-effect-instance.lisp
microsoft-xna-framework-audio-sound-effect.lisp
microsoft-xna-framework-audio-sound-state.lisp
microsoft-xna-framework-color.lisp
microsoft-xna-framework-content-content-manager.lisp
microsoft-xna-framework-game-time.lisp
microsoft-xna-framework-game-window.lisp
microsoft-xna-framework-game.lisp
microsoft-xna-framework-graphics-device-manager.lisp
microsoft-xna-framework-graphics-graphics-device.lisp
microsoft-xna-framework-graphics-presentation-parameters.lisp
microsoft-xna-framework-graphics-sampler-state.lisp
microsoft-xna-framework-graphics-sprite-batch.lisp
microsoft-xna-framework-graphics-sprite-effects.lisp
microsoft-xna-framework-graphics-sprite-font.lisp
microsoft-xna-framework-graphics-sprite-sort-mode.lisp
microsoft-xna-framework-input-button-state.lisp
microsoft-xna-framework-input-buttons.lisp
microsoft-xna-framework-input-game-pad-d-pad.lisp
microsoft-xna-framework-input-game-pad-state.lisp
microsoft-xna-framework-input-game-pad-thumb-sticks.lisp
microsoft-xna-framework-input-game-pad-triggers.lisp
microsoft-xna-framework-input-game-pad.lisp
microsoft-xna-framework-input-keyboard-state.lisp
microsoft-xna-framework-input-keyboard.lisp
microsoft-xna-framework-input-keys.lisp
microsoft-xna-framework-input-mouse-state.lisp
microsoft-xna-framework-input-mouse.lisp
microsoft-xna-framework-input-touch-gesture-sample.lisp
microsoft-xna-framework-input-touch-touch-collection.lisp
microsoft-xna-framework-input-touch-touch-location.lisp
microsoft-xna-framework-input-touch-touch-panel.lisp
microsoft-xna-framework-media-media-player.lisp
microsoft-xna-framework-media-song.lisp
microsoft-xna-framework-player-index.lisp
microsoft-xna-framework-point.lisp
microsoft-xna-framework-rectangle.lisp
microsoft-xna-framework-vector2.lisp
system-app-domain.lisp
system-boolean.lisp
system-console.lisp
system-convert.lisp
system-double.lisp
system-io-path.lisp
system-object.lisp
system-reflection-member-info.lisp
system-single.lisp
system-time-span.lisp
system-type.lisp
system-uri-kind.lisp
system-uri.lisp

(52 entries)
</entries>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;;
3: ;;; Developed with Antigravity CLI (Gemini 3.5 Flash and 3.1 Pro)
4: ;;;
5: ;;; C# Assembly Lisp Package Generator
6: ;;;
7: ;;; This module parses metadata generated by AssemblyToLispy and produces
8: ;;; Common Lisp source files mapping C# classes to Lisp packages.
9: 
10: (in-package :assembly-package-generator)
11: 
12: (defparameter *generator-version* 18
13:   "Integer version number for the generated Lisp source files.
14:    Version history:
15:    1 - Initial generator mapping C# classes to Lisp packages.
16:    2 - Added symbol-macro support for C# static properties/fields and Lisp symbol shadowing.
17:    3 - Refined constant property determination.
18:    4 - Added operator overloading name mapping (e.g. mapping op_Multiply to *).
19:    5 - Added CLOS class registration support and mapped C# inequality operator to not=.
20:    6 - Added support for treating selected read-only static properties as constants via configuration.
21:    7 - Eliminated duplicate exports and shadows in generated package files.
22:    8 - Mapped implicit and explicit conversion operators and filtered exports to exclude undefined members.
23:    9 - Added instance property accessors and mutators.
24:    10 - Added method overload handling with classification into clean vs dirty overloads,
25:         type-suffixed naming for multi-overload methods, passthrough &rest functions,
26:         typed-call optimization for value type receivers, and dirty overload documentation.
27:    11 - Added support for C# constructors (new) with overload dispatch and struct parameterless constructor injection.
28:    12 - Added support for C# generic methods of exactly one type argument using dotnet:invoke-generic and dotnet:static-generic.
29:    13 - Refactored C# overloaded operator passthrough generation to dispatch based on argument types and counts in Lisp, avoiding MissingMethodExceptions.
30:    14 - Qualified standard Common Lisp comparison function cl:= in emitted passthrough code, preventing it from resolving to the shadowed = operator of the generated package.
31:    15 - Protected critical Lisp syntax symbols (quote, function, t, nil) from being shadowed by mapping conflicting C# member names to quote!, function!, t!, nil!; qualified other standard Common Lisp symbols in generated templates with cl: prefix.
32:    16 - Tracked is-static-overload-p per clean method overload inside Case 3 (instead of using group-wide static-p) to ensure overloaded static methods are correctly generated as static wrappers.
33:    17 - Mapped C# field/property 'NaN' to Lisp 'nan' in camel-to-kebab; mapped 'IsSomething' methods/properties to 'something?' in map-member-name.
34:    18 - Added Master Wrapper with Precise Dispatch using Lisp's &key (var init supplied-p) syntax, split static vs instance mixed-mode overloads using '*' suffix, and added csharp-overload-not-found condition.")
35: 
36: (defun camel-to-kebab (name)
37:   "Convert a PascalCase/camelCase string to Lisp kebab-case.
38:    Also maps dot characters '.' to hyphens '-'."
39:   (if (string= name "NaN")
40:       "nan"
41:       (let ((len (length name)))
42:         (with-output-to-string (sb)
43:           (loop for i from 0 to (1- len)
44:                 for c = (char name i)
45:                 do (cond
46:                      ((char= c #\.)
47:                       (write-char #\- sb))
48:                      ((upper-case-p c)
49:                       (when (and (> i 0)
50:                                  (char/= (char name (1- i)) #\-)
51:                                  (char/= (char name (1- i)) #\.)
52:                                  (or (not (upper-case-p (char name (1- i))))
53:                                      (and (< (1+ i) len)
54:                                           (lower-case-p (char name (1+ i))))))
55:                         (write-char #\- sb))
56:                       (write-char (char-downcase c) sb))
57:                      (t
58:                       (write-char c sb))))))))
59: 
60: (defun split-string (string &optional (separator #\;))
61:   "Split a string into a list of substrings at occurrences of the separator character."
62:   (let ((result nil)
63:         (start 0)
64:         (len (length string)))
65:     (loop for i from 0 to (1- len)
66:           do (when (char= (char string i) separator)
67:                (push (subseq string start i) result)
68:                (setf start (1+ i))))
69:     (when (<= start len)
70:       (push (subseq string start len) result))
71:     (nreverse result)))
72: 
73: (defun map-param-name (name)
74:   "Convert a C# parameter name to a safe Lisp parameter name,
75:    renaming reserved words where necessary."
76:   (let ((kebab (camel-to-kebab name)))
77:     (cond
78:       ((string= kebab "t") "t-val")
79:       ((string= kebab "nil") "nil-val")
80:       (t kebab))))
81: 
82: (defun map-member-name (name)
83:   "Convert a Pascal/camel C# member name to a kebab-case Lisp name,
84:    renaming critical Common Lisp symbols to avoid shadowing them,
85:    converting IsSomething to something?, and handling NaN."
86:   (let* ((kebab (cond
87:                   ((and (uiop:string-prefix-p "Is" name)
88:                         (> (length name) 2)
89:                         (upper-case-p (char name 2)))
90:                    (format nil "~A?" (camel-to-kebab (subseq name 2))))
91:                   (t (camel-to-kebab name)))))
92:     (cond
93:       ((string= kebab "quote") "quote!")
94:       ((string= kebab "function") "function!")
95:       ((string= kebab "t") "t!")
96:       ((string= kebab "nil") "nil!")
97:       (t kebab))))
98: 
99: (defun escape-lisp-string (str)
100:   "Escapes double quotes and backslashes in a string for safe output within Lisp strings."
101:   (with-output-to-string (out)
102:     (loop for c across str
103:           do (cond
104:                ((char= c #\") (write-string "\\\"" out))
105:                ((char= c #\\) (write-string "\\\\" out))
106:                (t (write-char c out))))))
107: 
108: (defun get-iso-8601-time ()
109:   "Get the current UTC time formatted as an ISO 8601 string."
110:   (multiple-value-bind (second minute hour date month year day-of-week daylight-saving-p time-zone)
111:       (decode-universal-time (get-universal-time) 0)
112:     (declare (ignore day-of-week daylight-saving-p time-zone))
113:     (format nil "~4,'0D-~2,'0D-~2,'0DT~2,'0D:~2,'0D:~2,'0DZ"
114:             year month date hour minute second)))
115: 
116: (defun literal-field-p (field)
117:   "Checks if a field plist defines a static literal/constant field."
118:   (and (getf field :static)
119:        (getf field :literal)))
120: 
121: (defun runtime-readonly-field-p (field)
122:   "Checks if a field plist defines a static init-only field that is not literal."
123:   (and (getf field :static)
124:        (getf field :init-only)
125:        (not (getf field :literal))))
126: 
127: (defun constant-property-p (prop)
128:   "Checks if a property plist defines a static read-only property."
129:   (and (getf prop :static)
130:        (getf prop :readable)
131:        (not (getf prop :writeable))))
132: 
133: (defun instance-property-p (prop)
134:   "Checks if a property plist defines an instance property."
135:   (not (getf prop :static)))
136: 
137: (defun static-method-p (method)
138:   "Checks if a method plist defines a static method."
139:   (getf method :is-static))
140: 
141: (defun public-instance-field-p (field)
142:   "Checks if a field plist defines a public instance field."
143:   (and (not (getf field :static))
144:        (getf field :public)))
145: 
146: 
147: (defun generic-type-p (type-str)
148:   "Checks if a C# type signature string represents an uninstantiated generic type parameter (contains an exclamation point)."
149:   (and type-str (find #\! type-str)))
150: 
151: (defun simple-method-p (method all-methods)
152:   "Returns t if the method qualifies for Phase 1 compilation.
153:    Criteria:
154:    - No overloads (exactly one method signature with this name in the class).
155:    - No generic parameters/return type (or exactly one generic type argument).
156:    - No default parameter values.
157:    - No special parameter modifiers (ref, out, ref-readonly, params).
158:    - No operator overloads.
159:    - No property accessors (get_/set_)."
160:   (let* ((name (getf method :name))
161:          (params (getf method :parameters))
162:          (static-p (getf method :is-static))
163:          (is-generic (getf method :is-generic))
164:          (arity (getf method :generic-arity)))
165:     (declare (ignore static-p))
166:     (and name
167:          ;; Exclude operators and property accessors
168:          (not (uiop:string-prefix-p "op_" name))
169:          (not (uiop:string-prefix-p "get_" name))
170:          (not (uiop:string-prefix-p "set_" name))
171:          ;; Check for no overloads in the class
172:          (= 1 (count name all-methods :key (lambda (m) (getf m :name)) :test #'string=))
173:          ;; Only support generic methods if they have exactly one type argument
174:          (or (not is-generic) (eql arity 1))
175:          ;; Check return type for generic markers
176:          (not (generic-type-p (getf method :return-type)))
177:          ;; Check all parameters
178:          (every (lambda (p)
179:                   (and (not (getf p :has-default))
180:                        (not (getf p :out))
181:                        (not (getf p :ref))
182:                        (not (getf p :ref-readonly))
183:                        (not (getf p :params))
184:                        (not (generic-type-p (getf p :type)))))
185:                  params))))
186: 
187: (defun clean-method-p (method)
188:   "Returns t if the method is 'clean' (no ref/out/params/defaults/generics).
189:    Unlike simple-method-p, this does NOT check for uniqueness of the method name,
190:    allowing it to be used for overloaded methods."
191:   (let* ((name (getf method :name))
192:          (params (getf method :parameters))
193:          (is-generic (getf method :is-generic))
194:          (arity (getf method :generic-arity)))
195:     (and name
196:          (not (uiop:string-prefix-p "op_" name))
197:          (not (uiop:string-prefix-p "get_" name))
198:          (not (uiop:string-prefix-p "set_" name))
199:          ;; Only support generic methods if they have exactly one type argument
200:          (or (not is-generic) (eql arity 1))
201:          (not (generic-type-p (getf method :return-type)))
202:          (every (lambda (p)
203:                   (and (not (getf p :out))
204:                        (not (getf p :ref))
205:                        (not (getf p :ref-readonly))
206:                        (not (getf p :params))
207:                        (not (generic-type-p (getf p :type)))))
208:                 params))))
209: 
210: (defun dirty-method-p (method)
211:   "Returns t if the method has any special parameter modifiers (ref, out, params, or defaults).
212:    Complement to clean-method-p; a method may be neither clean nor dirty
213:    if it is an operator or accessor."
214:   (let ((params (getf method :parameters)))
215:     (some (lambda (p)
216:             (or (getf p :has-default)
217:                 (getf p :out)
218:                 (getf p :ref)
219:                 (getf p :ref-readonly)
220:                 (getf p :params)))
221:           params)))
222: 
223: (defun simple-type-name (full-type-name)
224:   "Extract the simple (unqualified) type name from a fully qualified C# type name.
225:    e.g., \"Microsoft.Xna.Framework.Vector2\" => \"Vector2\"
226:          \"System.Single\" => \"Single\"
227:          \"System.Collections.Generic.List`1\" => \"List\""
228:   (let* ((dot-pos (or (position #\. full-type-name :from-end t) -1))
229:          (base-name (subseq full-type-name (1+ dot-pos)))
230:          (backtick-pos (position #\` base-name)))
231:     (if backtick-pos
232:         (subseq base-name 0 backtick-pos)
233:         base-name)))
234: 
235: (defun method-overload-name (method)
236:   "Generate a disambiguated Lisp function name for an overloaded method,
237:    by appending kebab-cased simple parameter type names.
238:    e.g., Contains(Vector2) => \"contains-vector-2\"
239:          DistanceSquared(Vector2, Vector2) => \"distance-squared-vector-2-vector-2\""
240:   (let* ((base-name (map-member-name (getf method :name)))
241:          (params (getf method :parameters))
242:          (type-suffixes (mapcar (lambda (p)
243:                                   (camel-to-kebab (simple-type-name (getf p :type))))
244:                                 params)))
245:     (if type-suffixes
246:         (format nil "~A-~{~A~^-~}" base-name type-suffixes)
247:         base-name)))
248: 
249: (defun method-signature-str (method)
250:   "Return a human-readable signature string for a method, e.g.
251:    'Contains(ref Rectangle, out bool) -> void'."
252:   (let* ((name (getf method :name))
253:          (return-type (simple-type-name (or (getf method :return-type) "void")))
254:          (params (getf method :parameters))
255:          (param-strs (mapcar (lambda (p)
256:                                (let ((modifier-str (cond
257:                                                      ((getf p :ref) "ref ")
258:                                                      ((getf p :out) "out ")
259:                                                      ((getf p :params) "params ")
260:                                                      (t "")))
261:                                      (type-str (simple-type-name (getf p :type))))
262:                                  (format nil "~A~A" modifier-str type-str)))
263:                              params)))
264:     (format nil "~A(~{~A~^, ~}) -> ~A" name param-strs return-type)))
265: 
266: (defun clean-constructor-p (ctor)
267:   "Returns t if the constructor is 'clean' (no ref/out/params/defaults/generics)."
268:   (let ((params (getf ctor :parameters)))
269:     (every (lambda (p)
270:              (and (not (getf p :has-default))
271:                   (not (getf p :out))
272:                   (not (getf p :ref))
273:                   (not (getf p :ref-readonly))
274:                   (not (getf p :params))
275:                   (not (generic-type-p (getf p :type)))))
276:            params)))
277: 
278: (defun dirty-constructor-p (ctor)
279:   "Returns t if the constructor has any special parameter modifiers (ref, out, params, or defaults)."
280:   (let ((params (getf ctor :parameters)))
281:     (some (lambda (p)
282:             (or (getf p :has-default)
283:                 (getf p :out)
284:                 (getf p :ref)
285:                 (getf p :ref-readonly)
286:                 (getf p :params)))
287:           params)))
288: 
289: (defun constructor-overload-name (ctor)
290:   "Generate a disambiguated Lisp function name for an overloaded constructor,
291:    by appending kebab-cased simple parameter type names.
292:    e.g., ctor(float, float) => \"new-single-single\""
293:   (let* ((params (getf ctor :parameters))
294:          (type-suffixes (mapcar (lambda (p)
295:                                   (camel-to-kebab (simple-type-name (getf p :type))))
296:                                 params)))
297:     (if type-suffixes
298:         (format nil "new-~{~A~^-~}" type-suffixes)
299:         "new")))
300: 
301: (defun constructor-signature-str (ctor)
302:   "Return a human-readable signature string for a constructor, e.g.
303:    'new(ref Rectangle, out bool)'."
304:   (let* ((params (getf ctor :parameters))
305:          (param-strs (mapcar (lambda (p)
306:                                (let ((modifier-str (cond
307:                                                      ((getf p :ref) "ref ")
308:                                                      ((getf p :out) "out ")
309:                                                      ((getf p :params) "params ")
310:                                                      (t "")))
311:                                      (type-str (simple-type-name (getf p :type))))
312:                                  (format nil "~A~A" modifier-str type-str)))
313:                              params)))
314:     (format nil "new(~{~A~^, ~})" param-strs)))
315: 
316: (defun build-docstring (summary returns parameters doc-plist)
317:   "Builds a formatted docstring from documentation elements."
318:   (with-output-to-string (out)
319:     (when (and summary (> (length summary) 0))
320:       (format out "Summary: ~A~%" summary))
321:     (when (and returns (> (length returns) 0))
322:       (format out "Returns: ~A~%" returns))
323:     (when (and parameters doc-plist)
324:       (let ((doc-params (getf doc-plist :parameters)))
325:         (format out "Parameters:~%")
326:         (dolist (p parameters)
327:           (let* ((pname (getf p :name))
328:                  (ptype (getf p :type))
329:                  (pdoc (find pname doc-params :key (lambda (dp) (getf dp :name)) :test #'string=))
330:                  (pdesc (if pdoc (getf pdoc :description) "")))
331:             (format out "  - ~A (~A): ~A~%"
332:                     (map-param-name pname)
333:                     ptype
334:                     pdesc)))))))
335: 
336: (defun format-param-type-check (param-type arg-str)
337:   "Returns a Lisp type checking expression string for the given C# parameter type."
338:   (cond
339:     ((member param-type '("System.Double" "System.Single" "System.Int32" "System.Int64" "System.Int16" "System.Byte" "System.Decimal") :test #'string=)
340:      (format nil "(cl:numberp ~A)" arg-str))
341:     ((string= param-type "System.Boolean")
342:      (format nil "(cl:typep ~A 'cl:boolean)" arg-str))
343:     ((string= param-type "System.String")
344:      (format nil "(cl:stringp ~A)" arg-str))
345:     (t
346:      (format nil "(cl:or (cl:null ~A) (monoutils:dotnet-p ~A))" arg-str arg-str))))
347: 
348: (cl:defun complex-group-p (clean-methods)
349:   "Returns t if the group of clean methods requires a master wrapper dispatch (either multiple overloads or presence of default arguments)."
350:   (cl:or (cl:>= (cl:length clean-methods) 2)
351:          (cl:some (cl:lambda (m)
352:                     (cl:some (cl:lambda (p) (cl:getf p :has-default)) (cl:getf m :parameters)))
353:                   clean-methods)))
354: 
355: (cl:defun collect-key-params (methods prefix-len)
356:   "Collects the union of all keyword parameters from methods beyond prefix-len."
357:   (cl:let ((key-params nil))
358:     (cl:dolist (m methods)
359:       (cl:let ((params (cl:nthcdr prefix-len (cl:getf m :parameters))))
360:         (cl:dolist (p params)
361:           (cl:let* ((pname (cl:getf p :name))
362:                     (existing (cl:find pname key-params :key (cl:lambda (kp) (cl:getf kp :name)) :test #'cl:string=)))
363:             (cl:unless existing
364:               (cl:push p key-params))))))
365:     (cl:nreverse key-params)))
366: 
367: (cl:defun find-parameter-default-str (pname methods)
368:   "Locates the C# default value of parameter pname across methods and returns it as a Lisp expression string."
369:   (cl:dolist (m methods)
370:     (cl:let ((p (cl:find pname (cl:getf m :parameters) :key (cl:lambda (param) (cl:getf param :name)) :test #'cl:string=)))
371:       (cl:when (cl:and p (cl:getf p :has-default))
372:         (cl:return (cl:getf p :default-value)))))
373:   "cl:nil")
374: 
375: (cl:defun common-parameter-prefix (methods)
376:   "Determines the maximum common positional parameter prefix across methods based on lack of default values."
377:   (cl:let* ((param-lists (cl:mapcar (cl:lambda (m) (cl:getf m :parameters)) methods))
378:             (min-len (cl:reduce #'cl:min (cl:mapcar #'cl:length param-lists)))
379:             (prefix nil))
380:     (cl:loop for idx from 0 to (cl:1- min-len) do
381:       (cl:let* ((first-param (cl:nth idx (cl:first param-lists)))
382:                 ;; A parameter cannot be positional if it has a default value in any overload.
383:                 (no-default-p (cl:every (cl:lambda (pl)
384:                                           (cl:let ((p (cl:nth idx pl)))
385:                                             (cl:not (cl:getf p :has-default))))
386:                                         param-lists)))
387:         (cl:if no-default-p
388:             (cl:push first-param prefix)
389:             (cl:loop-finish))))
390:     (cl:nreverse prefix)))
391: 
392: (cl:defun max-mandatory-parameter-len (methods)
393:   "Returns the maximum number of mandatory parameters (parameters without defaults) in any single overload."
394:   (cl:let ((max-len 0))
395:     (cl:dolist (m methods)
396:       (cl:let* ((params (cl:getf m :parameters))
397:                 (mandatory-count
398:                   (cl:loop for p in params
399:                            for idx from 0
400:                            while (cl:not (cl:getf p :has-default))
401:                            count t)))
402:         (cl:setf max-len (cl:max max-len mandatory-count))))
403:     max-len))
404: 
405: (cl:defun collect-optional-positional-params (methods prefix-len max-mand-len)
406:   "Collects parameter descriptors for optional positional parameters from index prefix-len to max-mand-len."
407:   (cl:let ((opt-params nil))
408:     (cl:loop for idx from prefix-len to (cl:1- max-mand-len) do
409:       (cl:let ((found-param nil))
410:         (cl:dolist (m methods)
411:           (cl:let ((params (cl:getf m :parameters)))
412:             (cl:when (cl:< idx (cl:length params))
413:               (cl:setf found-param (cl:nth idx params))
414:               (cl:return))))
415:         (cl:when found-param
416:           (cl:push found-param opt-params))))
417:     (cl:nreverse opt-params)))
418: 
419: (cl:defun format-master-overload-condition (cm prefix opt-params key-params)
420:   "Generates Lisp conditional test expression checking supplied-p flags and parameter types for cm."
421:   (cl:let* ((cond-parts nil)
422:             (cm-params (cl:getf cm :parameters))
423:             (prefix-len (cl:length prefix))
424:             (max-mand-len (+ prefix-len (cl:length opt-params))))
425:     ;; 1. Check positional prefix types by position index
426:     (cl:loop for pp in prefix
427:              for idx from 0 do
428:       (cl:let* ((lpname (map-param-name (cl:getf pp :name)))
429:                 (cm-p (cl:nth idx cm-params))
430:                 (type-check (format-param-type-check (cl:getf cm-p :type) lpname)))
431:         (cl:push type-check cond-parts)))
432:     ;; 2. Check optional positional parameters presence and types
433:     (cl:loop for op in opt-params
434:              for idx from prefix-len to (cl:1- max-mand-len) do
435:       (cl:let* ((op-name (map-param-name (cl:getf op :name)))
436:                 (supplied-var (cl:format nil "supplied-~A" op-name))
437:                 (cm-p (cl:nth idx cm-params)))
438:         (cl:if cm-p
439:             (cl:progn
440:               (cl:push supplied-var cond-parts)
441:               (cl:push (format-param-type-check (cl:getf cm-p :type) op-name) cond-parts))
442:             (cl:push (cl:format nil "(cl:not ~A)" supplied-var) cond-parts))))
443:     ;; 3. Check keyword parameters presence and types
444:     (cl:dolist (kp key-params)
445:       (cl:let* ((pname (cl:getf kp :name))
446:              (lpname (map-param-name pname))
447:              (supplied-var (cl:format nil "supplied-~A" lpname))
448:              (cm-p (cl:find pname cm-params :key (cl:lambda (p) (cl:getf p :name)) :test #'cl:string=)))
449:         (cl:if cm-p
450:             (cl:progn
451:               (cl:unless (cl:getf cm-p :has-default)
452:                 (cl:push supplied-var cond-parts))
453:               (cl:push (format-param-type-check (cl:getf cm-p :type) lpname) cond-parts))
454:             (cl:push (cl:format nil "(cl:not ~A)" supplied-var) cond-parts))))
455:     (cl:format nil "(cl:and ~{~A~^ ~})" (cl:nreverse cond-parts))))
456: 
457: (cl:defun format-master-overload-action (cm fq-name name static-p is-generic-p prefix opt-params)
458:   "Generates C# invocation code for cm, mapping parameter names to the master wrapper's bound variables."
459:   (cl:let* ((cm-params (cl:getf cm :parameters))
460:             (prefix-len (cl:length prefix))
461:             (max-mand-len (+ prefix-len (cl:length opt-params)))
462:             (param-names
463:               (cl:loop for p in cm-params
464:                        for idx from 0
465:                        collect (cl:cond
466:                                  ((cl:< idx prefix-len)
467:                                   (map-param-name (cl:getf (cl:nth idx prefix) :name)))
468:                                  ((cl:< idx max-mand-len)
469:                                   (map-param-name (cl:getf (cl:nth (- idx prefix-len) opt-params) :name)))
470:                                  (cl:t
471:                                   (map-param-name (cl:getf p :name))))))
472:             (dotnet-method-name (cl:or (cl:getf cm :mangled-name) name)))
473:     (cl:cond
474:       ((cl:and static-p is-generic-p)
475:        (cl:format nil "(dotnet:static-generic <type-str> \"~A\" (cl:list type)~@[ ~{~A~^ ~}~])" dotnet-method-name param-names))
476:       (static-p
477:        (cl:format nil "(dotnet:static <type-str> \"~A\"~@[ ~{~A~^ ~}~])" dotnet-method-name param-names))
478:       (is-generic-p
479:        (cl:format nil "(dotnet:invoke-generic (cl:the (dotnet \"~A\") obj) \"~A\" (cl:list type)~@[ ~{~A~^ ~}~])" fq-name dotnet-method-name param-names))
480:       (cl:t
481:        (cl:format nil "(dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\"~@[ ~{~A~^ ~}~])" fq-name dotnet-method-name param-names)))))
482: 
483: (cl:defun format-supplied-args-expr (prefix opt-params key-params)
484:   "Generates Lisp expression constructing a plist of supplied arguments at runtime."
485:   (cl:let ((parts nil))
486:     (cl:dolist (pp prefix)
487:       (cl:let ((lpname (map-param-name (cl:getf pp :name))))
488:         (cl:push (cl:format nil "(cl:list :~A ~A)" lpname lpname) parts)))
489:     (cl:dolist (op opt-params)
490:       (cl:let* ((lpname (map-param-name (cl:getf op :name)))
491:                 (supplied-var (cl:format nil "supplied-~A" lpname)))
492:         (cl:push (cl:format nil "(cl:when ~A (cl:list :~A ~A))" supplied-var lpname lpname) parts)))
493:     (cl:dolist (kp key-params)
494:       (cl:let* ((lpname (map-param-name (cl:getf kp :name)))
495:              (supplied-var (cl:format nil "supplied-~A" lpname)))
496:         (cl:push (cl:format nil "(cl:when ~A (cl:list :~A ~A))" supplied-var lpname lpname) parts)))
497:     (cl:format nil "(cl:append ~{~A~^ ~})" (cl:nreverse parts))))
498: 
499: (cl:defun generate-master-wrapper (stream methods name mname fq-name static-p is-generic-p)
500:   "Generates Master Wrapper defun with precise dispatch cond block and fallback error signaling."
501:   (cl:let* ((prefix (common-parameter-prefix methods))
502:             (prefix-len (cl:length prefix))
503:             (prefix-names (cl:mapcar (cl:lambda (p) (map-param-name (cl:getf p :name))) prefix))
504:             (max-mand-len (max-mandatory-parameter-len methods))
505:             (opt-params (collect-optional-positional-params methods prefix-len max-mand-len))
506:             (key-params (collect-key-params methods max-mand-len))
507:             (args-list nil))
508:     (cl:when is-generic-p
509:       (cl:setf args-list (cl:append args-list (cl:list "type"))))
510:     (cl:unless static-p
511:       (cl:setf args-list (cl:append args-list (cl:list "obj"))))
512:     (cl:setf args-list (cl:append args-list prefix-names))
513:     (cl:when opt-params
514:       (cl:setf args-list (cl:append args-list (cl:list "cl:&optional")))
515:       (cl:dolist (op opt-params)
516:         (cl:let* ((op-name (map-param-name (cl:getf op :name)))
517:                   (supplied-var (cl:format nil "supplied-~A" op-name)))
518:           (cl:setf args-list (cl:append args-list (cl:list (cl:format nil "(~A cl:nil ~A)" op-name supplied-var)))))))
519:     (cl:when key-params
520:       (cl:setf args-list (cl:append args-list (cl:list "cl:&key")))
521:       (cl:dolist (kp key-params)
522:         (cl:let* ((kp-name (map-param-name (cl:getf kp :name)))
523:                (kp-default (find-parameter-default-str (cl:getf kp :name) methods))
524:                (supplied-var (cl:format nil "supplied-~A" kp-name)))
525:           (cl:setf args-list (cl:append args-list (cl:list (cl:format nil "(~A ~A ~A)" kp-name kp-default supplied-var)))))))
526:     
527:     (cl:format stream "(cl:defun ~A (~{~A~^ ~})~%" mname args-list)
528:     (cl:format stream "  \"Master wrapper for ~A.~A overloads. Dispatches at runtime.\"~%" fq-name name)
529:     (cl:format stream "  (cl:cond~%")
530:     
531:     ;; Sort methods by parameter count descending for specificity
532:     (cl:let ((sorted-methods (cl:sort (cl:copy-list methods) #'> :key (cl:lambda (m) (cl:length (cl:getf m :parameters))))))
533:       (cl:dolist (cm sorted-methods)
534:         (cl:let ((cond-str (format-master-overload-condition cm prefix opt-params key-params))
535:               (action-str (format-master-overload-action cm fq-name name static-p is-generic-p prefix opt-params)))
536:           (cl:format stream "    (~A~%" cond-str)
537:           (cl:format stream "     ~A)~%" action-str))))
538:     
539:     (cl:let ((supplied-args-expr (format-supplied-args-expr prefix opt-params key-params)))
540:       (cl:format stream "    (cl:t (cl:error 'utils:csharp-overload-not-found~%")
541:       (cl:format stream "                    :package-name \"~A\"~%" (cl:string-upcase (camel-to-kebab fq-name)))
542:       (cl:format stream "                    :class-name <type-str>~%")
543:       (cl:format stream "                    :method-name \"~A\"~%" name)
544:       (cl:format stream "                    :supplied-args ~A))))~%~%" supplied-args-expr))))
545: 
546: (cl:defun generate-single-overload (stream m mname fq-name static-p)
547:   "Generates Lisp wrapper function for a single clean C# overload."
548:   (cl:let* ((m-doc (cl:getf m :documentation))
549:             (summary (cl:getf m-doc :summary))
550:             (returns (cl:getf m-doc :returns))
551:             (params (cl:getf m :parameters))
552:             (is-generic-p (cl:getf m :is-generic))
553:             (param-names (cl:mapcar (cl:lambda (p) (map-param-name (cl:getf p :name))) params))
554:             (args-str (cl:cond
555:                         ((cl:and static-p is-generic-p)
556:                          (cl:format nil "type~@[ ~{~A~^ ~}~]" param-names))
557:                         (static-p
558:                          (cl:format nil "~{~A~^ ~}" param-names))
559:                         (is-generic-p
560:                          (cl:format nil "type obj~@[ ~{~A~^ ~}~]" param-names))
561:                         (cl:t
562:                          (cl:format nil "obj~@[ ~{~A~^ ~}~]" param-names))))
563:             (docstring (build-docstring summary returns params m-doc))
564:             (escaped-docstring (escape-lisp-string docstring))
565:             (dotnet-method-name (cl:or (cl:getf m :mangled-name) (cl:getf m :name)))
566:             ;; For static method params, add (the (dotnet "Type") arg) hints
567:             (static-typed-args
568:               (cl:if static-p
569:                   (cl:mapcar (cl:lambda (pn pt)
570:                             (cl:format nil "(cl:the (dotnet \"~A\") ~A)" pt pn))
571:                           param-names
572:                           (cl:mapcar (cl:lambda (p) (cl:getf p :type)) params))
573:                   nil)))
574:        
575:        (cl:format stream "(cl:defun ~A (~A)~%" mname args-str)
576:        (cl:when (cl:> (cl:length escaped-docstring) 0)
577:          (cl:format stream "  \"~A\"~%" escaped-docstring))
578:        (cl:cond
579:          ((cl:and static-p is-generic-p)
580:           (cl:format stream "  (dotnet:static-generic <type-str> \"~A\" (cl:list type)~@[ ~{~A~^ ~}~]))~%~%" dotnet-method-name param-names))
581:          (static-p
582:           (cl:if static-typed-args
583:               (cl:format stream "  (dotnet:static <type-str> \"~A\"~@[~{ ~A~}~]))~%~%" dotnet-method-name static-typed-args)
584:               (cl:format stream "  (dotnet:static <type-str> \"~A\"~@[ ~{~A~^ ~}~]))~%~%" dotnet-method-name param-names)))
585:          (is-generic-p
586:           (cl:format stream "  (dotnet:invoke-generic (cl:the (dotnet \"~A\") obj) \"~A\" (cl:list type)~@[ ~{~A~^ ~}~]))~%~%" fq-name dotnet-method-name param-names))
587:          (cl:t
588:           (cl:format stream "  (dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\"~@[ ~{~A~^ ~}~]))~%~%" fq-name dotnet-method-name param-names)))))
589: 
590: (defun format-overload-test (cm)
591:   "Generates a Lisp conditional test expression string for checking if the runtime arguments match the method's parameters."
592:   (let* ((params (getf cm :parameters))
593:          (arg-count (length params)))
594:     (if (= arg-count 0)
595:         (format nil "(cl:= (cl:length args) 0)")
596:         (let ((checks (loop for p in params
597:                             for idx from 0
598:                             collect (format-param-type-check (getf p :type) (format nil "(cl:nth ~D args)" idx)))))
599:           (format nil "(cl:and (cl:= (cl:length args) ~D)~{ ~A~})" arg-count checks)))))
600: 
601: (defun generate-class-file (class-plist output-dir &optional constant-properties-list)
602:   "Generates the Lisp source file for a single class plist."
603:   (let* ((fq-name (getf class-plist :fully-qualified-name))
604:          (pkg-name (camel-to-kebab fq-name))
605:          (output-file (merge-pathnames (make-pathname :name pkg-name :type "lisp")
606:                                        (pathname (concatenate 'string output-dir "/"))))
607:          (fields (getf class-plist :fields))
608:          (properties (getf class-plist :properties))
609:          (methods (getf class-plist :methods))
610:          (kind (getf class-plist :kind))
611:          (raw-ctors (getf class-plist :constructors))
612:          ;; Structs (value types) in C# have an implicit parameterless constructor.
613:          ;; If no parameterless constructor is in raw-ctors, we inject one.
614:          (ctors (if (and (eq kind :struct)
615:                          (not (some (lambda (ctor) (null (getf ctor :parameters))) raw-ctors)))
616:                     (cons '(:parameters nil :public t) raw-ctors)
617:                     raw-ctors))
618:          (is-value-type-p (or (eq kind :struct) (eq kind :enum)))
619:          (creation-time (get-iso-8601-time)))
620:     
621:     (ensure-directories-exist output-file :verbose t)
622:     
623:     ;; 1. Analyze and extract valid Phase 1 members
624:     (let* ((literal-fields (remove-if-not #'literal-field-p fields))
625:            (runtime-fields-all (remove-if-not #'runtime-readonly-field-p fields))
626:            (pure-const-fields (remove-if-not (lambda (f) (or (member "*" constant-properties-list :test #'string=) (member (getf f :name) constant-properties-list :test #'string-equal))) runtime-fields-all))
627:            (dynamic-const-fields (remove-if (lambda (f) (or (member "*" constant-properties-list :test #'string=) (member (getf f :name) constant-properties-list :test #'string-equal))) runtime-fields-all))
628:            (const-props (remove-if-not #'constant-property-p properties))
629:            (pure-const-props (remove-if-not (lambda (p) (or (member "*" constant-properties-list :test #'string=) (member (getf p :name) constant-properties-list :test #'string-equal))) const-props))
630:            (dynamic-const-props (remove-if (lambda (p) (or (member "*" constant-properties-list :test #'string=) (member (getf p :name) constant-properties-list :test #'string-equal))) const-props))
631:            (instance-props (remove-if-not #'instance-property-p properties))
632:            ;; Group methods by name for overload-aware generation
633:            (non-operator-non-accessor-methods
634:              (remove-if (lambda (m)
635:                           (or (uiop:string-prefix-p "op_" (getf m :name))
636:                               (uiop:string-prefix-p "get_" (getf m :name))
637:                               (uiop:string-prefix-p "set_" (getf m :name))
638:                               (generic-type-p (getf m :return-type))
639:                               (some (lambda (p) (generic-type-p (getf p :type)))
640:                                     (getf m :parameters))))
641:                         methods))
642:            (method-groups
643:              (let ((table (make-hash-table :test #'equal)))
644:                (dolist (m non-operator-non-accessor-methods)
645:                  (push m (gethash (getf m :name) table)))
646:                (let ((groups nil))
647:                  (maphash (lambda (name methods)
648:                             (push (cons name (nreverse methods)) groups))
649:                            table)
650:                  (nreverse groups))))
651:            (clean-ctors (remove-if-not #'clean-constructor-p ctors))
652:            (dirty-ctors (remove-if-not #'dirty-constructor-p ctors))
653:            (clean-ctor-count (length clean-ctors))
654:            (dirty-ctor-count (length dirty-ctors))
655:            (exports nil)
656:            (shadows nil))
657:       
658:       ;; Collect all exports
659:       (push "<type>" exports)
660:       (push "<type-str>" exports)
661:       (push "<creation>" exports)
662:       (push "<version>" exports)
663:       
664:       ;; Collect constructor exports
665:       (when (> clean-ctor-count 0)
666:         (push "new" exports)
667:         (when (>= clean-ctor-count 2)
668:           (dolist (c clean-ctors)
669:             (let ((params (getf c :parameters)))
670:               (when params
671:                 (push (constructor-overload-name c) exports))))))
672:       
673:       (dolist (f literal-fields)
674:         (push (format nil "+~A+" (camel-to-kebab (getf f :name))) exports))
675:       (dolist (f pure-const-fields)
676:         (push (format nil "+~A+" (camel-to-kebab (getf f :name))) exports))
677:       (dolist (f dynamic-const-fields)
678:         (push (map-member-name (getf f :name)) exports))
679:       (dolist (p pure-const-props)
680:         (push (format nil "+~A+" (camel-to-kebab (getf p :name))) exports))
681:       (dolist (p dynamic-const-props)
682:         (push (map-member-name (getf p :name)) exports))
683:       (dolist (p instance-props)
684:         (let* ((pname (map-member-name (getf p :name)))
685:                (readable (getf p :readable)))
686:           (if readable
687:               (push pname exports)
688:               (push (format nil "set-~A" pname) exports))))
689:       ;; Collect method exports from method groups
690:       (dolist (group method-groups)
691:         (let* ((name (car group))
692:                (clean-methods (remove-if-not #'clean-method-p (cdr group)))
693:                (clean-count (length clean-methods))
694:                (kebab-name (map-member-name name))
695:                (static-clean (remove-if-not (lambda (m) (getf m :is-static)) clean-methods))
696:                (instance-clean (remove-if-not (lambda (m) (not (getf m :is-static))) clean-methods))
697:                (static-count (length static-clean))
698:                (instance-count (length instance-clean))
699:                (mixed-mode-p (and (> static-count 0) (> instance-count 0))))
700:           (when (> clean-count 0)
701:             (push kebab-name exports)
702:             (when mixed-mode-p
703:               (push (concatenate 'string kebab-name "*") exports)))
704:           (when (>= clean-count 2)
705:             ;; Export type-suffixed names for multi-overload methods
706:             (dolist (cm clean-methods)
707:               (push (method-overload-name cm) exports)))))
708:       
709:       ;; Remove duplicates from exports while preserving order
710:       (setf exports (remove-duplicates (nreverse exports) :test #'string= :from-end t))
711:       
712:       ;; Identify exported symbols that conflict with CL and must be shadowed
713:       (dolist (exp exports)
714:         (multiple-value-bind (sym status) (find-symbol (string-upcase exp) :common-lisp)
715:           (when (and sym (eq status :external))
716:             (push exp shadows))))
717:       ;; Remove duplicates from shadows while preserving order
718:       (setf shadows (remove-duplicates (nreverse shadows) :test #'string= :from-end t))
719:       
720:       ;; 2. Write to the Lisp output file
721:       (with-open-file (stream output-file :direction :output :if-exists :supersede :if-does-not-exist :create)
722:         ;; Comments
723:         (format stream ";;; Generated automatically. Do not edit.~%")
724:         (format stream ";;; Class: ~A~%" fq-name)
725:         (format stream ";;; Generator Version: ~D~%" *generator-version*)
726:         (format stream ";;; Creation Date: ~A~%~%" creation-time)
727:         
728:         ;; Preamble
729:         (format stream "(cl:in-package :cl-user)~%~%")
730:         (format stream "(cl:defpackage :~A~%" pkg-name)
731:         (format stream "  (:use :cl)~%")
732:         (when shadows
733:           (format stream "  (:shadow~%")
734:           (dolist (shad shadows)
735:             (format stream "   #:~A~%" shad))
736:           (format stream "  )~%"))
737:         (format stream "  (:export~%")
738:         (dolist (exp exports)
739:           (format stream "   #:~A~%" exp))
740:         (format stream "  ))~%~%")
741:         
742:         (format stream "(cl:in-package :~A)~%~%" pkg-name)
743:         
744:         ;; Type Constants
745:         (format stream "(cl:defconstant <type> (monoutils:get-type \"~A\"))~%" fq-name)
746:         (format stream "(cl:defconstant <type-str> \"~A\")~%" fq-name)
747:         (format stream "(cl:defconstant <creation> \"~A\")~%" creation-time)
748:         (format stream "(cl:defconstant <version> ~D)~%~%" *generator-version*)
749:         
750:         ;; CLOS Type Registration
751:         (format stream ";; Register C# Type with CLOS~%")
752:         (format stream "(cl:eval-when (:compile-toplevel :load-toplevel :execute)~%")
753:         (format stream "  (dotnet:static \"DotCL.Runtime\" \"EnsureDotNetTypeClass\"~%")
754:         (format stream "                 (dotnet:resolve-type \"~A\")))~%~%" fq-name)
755:         
756:         ;; Constructors
757:         (cond
758:           ;; Case 1: No clean constructors - all are dirty
759:           ((and (> dirty-ctor-count 0) (= clean-ctor-count 0))
760:            (format stream ";; The following C# ~A constructors have special parameter types~%" fq-name)
761:            (format stream ";; (ref, out, params, or defaults) and are not yet supported:~%")
762:            (dolist (dc dirty-ctors)
763:              (format stream ";;   ~A~%" (constructor-signature-str dc)))
764:            (format stream "~%"))
765:           
766:           ;; Case 2: Single clean constructor
767:           ((= clean-ctor-count 1)
768:            (let* ((c (first clean-ctors))
769:                   (c-doc (getf c :documentation))
770:                   (summary (getf c-doc :summary))
771:                   (returns (getf c-doc :returns))
772:                   (params (getf c :parameters))
773:                   (param-names (mapcar (lambda (p) (map-param-name (getf p :name))) params))
774:                   (args-str (format nil "~{~A~^ ~}" param-names))
775:                   (docstring (build-docstring summary returns params c-doc))
776:                   (escaped-docstring (escape-lisp-string docstring)))
777:              (format stream "(cl:defun new (~A)~%" args-str)
778:              (when (> (length escaped-docstring) 0)
779:                (format stream "  \"~A\"~%" escaped-docstring))
780:              (format stream "  (dotnet:new <type-str>~@[ ~{~A~^ ~}~]))~%~%" param-names)
781:              ;; Emit dirty constructor doc-comments if any
782:              (when (> dirty-ctor-count 0)
783:                (format stream ";; Note: ~A also has the following constructors with special~%" fq-name)
784:                (format stream ";; parameter types (ref, out, params, or defaults) that are not~%")
785:                (format stream ";; yet supported:~%")
786:                (dolist (dc dirty-ctors)
787:                  (format stream ";;   ~A~%" (constructor-signature-str dc)))
788:                (format stream "~%"))))
789:           
790:           ;; Case 3: Multiple clean constructors
791:           ((>= clean-ctor-count 2)
792:            ;; Generate passthrough &rest function for DotCL runtime dispatch
793:            (format stream "(cl:defun new (cl:&rest args)~%")
794:            (format stream "  \"Passthrough constructor for ~A. Dispatches at runtime.\"~%" fq-name)
795:            (format stream "  (cl:apply (cl:function dotnet:new) <type-str> args))~%~%")
796:            ;; Generate per-overload typed functions with type-suffixed names
797:            (dolist (c clean-ctors)
798:              (let ((params (getf c :parameters)))
799:                (when params
800:                  (let* ((cname (constructor-overload-name c))
801:                         (c-doc (getf c :documentation))
802:                         (summary (getf c-doc :summary))
803:                         (returns (getf c-doc :returns))
804:                         (param-names (mapcar (lambda (p) (map-param-name (getf p :name))) params))
805:                         (overload-signature (constructor-signature-str c))
806:                         (args-str (format nil "~{~A~^ ~}" param-names))
807:                         (docstring (build-docstring summary returns params c-doc))
808:                         (overload-note (format nil "Calls ~A constructor ~A" fq-name overload-signature))
809:                         (full-docstring (if (> (length docstring) 0)
810:                                             (concatenate 'string overload-note ". " docstring)
811:                                             overload-note))
812:                         (escaped-full-doc (escape-lisp-string full-docstring)))
813:                    (format stream "(cl:defun ~A (~A)~%" cname args-str)
814:                    (format stream "  \"~A\"~%" escaped-full-doc)
815:                    (format stream "  (dotnet:new <type-str>~@[ ~{~A~^ ~}~]))~%~%" param-names)))))
816:            ;; Emit dirty constructor doc-comments if any
817:            (when (> dirty-ctor-count 0)
818:              (format stream ";; Note: ~A also has the following constructors with special~%" fq-name)
819:              (format stream ";; parameter types (ref, out, params, or defaults) that are not~%")
820:              (format stream ";; yet supported:~%")
821:              (dolist (dc dirty-ctors)
822:                (format stream ";;   ~A~%" (constructor-signature-str dc)))
823:              (format stream "~%"))))
824:         
825:         ;; Compile-Time Constants (Literal Fields)
826:         (dolist (f literal-fields)
827:           (let* ((cname (format nil "+~A+" (camel-to-kebab (getf f :name))))
828:                  (f-doc (getf (getf f :documentation) :summary))
829:                  (doc-str (if f-doc (escape-lisp-string f-doc) "")))
830:             (format stream "(cl:defconstant ~A (dotnet:static <type-str> \"~A\"))~%" cname (getf f :name))
831:             (if (> (length doc-str) 0)
832:                 (format stream "(cl:setf (cl:documentation (cl:quote ~A) (cl:quote cl:variable)) \"~A\")~%~%" cname doc-str)
833:                 (format stream "~%"))))
834:         
835:         ;; Runtime Read-Only Fields (Constants)
836:         (dolist (f pure-const-fields)
837:           (let* ((cname (format nil "+~A+" (camel-to-kebab (getf f :name))))
838:                  (f-doc (getf (getf f :documentation) :summary))
839:                  (doc-str (if f-doc (escape-lisp-string f-doc) "")))
840:             (format stream "(cl:defconstant ~A (dotnet:static <type-str> \"~A\"))~%" cname (getf f :name))
841:             (if (> (length doc-str) 0)
842:                 (format stream "(cl:setf (cl:documentation (cl:quote ~A) (cl:quote cl:variable)) \"~A\")~%~%" cname doc-str)
843:                 (format stream "~%"))))
844: 
845:         ;; Runtime Read-Only Fields (Dynamic)
846:         (dolist (f dynamic-const-fields)
847:           (let* ((cname (map-member-name (getf f :name)))
848:                  (f-doc (getf (getf f :documentation) :summary))
849:                  (doc-str (if f-doc (escape-lisp-string f-doc) "")))
850:             (format stream "(cl:define-symbol-macro ~A (dotnet:static <type-str> \"~A\"))~%" cname (getf f :name))
851:             (if (> (length doc-str) 0)
852:                 (format stream "(cl:setf (cl:documentation (cl:quote ~A) (cl:quote cl:variable)) \"~A\")~%~%" cname doc-str)
853:                 (format stream "~%"))))
854:         
855:         ;; Runtime Read-Only Properties
856:         ;; Pure Constant Properties
857:         (dolist (p pure-const-props)
858:           (let* ((cname (format nil "+~A+" (camel-to-kebab (getf p :name))))
859:                  (p-doc (getf (getf p :documentation) :summary))
860:                  (doc-str (if p-doc (escape-lisp-string p-doc) "")))
861:             (format stream "(cl:defconstant ~A (dotnet:static <type-str> \"~A\"))~%" cname (getf p :name))
862:             (if (> (length doc-str) 0)
863:                 (format stream "(cl:setf (cl:documentation (cl:quote ~A) (cl:quote cl:variable)) \"~A\")~%~%" cname doc-str)
864:                 (format stream "~%"))))
865: 
866:         ;; Runtime Read-Only Properties
867:         (dolist (p dynamic-const-props)
868:           (let* ((cname (map-member-name (getf p :name)))
869:                  (p-doc (getf (getf p :documentation) :summary))
870:                  (doc-str (if p-doc (escape-lisp-string p-doc) "")))
871:             (format stream "(cl:define-symbol-macro ~A (dotnet:static <type-str> \"~A\"))~%" cname (getf p :name))
872:             (if (> (length doc-str) 0)
873:                 (format stream "(cl:setf (cl:documentation (cl:quote ~A) (cl:quote cl:variable)) \"~A\")~%~%" cname doc-str)
874:                 (format stream "~%"))))
875:         
876:         ;; Instance Properties
877:         (dolist (p instance-props)
878:           (let* ((pname (map-member-name (getf p :name)))
879:                  (readable (getf p :readable))
880:                  (writeable (getf p :writeable))
881:                  (get-method (getf p :get-method))
882:                  (set-method (getf p :set-method))
883:                  (p-doc (getf (getf p :documentation) :summary))
884:                  (doc-str (if p-doc (escape-lisp-string p-doc) "")))
885:             (when readable
886:               (format stream "(cl:defun ~A (obj)~%" pname)
887:               (when (> (length doc-str) 0)
888:                 (format stream "  \"~A\"~%" doc-str))
889:               (format stream "  (dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\"))~%~%" fq-name get-method))
890:             (when writeable
891:               (if readable
892:                   (progn
893:                     (when is-value-type-p
894:                       (format stream ";; Note: Modifying a property of a value type (struct) via setf may only mutate~%")
895:                       (format stream ";; a boxed copy, leaving the original unchanged. Use caution with structs.~%"))
896:                     (format stream "(cl:defun (cl:setf ~A) (new-value obj)~%" pname)
897:                     (when (> (length doc-str) 0)
898:                       (format stream "  \"~A\"~%" doc-str))
899:                     (format stream "  (dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\" new-value))~%~%" fq-name set-method))
900:                   (progn
901:                     (when is-value-type-p
902:                       (format stream ";; Note: Modifying a property of a value type (struct) via setf may only mutate~%")
903:                       (format stream ";; a boxed copy, leaving the original unchanged. Use caution with structs.~%"))
904:                     (format stream "(cl:defun set-~A (obj new-value)~%" pname)
905:                     (when (> (length doc-str) 0)
906:                       (format stream "  \"~A\"~%" doc-str))
907:                     (format stream "  (dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\" new-value))~%~%" fq-name set-method))))))
908:         
909:         ;; Methods - Generated from method groups with overload handling
910:         (dolist (group method-groups)
911:           (let* ((name (car group))
912:                  (group-methods (cdr group))
913:                  (clean-methods (remove-if-not #'clean-method-p group-methods))
914:                  (dirty-methods (remove-if-not #'dirty-method-p group-methods))
915:                  (clean-count (length clean-methods))
916:                  (dirty-count (length dirty-methods))
917:                  (kebab-name (map-member-name name))
918:                  (static-clean (remove-if-not (lambda (m) (getf m :is-static)) clean-methods))
919:                  (instance-clean (remove-if-not (lambda (m) (not (getf m :is-static))) clean-methods))
920:                  (static-count (length static-clean))
921:                  (instance-count (length instance-clean))
922:                  (mixed-mode-p (and (> static-count 0) (> instance-count 0))))
923:             
924:             (cond
925:               ;; Case 1: No clean overloads - all are dirty (ref/out/params/defaults)
926:               ((= clean-count 0)
927:                (format stream ";; The following C# ~A.~A overloads have special parameter types~%" fq-name name)
928:                (format stream ";; (ref, out, params, or defaults) and are not yet supported:~%")
929:                (dolist (dm dirty-methods)
930:                  (format stream ";;   ~A~%" (method-signature-str dm)))
931:                (format stream "~%"))
932:               
933:                ;; Case 2: Clean overloads exist
934:               (t
935:                (cl:cond
936:                  (mixed-mode-p
937:                   ;; Mixed-Mode: instance name is kebab-name, static name is kebab-name*
938:                   (cl:let ((static-kebab-name (concatenate 'string kebab-name "*")))
939:                     ;; Instance wrappers
940:                     (cl:if (cl:and (= instance-count 1) (cl:not (complex-group-p instance-clean)))
941:                            (generate-single-overload stream (first instance-clean) kebab-name fq-name nil)
942:                            (generate-master-wrapper stream instance-clean name kebab-name fq-name nil (getf (first instance-clean) :is-generic)))
943:                     ;; Static wrappers
944:                     (cl:if (cl:and (= static-count 1) (cl:not (complex-group-p static-clean)))
945:                            (generate-single-overload stream (first static-clean) static-kebab-name fq-name t)
946:                            (generate-master-wrapper stream static-clean name static-kebab-name fq-name t (getf (first static-clean) :is-generic)))))
947:                  (t

(Output capped at 50 KB. Showing lines 1-947. Use offset=948 to continue.)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/package-generator-tests.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/package-generator-tests.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;;
3: ;;; Package Generator Test Suite
4: ;;;
5: ;;; This file contains unit tests for the assembly-package-generator.
6: ;;; Tests are run when this file is loaded.
7: 
8: (in-package :dungeon-slime-tests)
9: 
10: (defun run-package-generator-tests ()
11:   (format *error-output* "--- Running Package Generator Tests ---~%")
12: 
13:   ;; Helper assertion macro
14:   (defmacro assert-test (form expected-value description)
15:     `(let ((result ,form))
16:       (if (equal result ,expected-value)
17:           (format *error-output* "[package-generator-tests] PASS ~A: ~S -> ~S~%" ,description result result)
18:           (progn
19:             (utils:format-red *error-output* "[package-generator-tests] FAIL ~A: Expected ~S but got ~S~%" ,description ,expected-value result)
20:             (error "Test failure: ~A" ,description)))))
21: 
22:   ;; 1. Test camel-to-kebab
23:   (assert-test (assembly-package-generator:camel-to-kebab "System.Console")
24:               "system-console"
25:               "Convert System.Console to kebab-case")
26: 
27:   (assert-test (assembly-package-generator:camel-to-kebab "System.Collections.ArrayList")
28:               "system-collections-array-list"
29:               "Convert System.Collections.ArrayList to kebab-case")
30: 
31:   (assert-test (assembly-package-generator:camel-to-kebab "camelCase")
32:               "camel-case"
33:               "Convert camelCase to kebab-case")
34: 
35:   (assert-test (assembly-package-generator:camel-to-kebab "PascalCase")
36:               "pascal-case"
37:               "Convert PascalCase to kebab-case")
38: 
39:   (assert-test (assembly-package-generator:camel-to-kebab "SomeMHTMLMethod")
40:               "some-mhtml-method"
41:               "Convert SomeMHTMLMethod to kebab-case")
42: 
43: 
44:   ;; 2. Test split-string
45:   (assert-test (assembly-package-generator:split-string "System.Console;System.Math")
46:               '("System.Console" "System.Math")
47:               "Split string by semicolon")
48: 
49:   (assert-test (assembly-package-generator:split-string "System.Console")
50:               '("System.Console")
51:               "Split single element string")
52: 
53:   (assert-test (assembly-package-generator:split-string "")
54:               '("")
55:               "Split empty string")
56: 
57: 
58:   ;; 3. Test simple-method-p and classification helper logic using mock plists
59:   (let ((methods-list
60:           '(
61:             ;; 1. Simple valid method
62:             (:name "WriteLine" :is-static t :return-type "System.Void" :parameters nil)
63:             ;; 2. Overloaded method (two of this name)
64:             (:name "Write" :is-static t :return-type "System.Void" :parameters nil)
65:             (:name "Write" :is-static t :return-type "System.Void" :parameters ((:name "value" :type "System.String")))
66:             ;; 3. Generic method
67:             (:name "GenericMethod" :is-static t :return-type "!!0" :parameters nil)
68:             ;; 4. Method with ref parameter
69:             (:name "RefMethod" :is-static t :return-type "System.Void" :parameters ((:name "value" :type "System.Int32" :ref t)))
70:             ;; 5. Property accessor
71:             (:name "get_Title" :is-static t :return-type "System.String" :parameters nil)
72:             ;; 6. Generic method with arity 1
73:             (:name "GenericArity1" :is-static t :is-generic t :generic-arity 1 :return-type "T" :parameters nil)
74:             ;; 7. Generic method with arity 2
75:             (:name "GenericArity2" :is-static t :is-generic t :generic-arity 2 :return-type "T" :parameters nil)
76:             )))
77:     
78:     (assert-test (assembly-package-generator::simple-method-p 
79:                   (first methods-list)
80:                   methods-list)
81:                 t
82:                 "simple-method-p accepts simple non-overloaded method")
83: 
84:     (assert-test (assembly-package-generator::simple-method-p 
85:                   (second methods-list)
86:                   methods-list)
87:                 nil
88:                 "simple-method-p rejects overloaded method (Write)")
89: 
90:     (assert-test (assembly-package-generator::simple-method-p 
91:                   (fourth methods-list)
92:                   methods-list)
93:                 nil
94:                 "simple-method-p rejects generic method (GenericMethod)")
95: 
96:     (assert-test (assembly-package-generator::simple-method-p 
97:                   (fifth methods-list)
98:                   methods-list)
99:                 nil
100:                 "simple-method-p rejects method with ref parameter (RefMethod)")
101: 
102:     (assert-test (assembly-package-generator::simple-method-p 
103:                   (sixth methods-list)
104:                   methods-list)
105:                 nil
106:                 "simple-method-p rejects property getter method (get_Title)")
107: 
108:     (assert-test (assembly-package-generator::simple-method-p 
109:                   (nth 6 methods-list)
110:                   methods-list)
111:                 t
112:                 "simple-method-p accepts generic method of arity 1")
113: 
114:     (assert-test (assembly-package-generator::simple-method-p 
115:                   (nth 7 methods-list)
116:                   methods-list)
117:                 nil
118:                 "simple-method-p rejects generic method of arity 2"))
119: 
120:   ;; 3.5 Test clean-constructor-p and constructor-overload-name helper logic using mock plists
121:   (let ((ctors-list
122:           '(
123:             ;; 1. Simple clean constructor with no parameters
124:             (:parameters nil :public t)
125:             ;; 2. Clean constructor with parameters
126:             (:parameters ((:name "x" :type "System.Single") (:name "y" :type "System.Single")) :public t)
127:             ;; 3. Constructor with ref parameter (dirty)
128:             (:parameters ((:name "value" :type "System.Int32" :ref t)) :public t)
129:             )))
130:     
131:     (assert-test (assembly-package-generator::clean-constructor-p (first ctors-list))
132:                 t
133:                 "clean-constructor-p accepts clean parameterless constructor")
134: 
135:     (assert-test (assembly-package-generator::clean-constructor-p (second ctors-list))
136:                 t
137:                 "clean-constructor-p accepts clean parameterized constructor")
138: 
139:     (assert-test (assembly-package-generator::clean-constructor-p (third ctors-list))
140:                 nil
141:                 "clean-constructor-p rejects constructor with ref parameter")
142: 
143:     (assert-test (assembly-package-generator::constructor-overload-name (first ctors-list))
144:                 "new"
145:                 "constructor-overload-name for parameterless constructor is new")
146: 
147:     (assert-test (assembly-package-generator::constructor-overload-name (second ctors-list))
148:                 "new-single-single"
149:                 "constructor-overload-name for parameterized constructor matches types"))
150: 
151:   ;; 4. Test Operator Overloads on Generated TimeSpan and Vector2 packages
152:   (format *error-output* "--- Running Generated Package Operator Overload Tests ---~%")
153: 
154:   ;; TimeSpan Operator Tests
155:   (let ((t1 (ts:from-ticks 100))
156:         (t2 (ts:from-ticks 200))
157:         (t3 (ts:from-ticks 100)))
158: 
159:     (assert-test (ts:= t1 t3)
160:                 t
161:                 "TimeSpan = operator (true case)")
162: 
163:     (assert-test (ts:= t1 t2)
164:                 nil
165:                 "TimeSpan = operator (false case)")
166: 
167:     (assert-test (ts:not= t1 t2)
168:                 t
169:                 "TimeSpan not= operator (true case)")
170: 
171:     (assert-test (ts:not= t1 t3)
172:                 nil
173:                 "TimeSpan not= operator (false case)")
174: 
175:     (assert-test (ts:< t1 t2)
176:                 t
177:                 "TimeSpan < operator (true case)")
178: 
179:     (assert-test (ts:< t2 t1)
180:                 nil
181:                 "TimeSpan < operator (false case)")
182: 
183:     (assert-test (ts:<= t1 t2)
184:                 t
185:                 "TimeSpan <= operator (less than case)")
186: 
187:     (assert-test (ts:<= t1 t3)
188:                 t
189:                 "TimeSpan <= operator (equal case)")
190: 
191:     (assert-test (ts:> t2 t1)
192:                 t
193:                 "TimeSpan > operator (true case)")
194: 
195:     (assert-test (ts:> t1 t2)
196:                 nil
197:                 "TimeSpan > operator (false case)")
198: 
199:     (assert-test (ts:>= t2 t1)
200:                 t
201:                 "TimeSpan >= operator (greater than case)")
202: 
203:     (assert-test (ts:>= t1 t3)
204:                 t
205:                 "TimeSpan >= operator (equal case)"))
206: 
207:   ;; Vector2 Operator Tests
208:   (let ((v-zero microsoft-xna-framework-vector2:+zero+)
209:         (v-one microsoft-xna-framework-vector2:+one+)
210:         (v-x microsoft-xna-framework-vector2:+unit-x+)
211:         (v-y microsoft-xna-framework-vector2:+unit-y+))
212: 
213:     (assert-test (microsoft-xna-framework-vector2:= v-zero v-zero)
214:                 t
215:                 "Vector2 = operator (true case)")
216: 
217:     (assert-test (microsoft-xna-framework-vector2:= v-zero v-one)
218:                 nil
219:                 "Vector2 = operator (false case)")
220: 
221:     (assert-test (microsoft-xna-framework-vector2:not= v-zero v-one)
222:                 t
223:                 "Vector2 not= operator (true case)")
224: 
225:     (assert-test (microsoft-xna-framework-vector2:not= v-zero v-zero)
226:                 nil
227:                 "Vector2 not= operator (false case)")
228: 
229:     ;; UnitX (1,0) + UnitY (0,1) = One (1,1)
230:     (let ((v-sum (microsoft-xna-framework-vector2:+ v-x v-y)))
231:       (assert-test (microsoft-xna-framework-vector2:= v-sum v-one)
232:                   t
233:                   "Vector2 + operator (UnitX + UnitY = One)")))
234: 
235:   (format *error-output* "--- Generated Package Operator Overload Tests Completed ---~%")
236: 
237:   (format *error-output* "--- Package Generator Tests Completed ---~%"))

(End of file - total 237 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/Program.cs"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/Program.cs</path>
<type>file</type>
<content>
1: // This file is the main entry point when we build a full
2: // executable in C#. It is executed in sequence as if this
3: // were a static void Main. This is the standard since
4: // C# 9 and .NET 6.
5: // See: https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/program-structure/#top-level-statements-vs-main-method
6: 
7: using DotCL;
8: 
9: string? assemblyFile = null;
10: string? outputFile = null;
11: bool hasAssembly = false;
12: bool hasOutput = false;
13: 
14: string? assemblyMetadataFile = null;
15: string? classFilter = null;
16: string? outputDir = null;
17: bool hasAssemblyMetadata = false;
18: string? constantProperties = null;
19: var isTestMode = false;
20: 
21: 
22: for (int i = 0; i < args.Length; i++) {
23:     if (args[i] == "--assembly" && i + 1 < args.Length) {
24:         assemblyFile = args[i + 1];
25:         hasAssembly = true;
26:         i++;
27:     } else if (args[i] == "--assembly-metadata" && i + 1 < args.Length) {
28:         assemblyMetadataFile = args[i + 1];
29:         hasAssemblyMetadata = true;
30:         i++;
31:     } else if (args[i] == "--class" && i + 1 < args.Length) {
32:         classFilter = args[i + 1];
33:         i++;
34:     } else if (args[i] == "--output" && i + 1 < args.Length) {
35:         outputFile = args[i + 1];
36:         outputDir = args[i + 1];
37:         hasOutput = true;
38:         i++;
39:     } else if (args[i] == "--output") {
40:         outputFile = "-";
41:         hasOutput = true;
42:     } else if (args[i] == "--constant-properties" && i + 1 < args.Length) {
43:         constantProperties = args[i + 1];
44:         i++;
45:     } else if (args[i] == "--test") {
46:         isTestMode = true;
47:     }
48: }
49: 
50: if (hasAssembly && !string.IsNullOrEmpty(assemblyFile)) {
51:     Console.Error.WriteLine($"[Program.cs] Generating assembly metadata...");
52:     if (!hasOutput || string.IsNullOrEmpty(outputFile)) {
53:         outputFile = "-";
54:     }
55:     if (outputFile == "-") {
56:         DungeonSlime.AssemblyToLispy.RedirectLogsToError = true;
57:     }
58:     try {
59:         string fullAssemblyPath = Path.GetFullPath(assemblyFile);
60:         string inputDir = Path.GetDirectoryName(fullAssemblyPath) ?? Directory.GetCurrentDirectory();
61:         string inputAssemblyFile = Path.GetFileName(fullAssemblyPath);
62:         DungeonSlime.AssemblyToLispy.GenerateLispyMetadata(inputDir, inputAssemblyFile, outputFile);
63:     } catch (Exception ex) {
64:         Console.Error.WriteLine($"[Program.cs] Error generating metadata: {ex.Message}");
65:         Console.Error.WriteLine(ex.StackTrace);
66:         Environment.Exit(1);
67:     }
68:     Console.Error.WriteLine($"[Program.cs] ...assembly metadata generation complete.");
69:     return;
70: }
71: 
72: // Boot dotcl BEFORE constructing the Game so the Lisp side has a chance to
73: // (dotnet:define-class "MonoGameCLOSProxy" (Game) ...) and the dynamically
74: // emitted assembly is loaded. Then we instantiate the Lisp-defined type
75: // via DotclHost.Call("MAKE-GAME") and Run() it on the main thread.
76: DotclHost.Initialize();
77: 
78: // Register my Custom C#-implemented Lisp package with DotCL's
79: // package registry.
80: MonoUtilsRegistrar.Initialize();
81: 
82: // dotcl's ResolveDotNetType does not seem to need the types force
83: // previously loaded at this point anymore.
84: 
85: if (hasAssemblyMetadata && !string.IsNullOrEmpty(assemblyMetadataFile)) {
86:     Console.WriteLine("[Program.cs] Running assembly package generator...");
87:     try {
88:         var generatorManifestPath = Path.Combine(AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
89:         DotclHost.LoadFromManifest(generatorManifestPath);
90:         DotclHost.Call("RUN-ASSEMBLY-PACKAGE-GENERATOR", assemblyMetadataFile, classFilter ?? "", outputDir ?? "", constantProperties ?? "");
91:     } catch (Exception ex) {
92:         Console.Error.WriteLine($"[Program.cs] Error in assembly package generator: {ex.Message}");
93:         Console.Error.WriteLine(ex.StackTrace);
94:         Environment.Exit(1);
95:     }
96:     Console.WriteLine("[Program.cs] ...assembly package generator complete.");
97:     return;
98: }
99: 
100: var manifestPath = Path.Combine(
101:     AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
102: Console.WriteLine($"[Program.cs] manifest: {manifestPath}");
103: var loaded = DotclHost.LoadFromManifest(manifestPath);
104: Console.WriteLine($"[Program.cs] LoadFromManifest loaded {loaded} fasls");
105: 
106: //////////////////////////////////////////////////////////////////////////////
107: // Tests
108: 
109: if (isTestMode) {
110:     Console.WriteLine($"[Program.cs] Running Base class tests...");
111:     // Test the creation to call base classes of random C# objects
112:     var Child = new Child();
113:     Child.Speak();
114:     Console.WriteLine("The next line should be the parent");
115:     DynamicBaseCaller.CallBaseMethod_VoidVoid(Child, "Speak");
116:     Console.WriteLine();
117: 
118:     var Calc = new AdvancedCalculator();
119:     Console.WriteLine(Calc.Add(1, "two"));
120:     Console.WriteLine("The next line should be the Base Calculator");
121:     Console.WriteLine(
122:         DynamicBaseCaller.CallBaseMethod(Calc, "Add",
123:             new Type[] { typeof(int), typeof(string) },
124:             new object[] { 3, "four" })
125:     );
126:     Console.WriteLine();
127: 
128:     Console.WriteLine("The next line should be the parent (again)");
129:     var ret = DynamicBaseCaller.CallBaseMethod(Child, "Speak", null, null);
130:     Console.WriteLine($"Value of ret: {ret}; is ret null? {ret == null}");
131:     if (ret != null) {
132:         Console.WriteLine($"Type of ret: {ret.GetType().FullName}");
133:     }
134:     Console.WriteLine();
135: 
136:     var func = DynamicBaseCaller.CallBaseMethodBuilder(Calc, "Add",
137:         new Type[] { typeof(int), typeof(string) });
138:     Console.WriteLine("The next 2 lines should be the Base Calculator (again)");
139:     Console.WriteLine(func(Calc, new object[] { 5, "six" }));
140:     Console.WriteLine(DynamicBaseCaller.CallFunc(func, Calc, 7, "eight"));
141: 
142:     Console.WriteLine($"[Program.cs] Running Lisp tests...");
143:     // FIXME: Not sure why this actually works without being specified in the
144:     // dungeon-slime-tests package
145:     DotclHost.Call("RUN-ALL-TESTS");
146: 
147:     Console.WriteLine($"[Program.cs] Running assembly-to-lispy tests...");
148:     DungeonSlime.AssemblyToLispyTest.RunTests();
149: 
150:     Console.WriteLine($"[Program.cs] Not running game; in --test mode.");
151:     return;
152: }
153: 
154: ///////////////////////////////////////////////////////////////////////////
155: // Main game
156: 
157: // MAKE-GAME (defined in main.lisp) returns a MonoGameCLOSProxy instance.
158: // FIXME: I'm really not sure why this works without being qualified with
159: // DUNGEON-SLIME: or ::
160: var gameObj = DotclHost.Call("MAKE-GAME");
161: 
162: if (gameObj is LispDotNetObject dno &&
163:     dno.Value is Microsoft.Xna.Framework.Game game) {
164:     Console.WriteLine($"[Program.cs] running game: {game.GetType().FullName}");
165:     // We invoke the (non-virtual) Run() method on this object directly, rather than casting this
166:     // to Game, which would run that specific Run() method
167:     var runMethod = game.GetType().GetMethod("Run",
168:         System.Reflection.BindingFlags.Public |
169:         System.Reflection.BindingFlags.Instance |
170:         System.Reflection.BindingFlags.DeclaredOnly); // Non-virtual
171:     if (runMethod != null) {
172:         Console.WriteLine("[Program.cs] Executing actual object's shadowed Run()");
173:         try {
174:             runMethod.Invoke(game, null);
175:         } catch (System.Reflection.TargetInvocationException ex) {
176:             Console.WriteLine($"[Program.cs] Got exception: {ex}");
177:             throw ex.InnerException ?? ex;
178:         // TODO: Catch other exceptions
179:         }
180:     } else {
181:         // There was no shadowed Run() so just use the one on the Game
182:         // TODO: Catch exceptions
183:         game.Run();
184:     }
185:     // Not necessary if the process ends after this, but if it doesn't:
186:     game.Dispose();
187: } else {
188:     throw new InvalidOperationException(
189:         $"MAKE-GAME returned unexpected: {gameObj?.GetType().Name}");
190: }

(End of file - total 190 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 223.5s)

_Thinking:_

Now let me look at the cspackages directory more carefully, the test harness, and the other key files to understand the full picture. Let me also check the packages.lisp and utils.lisp files which are dependencies.


**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/packages.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/packages.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;;
3: ;;; Define all the packages and exports of this software
4: 
5: (format *error-output* "[packages.lisp] Loading beginning.~%" *package*)
6: (in-package :cl-user)
7: (format *error-output* "[packages.lisp] Defining packages in package ~S~%" *package*)
8: 
9: ;; Pre-declare empty C# packages so local-nicknames doesn't crash
10: ;; Recreate this with: fgrep -h in-package cspackages/* | fgrep -v cl-user | sed 's/in-/def/'
11: (defpackage :microsoft-xna-framework-audio-sound-effect-instance)
12: (defpackage :microsoft-xna-framework-audio-sound-effect)
13: (defpackage :microsoft-xna-framework-audio-sound-state)
14: (defpackage :microsoft-xna-framework-color)
15: (defpackage :microsoft-xna-framework-content-content-manager)
16: (defpackage :microsoft-xna-framework-game)
17: (defpackage :microsoft-xna-framework-game-time)
18: (defpackage :microsoft-xna-framework-game-window)
19: (defpackage :microsoft-xna-framework-graphics-device-manager)
20: (defpackage :microsoft-xna-framework-graphics-graphics-device)
21: (defpackage :microsoft-xna-framework-graphics-presentation-parameters)
22: (defpackage :microsoft-xna-framework-graphics-sampler-state)
23: (defpackage :microsoft-xna-framework-graphics-sprite-batch)
24: (defpackage :microsoft-xna-framework-graphics-sprite-effects)
25: (defpackage :microsoft-xna-framework-graphics-sprite-font)
26: (defpackage :microsoft-xna-framework-graphics-sprite-sort-mode)
27: (defpackage :microsoft-xna-framework-input-buttons)
28: (defpackage :microsoft-xna-framework-input-button-state)
29: (defpackage :microsoft-xna-framework-input-game-pad-d-pad)
30: (defpackage :microsoft-xna-framework-input-game-pad)
31: (defpackage :microsoft-xna-framework-input-game-pad-state)
32: (defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks)
33: (defpackage :microsoft-xna-framework-input-game-pad-triggers)
34: (defpackage :microsoft-xna-framework-input-keyboard)
35: (defpackage :microsoft-xna-framework-input-keyboard-state)
36: (defpackage :microsoft-xna-framework-input-keys)
37: (defpackage :microsoft-xna-framework-input-mouse)
38: (defpackage :microsoft-xna-framework-input-mouse-state)
39: (defpackage :microsoft-xna-framework-media-media-player)
40: (defpackage :microsoft-xna-framework-media-song)
41: (defpackage :microsoft-xna-framework-player-index)
42: (defpackage :microsoft-xna-framework-point)
43: (defpackage :microsoft-xna-framework-rectangle)
44: (defpackage :microsoft-xna-framework-vector2)
45: (defpackage :system-app-domain)
46: (defpackage :system-boolean)
47: (defpackage :system-console)
48: (defpackage :system-convert)
49: (defpackage :system-io-path)
50: (defpackage :system-object)
51: (defpackage :system-single)
52: (defpackage :system-double)
53: (defpackage :system-reflection-member-info)
54: (defpackage :system-time-span)
55: (defpackage :system-type)
56: (defpackage :system-uri-kind)
57: (defpackage :system-uri)
58: ;; Some special packages
59: (defpackage :system-object
60:   (:export #:get-type))
61: (defpackage :system-type
62:   (:export #:full-name))
63: ;; Additional manually added packages
64: (defpackage :anaphora)
65: 
66: (defpackage :utils
67:   (:use :cl)
68:   (:local-nicknames
69:     (:path :system-io-path)
70:     (:app-domain :system-app-domain))
71:   (:export #:safe-read-form-from-file
72:             #:+base-directory+
73:             #:format-red
74:             #:path-combine
75:             #:file-exists-and-readable-p
76:             #:qualify-path
77:             #:csharp-overload-not-found
78:             #:csharp-overload-package-name
79:             #:csharp-overload-class-name
80:             #:csharp-overload-method-name
81:             #:csharp-overload-supplied-args))
82: 
83: (defpackage :monoutils
84:   (:use :cl)
85:   (:local-nicknames
86:     (:object :system-object)
87:     (:type :system-type))
88:   (:export #:add3
89:             #:dotnet-p
90:             #:boxed-dotnet-p
91:             #:get-type
92:             #:get-type-full-name))
93: 
94: (defpackage :csharp
95:   (:use :cl)
96:   (:export #:timespan<-milliseconds
97:             #:timespan->milliseconds
98:             #:ts+
99:             #:ts-
100:             #:ts>
101:             #:ts>=
102:             #:ts<=))
103: 
104: (defpackage :mg-classes
105:   (:use :cl)
106:   (:local-nicknames
107:     (:v2 :microsoft-xna-framework-vector2)
108:     (:rect :microsoft-xna-framework-rectangle)
109:     (:game-time :microsoft-xna-framework-game-time))
110:   (:export 
111:             #:x
112:             #:y
113:             #:width
114:             #:height
115:             #:°2R
116:   ))
117: 
118: (defpackage :game-repl
119:   (:use :cl)
120:   (:export #:run-repl
121:             #:start-background-repl
122:             #:kill-background-repl
123:             #:*no-lisp-repl*
124:             #:*background-repl*))
125: 
126: (defpackage :assembly-package-generator
127:   (:use :cl)
128:   (:export #:run-assembly-package-generator
129:             #:generate-assembly-packages
130:             #:camel-to-kebab
131:             #:split-string))
132: 
133: (defpackage :clr-generic
134:   (:use :cl)
135:   (:export #:defc#generic
136:             #:defc#method))
137: 
138: (defpackage :dungeon-slime
139:   (:use :cl 
140:         :utils :mg-classes :monoutils :csharp :game-repl :clr-generic)
141:   (:local-nicknames 
142:     (:v2 :microsoft-xna-framework-vector2)
143:     (:ts :system-time-span)
144:     (:key :microsoft-xna-framework-input-keys)
145:     (:kb :microsoft-xna-framework-input-keyboard)
146:     (:kb-state :microsoft-xna-framework-input-keyboard-state)
147:     (:gp :microsoft-xna-framework-input-game-pad)
148:     (:gp-state :microsoft-xna-framework-input-game-pad-state)
149:     (:ms :microsoft-xna-framework-input-mouse-state)
150:     (:gp-ts :microsoft-xna-framework-input-game-pad-thumb-sticks)
151:     (:gp-trig :microsoft-xna-framework-input-game-pad-triggers)
152:     (:mouse :microsoft-xna-framework-input-mouse)
153:     (:button :microsoft-xna-framework-input-buttons)
154:     (:bs :microsoft-xna-framework-input-button-state)
155:     (:pi :microsoft-xna-framework-player-index)
156:     (:color :microsoft-xna-framework-color)
157:     (:sprite-effects :microsoft-xna-framework-graphics-sprite-effects)
158:     (:sprite-sort-mode :microsoft-xna-framework-graphics-sprite-sort-mode)
159:     (:sampler-state :microsoft-xna-framework-graphics-sampler-state)
160:     (:rect :microsoft-xna-framework-rectangle)
161:     (:gd :microsoft-xna-framework-graphics-graphics-device)
162:     (:pp :microsoft-xna-framework-graphics-presentation-parameters)
163:     (:point :microsoft-xna-framework-point)
164:     (:sound-effect :microsoft-xna-framework-audio-sound-effect)
165:     (:sei :microsoft-xna-framework-audio-sound-effect-instance)
166:     (:sound-state :microsoft-xna-framework-audio-sound-state)
167:     (:media-player :microsoft-xna-framework-media-media-player)
168:     (:song :microsoft-xna-framework-media-song)
169:     (:game-time :microsoft-xna-framework-game-time)
170:     (:game :microsoft-xna-framework-game)
171:     (:window :microsoft-xna-framework-game-window)
172:     (:app-domain :system-app-domain)
173:     (:sprite-batch :microsoft-xna-framework-graphics-sprite-batch)
174:     (:gdm :microsoft-xna-framework-graphics-device-manager)
175:     (:cm :microsoft-xna-framework-content-content-manager)
176:   )
177:   (:export 
178:     ;; Constants
179:     #:+window-defaults+ #:+content-default+ #:+false+
180:     #:+atlas-texture+ #:+atlas-filename+
181:     ;; Globals
182:     #:*core* #:*game* #:*cs-game*
183:     #:color-cycle-period
184:     ;; Make Game
185:     #:make-game
186:     ;; Classes and Methods
187:     #:core #:monogame #:window-info #:graphics #:graphics-device #:sprite-batch #:content #:audio-controller
188:     #:initialize #:load-content #:update #:draw #:dispose #:begin-run #:end-run #:run
189:     #:update-audio #:play-sound-effect #:play-song #:pause-audio #:resume-audio #:toggle-mute #:adjust-volume #:dispose-audio
190:     #:game-1 #:slime #:bat #:bat-pos #:bat-vel
191:      #:score #:score-text #:score-font #:score-text-position #:score-text-origin
192:      #:circle #:circle-intersects
193:     #:circle-left #:circle-right #:circle-top #:circle-bottom
194:     #:pulse-color
195:     #:animation #:animated-sprite
196:     #:sprite #:sprite-center-origin #:sprite-draw
197:     #:texture-atlas #:ta-add-region #:ta-get-region #:ta-remove-region #:ta-clear
198:     #:ta-create-sprite #:ta-create-animated-sprite #:ta-add-animation #:ta-get-animation
199:     #:ta-remove-animation #:ta-from-file
200:     #:texture-region #:tr-draw
201:       #:load-font #:measure-string #:draw-string))
202: 
203: (defpackage :dungeon-slime-tests
204:   (:use :cl :dungeon-slime :assembly-package-generator :csharp :utils :clr-generic :monoutils :mg-classes)
205:   (:local-nicknames
206:     (:v2 :microsoft-xna-framework-vector2)
207:     (:rect :microsoft-xna-framework-rectangle)
208:     (:single :system-single)
209:     (:ts :system-time-span)
210:     (:sprite-batch :microsoft-xna-framework-graphics-sprite-batch))
211:   (:export
212:     #:run-all-tests
213:     #:test-clr-defmethods))

(End of file - total 213 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/utils.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/utils.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;; Utilities package
3: 
4: (in-package :utils)
5: 
6: (defun safe-read-form-from-file (filepath)
7:   "To safely load (or read) a single form from a file in Common Lisp,
8:    you must prevent read-time code execution, isolate symbol resolution,
9:    and handle potential errors or end-of-file situations gracefully."
10:   (with-open-file (stream filepath :direction :input)
11:     (let ((*read-eval* nil)                    ; 1. Disable read-time execution (#.)
12:           (*readtable* (copy-readtable nil))   ; 2. Use the standard standard readtable
13:           (*package* (find-package :cl-user))) ; 3. Control package context
14:       (read stream nil :eof))))                ; 4. Graceful EOF handling
15: 
16: (defconstant +base-directory+
17:   (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "get_BaseDirectory")
18:   "Get the C# base directory of this current executable")
19: 
20: ;; I have no idea why, but this stopped working...?
21: ;; %Unhandled exception. System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation.
22: ;;  ---> System.MissingMethodException: Method 'System.IO.Path.Combine' not found.
23: 
24: #|
25: (defun path-combine (part1 part2 &optional (part3 nil part3-p) (part4 nil part4-p))
26:   "Calls the C# Path Combining logic with 2-4 parameters."
27:   (format *error-output* "[path-combine] part1 = ~A, part2 = ~A, part3 = ~A, part4 = ~A, part3-p = ~A, part4-p = ~A%"
28:           part1 part2 part3 part4 part3-p part4-p)
29:   (cond
30:    (part4-p
31:     ;; Could use combine-string-string-string-string too
32:     (path:combine part1 part2 part3 part4))
33:    (part3-p
34:     (path:combine part1 part2 part3))
35:    (t
36:     (path:combine part1 part2))))
37: |#
38: 
39: ;; UIOP version
40: (defun path-combine (part1 part2 &optional (part3 nil part3-p) (part4 nil part4-p))
41:   "Calls the UIOP Path Combining logic with 2-4 parameters."
42:   (format *error-output* "[path-combine] part1 = ~A, part2 = ~A, part3 = ~A, part4 = ~A, part3-p = ~A, part4-p = ~A~%"
43:           part1 part2 part3 part4 part3-p part4-p)
44:   (cond
45:    (part4-p
46:     (uiop:subpathname*  part1 part2 part3 part4))
47:    (part3-p
48:     (uiop:subpathname*  part1 part2 part3))
49:    (t
50:     (uiop:subpathname*  part1 part2))))
51: 
52: #|
53: (defun file-exists-and-readable-p (filename)
54:   "Returns T if the file exists and can be successfully opened for reading."
55:   (let ((path (probe-file filename)))
56:     (when path
57:       ;; If probe-file found it, try to actually open it to test readability
58:       (handler-case
59:         (with-open-file (stream path :direction :input) t) ; Successfully opened! Return T
60:         (file-error () nil))))) ; Catch OS permission/read errors and return NIL
61: |#
62: (defun file-exists-and-readable-p (filename)
63:   "Returns T if the file exists and can be successfully opened for reading."
64:   (let ((it (probe-file filename)))
65:     (when it
66:       ;; If probe-file found it, try to actually open it to test readability
67:       (handler-case
68:         (with-open-file (stream it :direction :input) t) ; Successfully opened! Return T
69:         (file-error () nil))))) ; Catch OS permission/read errors and return NIL
70: 
71: (defun qualify-path (filename)
72:   "Checks if we can read filename as it is, and returns it. Otherwise,
73:    checks if it can be read after combining with +base-directory+ and then
74:    will return that. Otherwise, just returns the original filename."
75:   ;; This is necessary because when we (load "load-repl.lisp") to load the
76:   ;; entire game from the REPL, DotCL doesn't actually set the
77:   ;; +base-directory+ to a reasonable setting:
78:   ;; [texture-atlas.lisp] +base-directory+ =
79:   ;;   /home/dfields/.dotnet/tools/.store/dotcl/0.1.8/dotcl.linux-x64/0.1.8/tools/net10.0/linux-x64/
80:   ; (format *error-output* "[qualify-path] filename = ~A, +base-directory+ = ~A~%" filename +base-directory+)
81:   (let ((combined (path-combine +base-directory+ filename)))
82:     ; (format *error-output* "[qualify-path] combined = ~A~%" combined)
83:     (cond
84:       ((file-exists-and-readable-p filename)
85:       ;  (format *error-output* "[qualify-path] exists~A")
86:        filename)
87:       ((file-exists-and-readable-p combined)
88:       ;  (format *error-output* "[qualify-path] exists with +base-directory+ = ~S~A" combined)
89:        (uiop:native-namestring combined))
90:       (t
91:       ;  (format *error-output* "[qualify-path] neither~A")
92:        filename))))
93: 
94: (defun format-red (destination control-string &rest args)
95:   "Formats output wrapped in ANSI RED color escape sequences."
96:   (if (null destination)
97:     (let ((formatted (apply #'format nil control-string args)))
98:       (format nil "~C[31m~A~C[0m" #\Esc formatted #\Esc))
99:     (progn
100:       (format destination "~C[31m" #\Esc)
101:       (apply #'format destination control-string args)
102:       (format destination "~C[0m" #\Esc))))
103: 
104: (defun print-gf-methods (gf-name)
105:   "Prints information about a DotCL Generic Function, including docstrings."
106: 
107:   (when (not (fboundp gf-name))
108:     (format *error-output* "~&Generic Function ~S not yet defined.~%" gf-name)
109:     (return-from print-gf-methods))
110: 
111:   (let* ((gf (symbol-function gf-name))
112:          ;; Retrieve the documentation string of the generic function if it exists.
113:          (gf-doc (documentation gf 'function))
114:          (methods (dotcl-mop:generic-function-methods gf)))
115:     (format *error-output* "~&Generic Function ~S has ~D method(s):~%" gf-name (length methods))
116:     (when gf-doc
117:       (format *error-output* "  Docstring: ~S~%" gf-doc))
118:     (dolist (m methods)
119:       (let ((qualifiers (dotcl-mop:method-qualifiers m))
120:             (specializers (mapcar (lambda (spec)
121:                                     (if (typep spec 'class)
122:                                         (class-name spec)
123:                                         spec))
124:                                   (dotcl-mop:method-specializers m)))
125:             ;; Retrieve the documentation string of the method object.
126:             (m-doc (documentation m t)))
127:         (format *error-output* "  Method qualifiers: ~A, Specializers: ~A~%" 
128:                 qualifiers specializers)
129:         (when m-doc
130:           (format *error-output* "    Doc: ~S~%" m-doc))))))
131: 
132: ;;; Condition signaled when a generated C# wrapper function's dispatcher
133: ;;; fails to find a matching method overload at runtime.
134: (cl:define-condition csharp-overload-not-found (cl:error)
135:   ((package-name :initarg :package-name :reader csharp-overload-package-name)
136:    (class-name :initarg :class-name :reader csharp-overload-class-name)
137:    (method-name :initarg :method-name :reader csharp-overload-method-name)
138:    (supplied-args :initarg :supplied-args :reader csharp-overload-supplied-args))
139:   (:report (cl:lambda (condition stream)
140:              (cl:format stream "No matching C# overload found for method ~A.~A in package ~A with supplied arguments:~%~{  ~S: ~S~%~}"
141:                         (csharp-overload-class-name condition)
142:                         (csharp-overload-method-name condition)
143:                         (csharp-overload-package-name condition)
144:                         (csharp-overload-supplied-args condition)))))

(End of file - total 144 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/monoutils.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/monoutils.lisp</path>
<type>file</type>
<content>
1: ;;; monoutils.lisp — Package definition and shims for custom C# utils.
2: ;;;
3: 
4: (in-package :monoutils)
5: 
6: (format *error-output* "[monoutils.lisp] Loading in package ~S~%" *package*)
7: 
8: (setf (documentation 'monoutils:dotnet-p 'function)
9:   "Returns T if this is a Lisp-wrapped C#/CLR object")
10: 
11: (setf (documentation 'monoutils:boxed-dotnet-p 'function)
12:   "Returns T if this is a Lisp Wrapped & Boxed (i.e., type hinted) C#/CLR object.")
13: 
14: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
15: ;; Type helper functions
16: 
17: ;; In C#, calling GetType() on a string can fail for types in external assemblies unless they  
18: ;; are assembly-qualified. I created the DynamicBaseCaller.GetType() method to get
19: ;; around that.
20: ;; TODO: Memoize this function, but only if the type was resolved and it
21: ;;       was a string input.
22: (defun get-type (obj-or-string)
23:   "Gets the C# Type object of the specified object, or nil if none. If the
24:    obj is a Lisp string, it tries to resolve the C# Type with that name."
25:   ;; TODO: Check if obj is a DotNet object in the future
26:   (handler-case
27:     (if (stringp obj-or-string)
28:       ;; Get the Type from C# using dotcl's built-in resolver.
29:       (dotnet:resolve-type obj-or-string)
30:       ;; Get the type from the object itself.
31:       ;; This call may fail if not a C# object or maybe if nil.
32:       (object:get-type obj-or-string))
33:     (error () nil)))
34: 
35: (defun get-type-full-name (obj)
36:   "Gets the C# string Full Name of the specified object, or nil if none.
37:    Note, if you pass in a C# Type object, it will probably tell you the name
38:    System.Type. :)"
39:   (let ((typ (get-type obj)))
40:     (when typ
41:       (handler-case
42:         (type:full-name typ)
43:         (error () nil)))))
44: 
45: (eval-when (:load-toplevel :execute)
46:   (format *error-output* "[monoutils.lisp] Initializing MonoUtilsRegistrar...~%")
47:   (dotnet:static "MonoUtilsRegistrar" "Initialize"))

(End of file - total 47 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-io-path.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-io-path.lisp</path>
<type>file</type>
<content>
1: ;;; Generated automatically. Do not edit.
2: ;;; Class: System.IO.Path
3: ;;; Generator Version: 18
4: ;;; Creation Date: 2026-07-02T19:02:14Z
5: 
6: (cl:in-package :cl-user)
7: 
8: (cl:defpackage :system-io-path
9:   (:use :cl)
10:   (:export
11:    #:<type>
12:    #:<type-str>
13:    #:<creation>
14:    #:<version>
15:    #:alt-directory-separator-char
16:    #:directory-separator-char
17:    #:invalid-path-chars
18:    #:path-separator
19:    #:volume-separator-char
20:    #:change-extension
21:    #:combine
22:    #:combine-string]
23:    #:combine-string-string
24:    #:combine-string-string-string
25:    #:combine-string-string-string-string
26:    #:ends-in-directory-separator
27:    #:ends-in-directory-separator-char]
28:    #:ends-in-directory-separator-string
29:    #:exists
30:    #:get-directory-name
31:    #:get-directory-name-string
32:    #:get-directory-name-char]
33:    #:get-extension
34:    #:get-extension-string
35:    #:get-extension-char]
36:    #:get-file-name
37:    #:get-file-name-string
38:    #:get-file-name-char]
39:    #:get-file-name-without-extension
40:    #:get-file-name-without-extension-string
41:    #:get-file-name-without-extension-char]
42:    #:get-full-path
43:    #:get-full-path-string
44:    #:get-full-path-string-string
45:    #:get-invalid-file-name-chars
46:    #:get-invalid-path-chars
47:    #:get-path-root
48:    #:get-path-root-string
49:    #:get-path-root-char]
50:    #:get-random-file-name
51:    #:get-relative-path
52:    #:get-temp-file-name
53:    #:get-temp-path
54:    #:has-extension
55:    #:has-extension-string
56:    #:has-extension-char]
57:    #:path-fully-qualified?
58:    #:path-fully-qualified?-string
59:    #:path-fully-qualified?-char]
60:    #:path-rooted?
61:    #:path-rooted?-string
62:    #:path-rooted?-char]
63:    #:join
64:    #:join-string]
65:    #:join-char]-char]
66:    #:join-string-string
67:    #:join-char]-char]-char]
68:    #:join-string-string-string
69:    #:join-char]-char]-char]-char]
70:    #:join-string-string-string-string
71:    #:trim-ending-directory-separator
72:    #:trim-ending-directory-separator-string
73:    #:trim-ending-directory-separator-char]
74:   ))
75: 
76: (cl:in-package :system-io-path)
77: 
78: (cl:defconstant <type> (monoutils:get-type "System.IO.Path"))
79: (cl:defconstant <type-str> "System.IO.Path")
80: (cl:defconstant <creation> "2026-07-02T19:02:14Z")
81: (cl:defconstant <version> 18)
82: 
83: ;; Register C# Type with CLOS
84: (cl:eval-when (:compile-toplevel :load-toplevel :execute)
85:   (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
86:                  (dotnet:resolve-type "System.IO.Path")))
87: 
88: (cl:define-symbol-macro alt-directory-separator-char (dotnet:static <type-str> "AltDirectorySeparatorChar"))
89: (cl:setf (cl:documentation (cl:quote alt-directory-separator-char) (cl:quote cl:variable)) "Provides a platform-specific alternate character used to separate directory levels in a path string that reflects a hierarchical file system organization.")
90: 
91: (cl:define-symbol-macro directory-separator-char (dotnet:static <type-str> "DirectorySeparatorChar"))
92: (cl:setf (cl:documentation (cl:quote directory-separator-char) (cl:quote cl:variable)) "Provides a platform-specific character used to separate directory levels in a path string that reflects a hierarchical file system organization.")
93: 
94: (cl:define-symbol-macro invalid-path-chars (dotnet:static <type-str> "InvalidPathChars"))
95: (cl:setf (cl:documentation (cl:quote invalid-path-chars) (cl:quote cl:variable)) "Provides a platform-specific array of characters that cannot be specified in path string arguments passed to members of the System.IO.Path class.")
96: 
97: (cl:define-symbol-macro path-separator (dotnet:static <type-str> "PathSeparator"))
98: (cl:setf (cl:documentation (cl:quote path-separator) (cl:quote cl:variable)) "A platform-specific separator character used to separate path strings in environment variables.")
99: 
100: (cl:define-symbol-macro volume-separator-char (dotnet:static <type-str> "VolumeSeparatorChar"))
101: (cl:setf (cl:documentation (cl:quote volume-separator-char) (cl:quote cl:variable)) "Provides a platform-specific volume separator character.")
102: 
103: (cl:defun change-extension (path extension)
104:   "Summary: Changes the extension of a path string.
105: Returns: The modified path information. On Windows-based desktop platforms, if path is or an empty string (\"\"), the path information is returned unmodified. If extension is , the returned string contains the specified path with its extension removed. If path has no extension, and extension is not , the returned path string contains extension appended to the end of path.
106: Parameters:
107:   - path (System.String): The path information to modify.
108:   - extension (System.String): The new extension (with or without a leading period). Specify to remove an existing extension from path.
109: "
110:   (dotnet:static <type-str> "ChangeExtension" (cl:the (dotnet "System.String") path) (cl:the (dotnet "System.String") extension)))
111: 
112: (cl:defun combine (paths cl:&optional (path2 cl:nil supplied-path2) (path3 cl:nil supplied-path3) (path4 cl:nil supplied-path4))
113:   "Master wrapper for System.IO.Path.Combine overloads. Dispatches at runtime."
114:   (cl:cond
115:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) supplied-path4 (cl:stringp path4))
116:      (dotnet:static <type-str> "Combine" paths path2 path3 path4))
117:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) (cl:not supplied-path4))
118:      (dotnet:static <type-str> "Combine" paths path2 path3))
119:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) (cl:not supplied-path3) (cl:not supplied-path4))
120:      (dotnet:static <type-str> "Combine" paths path2))
121:     ((cl:and (cl:or (cl:null paths) (monoutils:dotnet-p paths)) (cl:not supplied-path2) (cl:not supplied-path3) (cl:not supplied-path4))
122:      (dotnet:static <type-str> "Combine" paths))
123:     (cl:t (cl:error 'utils:csharp-overload-not-found
124:                     :package-name "SYSTEM-IO-PATH"
125:                     :class-name <type-str>
126:                     :method-name "Combine"
127:                     :supplied-args (cl:append (cl:list :paths paths) (cl:when supplied-path2 (cl:list :path2 path2)) (cl:when supplied-path3 (cl:list :path3 path3)) (cl:when supplied-path4 (cl:list :path4 path4)))))))
128: 
129: (cl:defun combine-string] (paths)
130:   "Calls System.IO.Path.Combine Combine(String]) -> String. Summary: Combines a span of strings into a path.
131: Returns: The combined paths.
132: Parameters:
133:   - paths (System.ReadOnlySpan`1[System.String]): A span of parts of the path.
134: "
135:   (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.ReadOnlySpan`1[System.String]") paths)))
136: 
137: (cl:defun combine-string-string (path1 path2)
138:   "Calls System.IO.Path.Combine Combine(String, String) -> String. Summary: Combines two strings into a path.
139: Returns: The combined paths. If one of the specified paths is a zero-length string, this method returns the other path. If path2 contains an absolute path, this method returns path2.
140: Parameters:
141:   - path1 (System.String): The first path to combine.
142:   - path2 (System.String): The second path to combine.
143: "
144:   (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2)))
145: 
146: (cl:defun combine-string-string-string (path1 path2 path3)
147:   "Calls System.IO.Path.Combine Combine(String, String, String) -> String. Summary: Combines three strings into a path.
148: Returns: The combined paths.
149: Parameters:
150:   - path1 (System.String): The first path to combine.
151:   - path2 (System.String): The second path to combine.
152:   - path3 (System.String): The third path to combine.
153: "
154:   (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3)))
155: 
156: (cl:defun combine-string-string-string-string (path1 path2 path3 path4)
157:   "Calls System.IO.Path.Combine Combine(String, String, String, String) -> String. Summary: Combines four strings into a path.
158: Returns: The combined paths.
159: Parameters:
160:   - path1 (System.String): The first path to combine.
161:   - path2 (System.String): The second path to combine.
162:   - path3 (System.String): The third path to combine.
163:   - path4 (System.String): The fourth path to combine.
164: "
165:   (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3) (cl:the (dotnet "System.String") path4)))
166: 
167: ;; Note: System.IO.Path.Combine also has the following overloads with special
168: ;; parameter types (ref, out, params, or defaults) that are not
169: ;; yet supported:
170: ;;   Combine(params String[]) -> String
171: 
172: (cl:defun ends-in-directory-separator (path)
173:   "Master wrapper for System.IO.Path.EndsInDirectorySeparator overloads. Dispatches at runtime."
174:   (cl:cond
175:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
176:      (dotnet:static <type-str> "EndsInDirectorySeparator" path))
177:     ((cl:and (cl:stringp path))
178:      (dotnet:static <type-str> "EndsInDirectorySeparator" path))
179:     (cl:t (cl:error 'utils:csharp-overload-not-found
180:                     :package-name "SYSTEM-IO-PATH"
181:                     :class-name <type-str>
182:                     :method-name "EndsInDirectorySeparator"
183:                     :supplied-args (cl:append (cl:list :path path))))))
184: 
185: (cl:defun ends-in-directory-separator-char] (path)
186:   "Calls System.IO.Path.EndsInDirectorySeparator EndsInDirectorySeparator(Char]) -> Boolean. Summary: Returns a value that indicates whether the path, specified as a read-only span, ends in a directory separator.
187: Returns: if the path ends in a directory separator; otherwise, .
188: Parameters:
189:   - path (System.ReadOnlySpan`1[System.Char]): The path to analyze.
190: "
191:   (dotnet:static <type-str> "EndsInDirectorySeparator" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
192: 
193: (cl:defun ends-in-directory-separator-string (path)
194:   "Calls System.IO.Path.EndsInDirectorySeparator EndsInDirectorySeparator(String) -> Boolean. Summary: Returns a value that indicates whether the specified path ends in a directory separator.
195: Returns: if the path ends in a directory separator; otherwise, .
196: Parameters:
197:   - path (System.String): The path to analyze.
198: "
199:   (dotnet:static <type-str> "EndsInDirectorySeparator" (cl:the (dotnet "System.String") path)))
200: 
201: (cl:defun exists (path)
202:   "Summary: Determines whether the specified file or directory exists.
203: Returns: if the caller has the required permissions and path contains the name of an existing file or directory; otherwise, . This method also returns if path is , an invalid path, or a zero-length string. If the caller does not have sufficient permissions to read the specified path, no exception is thrown and the method returns regardless of the existence of path.
204: Parameters:
205:   - path (System.String): The path to check
206: "
207:   (dotnet:static <type-str> "Exists" (cl:the (dotnet "System.String") path)))
208: 
209: (cl:defun get-directory-name (path)
210:   "Master wrapper for System.IO.Path.GetDirectoryName overloads. Dispatches at runtime."
211:   (cl:cond
212:     ((cl:and (cl:stringp path))
213:      (dotnet:static <type-str> "GetDirectoryName" path))
214:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
215:      (dotnet:static <type-str> "GetDirectoryName" path))
216:     (cl:t (cl:error 'utils:csharp-overload-not-found
217:                     :package-name "SYSTEM-IO-PATH"
218:                     :class-name <type-str>
219:                     :method-name "GetDirectoryName"
220:                     :supplied-args (cl:append (cl:list :path path))))))
221: 
222: (cl:defun get-directory-name-string (path)
223:   "Calls System.IO.Path.GetDirectoryName GetDirectoryName(String) -> String. Summary: Returns the directory information for the specified path.
224: Returns: Directory information for path, or if path denotes a root directory or is null. Returns System.String.Empty if path does not contain directory information.
225: Parameters:
226:   - path (System.String): The path of a file or directory.
227: "
228:   (dotnet:static <type-str> "GetDirectoryName" (cl:the (dotnet "System.String") path)))
229: 
230: (cl:defun get-directory-name-char] (path)
231:   "Calls System.IO.Path.GetDirectoryName GetDirectoryName(Char]) -> Char]. Summary: Returns the directory information for the specified path represented by a character span.
232: Returns: Directory information for path, or an empty span if path is , an empty span, or a root (such as \\, C:, or \\\\server\\share).
233: Parameters:
234:   - path (System.ReadOnlySpan`1[System.Char]): The path to retrieve the directory information from.
235: "
236:   (dotnet:static <type-str> "GetDirectoryName" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
237: 
238: (cl:defun get-extension (path)
239:   "Master wrapper for System.IO.Path.GetExtension overloads. Dispatches at runtime."
240:   (cl:cond
241:     ((cl:and (cl:stringp path))
242:      (dotnet:static <type-str> "GetExtension" path))
243:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
244:      (dotnet:static <type-str> "GetExtension" path))
245:     (cl:t (cl:error 'utils:csharp-overload-not-found
246:                     :package-name "SYSTEM-IO-PATH"
247:                     :class-name <type-str>
248:                     :method-name "GetExtension"
249:                     :supplied-args (cl:append (cl:list :path path))))))
250: 
251: (cl:defun get-extension-string (path)
252:   "Calls System.IO.Path.GetExtension GetExtension(String) -> String. Summary: Returns the extension (including the period \".\") of the specified path string.
253: Returns: The extension of the specified path (including the period \".\"), or , or System.String.Empty. If path is , System.IO.Path.GetExtension(System.String) returns . If path does not have extension information, System.IO.Path.GetExtension(System.String) returns System.String.Empty.
254: Parameters:
255:   - path (System.String): The path string from which to get the extension.
256: "
257:   (dotnet:static <type-str> "GetExtension" (cl:the (dotnet "System.String") path)))
258: 
259: (cl:defun get-extension-char] (path)
260:   "Calls System.IO.Path.GetExtension GetExtension(Char]) -> Char]. Summary: Returns the extension of a file path that is represented by a read-only character span.
261: Returns: The extension of the specified path (including the period, \".\"), or System.ReadOnlySpan`1.Empty if path does not have extension information.
262: Parameters:
263:   - path (System.ReadOnlySpan`1[System.Char]): The file path from which to get the extension.
264: "
265:   (dotnet:static <type-str> "GetExtension" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
266: 
267: (cl:defun get-file-name (path)
268:   "Master wrapper for System.IO.Path.GetFileName overloads. Dispatches at runtime."
269:   (cl:cond
270:     ((cl:and (cl:stringp path))
271:      (dotnet:static <type-str> "GetFileName" path))
272:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
273:      (dotnet:static <type-str> "GetFileName" path))
274:     (cl:t (cl:error 'utils:csharp-overload-not-found
275:                     :package-name "SYSTEM-IO-PATH"
276:                     :class-name <type-str>
277:                     :method-name "GetFileName"
278:                     :supplied-args (cl:append (cl:list :path path))))))
279: 
280: (cl:defun get-file-name-string (path)
281:   "Calls System.IO.Path.GetFileName GetFileName(String) -> String. Summary: Returns the file name and extension of the specified path string.
282: Returns: The characters after the last directory separator character in path. If the last character of path is a directory or volume separator character, this method returns System.String.Empty. If path is , this method returns .
283: Parameters:
284:   - path (System.String): The path string from which to obtain the file name and extension.
285: "
286:   (dotnet:static <type-str> "GetFileName" (cl:the (dotnet "System.String") path)))
287: 
288: (cl:defun get-file-name-char] (path)
289:   "Calls System.IO.Path.GetFileName GetFileName(Char]) -> Char]. Summary: Returns the file name and extension of a file path that is represented by a read-only character span.
290: Returns: The characters after the last directory separator character in path.
291: Parameters:
292:   - path (System.ReadOnlySpan`1[System.Char]): A read-only span that contains the path from which to obtain the file name and extension.
293: "
294:   (dotnet:static <type-str> "GetFileName" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
295: 
296: (cl:defun get-file-name-without-extension (path)
297:   "Master wrapper for System.IO.Path.GetFileNameWithoutExtension overloads. Dispatches at runtime."
298:   (cl:cond
299:     ((cl:and (cl:stringp path))
300:      (dotnet:static <type-str> "GetFileNameWithoutExtension" path))
301:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
302:      (dotnet:static <type-str> "GetFileNameWithoutExtension" path))
303:     (cl:t (cl:error 'utils:csharp-overload-not-found
304:                     :package-name "SYSTEM-IO-PATH"
305:                     :class-name <type-str>
306:                     :method-name "GetFileNameWithoutExtension"
307:                     :supplied-args (cl:append (cl:list :path path))))))
308: 
309: (cl:defun get-file-name-without-extension-string (path)
310:   "Calls System.IO.Path.GetFileNameWithoutExtension GetFileNameWithoutExtension(String) -> String. Summary: Returns the file name of the specified path string without the extension.
311: Returns: The string returned by System.IO.Path.GetFileName(System.ReadOnlySpan{System.Char}), minus the last period (.) and all characters following it.
312: Parameters:
313:   - path (System.String): The path of the file.
314: "
315:   (dotnet:static <type-str> "GetFileNameWithoutExtension" (cl:the (dotnet "System.String") path)))
316: 
317: (cl:defun get-file-name-without-extension-char] (path)
318:   "Calls System.IO.Path.GetFileNameWithoutExtension GetFileNameWithoutExtension(Char]) -> Char]. Summary: Returns the file name without the extension of a file path that is represented by a read-only character span.
319: Returns: The characters in the read-only span returned by System.IO.Path.GetFileName(System.ReadOnlySpan{System.Char}), minus the last period (.) and all characters following it.
320: Parameters:
321:   - path (System.ReadOnlySpan`1[System.Char]): A read-only span that contains the path from which to obtain the file name without the extension.
322: "
323:   (dotnet:static <type-str> "GetFileNameWithoutExtension" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
324: 
325: (cl:defun get-full-path (path cl:&optional (base-path cl:nil supplied-base-path))
326:   "Master wrapper for System.IO.Path.GetFullPath overloads. Dispatches at runtime."
327:   (cl:cond
328:     ((cl:and (cl:stringp path) supplied-base-path (cl:stringp base-path))
329:      (dotnet:static <type-str> "GetFullPath" path base-path))
330:     ((cl:and (cl:stringp path) (cl:not supplied-base-path))
331:      (dotnet:static <type-str> "GetFullPath" path))
332:     (cl:t (cl:error 'utils:csharp-overload-not-found
333:                     :package-name "SYSTEM-IO-PATH"
334:                     :class-name <type-str>
335:                     :method-name "GetFullPath"
336:                     :supplied-args (cl:append (cl:list :path path) (cl:when supplied-base-path (cl:list :base-path base-path)))))))
337: 
338: (cl:defun get-full-path-string (path)
339:   "Calls System.IO.Path.GetFullPath GetFullPath(String) -> String. Summary: Returns the absolute path for the specified path string.
340: Returns: The fully qualified location of path, such as \"C:\\MyFile.txt\".
341: Parameters:
342:   - path (System.String): The file or directory for which to obtain absolute path information.
343: "
344:   (dotnet:static <type-str> "GetFullPath" (cl:the (dotnet "System.String") path)))
345: 
346: (cl:defun get-full-path-string-string (path base-path)
347:   "Calls System.IO.Path.GetFullPath GetFullPath(String, String) -> String. Summary: Returns an absolute path from a relative path and a fully qualified base path.
348: Returns: The absolute path.
349: Parameters:
350:   - path (System.String): A relative path to concatenate to basePath.
351:   - base-path (System.String): The beginning of a fully qualified path.
352: "
353:   (dotnet:static <type-str> "GetFullPath" (cl:the (dotnet "System.String") path) (cl:the (dotnet "System.String") base-path)))
354: 
355: (cl:defun get-invalid-file-name-chars ()
356:   "Summary: Gets an array containing the characters that are not allowed in file names.
357: Returns: An array containing the characters that are not allowed in file names.
358: "
359:   (dotnet:static <type-str> "GetInvalidFileNameChars"))
360: 
361: (cl:defun get-invalid-path-chars ()
362:   "Summary: Gets an array containing the characters that are not allowed in path names.
363: Returns: An array containing the characters that are not allowed in path names.
364: "
365:   (dotnet:static <type-str> "GetInvalidPathChars"))
366: 
367: (cl:defun get-path-root (path)
368:   "Master wrapper for System.IO.Path.GetPathRoot overloads. Dispatches at runtime."
369:   (cl:cond
370:     ((cl:and (cl:stringp path))
371:      (dotnet:static <type-str> "GetPathRoot" path))
372:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
373:      (dotnet:static <type-str> "GetPathRoot" path))
374:     (cl:t (cl:error 'utils:csharp-overload-not-found
375:                     :package-name "SYSTEM-IO-PATH"
376:                     :class-name <type-str>
377:                     :method-name "GetPathRoot"
378:                     :supplied-args (cl:append (cl:list :path path))))))
379: 
380: (cl:defun get-path-root-string (path)
381:   "Calls System.IO.Path.GetPathRoot GetPathRoot(String) -> String. Summary: Gets the root directory information from the path contained in the specified string.
382: Returns: The root directory of path if it is rooted. -or- System.String.Empty if path does not contain root directory information. -or- if path is or is effectively empty.
383: Parameters:
384:   - path (System.String): A string containing the path from which to obtain root directory information.
385: "
386:   (dotnet:static <type-str> "GetPathRoot" (cl:the (dotnet "System.String") path)))
387: 
388: (cl:defun get-path-root-char] (path)
389:   "Calls System.IO.Path.GetPathRoot GetPathRoot(Char]) -> Char]. Summary: Gets the root directory information from the path contained in the specified character span.
390: Returns: A read-only span of characters containing the root directory of path.
391: Parameters:
392:   - path (System.ReadOnlySpan`1[System.Char]): A read-only span of characters containing the path from which to obtain root directory information.
393: "
394:   (dotnet:static <type-str> "GetPathRoot" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
395: 
396: (cl:defun get-random-file-name ()
397:   "Summary: Returns a random folder name or file name.
398: Returns: A random folder name or file name.
399: "
400:   (dotnet:static <type-str> "GetRandomFileName"))
401: 
402: (cl:defun get-relative-path (relative-to path)
403:   "Summary: Returns a relative path from one path to another.
404: Returns: The relative path, or path if the paths don't share the same root.
405: Parameters:
406:   - relative-to (System.String): The source path the result should be relative to. This path is always considered to be a directory.
407:   - path (System.String): The destination path.
408: "
409:   (dotnet:static <type-str> "GetRelativePath" (cl:the (dotnet "System.String") relative-to) (cl:the (dotnet "System.String") path)))
410: 
411: (cl:defun get-temp-file-name ()
412:   "Summary: Creates a uniquely named, zero-byte temporary file on disk and returns the full path of that file.
413: Returns: The full path of the temporary file.
414: "
415:   (dotnet:static <type-str> "GetTempFileName"))
416: 
417: (cl:defun get-temp-path ()
418:   "Summary: Returns the path of the current user's temporary folder.
419: Returns: The path to the temporary folder, ending with a System.IO.Path.DirectorySeparatorChar.
420: "
421:   (dotnet:static <type-str> "GetTempPath"))
422: 
423: (cl:defun has-extension (path)
424:   "Master wrapper for System.IO.Path.HasExtension overloads. Dispatches at runtime."
425:   (cl:cond
426:     ((cl:and (cl:stringp path))
427:      (dotnet:static <type-str> "HasExtension" path))
428:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
429:      (dotnet:static <type-str> "HasExtension" path))
430:     (cl:t (cl:error 'utils:csharp-overload-not-found
431:                     :package-name "SYSTEM-IO-PATH"
432:                     :class-name <type-str>
433:                     :method-name "HasExtension"
434:                     :supplied-args (cl:append (cl:list :path path))))))
435: 
436: (cl:defun has-extension-string (path)
437:   "Calls System.IO.Path.HasExtension HasExtension(String) -> Boolean. Summary: Determines whether a path includes a file name extension.
438: Returns: if the characters that follow the last directory separator (\\ or /) or volume separator (:) in the path include a period (.) followed by one or more characters; otherwise, .
439: Parameters:
440:   - path (System.String): The path to search for an extension.
441: "
442:   (dotnet:static <type-str> "HasExtension" (cl:the (dotnet "System.String") path)))
443: 
444: (cl:defun has-extension-char] (path)
445:   "Calls System.IO.Path.HasExtension HasExtension(Char]) -> Boolean. Summary: Determines whether the path represented by the specified character span includes a file name extension.
446: Returns: if the characters that follow the last directory separator character or volume separator in the path include a period (\".\") followed by one or more characters; otherwise, .
447: Parameters:
448:   - path (System.ReadOnlySpan`1[System.Char]): The path to search for an extension.
449: "
450:   (dotnet:static <type-str> "HasExtension" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
451: 
452: (cl:defun path-fully-qualified? (path)
453:   "Master wrapper for System.IO.Path.IsPathFullyQualified overloads. Dispatches at runtime."
454:   (cl:cond
455:     ((cl:and (cl:stringp path))
456:      (dotnet:static <type-str> "IsPathFullyQualified" path))
457:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
458:      (dotnet:static <type-str> "IsPathFullyQualified" path))
459:     (cl:t (cl:error 'utils:csharp-overload-not-found
460:                     :package-name "SYSTEM-IO-PATH"
461:                     :class-name <type-str>
462:                     :method-name "IsPathFullyQualified"
463:                     :supplied-args (cl:append (cl:list :path path))))))
464: 
465: (cl:defun path-fully-qualified?-string (path)
466:   "Calls System.IO.Path.IsPathFullyQualified IsPathFullyQualified(String) -> Boolean. Summary: Returns a value that indicates whether the specified file path is fixed to a specific drive or UNC path.
467: Returns: if the path is fixed to a specific drive or UNC path; if the path is relative to the current drive or working directory.
468: Parameters:
469:   - path (System.String): A file path.
470: "
471:   (dotnet:static <type-str> "IsPathFullyQualified" (cl:the (dotnet "System.String") path)))
472: 
473: (cl:defun path-fully-qualified?-char] (path)
474:   "Calls System.IO.Path.IsPathFullyQualified IsPathFullyQualified(Char]) -> Boolean. Summary: Returns a value that indicates whether the file path represented by the specified character span is fixed to a specific drive or UNC path.
475: Returns: if the path is fixed to a specific drive or UNC path; if the path is relative to the current drive or working directory.
476: Parameters:
477:   - path (System.ReadOnlySpan`1[System.Char]): A file path.
478: "
479:   (dotnet:static <type-str> "IsPathFullyQualified" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
480: 
481: (cl:defun path-rooted? (path)
482:   "Master wrapper for System.IO.Path.IsPathRooted overloads. Dispatches at runtime."
483:   (cl:cond
484:     ((cl:and (cl:stringp path))
485:      (dotnet:static <type-str> "IsPathRooted" path))
486:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
487:      (dotnet:static <type-str> "IsPathRooted" path))
488:     (cl:t (cl:error 'utils:csharp-overload-not-found
489:                     :package-name "SYSTEM-IO-PATH"
490:                     :class-name <type-str>
491:                     :method-name "IsPathRooted"
492:                     :supplied-args (cl:append (cl:list :path path))))))
493: 
494: (cl:defun path-rooted?-string (path)
495:   "Calls System.IO.Path.IsPathRooted IsPathRooted(String) -> Boolean. Summary: Returns a value indicating whether the specified path string contains a root.
496: Returns: if path contains a root; otherwise, .
497: Parameters:
498:   - path (System.String): The path to test.
499: "
500:   (dotnet:static <type-str> "IsPathRooted" (cl:the (dotnet "System.String") path)))
501: 
502: (cl:defun path-rooted?-char] (path)
503:   "Calls System.IO.Path.IsPathRooted IsPathRooted(Char]) -> Boolean. Summary: Returns a value that indicates whether the specified character span that represents a file path contains a root.
504: Returns: if path contains a root; otherwise, .
505: Parameters:
506:   - path (System.ReadOnlySpan`1[System.Char]): The path to test.
507: "
508:   (dotnet:static <type-str> "IsPathRooted" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
509: 
510: (cl:defun join (paths cl:&optional (path2 cl:nil supplied-path2) (path3 cl:nil supplied-path3) (path4 cl:nil supplied-path4))
511:   "Master wrapper for System.IO.Path.Join overloads. Dispatches at runtime."
512:   (cl:cond
513:     ((cl:and (cl:or (cl:null paths) (monoutils:dotnet-p paths)) supplied-path2 (cl:or (cl:null path2) (monoutils:dotnet-p path2)) supplied-path3 (cl:or (cl:null path3) (monoutils:dotnet-p path3)) supplied-path4 (cl:or (cl:null path4) (monoutils:dotnet-p path4)))
514:      (dotnet:static <type-str> "Join" paths path2 path3 path4))
515:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) supplied-path4 (cl:stringp path4))
516:      (dotnet:static <type-str> "Join" paths path2 path3 path4))
517:     ((cl:and (cl:or (cl:null paths) (monoutils:dotnet-p paths)) supplied-path2 (cl:or (cl:null path2) (monoutils:dotnet-p path2)) supplied-path3 (cl:or (cl:null path3) (monoutils:dotnet-p path3)) (cl:not supplied-path4))
518:      (dotnet:static <type-str> "Join" paths path2 path3))
519:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) (cl:not supplied-path4))
520:      (dotnet:static <type-str> "Join" paths path2 path3))
521:     ((cl:and (cl:or (cl:null paths) (monoutils:dotnet-p paths)) supplied-path2 (cl:or (cl:null path2) (monoutils:dotnet-p path2)) (cl:not supplied-path3) (cl:not supplied-path4))
522:      (dotnet:static <type-str> "Join" paths path2))
523:     ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) (cl:not supplied-path3) (cl:not supplied-path4))
524:      (dotnet:static <type-str> "Join" paths path2))
525:     ((cl:and (cl:or (cl:null paths) (monoutils:dotnet-p paths)) (cl:not supplied-path2) (cl:not supplied-path3) (cl:not supplied-path4))
526:      (dotnet:static <type-str> "Join" paths))
527:     (cl:t (cl:error 'utils:csharp-overload-not-found
528:                     :package-name "SYSTEM-IO-PATH"
529:                     :class-name <type-str>
530:                     :method-name "Join"
531:                     :supplied-args (cl:append (cl:list :paths paths) (cl:when supplied-path2 (cl:list :path2 path2)) (cl:when supplied-path3 (cl:list :path3 path3)) (cl:when supplied-path4 (cl:list :path4 path4)))))))
532: 
533: (cl:defun join-string] (paths)
534:   "Calls System.IO.Path.Join Join(String]) -> String. Summary: Concatenates a span of paths into a single path.
535: Returns: The concatenated path.
536: Parameters:
537:   - paths (System.ReadOnlySpan`1[System.String]): A span of paths.
538: "
539:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.ReadOnlySpan`1[System.String]") paths)))
540: 
541: (cl:defun join-char]-char] (path1 path2)
542:   "Calls System.IO.Path.Join Join(Char], Char]) -> String. Summary: Concatenates two path components into a single path.
543: Returns: The combined paths.
544: Parameters:
545:   - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
546:   - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.
547: "
548:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path1) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path2)))
549: 
550: (cl:defun join-string-string (path1 path2)
551:   "Calls System.IO.Path.Join Join(String, String) -> String. Summary: Concatenates two paths into a single path.
552: Returns: The concatenated path.
553: Parameters:
554:   - path1 (System.String): The first path to join.
555:   - path2 (System.String): The second path to join.
556: "
557:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2)))
558: 
559: (cl:defun join-char]-char]-char] (path1 path2 path3)
560:   "Calls System.IO.Path.Join Join(Char], Char], Char]) -> String. Summary: Concatenates three path components into a single path.
561: Returns: The concatenated path.
562: Parameters:
563:   - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
564:   - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.
565:   - path3 (System.ReadOnlySpan`1[System.Char]): A character span that contains the third path to join.
566: "
567:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path1) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path2) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path3)))
568: 
569: (cl:defun join-string-string-string (path1 path2 path3)
570:   "Calls System.IO.Path.Join Join(String, String, String) -> String. Summary: Concatenates three paths into a single path.
571: Returns: The concatenated path.
572: Parameters:
573:   - path1 (System.String): The first path to join.
574:   - path2 (System.String): The second path to join.
575:   - path3 (System.String): The third path to join.
576: "
577:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3)))
578: 
579: (cl:defun join-char]-char]-char]-char] (path1 path2 path3 path4)
580:   "Calls System.IO.Path.Join Join(Char], Char], Char], Char]) -> String. Summary: Concatenates four path components into a single path.
581: Returns: The concatenated path.
582: Parameters:
583:   - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
584:   - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.
585:   - path3 (System.ReadOnlySpan`1[System.Char]): A character span that contains the third path to join.
586:   - path4 (System.ReadOnlySpan`1[System.Char]): A character span that contains the fourth path to join.
587: "
588:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path1) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path2) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path3) (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path4)))
589: 
590: (cl:defun join-string-string-string-string (path1 path2 path3 path4)
591:   "Calls System.IO.Path.Join Join(String, String, String, String) -> String. Summary: Concatenates four paths into a single path.
592: Returns: The concatenated path.
593: Parameters:
594:   - path1 (System.String): The first path to join.
595:   - path2 (System.String): The second path to join.
596:   - path3 (System.String): The third path to join.
597:   - path4 (System.String): The fourth path to join.
598: "
599:   (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3) (cl:the (dotnet "System.String") path4)))
600: 
601: ;; Note: System.IO.Path.Join also has the following overloads with special
602: ;; parameter types (ref, out, params, or defaults) that are not
603: ;; yet supported:
604: ;;   Join(params String[]) -> String
605: 
606: (cl:defun trim-ending-directory-separator (path)
607:   "Master wrapper for System.IO.Path.TrimEndingDirectorySeparator overloads. Dispatches at runtime."
608:   (cl:cond
609:     ((cl:and (cl:stringp path))
610:      (dotnet:static <type-str> "TrimEndingDirectorySeparator" path))
611:     ((cl:and (cl:or (cl:null path) (monoutils:dotnet-p path)))
612:      (dotnet:static <type-str> "TrimEndingDirectorySeparator" path))
613:     (cl:t (cl:error 'utils:csharp-overload-not-found
614:                     :package-name "SYSTEM-IO-PATH"
615:                     :class-name <type-str>
616:                     :method-name "TrimEndingDirectorySeparator"
617:                     :supplied-args (cl:append (cl:list :path path))))))
618: 
619: (cl:defun trim-ending-directory-separator-string (path)
620:   "Calls System.IO.Path.TrimEndingDirectorySeparator TrimEndingDirectorySeparator(String) -> String. Summary: Trims one trailing directory separator beyond the root of the specified path.
621: Returns: The path without any trailing directory separators.
622: Parameters:
623:   - path (System.String): The path to trim.
624: "
625:   (dotnet:static <type-str> "TrimEndingDirectorySeparator" (cl:the (dotnet "System.String") path)))
626: 
627: (cl:defun trim-ending-directory-separator-char] (path)
628:   "Calls System.IO.Path.TrimEndingDirectorySeparator TrimEndingDirectorySeparator(Char]) -> Char]. Summary: Trims one trailing directory separator beyond the root of the specified path.
629: Returns: The path without any trailing directory separators.
630: Parameters:
631:   - path (System.ReadOnlySpan`1[System.Char]): The path to trim.
632: "
633:   (dotnet:static <type-str> "TrimEndingDirectorySeparator" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") path)))
634: 
635: ;; The following C# System.IO.Path.TryJoin overloads have special parameter types
636: ;; (ref, out, params, or defaults) and are not yet supported:
637: ;;   TryJoin(Char], Char], Char], out Int32&) -> Boolean
638: ;;   TryJoin(Char], Char], Char], Char], out Int32&) -> Boolean
639: 

(End of file - total 639 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-type.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-type.lisp</path>
<type>file</type>
<content>
1: ;;; Generated automatically. Do not edit.
2: ;;; Class: System.Type
3: ;;; Generator Version: 18
4: ;;; Creation Date: 2026-07-02T19:02:19Z
5: 
6: (cl:in-package :cl-user)
7: 
8: (cl:defpackage :system-type
9:   (:use :cl)
10:   (:shadow
11:    #:=
12:    #:get-properties
13:   )
14:   (:export
15:    #:<type>
16:    #:<type-str>
17:    #:<creation>
18:    #:<version>
19:    #:new
20:    #:delimiter
21:    #:empty-types
22:    #:filter-attribute
23:    #:filter-name
24:    #:filter-name-ignore-case
25:    #:missing
26:    #:default-binder
27:    #:assembly
28:    #:assembly-qualified-name
29:    #:attributes
30:    #:base-type
31:    #:contains-generic-parameters
32:    #:declaring-method
33:    #:declaring-type
34:    #:full-name
35:    #:generic-parameter-attributes
36:    #:generic-parameter-position
37:    #:generic-type-arguments
38:    #:guid
39:    #:has-element-type
40:    #:abstract?
41:    #:ansi-class?
42:    #:array?
43:    #:auto-class?
44:    #:auto-layout?
45:    #:by-ref?
46:    #:by-ref-like?
47:    #:class?
48:    #:com-object?
49:    #:constructed-generic-type?
50:    #:contextful?
51:    #:enum?
52:    #:explicit-layout?
53:    #:function-pointer?
54:    #:generic-method-parameter?
55:    #:generic-parameter?
56:    #:generic-type?
57:    #:generic-type-definition?
58:    #:generic-type-parameter?
59:    #:import?
60:    #:interface?
61:    #:layout-sequential?
62:    #:marshal-by-ref?
63:    #:nested?
64:    #:nested-assembly?
65:    #:nested-fam-and-assem?
66:    #:nested-family?
67:    #:nested-fam-or-assem?
68:    #:nested-private?
69:    #:nested-public?
70:    #:not-public?
71:    #:pointer?
72:    #:primitive?
73:    #:public?
74:    #:sealed?
75:    #:security-critical?
76:    #:security-safe-critical?
77:    #:security-transparent?
78:    #:serializable?
79:    #:signature-type?
80:    #:special-name?
81:    #:sz-array?
82:    #:type-definition?
83:    #:unicode-class?
84:    #:unmanaged-function-pointer?
85:    #:value-type?
86:    #:variable-bound-array?
87:    #:visible?
88:    #:member-type
89:    #:module
90:    #:namespace
91:    #:reflected-type
92:    #:struct-layout-attribute
93:    #:type-handle
94:    #:type-initializer
95:    #:underlying-system-type
96:    #:=
97:    #:equals
98:    #:equals-object
99:    #:equals-type
100:    #:find-interfaces
101:    #:find-members
102:    #:get-array-rank
103:    #:get-attribute-flags-impl
104:    #:get-constructor
105:    #:get-constructor-type[]
106:    #:get-constructor-binding-flags-type[]
107:    #:get-constructor-binding-flags-binder-type[]-parameter-modifier[]
108:    #:get-constructor-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
109:    #:get-constructor-impl
110:    #:get-constructors
111:    #:get-constructors-binding-flags
112:    #:get-default-members
113:    #:get-element-type
114:    #:get-enum-name
115:    #:get-enum-names
116:    #:get-enum-underlying-type
117:    #:get-enum-values
118:    #:get-enum-values-as-underlying-type
119:    #:get-event
120:    #:get-event-string
121:    #:get-event-string-binding-flags
122:    #:get-events
123:    #:get-events-binding-flags
124:    #:get-field
125:    #:get-field-string
126:    #:get-field-string-binding-flags
127:    #:get-fields
128:    #:get-fields-binding-flags
129:    #:get-function-pointer-calling-conventions
130:    #:get-function-pointer-parameter-types
131:    #:get-function-pointer-return-type
132:    #:get-generic-arguments
133:    #:get-generic-parameter-constraints
134:    #:get-generic-type-definition
135:    #:get-hash-code
136:    #:get-interface
137:    #:get-interface-string
138:    #:get-interface-string-boolean
139:    #:get-interface-map
140:    #:get-interfaces
141:    #:get-member
142:    #:get-member-string
143:    #:get-member-string-binding-flags
144:    #:get-member-string-member-types-binding-flags
145:    #:get-members
146:    #:get-members-binding-flags
147:    #:get-member-with-same-metadata-definition-as
148:    #:get-method
149:    #:get-method-string
150:    #:get-method-string-binding-flags
151:    #:get-method-string-type[]
152:    #:get-method-string-binding-flags-type[]
153:    #:get-method-string-type[]-parameter-modifier[]
154:    #:get-method-string-int32-type[]
155:    #:get-method-string-int32-type[]-parameter-modifier[]
156:    #:get-method-string-int32-binding-flags-type[]
157:    #:get-method-string-binding-flags-binder-type[]-parameter-modifier[]
158:    #:get-method-string-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
159:    #:get-method-string-int32-binding-flags-binder-type[]-parameter-modifier[]
160:    #:get-method-string-int32-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
161:    #:get-method-impl
162:    #:get-method-impl-string-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
163:    #:get-method-impl-string-int32-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
164:    #:get-methods
165:    #:get-methods-binding-flags
166:    #:get-nested-type
167:    #:get-nested-type-string
168:    #:get-nested-type-string-binding-flags
169:    #:get-nested-types
170:    #:get-nested-types-binding-flags
171:    #:get-optional-custom-modifiers
172:    #:get-properties
173:    #:get-properties-binding-flags
174:    #:get-property
175:    #:get-property-string
176:    #:get-property-string-binding-flags
177:    #:get-property-string-type
178:    #:get-property-string-type[]
179:    #:get-property-string-type-type[]
180:    #:get-property-string-type-type[]-parameter-modifier[]
181:    #:get-property-string-binding-flags-binder-type-type[]-parameter-modifier[]
182:    #:get-property-impl
183:    #:get-required-custom-modifiers
184:    #:get-type
185:    #:get-type*
186:    #:get-type-string
187:    #:get-type-string-boolean
188:    #:get-type-string-boolean-boolean
189:    #:get-type-string-assembly]-type]
190:    #:get-type-string-assembly]-type]-boolean
191:    #:get-type-string-assembly]-type]-boolean-boolean
192:    #:get-type-array
193:    #:get-type-code
194:    #:get-type-code-impl
195:    #:get-type-from-clsid
196:    #:get-type-from-clsid-guid
197:    #:get-type-from-clsid-guid-boolean
198:    #:get-type-from-clsid-guid-string
199:    #:get-type-from-clsid-guid-string-boolean
200:    #:get-type-from-handle
201:    #:get-type-from-prog-id
202:    #:get-type-from-prog-id-string
203:    #:get-type-from-prog-id-string-boolean
204:    #:get-type-from-prog-id-string-string
205:    #:get-type-from-prog-id-string-string-boolean
206:    #:get-type-handle
207:    #:has-element-type-impl
208:    #:invoke-member
209:    #:invoke-member-string-binding-flags-binder-object-object[]
210:    #:invoke-member-string-binding-flags-binder-object-object[]-culture-info
211:    #:invoke-member-string-binding-flags-binder-object-object[]-parameter-modifier[]-culture-info-string[]
212:    #:array-impl?
213:    #:assignable-from?
214:    #:assignable-to?
215:    #:by-ref-impl?
216:    #:com-object-impl?
217:    #:contextful-impl?
218:    #:enum-defined?
219:    #:equivalent-to?
220:    #:instance-of-type?
221:    #:marshal-by-ref-impl?
222:    #:pointer-impl?
223:    #:primitive-impl?
224:    #:subclass-of?
225:    #:value-type-impl?
226:    #:make-array-type
227:    #:make-array-type-int32
228:    #:make-by-ref-type
229:    #:make-generic-method-parameter
230:    #:make-pointer-type
231:    #:not=
232:    #:reflection-only-get-type
233:    #:to-string
234:   ))
235: 
236: (cl:in-package :system-type)
237: 
238: (cl:defconstant <type> (monoutils:get-type "System.Type"))
239: (cl:defconstant <type-str> "System.Type")
240: (cl:defconstant <creation> "2026-07-02T19:02:19Z")
241: (cl:defconstant <version> 18)
242: 
243: ;; Register C# Type with CLOS
244: (cl:eval-when (:compile-toplevel :load-toplevel :execute)
245:   (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
246:                  (dotnet:resolve-type "System.Type")))
247: 
248: (cl:defun new ()
249:   "Summary: Initializes a new instance of the System.Type class.
250: "
251:   (dotnet:new <type-str>))
252: 
253: (cl:define-symbol-macro delimiter (dotnet:static <type-str> "Delimiter"))
254: (cl:setf (cl:documentation (cl:quote delimiter) (cl:quote cl:variable)) "Separates names in the namespace of the System.Type. This field is read-only.")
255: 
256: (cl:define-symbol-macro empty-types (dotnet:static <type-str> "EmptyTypes"))
257: (cl:setf (cl:documentation (cl:quote empty-types) (cl:quote cl:variable)) "Represents an empty array of type System.Type. This field is read-only.")
258: 
259: (cl:define-symbol-macro filter-attribute (dotnet:static <type-str> "FilterAttribute"))
260: (cl:setf (cl:documentation (cl:quote filter-attribute) (cl:quote cl:variable)) "Represents the member filter used on attributes. This field is read-only.")
261: 
262: (cl:define-symbol-macro filter-name (dotnet:static <type-str> "FilterName"))
263: (cl:setf (cl:documentation (cl:quote filter-name) (cl:quote cl:variable)) "Represents the case-sensitive member filter used on names. This field is read-only.")
264: 
265: (cl:define-symbol-macro filter-name-ignore-case (dotnet:static <type-str> "FilterNameIgnoreCase"))
266: (cl:setf (cl:documentation (cl:quote filter-name-ignore-case) (cl:quote cl:variable)) "Represents the case-insensitive member filter used on names. This field is read-only.")
267: 
268: (cl:define-symbol-macro missing (dotnet:static <type-str> "Missing"))
269: (cl:setf (cl:documentation (cl:quote missing) (cl:quote cl:variable)) "Represents a missing value in the System.Type information. This field is read-only.")
270: 
271: (cl:define-symbol-macro default-binder (dotnet:static <type-str> "DefaultBinder"))
272: (cl:setf (cl:documentation (cl:quote default-binder) (cl:quote cl:variable)) "Gets a reference to the default binder, which implements internal rules for selecting the appropriate members to be called by System.Type.InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]).")
273: 
274: (cl:defun assembly (obj)
275:   "Gets the System.Reflection.Assembly in which the type is declared. For generic types, gets the System.Reflection.Assembly in which the generic type is defined."
276:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_Assembly"))
277: 
278: (cl:defun assembly-qualified-name (obj)
279:   "Gets the assembly-qualified name of the type, which includes the name of the assembly from which this System.Type object was loaded."
280:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_AssemblyQualifiedName"))
281: 
282: (cl:defun attributes (obj)
283:   "Gets the attributes associated with the System.Type."
284:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_Attributes"))
285: 
286: (cl:defun base-type (obj)
287:   "Gets the type from which the current System.Type directly inherits."
288:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_BaseType"))
289: 
290: (cl:defun contains-generic-parameters (obj)
291:   "Gets a value indicating whether the current System.Type object has type parameters that have not been replaced by specific types."
292:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_ContainsGenericParameters"))
293: 
294: (cl:defun declaring-method (obj)
295:   "Gets a System.Reflection.MethodBase that represents the declaring method, if the current System.Type represents a type parameter of a generic method."
296:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_DeclaringMethod"))
297: 
298: (cl:defun declaring-type (obj)
299:   "Gets the type that declares the current nested type or generic type parameter."
300:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_DeclaringType"))
301: 
302: (cl:defun full-name (obj)
303:   "Gets the fully qualified name of the type, including its namespace but not its assembly."
304:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_FullName"))
305: 
306: (cl:defun generic-parameter-attributes (obj)
307:   "Gets a combination of System.Reflection.GenericParameterAttributes flags that describe the covariance and special constraints of the current generic type parameter."
308:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_GenericParameterAttributes"))
309: 
310: (cl:defun generic-parameter-position (obj)
311:   "Gets the position of the type parameter in the type parameter list of the generic type or method that declared the parameter, when the System.Type object represents a type parameter of a generic type or a generic method."
312:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_GenericParameterPosition"))
313: 
314: (cl:defun generic-type-arguments (obj)
315:   "Gets an array of the generic type arguments for this type."
316:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_GenericTypeArguments"))
317: 
318: (cl:defun guid (obj)
319:   "Gets the GUID associated with the System.Type."
320:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_GUID"))
321: 
322: (cl:defun has-element-type (obj)
323:   "Gets a value indicating whether the current System.Type encompasses or refers to another type; that is, whether the current System.Type is an array, a pointer, or is passed by reference."
324:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_HasElementType"))
325: 
326: (cl:defun abstract? (obj)
327:   "Gets a value indicating whether the System.Type is abstract and must be overridden."
328:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsAbstract"))
329: 
330: (cl:defun ansi-class? (obj)
331:   "Gets a value indicating whether the string format attribute is selected for the System.Type."
332:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsAnsiClass"))
333: 
334: (cl:defun array? (obj)
335:   "Gets a value that indicates whether the type is an array."
336:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsArray"))
337: 
338: (cl:defun auto-class? (obj)
339:   "Gets a value indicating whether the string format attribute is selected for the System.Type."
340:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsAutoClass"))
341: 
342: (cl:defun auto-layout? (obj)
343:   "Gets a value indicating whether the fields of the current type are laid out automatically by the common language runtime."
344:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsAutoLayout"))
345: 
346: (cl:defun by-ref? (obj)
347:   "Gets a value indicating whether the System.Type is passed by reference."
348:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsByRef"))
349: 
350: (cl:defun by-ref-like? (obj)
351:   "Gets a value that indicates whether the type is a byref-like structure."
352:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsByRefLike"))
353: 
354: (cl:defun class? (obj)
355:   "Gets a value indicating whether the System.Type is a class or a delegate; that is, not a value type or interface."
356:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsClass"))
357: 
358: (cl:defun com-object? (obj)
359:   "Gets a value indicating whether the System.Type is a COM object."
360:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsCOMObject"))
361: 
362: (cl:defun constructed-generic-type? (obj)
363:   "Gets a value that indicates whether this object represents a constructed generic type. You can create instances of a constructed generic type."
364:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsConstructedGenericType"))
365: 
366: (cl:defun contextful? (obj)
367:   "Gets a value indicating whether the System.Type can be hosted in a context."
368:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsContextful"))
369: 
370: (cl:defun enum? (obj)
371:   "Gets a value indicating whether the current System.Type represents an enumeration."
372:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsEnum"))
373: 
374: (cl:defun explicit-layout? (obj)
375:   "Gets a value indicating whether the fields of the current type are laid out at explicitly specified offsets."
376:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsExplicitLayout"))
377: 
378: (cl:defun function-pointer? (obj)
379:   "Gets a value that indicates whether the current System.Type is a function pointer."
380:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsFunctionPointer"))
381: 
382: (cl:defun generic-method-parameter? (obj)
383:   "Gets a value that indicates whether the current System.Type represents a type parameter in the definition of a generic method."
384:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsGenericMethodParameter"))
385: 
386: (cl:defun generic-parameter? (obj)
387:   "Gets a value indicating whether the current System.Type represents a type parameter in the definition of a generic type or method."
388:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsGenericParameter"))
389: 
390: (cl:defun generic-type? (obj)
391:   "Gets a value indicating whether the current type is a generic type."
392:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsGenericType"))
393: 
394: (cl:defun generic-type-definition? (obj)
395:   "Gets a value indicating whether the current System.Type represents a generic type definition, from which other generic types can be constructed."
396:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsGenericTypeDefinition"))
397: 
398: (cl:defun generic-type-parameter? (obj)
399:   "Gets a value that indicates whether the current System.Type represents a type parameter in the definition of a generic type."
400:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsGenericTypeParameter"))
401: 
402: (cl:defun import? (obj)
403:   "Gets a value indicating whether the System.Type has a System.Runtime.InteropServices.ComImportAttribute attribute applied, indicating that it was imported from a COM type library."
404:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsImport"))
405: 
406: (cl:defun interface? (obj)
407:   "Gets a value indicating whether the System.Type is an interface; that is, not a class or a value type."
408:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsInterface"))
409: 
410: (cl:defun layout-sequential? (obj)
411:   "Gets a value indicating whether the fields of the current type are laid out sequentially, in the order that they were defined or emitted to the metadata."
412:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsLayoutSequential"))
413: 
414: (cl:defun marshal-by-ref? (obj)
415:   "Gets a value indicating whether the System.Type is marshaled by reference."
416:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsMarshalByRef"))
417: 
418: (cl:defun nested? (obj)
419:   "Gets a value indicating whether the current System.Type object represents a type whose definition is nested inside the definition of another type."
420:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNested"))
421: 
422: (cl:defun nested-assembly? (obj)
423:   "Gets a value indicating whether the System.Type is nested and visible only within its own assembly."
424:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedAssembly"))
425: 
426: (cl:defun nested-fam-and-assem? (obj)
427:   "Gets a value indicating whether the System.Type is nested and visible only to classes that belong to both its own family and its own assembly."
428:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedFamANDAssem"))
429: 
430: (cl:defun nested-family? (obj)
431:   "Gets a value indicating whether the System.Type is nested and visible only within its own family."
432:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedFamily"))
433: 
434: (cl:defun nested-fam-or-assem? (obj)
435:   "Gets a value indicating whether the System.Type is nested and visible only to classes that belong to either its own family or to its own assembly."
436:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedFamORAssem"))
437: 
438: (cl:defun nested-private? (obj)
439:   "Gets a value indicating whether the System.Type is nested and declared private."
440:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedPrivate"))
441: 
442: (cl:defun nested-public? (obj)
443:   "Gets a value indicating whether a class is nested and declared public."
444:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNestedPublic"))
445: 
446: (cl:defun not-public? (obj)
447:   "Gets a value indicating whether the System.Type is not declared public."
448:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsNotPublic"))
449: 
450: (cl:defun pointer? (obj)
451:   "Gets a value indicating whether the System.Type is a pointer."
452:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsPointer"))
453: 
454: (cl:defun primitive? (obj)
455:   "Gets a value indicating whether the System.Type is one of the primitive types."
456:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsPrimitive"))
457: 
458: (cl:defun public? (obj)
459:   "Gets a value indicating whether the System.Type is declared public."
460:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsPublic"))
461: 
462: (cl:defun sealed? (obj)
463:   "Gets a value indicating whether the System.Type is declared sealed."
464:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSealed"))
465: 
466: (cl:defun security-critical? (obj)
467:   "Gets a value that indicates whether the current type is security-critical or security-safe-critical at the current trust level, and therefore can perform critical operations."
468:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSecurityCritical"))
469: 
470: (cl:defun security-safe-critical? (obj)
471:   "Gets a value that indicates whether the current type is security-safe-critical at the current trust level; that is, whether it can perform critical operations and can be accessed by transparent code."
472:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSecuritySafeCritical"))
473: 
474: (cl:defun security-transparent? (obj)
475:   "Gets a value that indicates whether the current type is transparent at the current trust level, and therefore cannot perform critical operations."
476:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSecurityTransparent"))
477: 
478: (cl:defun serializable? (obj)
479:   "Gets a value indicating whether the System.Type is binary serializable."
480:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSerializable"))
481: 
482: (cl:defun signature-type? (obj)
483:   "Gets a value that indicates whether the type is a signature type."
484:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSignatureType"))
485: 
486: (cl:defun special-name? (obj)
487:   "Gets a value indicating whether the type has a name that requires special handling."
488:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSpecialName"))
489: 
490: (cl:defun sz-array? (obj)
491:   "Gets a value that indicates whether the type is an array type that can represent only a single-dimensional array with a zero lower bound."
492:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsSZArray"))
493: 
494: (cl:defun type-definition? (obj)
495:   "Gets a value that indicates whether the type is a type definition."
496:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsTypeDefinition"))
497: 
498: (cl:defun unicode-class? (obj)
499:   "Gets a value indicating whether the string format attribute is selected for the System.Type."
500:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsUnicodeClass"))
501: 
502: (cl:defun unmanaged-function-pointer? (obj)
503:   "Gets a value that indicates whether the current System.Type is an unmanaged function pointer."
504:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsUnmanagedFunctionPointer"))
505: 
506: (cl:defun value-type? (obj)
507:   "Gets a value indicating whether the System.Type is a value type."
508:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsValueType"))
509: 
510: (cl:defun variable-bound-array? (obj)
511:   "Gets a value that indicates whether the type is an array type that can represent a multi-dimensional array or an array with an arbitrary lower bound."
512:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsVariableBoundArray"))
513: 
514: (cl:defun visible? (obj)
515:   "Gets a value indicating whether the System.Type can be accessed by code outside the assembly."
516:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_IsVisible"))
517: 
518: (cl:defun member-type (obj)
519:   "Gets a System.Reflection.MemberTypes value indicating that this member is a type or a nested type."
520:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_MemberType"))
521: 
522: (cl:defun module (obj)
523:   "Gets the module (the DLL) in which the current System.Type is defined."
524:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_Module"))
525: 
526: (cl:defun namespace (obj)
527:   "Gets the namespace of the System.Type."
528:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_Namespace"))
529: 
530: (cl:defun reflected-type (obj)
531:   "Gets the class object that was used to obtain this member."
532:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_ReflectedType"))
533: 
534: (cl:defun struct-layout-attribute (obj)
535:   "Gets a System.Runtime.InteropServices.StructLayoutAttribute that describes the layout of the current type."
536:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_StructLayoutAttribute"))
537: 
538: (cl:defun type-handle (obj)
539:   "Gets the handle for the current System.Type."
540:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_TypeHandle"))
541: 
542: (cl:defun type-initializer (obj)
543:   "Gets the initializer for the type."
544:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_TypeInitializer"))
545: 
546: (cl:defun underlying-system-type (obj)
547:   "Indicates the type provided by the common language runtime that represents this type."
548:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "get_UnderlyingSystemType"))
549: 
550: (cl:defun = (left right)
551:   "Summary: Indicates whether two System.Type objects are equal.
552: Returns: if left is equal to right; otherwise, .
553: Parameters:
554:   - left (System.Type): The first object to compare.
555:   - right (System.Type): The second object to compare.
556: "
557:   (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Type") left) (cl:the (dotnet "System.Type") right)))
558: 
559: (cl:defun equals (obj o)
560:   "Master wrapper for System.Type.Equals overloads. Dispatches at runtime."
561:   (cl:cond
562:     ((cl:and (cl:or (cl:null o) (monoutils:dotnet-p o)))
563:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "Equals" o))
564:     ((cl:and (cl:or (cl:null o) (monoutils:dotnet-p o)))
565:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "Equals" o))
566:     (cl:t (cl:error 'utils:csharp-overload-not-found
567:                     :package-name "SYSTEM-TYPE"
568:                     :class-name <type-str>
569:                     :method-name "Equals"
570:                     :supplied-args (cl:append (cl:list :o o))))))
571: 
572: (cl:defun equals-object (obj o)
573:   "Calls System.Type.Equals Equals(Object) -> Boolean. Summary: Determines if the underlying system type of the current System.Type object is the same as the underlying system type of the specified System.Object.
574: Returns: if the underlying system type of o is the same as the underlying system type of the current System.Type; otherwise, . This method also returns if: - o is . - o cannot be cast or converted to a System.Type object.
575: Parameters:
576:   - o (System.Object): The object whose underlying system type is to be compared with the underlying system type of the current System.Type. For the comparison to succeed, o must be able to be cast or converted to an object of type System.Type.
577: "
578:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "Equals" o))
579: 
580: (cl:defun equals-type (obj o)
581:   "Calls System.Type.Equals Equals(Type) -> Boolean. Summary: Determines if the underlying system type of the current System.Type is the same as the underlying system type of the specified System.Type.
582: Returns: if the underlying system type of o is the same as the underlying system type of the current System.Type; otherwise, .
583: Parameters:
584:   - o (System.Type): The object whose underlying system type is to be compared with the underlying system type of the current System.Type.
585: "
586:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "Equals" o))
587: 
588: (cl:defun find-interfaces (obj filter filter-criteria)
589:   "Summary: Returns an array of System.Type objects representing a filtered list of interfaces implemented or inherited by the current System.Type.
590: Returns: An array of System.Type objects representing a filtered list of the interfaces implemented or inherited by the current System.Type, or an empty array if no interfaces matching the filter are implemented or inherited by the current System.Type.
591: Parameters:
592:   - filter (System.Reflection.TypeFilter): The delegate that compares the interfaces against filterCriteria.
593:   - filter-criteria (System.Object): The search criteria that determines whether an interface should be included in the returned array.
594: "
595:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "FindInterfaces" filter filter-criteria))
596: 
597: (cl:defun find-members (obj member-type binding-attr filter filter-criteria)
598:   "Summary: Returns a filtered array of System.Reflection.MemberInfo objects of the specified member type.
599: Returns: A filtered array of System.Reflection.MemberInfo objects of the specified member type. -or- An empty array if the current System.Type does not have members of type memberType that match the filter criteria.
600: Parameters:
601:   - member-type (System.Reflection.MemberTypes): A bitwise combination of the enumeration values that indicates the type of member to search for.
602:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
603:   - filter (System.Reflection.MemberFilter): The delegate that does the comparisons, returning if the member currently being inspected matches the filterCriteria and otherwise.
604:   - filter-criteria (System.Object): The search criteria that determines whether a member is returned in the array of objects. The fields of , , and can be used in conjunction with the delegate supplied by this class.
605: "
606:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "FindMembers" member-type binding-attr filter filter-criteria))
607: 
608: (cl:defun get-array-rank (obj)
609:   "Summary: Gets the number of dimensions in an array.
610: Returns: An integer that contains the number of dimensions in the current type.
611: "
612:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetArrayRank"))
613: 
614: (cl:defun get-attribute-flags-impl (obj)
615:   "Summary: When overridden in a derived class, implements the System.Type.Attributes property and gets a bitwise combination of enumeration values that indicate the attributes associated with the System.Type.
616: Returns: A System.Reflection.TypeAttributes object representing the attribute set of the System.Type.
617: "
618:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetAttributeFlagsImpl"))
619: 
620: (cl:defun get-constructor (obj types cl:&optional (types cl:nil supplied-types) (types cl:nil supplied-types) (modifiers cl:nil supplied-modifiers) (modifiers cl:nil supplied-modifiers))
621:   "Master wrapper for System.Type.GetConstructor overloads. Dispatches at runtime."
622:   (cl:cond
623:     ((cl:and (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-types (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-types (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-modifiers (cl:or (cl:null modifiers) (monoutils:dotnet-p modifiers)) supplied-modifiers (cl:or (cl:null modifiers) (monoutils:dotnet-p modifiers)))
624:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" types types types modifiers modifiers))
625:     ((cl:and (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-types (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-types (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-modifiers (cl:or (cl:null modifiers) (monoutils:dotnet-p modifiers)) (cl:not supplied-modifiers))
626:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" types types types modifiers))
627:     ((cl:and (cl:or (cl:null types) (monoutils:dotnet-p types)) supplied-types (cl:or (cl:null types) (monoutils:dotnet-p types)) (cl:not supplied-types) (cl:not supplied-modifiers) (cl:not supplied-modifiers))
628:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" types types))
629:     ((cl:and (cl:or (cl:null types) (monoutils:dotnet-p types)) (cl:not supplied-types) (cl:not supplied-types) (cl:not supplied-modifiers) (cl:not supplied-modifiers))
630:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" types))
631:     (cl:t (cl:error 'utils:csharp-overload-not-found
632:                     :package-name "SYSTEM-TYPE"
633:                     :class-name <type-str>
634:                     :method-name "GetConstructor"
635:                     :supplied-args (cl:append (cl:list :types types) (cl:when supplied-types (cl:list :types types)) (cl:when supplied-types (cl:list :types types)) (cl:when supplied-modifiers (cl:list :modifiers modifiers)) (cl:when supplied-modifiers (cl:list :modifiers modifiers)))))))
636: 
637: (cl:defun get-constructor-type[] (obj types)
638:   "Calls System.Type.GetConstructor GetConstructor(Type[]) -> ConstructorInfo. Summary: Searches for a public instance constructor whose parameters match the types in the specified array.
639: Returns: An object representing the public instance constructor whose parameters match the types in the parameter type array, if found; otherwise, .
640: Parameters:
641:   - types (System.Type[]): An array of System.Type objects representing the number, order, and type of the parameters for the desired constructor. -or- An empty array of System.Type objects, to get a constructor that takes no parameters. Such an empty array is provided by the field System.Type.EmptyTypes.
642: "
643:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" types))
644: 
645: (cl:defun get-constructor-binding-flags-type[] (obj binding-attr types)
646:   "Calls System.Type.GetConstructor GetConstructor(BindingFlags, Type[]) -> ConstructorInfo. Summary: Searches for a constructor whose parameters match the specified argument types, using the specified binding constraints.
647: Returns: A System.Reflection.ConstructorInfo object representing the constructor that matches the specified requirements, if found; otherwise, .
648: Parameters:
649:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- Default to return .
650:   - types (System.Type[]): An array of Type objects representing the number, order, and type of the parameters for the constructor to get. -or- An empty array of the type System.Type (that is, Type[] types = Array.Empty{Type}()) to get a constructor that takes no parameters. -or- System.Type.EmptyTypes.
651: "
652:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" binding-attr types))
653: 
654: (cl:defun get-constructor-binding-flags-binder-type[]-parameter-modifier[] (obj binding-attr binder types modifiers)
655:   "Calls System.Type.GetConstructor GetConstructor(BindingFlags, Binder, Type[], ParameterModifier[]) -> ConstructorInfo. Summary: Searches for a constructor whose parameters match the specified argument types and modifiers, using the specified binding constraints.
656: Returns: A System.Reflection.ConstructorInfo object representing the constructor that matches the specified requirements, if found; otherwise, .
657: Parameters:
658:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
659:   - binder (System.Reflection.Binder): An object that defines a set of properties and enables binding, which can involve selection of an overloaded method, coercion of argument types, and invocation of a member through reflection. -or- A null reference ( in Visual Basic), to use the System.Type.DefaultBinder.
660:   - types (System.Type[]): An array of System.Type objects representing the number, order, and type of the parameters for the constructor to get. -or- An empty array of the type System.Type (that is, Type[] types = new Type[0]) to get a constructor that takes no parameters. -or- System.Type.EmptyTypes.
661:   - modifiers (System.Reflection.ParameterModifier[]): An array of System.Reflection.ParameterModifier objects representing the attributes associated with the corresponding element in the parameter type array. The default binder does not process this parameter.
662: "
663:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" binding-attr binder types modifiers))
664: 
665: (cl:defun get-constructor-binding-flags-binder-calling-conventions-type[]-parameter-modifier[] (obj binding-attr binder call-convention types modifiers)
666:   "Calls System.Type.GetConstructor GetConstructor(BindingFlags, Binder, CallingConventions, Type[], ParameterModifier[]) -> ConstructorInfo. Summary: Searches for a constructor whose parameters match the specified argument types and modifiers, using the specified binding constraints and the specified calling convention.
667: Returns: An object representing the constructor that matches the specified requirements, if found; otherwise, .
668: Parameters:
669:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
670:   - binder (System.Reflection.Binder): An object that defines a set of properties and enables binding, which can involve selection of an overloaded method, coercion of argument types, and invocation of a member through reflection. -or- A null reference ( in Visual Basic), to use the System.Type.DefaultBinder.
671:   - call-convention (System.Reflection.CallingConventions): The object that specifies the set of rules to use regarding the order and layout of arguments, how the return value is passed, what registers are used for arguments, and the stack is cleaned up.
672:   - types (System.Type[]): An array of System.Type objects representing the number, order, and type of the parameters for the constructor to get. -or- An empty array of the type System.Type (that is, Type[] types = new Type[0]) to get a constructor that takes no parameters.
673:   - modifiers (System.Reflection.ParameterModifier[]): An array of System.Reflection.ParameterModifier objects representing the attributes associated with the corresponding element in the types array. The default binder does not process this parameter.
674: "
675:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructor" binding-attr binder call-convention types modifiers))
676: 
677: (cl:defun get-constructor-impl (obj binding-attr binder call-convention types modifiers)
678:   "Summary: When overridden in a derived class, searches for a constructor whose parameters match the specified argument types and modifiers, using the specified binding constraints and the specified calling convention.
679: Returns: A System.Reflection.ConstructorInfo object representing the constructor that matches the specified requirements, if found; otherwise, .
680: Parameters:
681:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
682:   - binder (System.Reflection.Binder): An object that defines a set of properties and enables binding, which can involve selection of an overloaded method, coercion of argument types, and invocation of a member through reflection. -or- A null reference ( in Visual Basic), to use the System.Type.DefaultBinder.
683:   - call-convention (System.Reflection.CallingConventions): The object that specifies the set of rules to use regarding the order and layout of arguments, how the return value is passed, what registers are used for arguments, and the stack is cleaned up.
684:   - types (System.Type[]): An array of System.Type objects representing the number, order, and type of the parameters for the constructor to get. -or- An empty array of the type System.Type (that is, Type[] types = new Type[0]) to get a constructor that takes no parameters.
685:   - modifiers (System.Reflection.ParameterModifier[]): An array of System.Reflection.ParameterModifier objects representing the attributes associated with the corresponding element in the types array. The default binder does not process this parameter.
686: "
687:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructorImpl" binding-attr binder call-convention types modifiers))
688: 
689: (cl:defun get-constructors (obj cl:&optional (binding-attr cl:nil supplied-binding-attr))
690:   "Master wrapper for System.Type.GetConstructors overloads. Dispatches at runtime."
691:   (cl:cond
692:     ((cl:and supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)))
693:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructors" binding-attr))
694:     ((cl:and (cl:not supplied-binding-attr))
695:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructors"))
696:     (cl:t (cl:error 'utils:csharp-overload-not-found
697:                     :package-name "SYSTEM-TYPE"
698:                     :class-name <type-str>
699:                     :method-name "GetConstructors"
700:                     :supplied-args (cl:append (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)))))))
701: 
702: (cl:defun get-constructors (obj)
703:   "Calls System.Type.GetConstructors GetConstructors() -> ConstructorInfo[]. Summary: Returns all the public constructors defined for the current System.Type.
704: Returns: An array of System.Reflection.ConstructorInfo objects representing all the public instance constructors defined for the current System.Type, but not including the type initializer (static constructor). If no public instance constructors are defined for the current System.Type, or if the current System.Type represents a type parameter in the definition of a generic type or generic method, an empty array of type System.Reflection.ConstructorInfo is returned.
705: "
706:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructors"))
707: 
708: (cl:defun get-constructors-binding-flags (obj binding-attr)
709:   "Calls System.Type.GetConstructors GetConstructors(BindingFlags) -> ConstructorInfo[]. Summary: When overridden in a derived class, searches for the constructors defined for the current System.Type, using the specified .
710: Returns: An array of System.Reflection.ConstructorInfo objects representing all constructors defined for the current System.Type that match the specified binding constraints, including the type initializer if it's defined. Returns an empty array of type System.Reflection.ConstructorInfo if no constructors are defined for the current System.Type, if none of the defined constructors match the binding constraints, or if the current System.Type represents a type parameter in the definition of a generic type or generic method.
711: Parameters:
712:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return an empty array.
713: "
714:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetConstructors" binding-attr))
715: 
716: (cl:defun get-default-members (obj)
717:   "Summary: Searches for the members defined for the current System.Type whose System.Reflection.DefaultMemberAttribute is set.
718: Returns: An array of System.Reflection.MemberInfo objects representing all default members of the current System.Type. -or- An empty array of type System.Reflection.MemberInfo, if the current System.Type does not have default members.
719: "
720:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetDefaultMembers"))
721: 
722: (cl:defun get-element-type (obj)
723:   "Summary: When overridden in a derived class, returns the System.Type of the object encompassed or referred to by the current array, pointer or reference type.
724: Returns: The System.Type of the object encompassed or referred to by the current array, pointer, or reference type, or if the current System.Type is not an array or a pointer, or is not passed by reference, or represents a generic type or a type parameter in the definition of a generic type or generic method.
725: "
726:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetElementType"))
727: 
728: (cl:defun get-enum-name (obj value)
729:   "Summary: Returns the name of the constant that has the specified value, for the current enumeration type.
730: Returns: The name of the member of the current enumeration type that has the specified value, or if no such constant is found.
731: Parameters:
732:   - value (System.Object): The value whose name is to be retrieved.
733: "
734:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEnumName" value))
735: 
736: (cl:defun get-enum-names (obj)
737:   "Summary: Returns the names of the members of the current enumeration type.
738: Returns: An array that contains the names of the members of the enumeration.
739: "
740:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEnumNames"))
741: 
742: (cl:defun get-enum-underlying-type (obj)
743:   "Summary: Returns the underlying type of the current enumeration type.
744: Returns: The underlying type of the current enumeration.
745: "
746:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEnumUnderlyingType"))
747: 
748: (cl:defun get-enum-values (obj)
749:   "Summary: Returns an array of the values of the constants in the current enumeration type.
750: Returns: An array that contains the values. The elements of the array are sorted by the binary values (that is, the unsigned values) of the enumeration constants.
751: "
752:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEnumValues"))
753: 
754: (cl:defun get-enum-values-as-underlying-type (obj)
755:   "Summary: Retrieves an array of the values of the underlying type constants of this enumeration type.
756: Returns: An array that contains the values of the underlying type constants in this enumeration type.
757: "
758:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEnumValuesAsUnderlyingType"))
759: 
760: (cl:defun get-event (obj name cl:&optional (binding-attr cl:nil supplied-binding-attr))
761:   "Master wrapper for System.Type.GetEvent overloads. Dispatches at runtime."
762:   (cl:cond
763:     ((cl:and (cl:stringp name) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)))
764:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvent" name binding-attr))
765:     ((cl:and (cl:stringp name) (cl:not supplied-binding-attr))
766:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvent" name))
767:     (cl:t (cl:error 'utils:csharp-overload-not-found
768:                     :package-name "SYSTEM-TYPE"
769:                     :class-name <type-str>
770:                     :method-name "GetEvent"
771:                     :supplied-args (cl:append (cl:list :name name) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)))))))
772: 
773: (cl:defun get-event-string (obj name)
774:   "Calls System.Type.GetEvent GetEvent(String) -> EventInfo. Summary: Returns the System.Reflection.EventInfo object representing the specified public event.
775: Returns: The object representing the specified public event that is declared or inherited by the current System.Type, if found; otherwise, .
776: Parameters:
777:   - name (System.String): The string containing the name of an event that is declared or inherited by the current System.Type.
778: "
779:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvent" name))
780: 
781: (cl:defun get-event-string-binding-flags (obj name binding-attr)
782:   "Calls System.Type.GetEvent GetEvent(String, BindingFlags) -> EventInfo. Summary: When overridden in a derived class, returns the System.Reflection.EventInfo object representing the specified event, using the specified binding constraints.
783: Returns: The object representing the specified event that is declared or inherited by the current System.Type, if found; otherwise, .
784: Parameters:
785:   - name (System.String): The name of an event that is declared or inherited by the current System.Type.
786:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
787: "
788:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvent" name binding-attr))
789: 
790: (cl:defun get-events (obj cl:&optional (binding-attr cl:nil supplied-binding-attr))
791:   "Master wrapper for System.Type.GetEvents overloads. Dispatches at runtime."
792:   (cl:cond
793:     ((cl:and supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)))
794:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvents" binding-attr))
795:     ((cl:and (cl:not supplied-binding-attr))
796:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvents"))
797:     (cl:t (cl:error 'utils:csharp-overload-not-found
798:                     :package-name "SYSTEM-TYPE"
799:                     :class-name <type-str>
800:                     :method-name "GetEvents"
801:                     :supplied-args (cl:append (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)))))))
802: 
803: (cl:defun get-events (obj)
804:   "Calls System.Type.GetEvents GetEvents() -> EventInfo[]. Summary: Returns all the public events that are declared or inherited by the current System.Type.
805: Returns: An array of System.Reflection.EventInfo objects representing all the public events which are declared or inherited by the current System.Type. -or- An empty array of type System.Reflection.EventInfo, if the current System.Type does not have public events.
806: "
807:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvents"))
808: 
809: (cl:defun get-events-binding-flags (obj binding-attr)
810:   "Calls System.Type.GetEvents GetEvents(BindingFlags) -> EventInfo[]. Summary: When overridden in a derived class, searches for events that are declared or inherited by the current System.Type, using the specified binding constraints.
811: Returns: An array of System.Reflection.EventInfo objects representing all events that are declared or inherited by the current System.Type that match the specified binding constraints. -or- An empty array of type System.Reflection.EventInfo, if the current System.Type does not have events, or if none of the events match the binding constraints.
812: Parameters:
813:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return an empty array.
814: "
815:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetEvents" binding-attr))
816: 
817: (cl:defun get-field (obj name cl:&optional (binding-attr cl:nil supplied-binding-attr))
818:   "Master wrapper for System.Type.GetField overloads. Dispatches at runtime."
819:   (cl:cond
820:     ((cl:and (cl:stringp name) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)))
821:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetField" name binding-attr))
822:     ((cl:and (cl:stringp name) (cl:not supplied-binding-attr))
823:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetField" name))
824:     (cl:t (cl:error 'utils:csharp-overload-not-found
825:                     :package-name "SYSTEM-TYPE"
826:                     :class-name <type-str>
827:                     :method-name "GetField"
828:                     :supplied-args (cl:append (cl:list :name name) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)))))))
829: 
830: (cl:defun get-field-string (obj name)
831:   "Calls System.Type.GetField GetField(String) -> FieldInfo. Summary: Searches for the public field with the specified name.
832: Returns: An object representing the public field with the specified name, if found; otherwise, .
833: Parameters:
834:   - name (System.String): The string containing the name of the data field to get.
835: "
836:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetField" name))
837: 
838: (cl:defun get-field-string-binding-flags (obj name binding-attr)
839:   "Calls System.Type.GetField GetField(String, BindingFlags) -> FieldInfo. Summary: Searches for the specified field, using the specified binding constraints.
840: Returns: An object representing the field that matches the specified requirements, if found; otherwise, .
841: Parameters:
842:   - name (System.String): The string containing the name of the data field to get.
843:   - binding-attr (System.Reflection.BindingFlags): A bitwise combination of the enumeration values that specify how the search is conducted. -or- System.Reflection.BindingFlags.Default to return .
844: "
845:   (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetField" name binding-attr))
846: 
847: (cl:defun get-fields (obj cl:&optional (binding-attr cl:nil supplied-binding-attr))
848:   "Master wrapper for System.Type.GetFields overloads. Dispatches at runtime."
849:   (cl:cond
850:     ((cl:and supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)))
851:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetFields" binding-attr))
852:     ((cl:and (cl:not supplied-binding-attr))
853:      (dotnet:invoke (cl:the (dotnet "System.Type") obj) "GetFields"))
854:     (cl:t (cl:error 'utils:csharp-overload-not-found
855:                     :package-name "SYSTEM-TYPE"
856:                     :class-name <type-str>
857:                     :method-name "GetFields"
858:                     :supplied-args (cl:append (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)))))))
859: 
860: (cl:defun get-fields (obj)

(Output capped at 50 KB. Showing lines 1-860. Use offset=861 to continue.)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-time-span.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-time-span.lisp</path>
<type>file</type>
<content>
1: ;;; Generated automatically. Do not edit.
2: ;;; Class: System.TimeSpan
3: ;;; Generator Version: 18
4: ;;; Creation Date: 2026-07-02T19:02:01Z
5: 
6: (cl:in-package :cl-user)
7: 
8: (cl:defpackage :system-time-span
9:   (:use :cl)
10:   (:shadow
11:    #:-
12:    #:*
13:    #:/
14:    #:+
15:    #:<
16:    #:<=
17:    #:=
18:    #:>
19:    #:>=
20:   )
21:   (:export
22:    #:<type>
23:    #:<type-str>
24:    #:<creation>
25:    #:<version>
26:    #:new
27:    #:new-int64
28:    #:new-int32-int32-int32
29:    #:new-int32-int32-int32-int32
30:    #:new-int32-int32-int32-int32-int32
31:    #:new-int32-int32-int32-int32-int32-int32
32:    #:+hours-per-day+
33:    #:+microseconds-per-day+
34:    #:+microseconds-per-hour+
35:    #:+microseconds-per-millisecond+
36:    #:+microseconds-per-minute+
37:    #:+microseconds-per-second+
38:    #:+milliseconds-per-day+
39:    #:+milliseconds-per-hour+
40:    #:+milliseconds-per-minute+
41:    #:+milliseconds-per-second+
42:    #:+minutes-per-day+
43:    #:+minutes-per-hour+
44:    #:+nanoseconds-per-tick+
45:    #:+seconds-per-day+
46:    #:+seconds-per-hour+
47:    #:+seconds-per-minute+
48:    #:+ticks-per-day+
49:    #:+ticks-per-hour+
50:    #:+ticks-per-microsecond+
51:    #:+ticks-per-millisecond+
52:    #:+ticks-per-minute+
53:    #:+ticks-per-second+
54:    #:+max-value+
55:    #:+min-value+
56:    #:+zero+
57:    #:days
58:    #:hours
59:    #:microseconds
60:    #:milliseconds
61:    #:minutes
62:    #:nanoseconds
63:    #:seconds
64:    #:ticks
65:    #:total-days
66:    #:total-hours
67:    #:total-microseconds
68:    #:total-milliseconds
69:    #:total-minutes
70:    #:total-nanoseconds
71:    #:total-seconds
72:    #:-
73:    #:--time-span
74:    #:--time-span-time-span
75:    #:*
76:    #:*-time-span-double
77:    #:*-double-time-span
78:    #:/
79:    #:/-time-span-double
80:    #:/-time-span-time-span
81:    #:+
82:    #:+-time-span
83:    #:+-time-span-time-span
84:    #:<
85:    #:<=
86:    #:=
87:    #:>
88:    #:>=
89:    #:add
90:    #:compare
91:    #:compare-to
92:    #:compare-to-object
93:    #:compare-to-time-span
94:    #:divide
95:    #:divide-double
96:    #:divide-time-span
97:    #:duration
98:    #:equals
99:    #:equals*
100:    #:equals-object
101:    #:equals-time-span
102:    #:equals-time-span-time-span
103:    #:from-days
104:    #:from-days-double
105:    #:from-days-int32
106:    #:from-days-int32-int32-int64-int64-int64-int64
107:    #:from-hours
108:    #:from-hours-int32
109:    #:from-hours-double
110:    #:from-hours-int32-int64-int64-int64-int64
111:    #:from-microseconds
112:    #:from-microseconds-int64
113:    #:from-microseconds-double
114:    #:from-milliseconds
115:    #:from-milliseconds-int64
116:    #:from-milliseconds-double
117:    #:from-milliseconds-int64-int64
118:    #:from-minutes
119:    #:from-minutes-int64
120:    #:from-minutes-double
121:    #:from-minutes-int64-int64-int64-int64
122:    #:from-seconds
123:    #:from-seconds-int64
124:    #:from-seconds-double
125:    #:from-seconds-int64-int64-int64
126:    #:from-ticks
127:    #:get-hash-code
128:    #:multiply
129:    #:negate
130:    #:not=
131:    #:parse
132:    #:parse-string
133:    #:parse-string-i-format-provider
134:    #:parse-char]-i-format-provider
135:    #:parse-exact
136:    #:parse-exact-string-string-i-format-provider
137:    #:parse-exact-string-string[]-i-format-provider
138:    #:parse-exact-string-string-i-format-provider-time-span-styles
139:    #:parse-exact-char]-char]-i-format-provider-time-span-styles
140:    #:parse-exact-string-string[]-i-format-provider-time-span-styles
141:    #:parse-exact-char]-string[]-i-format-provider-time-span-styles
142:    #:subtract
143:    #:to-string
144:    #:to-string-string
145:    #:to-string-string-i-format-provider
146:   ))
147: 
148: (cl:in-package :system-time-span)
149: 
150: (cl:defconstant <type> (monoutils:get-type "System.TimeSpan"))
151: (cl:defconstant <type-str> "System.TimeSpan")
152: (cl:defconstant <creation> "2026-07-02T19:02:01Z")
153: (cl:defconstant <version> 18)
154: 
155: ;; Register C# Type with CLOS
156: (cl:eval-when (:compile-toplevel :load-toplevel :execute)
157:   (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
158:                  (dotnet:resolve-type "System.TimeSpan")))
159: 
160: (cl:defun new (cl:&rest args)
161:   "Passthrough constructor for System.TimeSpan. Dispatches at runtime."
162:   (cl:apply (cl:function dotnet:new) <type-str> args))
163: 
164: (cl:defun new-int64 (ticks)
165:   "Calls System.TimeSpan constructor new(Int64). Summary: Initializes a new instance of the System.TimeSpan structure to the specified number of ticks.
166: Parameters:
167:   - ticks (System.Int64): A time period expressed in 100-nanosecond units.
168: "
169:   (dotnet:new <type-str> ticks))
170: 
171: (cl:defun new-int32-int32-int32 (hours minutes seconds)
172:   "Calls System.TimeSpan constructor new(Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours, minutes, and seconds.
173: Parameters:
174:   - hours (System.Int32): Number of hours.
175:   - minutes (System.Int32): Number of minutes.
176:   - seconds (System.Int32): Number of seconds.
177: "
178:   (dotnet:new <type-str> hours minutes seconds))
179: 
180: (cl:defun new-int32-int32-int32-int32 (days hours minutes seconds)
181:   "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, and seconds.
182: Parameters:
183:   - days (System.Int32): Number of days.
184:   - hours (System.Int32): Number of hours.
185:   - minutes (System.Int32): Number of minutes.
186:   - seconds (System.Int32): Number of seconds.
187: "
188:   (dotnet:new <type-str> days hours minutes seconds))
189: 
190: (cl:defun new-int32-int32-int32-int32-int32 (days hours minutes seconds milliseconds)
191:   "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, seconds, and milliseconds.
192: Parameters:
193:   - days (System.Int32): Number of days.
194:   - hours (System.Int32): Number of hours.
195:   - minutes (System.Int32): Number of minutes.
196:   - seconds (System.Int32): Number of seconds.
197:   - milliseconds (System.Int32): Number of milliseconds.
198: "
199:   (dotnet:new <type-str> days hours minutes seconds milliseconds))
200: 
201: (cl:defun new-int32-int32-int32-int32-int32-int32 (days hours minutes seconds milliseconds microseconds)
202:   "Calls System.TimeSpan constructor new(Int32, Int32, Int32, Int32, Int32, Int32). Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, seconds, milliseconds, and microseconds.
203: Parameters:
204:   - days (System.Int32): Number of days.
205:   - hours (System.Int32): Number of hours.
206:   - minutes (System.Int32): Number of minutes.
207:   - seconds (System.Int32): Number of seconds.
208:   - milliseconds (System.Int32): Number of milliseconds.
209:   - microseconds (System.Int32): Number of microseconds.
210: "
211:   (dotnet:new <type-str> days hours minutes seconds milliseconds microseconds))
212: 
213: (cl:defconstant +hours-per-day+ (dotnet:static <type-str> "HoursPerDay"))
214: (cl:setf (cl:documentation (cl:quote +hours-per-day+) (cl:quote cl:variable)) "Represents the number of hours in 1 day. This field is constant.")
215: 
216: (cl:defconstant +microseconds-per-day+ (dotnet:static <type-str> "MicrosecondsPerDay"))
217: (cl:setf (cl:documentation (cl:quote +microseconds-per-day+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 day. This field is constant.")
218: 
219: (cl:defconstant +microseconds-per-hour+ (dotnet:static <type-str> "MicrosecondsPerHour"))
220: (cl:setf (cl:documentation (cl:quote +microseconds-per-hour+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 hour. This field is constant.")
221: 
222: (cl:defconstant +microseconds-per-millisecond+ (dotnet:static <type-str> "MicrosecondsPerMillisecond"))
223: (cl:setf (cl:documentation (cl:quote +microseconds-per-millisecond+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 millisecond. This field is constant.")
224: 
225: (cl:defconstant +microseconds-per-minute+ (dotnet:static <type-str> "MicrosecondsPerMinute"))
226: (cl:setf (cl:documentation (cl:quote +microseconds-per-minute+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 minute. This field is constant.")
227: 
228: (cl:defconstant +microseconds-per-second+ (dotnet:static <type-str> "MicrosecondsPerSecond"))
229: (cl:setf (cl:documentation (cl:quote +microseconds-per-second+) (cl:quote cl:variable)) "Represents the number of microseconds in 1 second. This field is constant.")
230: 
231: (cl:defconstant +milliseconds-per-day+ (dotnet:static <type-str> "MillisecondsPerDay"))
232: (cl:setf (cl:documentation (cl:quote +milliseconds-per-day+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 day. This field is constant.")
233: 
234: (cl:defconstant +milliseconds-per-hour+ (dotnet:static <type-str> "MillisecondsPerHour"))
235: (cl:setf (cl:documentation (cl:quote +milliseconds-per-hour+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 hour. This field is constant.")
236: 
237: (cl:defconstant +milliseconds-per-minute+ (dotnet:static <type-str> "MillisecondsPerMinute"))
238: (cl:setf (cl:documentation (cl:quote +milliseconds-per-minute+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 minute. This field is constant.")
239: 
240: (cl:defconstant +milliseconds-per-second+ (dotnet:static <type-str> "MillisecondsPerSecond"))
241: (cl:setf (cl:documentation (cl:quote +milliseconds-per-second+) (cl:quote cl:variable)) "Represents the number of milliseconds in 1 second. This field is constant.")
242: 
243: (cl:defconstant +minutes-per-day+ (dotnet:static <type-str> "MinutesPerDay"))
244: (cl:setf (cl:documentation (cl:quote +minutes-per-day+) (cl:quote cl:variable)) "Represents the number of minutes in 1 day. This field is constant.")
245: 
246: (cl:defconstant +minutes-per-hour+ (dotnet:static <type-str> "MinutesPerHour"))
247: (cl:setf (cl:documentation (cl:quote +minutes-per-hour+) (cl:quote cl:variable)) "Represents the number of minutes in 1 hour. This field is constant.")
248: 
249: (cl:defconstant +nanoseconds-per-tick+ (dotnet:static <type-str> "NanosecondsPerTick"))
250: (cl:setf (cl:documentation (cl:quote +nanoseconds-per-tick+) (cl:quote cl:variable)) "Represents the number of nanoseconds per tick. This field is constant.")
251: 
252: (cl:defconstant +seconds-per-day+ (dotnet:static <type-str> "SecondsPerDay"))
253: (cl:setf (cl:documentation (cl:quote +seconds-per-day+) (cl:quote cl:variable)) "Represents the number of seconds in 1 day. This field is constant.")
254: 
255: (cl:defconstant +seconds-per-hour+ (dotnet:static <type-str> "SecondsPerHour"))
256: (cl:setf (cl:documentation (cl:quote +seconds-per-hour+) (cl:quote cl:variable)) "Represents the number of seconds in 1 hour. This field is constant.")
257: 
258: (cl:defconstant +seconds-per-minute+ (dotnet:static <type-str> "SecondsPerMinute"))
259: (cl:setf (cl:documentation (cl:quote +seconds-per-minute+) (cl:quote cl:variable)) "Represents the number of seconds in 1 minute. This field is constant.")
260: 
261: (cl:defconstant +ticks-per-day+ (dotnet:static <type-str> "TicksPerDay"))
262: (cl:setf (cl:documentation (cl:quote +ticks-per-day+) (cl:quote cl:variable)) "Represents the number of ticks in 1 day. This field is constant.")
263: 
264: (cl:defconstant +ticks-per-hour+ (dotnet:static <type-str> "TicksPerHour"))
265: (cl:setf (cl:documentation (cl:quote +ticks-per-hour+) (cl:quote cl:variable)) "Represents the number of ticks in 1 hour. This field is constant.")
266: 
267: (cl:defconstant +ticks-per-microsecond+ (dotnet:static <type-str> "TicksPerMicrosecond"))
268: (cl:setf (cl:documentation (cl:quote +ticks-per-microsecond+) (cl:quote cl:variable)) "Represents the number of ticks in 1 microsecond. This field is constant.")
269: 
270: (cl:defconstant +ticks-per-millisecond+ (dotnet:static <type-str> "TicksPerMillisecond"))
271: (cl:setf (cl:documentation (cl:quote +ticks-per-millisecond+) (cl:quote cl:variable)) "Represents the number of ticks in 1 millisecond. This field is constant.")
272: 
273: (cl:defconstant +ticks-per-minute+ (dotnet:static <type-str> "TicksPerMinute"))
274: (cl:setf (cl:documentation (cl:quote +ticks-per-minute+) (cl:quote cl:variable)) "Represents the number of ticks in 1 minute. This field is constant.")
275: 
276: (cl:defconstant +ticks-per-second+ (dotnet:static <type-str> "TicksPerSecond"))
277: (cl:setf (cl:documentation (cl:quote +ticks-per-second+) (cl:quote cl:variable)) "Represents the number of ticks in 1 second.")
278: 
279: (cl:defconstant +max-value+ (dotnet:static <type-str> "MaxValue"))
280: (cl:setf (cl:documentation (cl:quote +max-value+) (cl:quote cl:variable)) "Represents the maximum System.TimeSpan value. This field is read-only.")
281: 
282: (cl:defconstant +min-value+ (dotnet:static <type-str> "MinValue"))
283: (cl:setf (cl:documentation (cl:quote +min-value+) (cl:quote cl:variable)) "Represents the minimum System.TimeSpan value. This field is read-only.")
284: 
285: (cl:defconstant +zero+ (dotnet:static <type-str> "Zero"))
286: (cl:setf (cl:documentation (cl:quote +zero+) (cl:quote cl:variable)) "Represents the zero System.TimeSpan value. This field is read-only.")
287: 
288: (cl:defun days (obj)
289:   "Gets the days component of the time interval represented by the current System.TimeSpan structure."
290:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Days"))
291: 
292: (cl:defun hours (obj)
293:   "Gets the hours component of the time interval represented by the current System.TimeSpan structure."
294:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Hours"))
295: 
296: (cl:defun microseconds (obj)
297:   "Gets the microseconds component of the time interval represented by the current System.TimeSpan structure."
298:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Microseconds"))
299: 
300: (cl:defun milliseconds (obj)
301:   "Gets the milliseconds component of the time interval represented by the current System.TimeSpan structure."
302:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Milliseconds"))
303: 
304: (cl:defun minutes (obj)
305:   "Gets the minutes component of the time interval represented by the current System.TimeSpan structure."
306:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Minutes"))
307: 
308: (cl:defun nanoseconds (obj)
309:   "Gets the nanoseconds component of the time interval represented by the current System.TimeSpan structure."
310:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Nanoseconds"))
311: 
312: (cl:defun seconds (obj)
313:   "Gets the seconds component of the time interval represented by the current System.TimeSpan structure."
314:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Seconds"))
315: 
316: (cl:defun ticks (obj)
317:   "Gets the number of ticks that represent the value of the current System.TimeSpan structure."
318:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_Ticks"))
319: 
320: (cl:defun total-days (obj)
321:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional days."
322:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalDays"))
323: 
324: (cl:defun total-hours (obj)
325:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional hours."
326:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalHours"))
327: 
328: (cl:defun total-microseconds (obj)
329:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional microseconds."
330:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMicroseconds"))
331: 
332: (cl:defun total-milliseconds (obj)
333:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional milliseconds."
334:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMilliseconds"))
335: 
336: (cl:defun total-minutes (obj)
337:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional minutes."
338:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalMinutes"))
339: 
340: (cl:defun total-nanoseconds (obj)
341:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional nanoseconds."
342:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalNanoseconds"))
343: 
344: (cl:defun total-seconds (obj)
345:   "Gets the value of the current System.TimeSpan structure expressed in whole and fractional seconds."
346:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "get_TotalSeconds"))
347: 
348: (cl:defun - (t-val cl:&optional (t2 cl:nil supplied-t2))
349:   "Master wrapper for System.TimeSpan.- overloads. Dispatches at runtime."
350:   (cl:cond
351:     ((cl:and (cl:or (cl:null t-val) (monoutils:dotnet-p t-val)) supplied-t2 (cl:or (cl:null t2) (monoutils:dotnet-p t2)))
352:      (dotnet:static <type-str> "op_Subtraction" t-val t2))
353:     ((cl:and (cl:or (cl:null t-val) (monoutils:dotnet-p t-val)) (cl:not supplied-t2))
354:      (dotnet:static <type-str> "op_UnaryNegation" t-val))
355:     (cl:t (cl:error 'utils:csharp-overload-not-found
356:                     :package-name "SYSTEM-TIME-SPAN"
357:                     :class-name <type-str>
358:                     :method-name "-"
359:                     :supplied-args (cl:append (cl:list :t-val t-val) (cl:when supplied-t2 (cl:list :t2 t2)))))))
360: 
361: (cl:defun --time-span (t-val)
362:   "Calls System.TimeSpan.- -(TimeSpan) -> TimeSpan. Summary: Returns a System.TimeSpan whose value is the negated value of the specified instance.
363: Returns: An object that has the same numeric value as this instance, but the opposite sign.
364: Parameters:
365:   - t-val (System.TimeSpan): The time interval to be negated.
366: "
367:   (dotnet:static <type-str> "op_UnaryNegation" (cl:the (dotnet "System.TimeSpan") t-val)))
368: 
369: (cl:defun --time-span-time-span (t1 t2)
370:   "Calls System.TimeSpan.- -(TimeSpan, TimeSpan) -> TimeSpan. Summary: Subtracts a specified System.TimeSpan from another specified System.TimeSpan.
371: Returns: An object whose value is the result of the value of t1 minus the value of t2.
372: Parameters:
373:   - t1 (System.TimeSpan): The minuend.
374:   - t2 (System.TimeSpan): The subtrahend.
375: "
376:   (dotnet:static <type-str> "op_Subtraction" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
377: 
378: (cl:defun * (time-span factor)
379:   "Master wrapper for System.TimeSpan.* overloads. Dispatches at runtime."
380:   (cl:cond
381:     ((cl:and (cl:or (cl:null time-span) (monoutils:dotnet-p time-span)) (cl:numberp factor))
382:      (dotnet:static <type-str> "op_Multiply" time-span factor))
383:     ((cl:and (cl:numberp time-span) (cl:or (cl:null factor) (monoutils:dotnet-p factor)))
384:      (dotnet:static <type-str> "op_Multiply" time-span factor))
385:     (cl:t (cl:error 'utils:csharp-overload-not-found
386:                     :package-name "SYSTEM-TIME-SPAN"
387:                     :class-name <type-str>
388:                     :method-name "*"
389:                     :supplied-args (cl:append (cl:list :time-span time-span) (cl:list :factor factor))))))
390: 
391: (cl:defun *-time-span-double (time-span factor)
392:   "Calls System.TimeSpan.* *(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified timeSpan instance and the specified factor.
393: Returns: A new object that represents the value of the specified timeSpan instance multiplied by the value of the specified factor.
394: Parameters:
395:   - time-span (System.TimeSpan): The value to be multiplied.
396:   - factor (System.Double): The value to be multiplied by.
397: "
398:   (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.TimeSpan") time-span) (cl:the (dotnet "System.Double") factor)))
399: 
400: (cl:defun *-double-time-span (factor time-span)
401:   "Calls System.TimeSpan.* *(Double, TimeSpan) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of multiplying the specified factor and the specified timeSpan instance.
402: Returns: A new object that represents the value of the specified factor multiplied by the value of the specified timeSpan instance.
403: Parameters:
404:   - factor (System.Double): The value to be multiplied by.
405:   - time-span (System.TimeSpan): The value to be multiplied.
406: "
407:   (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.Double") factor) (cl:the (dotnet "System.TimeSpan") time-span)))
408: 
409: (cl:defun / (time-span divisor)
410:   "Master wrapper for System.TimeSpan./ overloads. Dispatches at runtime."
411:   (cl:cond
412:     ((cl:and (cl:or (cl:null time-span) (monoutils:dotnet-p time-span)) (cl:numberp divisor))
413:      (dotnet:static <type-str> "op_Division" time-span divisor))
414:     ((cl:and (cl:or (cl:null time-span) (monoutils:dotnet-p time-span)) (cl:or (cl:null divisor) (monoutils:dotnet-p divisor)))
415:      (dotnet:static <type-str> "op_Division" time-span divisor))
416:     (cl:t (cl:error 'utils:csharp-overload-not-found
417:                     :package-name "SYSTEM-TIME-SPAN"
418:                     :class-name <type-str>
419:                     :method-name "/"
420:                     :supplied-args (cl:append (cl:list :time-span time-span) (cl:list :divisor divisor))))))
421: 
422: (cl:defun /-time-span-double (time-span divisor)
423:   "Calls System.TimeSpan./ /(TimeSpan, Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing the specified timeSpan by the specified divisor.
424: Returns: A new object that represents the value of timeSpan divided by the value of divisor.
425: Parameters:
426:   - time-span (System.TimeSpan): The dividend or value to be divided.
427:   - divisor (System.Double): The divisor or value to be divided by.
428: "
429:   (dotnet:static <type-str> "op_Division" (cl:the (dotnet "System.TimeSpan") time-span) (cl:the (dotnet "System.Double") divisor)))
430: 
431: (cl:defun /-time-span-time-span (t1 t2)
432:   "Calls System.TimeSpan./ /(TimeSpan, TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing t1 by t2.
433: Returns: A new value that represents result of dividing t1 by the value of t2.
434: Parameters:
435:   - t1 (System.TimeSpan): The dividend or value to be divided.
436:   - t2 (System.TimeSpan): The divisor or value to be divided by.
437: "
438:   (dotnet:static <type-str> "op_Division" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
439: 
440: (cl:defun + (t-val cl:&optional (t2 cl:nil supplied-t2))
441:   "Master wrapper for System.TimeSpan.+ overloads. Dispatches at runtime."
442:   (cl:cond
443:     ((cl:and (cl:or (cl:null t-val) (monoutils:dotnet-p t-val)) supplied-t2 (cl:or (cl:null t2) (monoutils:dotnet-p t2)))
444:      (dotnet:static <type-str> "op_Addition" t-val t2))
445:     ((cl:and (cl:or (cl:null t-val) (monoutils:dotnet-p t-val)) (cl:not supplied-t2))
446:      (dotnet:static <type-str> "op_UnaryPlus" t-val))
447:     (cl:t (cl:error 'utils:csharp-overload-not-found
448:                     :package-name "SYSTEM-TIME-SPAN"
449:                     :class-name <type-str>
450:                     :method-name "+"
451:                     :supplied-args (cl:append (cl:list :t-val t-val) (cl:when supplied-t2 (cl:list :t2 t2)))))))
452: 
453: (cl:defun +-time-span (t-val)
454:   "Calls System.TimeSpan.+ +(TimeSpan) -> TimeSpan. Summary: Returns the specified instance of System.TimeSpan.
455: Returns: The time interval specified by t.
456: Parameters:
457:   - t-val (System.TimeSpan): The time interval to return.
458: "
459:   (dotnet:static <type-str> "op_UnaryPlus" (cl:the (dotnet "System.TimeSpan") t-val)))
460: 
461: (cl:defun +-time-span-time-span (t1 t2)
462:   "Calls System.TimeSpan.+ +(TimeSpan, TimeSpan) -> TimeSpan. Summary: Adds two specified System.TimeSpan instances.
463: Returns: An object whose value is the sum of the values of t1 and t2.
464: Parameters:
465:   - t1 (System.TimeSpan): The first time interval to add.
466:   - t2 (System.TimeSpan): The second time interval to add.
467: "
468:   (dotnet:static <type-str> "op_Addition" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
469: 
470: (cl:defun < (t1 t2)
471:   "Summary: Indicates whether a specified System.TimeSpan is less than another specified System.TimeSpan.
472: Returns: if the value of t1 is less than the value of t2; otherwise, .
473: Parameters:
474:   - t1 (System.TimeSpan): The first time interval to compare.
475:   - t2 (System.TimeSpan): The second time interval to compare.
476: "
477:   (dotnet:static <type-str> "op_LessThan" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
478: 
479: (cl:defun <= (t1 t2)
480:   "Summary: Indicates whether a specified System.TimeSpan is less than or equal to another specified System.TimeSpan.
481: Returns: if the value of t1 is less than or equal to the value of t2; otherwise, .
482: Parameters:
483:   - t1 (System.TimeSpan): The first time interval to compare.
484:   - t2 (System.TimeSpan): The second time interval to compare.
485: "
486:   (dotnet:static <type-str> "op_LessThanOrEqual" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
487: 
488: (cl:defun = (t1 t2)
489:   "Summary: Indicates whether two System.TimeSpan instances are equal.
490: Returns: if the values of t1 and t2 are equal; otherwise, .
491: Parameters:
492:   - t1 (System.TimeSpan): The first time interval to compare.
493:   - t2 (System.TimeSpan): The second time interval to compare.
494: "
495:   (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
496: 
497: (cl:defun > (t1 t2)
498:   "Summary: Indicates whether a specified System.TimeSpan is greater than another specified System.TimeSpan.
499: Returns: if the value of t1 is greater than the value of t2; otherwise, .
500: Parameters:
501:   - t1 (System.TimeSpan): The first time interval to compare.
502:   - t2 (System.TimeSpan): The second time interval to compare.
503: "
504:   (dotnet:static <type-str> "op_GreaterThan" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
505: 
506: (cl:defun >= (t1 t2)
507:   "Summary: Indicates whether a specified System.TimeSpan is greater than or equal to another specified System.TimeSpan.
508: Returns: if the value of t1 is greater than or equal to the value of t2; otherwise, .
509: Parameters:
510:   - t1 (System.TimeSpan): The first time interval to compare.
511:   - t2 (System.TimeSpan): The second time interval to compare.
512: "
513:   (dotnet:static <type-str> "op_GreaterThanOrEqual" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
514: 
515: (cl:defun add (obj ts)
516:   "Summary: Returns a new System.TimeSpan object whose value is the sum of the specified System.TimeSpan object and this instance.
517: Returns: A new object that represents the value of this instance plus the value of ts.
518: Parameters:
519:   - ts (System.TimeSpan): The time interval to add.
520: "
521:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Add" ts))
522: 
523: (cl:defun compare (t1 t2)
524:   "Summary: Compares two System.TimeSpan values and returns an integer that indicates whether the first value is shorter than, equal to, or longer than the second value.
525: Returns: One of the following values. Value Description -1t1 is shorter than t2. 0t1 is equal to t2. 1t1 is longer than t2.
526: Parameters:
527:   - t1 (System.TimeSpan): The first time interval to compare.
528:   - t2 (System.TimeSpan): The second time interval to compare.
529: "
530:   (dotnet:static <type-str> "Compare" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
531: 
532: (cl:defun compare-to (obj value)
533:   "Master wrapper for System.TimeSpan.CompareTo overloads. Dispatches at runtime."
534:   (cl:cond
535:     ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)))
536:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))
537:     ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)))
538:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))
539:     (cl:t (cl:error 'utils:csharp-overload-not-found
540:                     :package-name "SYSTEM-TIME-SPAN"
541:                     :class-name <type-str>
542:                     :method-name "CompareTo"
543:                     :supplied-args (cl:append (cl:list :value value))))))
544: 
545: (cl:defun compare-to-object (obj value)
546:   "Calls System.TimeSpan.CompareTo CompareTo(Object) -> Int32. Summary: Compares this instance to a specified object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the specified object.
547: Returns: One of the following values. Value Description -1 This instance is shorter than value. 0 This instance is equal to value. 1 This instance is longer than value, or value is .
548: Parameters:
549:   - value (System.Object): An object to compare, or .
550: "
551:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))
552: 
553: (cl:defun compare-to-time-span (obj value)
554:   "Calls System.TimeSpan.CompareTo CompareTo(TimeSpan) -> Int32. Summary: Compares this instance to a specified System.TimeSpan object and returns an integer that indicates whether this instance is shorter than, equal to, or longer than the System.TimeSpan object.
555: Returns: A signed number indicating the relative values of this instance and value. Value Description A negative integer This instance is shorter than value. Zero This instance is equal to value. A positive integer This instance is longer than value.
556: Parameters:
557:   - value (System.TimeSpan): An object to compare to this instance.
558: "
559:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "CompareTo" value))
560: 
561: (cl:defun divide (obj divisor)
562:   "Master wrapper for System.TimeSpan.Divide overloads. Dispatches at runtime."
563:   (cl:cond
564:     ((cl:and (cl:numberp divisor))
565:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" divisor))
566:     ((cl:and (cl:or (cl:null divisor) (monoutils:dotnet-p divisor)))
567:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" divisor))
568:     (cl:t (cl:error 'utils:csharp-overload-not-found
569:                     :package-name "SYSTEM-TIME-SPAN"
570:                     :class-name <type-str>
571:                     :method-name "Divide"
572:                     :supplied-args (cl:append (cl:list :divisor divisor))))))
573: 
574: (cl:defun divide-double (obj divisor)
575:   "Calls System.TimeSpan.Divide Divide(Double) -> TimeSpan. Summary: Returns a new System.TimeSpan object whose value is the result of dividing this instance by the specified divisor.
576: Returns: A new object that represents the value of this instance divided by the value of divisor.
577: Parameters:
578:   - divisor (System.Double): The divisor or value to be divided by.
579: "
580:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" divisor))
581: 
582: (cl:defun divide-time-span (obj ts)
583:   "Calls System.TimeSpan.Divide Divide(TimeSpan) -> Double. Summary: Returns a new System.Double value that's the result of dividing this instance by ts.
584: Returns: A new value that represents result of dividing this instance by the value of ts.
585: Parameters:
586:   - ts (System.TimeSpan): The value to be divided by.
587: "
588:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Divide" ts))
589: 
590: (cl:defun duration (obj)
591:   "Summary: Returns a new System.TimeSpan object whose value is the absolute value of the current System.TimeSpan object.
592: Returns: A new object whose value is the absolute value of the current System.TimeSpan object.
593: "
594:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Duration"))
595: 
596: (cl:defun equals (obj value)
597:   "Master wrapper for System.TimeSpan.Equals overloads. Dispatches at runtime."
598:   (cl:cond
599:     ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)))
600:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" value))
601:     ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)))
602:      (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" value))
603:     (cl:t (cl:error 'utils:csharp-overload-not-found
604:                     :package-name "SYSTEM-TIME-SPAN"
605:                     :class-name <type-str>
606:                     :method-name "Equals"
607:                     :supplied-args (cl:append (cl:list :value value))))))
608: 
609: (cl:defun equals* (t1 t2)
610:   "Summary: Returns a value that indicates whether two specified instances of System.TimeSpan are equal.
611: Returns: if the values of t1 and t2 are equal; otherwise, .
612: Parameters:
613:   - t1 (System.TimeSpan): The first time interval to compare.
614:   - t2 (System.TimeSpan): The second time interval to compare.
615: "
616:   (dotnet:static <type-str> "Equals" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
617: 
618: (cl:defun equals-object (obj value)
619:   "Calls System.TimeSpan.Equals Equals(Object) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified object.
620: Returns: if value is a System.TimeSpan object that represents the same time interval as the current System.TimeSpan structure; otherwise, .
621: Parameters:
622:   - value (System.Object): An object to compare with this instance.
623: "
624:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" value))
625: 
626: (cl:defun equals-time-span (obj obj)
627:   "Calls System.TimeSpan.Equals Equals(TimeSpan) -> Boolean. Summary: Returns a value indicating whether this instance is equal to a specified System.TimeSpan object.
628: Returns: if obj represents the same time interval as this instance; otherwise, .
629: Parameters:
630:   - obj (System.TimeSpan): An object to compare with this instance.
631: "
632:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Equals" obj))
633: 
634: (cl:defun equals-time-span-time-span (t1 t2)
635:   "Calls System.TimeSpan.Equals Equals(TimeSpan, TimeSpan) -> Boolean. Summary: Returns a value that indicates whether two specified instances of System.TimeSpan are equal.
636: Returns: if the values of t1 and t2 are equal; otherwise, .
637: Parameters:
638:   - t1 (System.TimeSpan): The first time interval to compare.
639:   - t2 (System.TimeSpan): The second time interval to compare.
640: "
641:   (dotnet:static <type-str> "Equals" (cl:the (dotnet "System.TimeSpan") t1) (cl:the (dotnet "System.TimeSpan") t2)))
642: 
643: (cl:defun from-days (value cl:&key (hours cl:nil supplied-hours) (minutes cl:nil supplied-minutes) (seconds cl:nil supplied-seconds) (milliseconds cl:nil supplied-milliseconds) (microseconds cl:nil supplied-microseconds))
644:   "Master wrapper for System.TimeSpan.FromDays overloads. Dispatches at runtime."
645:   (cl:cond
646:     ((cl:and (cl:numberp value) (cl:numberp hours) (cl:numberp minutes) (cl:numberp seconds) (cl:numberp milliseconds) (cl:numberp microseconds))
647:      (dotnet:static <type-str> "FromDays" value hours minutes seconds milliseconds microseconds))
648:     ((cl:and (cl:numberp value) (cl:not supplied-hours) (cl:not supplied-minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
649:      (dotnet:static <type-str> "FromDays" value))
650:     ((cl:and (cl:numberp value) (cl:not supplied-hours) (cl:not supplied-minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
651:      (dotnet:static <type-str> "FromDays" value))
652:     (cl:t (cl:error 'utils:csharp-overload-not-found
653:                     :package-name "SYSTEM-TIME-SPAN"
654:                     :class-name <type-str>
655:                     :method-name "FromDays"
656:                     :supplied-args (cl:append (cl:list :value value) (cl:when supplied-hours (cl:list :hours hours)) (cl:when supplied-minutes (cl:list :minutes minutes)) (cl:when supplied-seconds (cl:list :seconds seconds)) (cl:when supplied-milliseconds (cl:list :milliseconds milliseconds)) (cl:when supplied-microseconds (cl:list :microseconds microseconds)))))))
657: 
658: (cl:defun from-days-double (value)
659:   "Calls System.TimeSpan.FromDays FromDays(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of days, where the specification is accurate to the nearest millisecond.
660: Returns: An object that represents value.
661: Parameters:
662:   - value (System.Double): A number of days, accurate to the nearest millisecond.
663: "
664:   (dotnet:static <type-str> "FromDays" (cl:the (dotnet "System.Double") value)))
665: 
666: (cl:defun from-days-int32 (days)
667:   "Calls System.TimeSpan.FromDays FromDays(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days.
668: Returns: Returns a System.TimeSpan that represents a specified number of days.
669: Parameters:
670:   - days (System.Int32): Number of days.
671: "
672:   (dotnet:static <type-str> "FromDays" (cl:the (dotnet "System.Int32") days)))
673: 
674: (cl:defun from-days-int32-int32-int64-int64-int64-int64 (days hours minutes seconds milliseconds microseconds)
675:   "Calls System.TimeSpan.FromDays FromDays(Int32, Int32, Int64, Int64, Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of days, hours, minutes, seconds, milliseconds, and microseconds.
676: Returns: Returns a System.TimeSpan that represents a specified number of days, hours, minutes, seconds, milliseconds, and microseconds.
677: Parameters:
678:   - days (System.Int32): Number of days.
679:   - hours (System.Int32): Number of hours.
680:   - minutes (System.Int64): Number of minutes.
681:   - seconds (System.Int64): Number of seconds.
682:   - milliseconds (System.Int64): Number of milliseconds.
683:   - microseconds (System.Int64): Number of microseconds.
684: "
685:   (dotnet:static <type-str> "FromDays" (cl:the (dotnet "System.Int32") days) (cl:the (dotnet "System.Int32") hours) (cl:the (dotnet "System.Int64") minutes) (cl:the (dotnet "System.Int64") seconds) (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))
686: 
687: ;; Note: System.TimeSpan.FromDays also has the following overloads with special
688: ;; parameter types (ref, out, params, or defaults) that are not
689: ;; yet supported:
690: ;;   FromDays(Int32, Int32, Int64, Int64, Int64, Int64) -> TimeSpan
691: 
692: (cl:defun from-hours (hours cl:&key (minutes cl:nil supplied-minutes) (seconds cl:nil supplied-seconds) (milliseconds cl:nil supplied-milliseconds) (microseconds cl:nil supplied-microseconds))
693:   "Master wrapper for System.TimeSpan.FromHours overloads. Dispatches at runtime."
694:   (cl:cond
695:     ((cl:and (cl:numberp hours) (cl:numberp minutes) (cl:numberp seconds) (cl:numberp milliseconds) (cl:numberp microseconds))
696:      (dotnet:static <type-str> "FromHours" hours minutes seconds milliseconds microseconds))
697:     ((cl:and (cl:numberp hours) (cl:not supplied-minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
698:      (dotnet:static <type-str> "FromHours" hours))
699:     ((cl:and (cl:numberp hours) (cl:not supplied-minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
700:      (dotnet:static <type-str> "FromHours" hours))
701:     (cl:t (cl:error 'utils:csharp-overload-not-found
702:                     :package-name "SYSTEM-TIME-SPAN"
703:                     :class-name <type-str>
704:                     :method-name "FromHours"
705:                     :supplied-args (cl:append (cl:list :hours hours) (cl:when supplied-minutes (cl:list :minutes minutes)) (cl:when supplied-seconds (cl:list :seconds seconds)) (cl:when supplied-milliseconds (cl:list :milliseconds milliseconds)) (cl:when supplied-microseconds (cl:list :microseconds microseconds)))))))
706: 
707: (cl:defun from-hours-int32 (hours)
708:   "Calls System.TimeSpan.FromHours FromHours(Int32) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours.
709: Returns: Returns a System.TimeSpan that represents a specified number of hours.
710: Parameters:
711:   - hours (System.Int32): Number of hours.
712: "
713:   (dotnet:static <type-str> "FromHours" (cl:the (dotnet "System.Int32") hours)))
714: 
715: (cl:defun from-hours-double (value)
716:   "Calls System.TimeSpan.FromHours FromHours(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of hours, where the specification is accurate to the nearest millisecond.
717: Returns: An object that represents value.
718: Parameters:
719:   - value (System.Double): A number of hours accurate to the nearest millisecond.
720: "
721:   (dotnet:static <type-str> "FromHours" (cl:the (dotnet "System.Double") value)))
722: 
723: (cl:defun from-hours-int32-int64-int64-int64-int64 (hours minutes seconds milliseconds microseconds)
724:   "Calls System.TimeSpan.FromHours FromHours(Int32, Int64, Int64, Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of hours, minutes, seconds, milliseconds, and microseconds.
725: Returns: Returns a System.TimeSpan that represents a specified number of hours, minutes, seconds, milliseconds, and microseconds.
726: Parameters:
727:   - hours (System.Int32): Number of hours.
728:   - minutes (System.Int64): Number of minutes.
729:   - seconds (System.Int64): Number of seconds.
730:   - milliseconds (System.Int64): Number of milliseconds.
731:   - microseconds (System.Int64): Number of microseconds.
732: "
733:   (dotnet:static <type-str> "FromHours" (cl:the (dotnet "System.Int32") hours) (cl:the (dotnet "System.Int64") minutes) (cl:the (dotnet "System.Int64") seconds) (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))
734: 
735: ;; Note: System.TimeSpan.FromHours also has the following overloads with special
736: ;; parameter types (ref, out, params, or defaults) that are not
737: ;; yet supported:
738: ;;   FromHours(Int32, Int64, Int64, Int64, Int64) -> TimeSpan
739: 
740: (cl:defun from-microseconds (microseconds)
741:   "Master wrapper for System.TimeSpan.FromMicroseconds overloads. Dispatches at runtime."
742:   (cl:cond
743:     ((cl:and (cl:numberp microseconds))
744:      (dotnet:static <type-str> "FromMicroseconds" microseconds))
745:     ((cl:and (cl:numberp microseconds))
746:      (dotnet:static <type-str> "FromMicroseconds" microseconds))
747:     (cl:t (cl:error 'utils:csharp-overload-not-found
748:                     :package-name "SYSTEM-TIME-SPAN"
749:                     :class-name <type-str>
750:                     :method-name "FromMicroseconds"
751:                     :supplied-args (cl:append (cl:list :microseconds microseconds))))))
752: 
753: (cl:defun from-microseconds-int64 (microseconds)
754:   "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of microseconds.
755: Returns: Returns a System.TimeSpan that represents a specified number of microseconds.
756: Parameters:
757:   - microseconds (System.Int64): Number of microseconds.
758: "
759:   (dotnet:static <type-str> "FromMicroseconds" (cl:the (dotnet "System.Int64") microseconds)))
760: 
761: (cl:defun from-microseconds-double (value)
762:   "Calls System.TimeSpan.FromMicroseconds FromMicroseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of microseconds.
763: Returns: An object that represents value.
764: Parameters:
765:   - value (System.Double): A number of microseconds.
766: "
767:   (dotnet:static <type-str> "FromMicroseconds" (cl:the (dotnet "System.Double") value)))
768: 
769: (cl:defun from-milliseconds (milliseconds cl:&optional (microseconds cl:nil supplied-microseconds))
770:   "Master wrapper for System.TimeSpan.FromMilliseconds overloads. Dispatches at runtime."
771:   (cl:cond
772:     ((cl:and (cl:numberp milliseconds) supplied-microseconds (cl:numberp microseconds))
773:      (dotnet:static <type-str> "FromMilliseconds" milliseconds microseconds))
774:     ((cl:and (cl:numberp milliseconds) (cl:not supplied-microseconds))
775:      (dotnet:static <type-str> "FromMilliseconds" milliseconds))
776:     ((cl:and (cl:numberp milliseconds) (cl:not supplied-microseconds))
777:      (dotnet:static <type-str> "FromMilliseconds" milliseconds))
778:     (cl:t (cl:error 'utils:csharp-overload-not-found
779:                     :package-name "SYSTEM-TIME-SPAN"
780:                     :class-name <type-str>
781:                     :method-name "FromMilliseconds"
782:                     :supplied-args (cl:append (cl:list :milliseconds milliseconds) (cl:when supplied-microseconds (cl:list :microseconds microseconds)))))))
783: 
784: (cl:defun from-milliseconds-int64 (milliseconds)
785:   "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds.
786: Returns: Returns a System.TimeSpan that represents a specified number of milliseconds.
787: Parameters:
788:   - milliseconds (System.Int64): The number of milliseconds.
789: "
790:   (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Int64") milliseconds)))
791: 
792: (cl:defun from-milliseconds-double (value)
793:   "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of milliseconds.
794: Returns: An object that represents value.
795: Parameters:
796:   - value (System.Double): A number of milliseconds.
797: "
798:   (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Double") value)))
799: 
800: (cl:defun from-milliseconds-int64-int64 (milliseconds microseconds)
801:   "Calls System.TimeSpan.FromMilliseconds FromMilliseconds(Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of milliseconds, and microseconds.
802: Returns: Returns a System.TimeSpan that represents a specified number of milliseconds, and microseconds.
803: Parameters:
804:   - milliseconds (System.Int64): Number of milliseconds.
805:   - microseconds (System.Int64): Number of microseconds.
806: "
807:   (dotnet:static <type-str> "FromMilliseconds" (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))
808: 
809: (cl:defun from-minutes (minutes cl:&key (seconds cl:nil supplied-seconds) (milliseconds cl:nil supplied-milliseconds) (microseconds cl:nil supplied-microseconds))
810:   "Master wrapper for System.TimeSpan.FromMinutes overloads. Dispatches at runtime."
811:   (cl:cond
812:     ((cl:and (cl:numberp minutes) (cl:numberp seconds) (cl:numberp milliseconds) (cl:numberp microseconds))
813:      (dotnet:static <type-str> "FromMinutes" minutes seconds milliseconds microseconds))
814:     ((cl:and (cl:numberp minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
815:      (dotnet:static <type-str> "FromMinutes" minutes))
816:     ((cl:and (cl:numberp minutes) (cl:not supplied-seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
817:      (dotnet:static <type-str> "FromMinutes" minutes))
818:     (cl:t (cl:error 'utils:csharp-overload-not-found
819:                     :package-name "SYSTEM-TIME-SPAN"
820:                     :class-name <type-str>
821:                     :method-name "FromMinutes"
822:                     :supplied-args (cl:append (cl:list :minutes minutes) (cl:when supplied-seconds (cl:list :seconds seconds)) (cl:when supplied-milliseconds (cl:list :milliseconds milliseconds)) (cl:when supplied-microseconds (cl:list :microseconds microseconds)))))))
823: 
824: (cl:defun from-minutes-int64 (minutes)
825:   "Calls System.TimeSpan.FromMinutes FromMinutes(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of minutes.
826: Returns: Returns a System.TimeSpan that represents a specified number of minutes.
827: Parameters:
828:   - minutes (System.Int64): Number of minutes.
829: "
830:   (dotnet:static <type-str> "FromMinutes" (cl:the (dotnet "System.Int64") minutes)))
831: 
832: (cl:defun from-minutes-double (value)
833:   "Calls System.TimeSpan.FromMinutes FromMinutes(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of minutes, where the specification is accurate to the nearest millisecond.
834: Returns: An object that represents value.
835: Parameters:
836:   - value (System.Double): A number of minutes, accurate to the nearest millisecond.
837: "
838:   (dotnet:static <type-str> "FromMinutes" (cl:the (dotnet "System.Double") value)))
839: 
840: (cl:defun from-minutes-int64-int64-int64-int64 (minutes seconds milliseconds microseconds)
841:   "Calls System.TimeSpan.FromMinutes FromMinutes(Int64, Int64, Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of minutes, seconds, milliseconds, and microseconds.
842: Returns: Returns a System.TimeSpan that represents a specified number of minutes, seconds, milliseconds, and microseconds.
843: Parameters:
844:   - minutes (System.Int64): Number of minutes.
845:   - seconds (System.Int64): Number of seconds.
846:   - milliseconds (System.Int64): Number of milliseconds.
847:   - microseconds (System.Int64): Number of microseconds.
848: "
849:   (dotnet:static <type-str> "FromMinutes" (cl:the (dotnet "System.Int64") minutes) (cl:the (dotnet "System.Int64") seconds) (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))
850: 
851: ;; Note: System.TimeSpan.FromMinutes also has the following overloads with special
852: ;; parameter types (ref, out, params, or defaults) that are not
853: ;; yet supported:
854: ;;   FromMinutes(Int64, Int64, Int64, Int64) -> TimeSpan
855: 
856: (cl:defun from-seconds (seconds cl:&key (milliseconds cl:nil supplied-milliseconds) (microseconds cl:nil supplied-microseconds))
857:   "Master wrapper for System.TimeSpan.FromSeconds overloads. Dispatches at runtime."
858:   (cl:cond
859:     ((cl:and (cl:numberp seconds) (cl:numberp milliseconds) (cl:numberp microseconds))
860:      (dotnet:static <type-str> "FromSeconds" seconds milliseconds microseconds))
861:     ((cl:and (cl:numberp seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
862:      (dotnet:static <type-str> "FromSeconds" seconds))
863:     ((cl:and (cl:numberp seconds) (cl:not supplied-milliseconds) (cl:not supplied-microseconds))
864:      (dotnet:static <type-str> "FromSeconds" seconds))
865:     (cl:t (cl:error 'utils:csharp-overload-not-found
866:                     :package-name "SYSTEM-TIME-SPAN"
867:                     :class-name <type-str>
868:                     :method-name "FromSeconds"
869:                     :supplied-args (cl:append (cl:list :seconds seconds) (cl:when supplied-milliseconds (cl:list :milliseconds milliseconds)) (cl:when supplied-microseconds (cl:list :microseconds microseconds)))))))
870: 
871: (cl:defun from-seconds-int64 (seconds)
872:   "Calls System.TimeSpan.FromSeconds FromSeconds(Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of seconds.
873: Returns: Returns a System.TimeSpan that represents a specified number of seconds.
874: Parameters:
875:   - seconds (System.Int64): Number of seconds.
876: "
877:   (dotnet:static <type-str> "FromSeconds" (cl:the (dotnet "System.Int64") seconds)))
878: 
879: (cl:defun from-seconds-double (value)
880:   "Calls System.TimeSpan.FromSeconds FromSeconds(Double) -> TimeSpan. Summary: Returns a System.TimeSpan that represents a specified number of seconds, where the specification is accurate to the nearest millisecond.
881: Returns: An object that represents value.
882: Parameters:
883:   - value (System.Double): A number of seconds, accurate to the nearest millisecond.
884: "
885:   (dotnet:static <type-str> "FromSeconds" (cl:the (dotnet "System.Double") value)))
886: 
887: (cl:defun from-seconds-int64-int64-int64 (seconds milliseconds microseconds)
888:   "Calls System.TimeSpan.FromSeconds FromSeconds(Int64, Int64, Int64) -> TimeSpan. Summary: Initializes a new instance of the System.TimeSpan structure to a specified number of seconds, milliseconds, and microseconds.
889: Returns: Returns a System.TimeSpan that represents a specified number of seconds, milliseconds, and microseconds.
890: Parameters:
891:   - seconds (System.Int64): Number of seconds.
892:   - milliseconds (System.Int64): Number of milliseconds.
893:   - microseconds (System.Int64): Number of microseconds.
894: "
895:   (dotnet:static <type-str> "FromSeconds" (cl:the (dotnet "System.Int64") seconds) (cl:the (dotnet "System.Int64") milliseconds) (cl:the (dotnet "System.Int64") microseconds)))
896: 
897: ;; Note: System.TimeSpan.FromSeconds also has the following overloads with special
898: ;; parameter types (ref, out, params, or defaults) that are not
899: ;; yet supported:
900: ;;   FromSeconds(Int64, Int64, Int64) -> TimeSpan
901: 
902: (cl:defun from-ticks (value)
903:   "Summary: Returns a System.TimeSpan that represents a specified time, where the specification is in units of ticks.
904: Returns: An object that represents value.
905: Parameters:
906:   - value (System.Int64): A number of ticks that represent a time.
907: "
908:   (dotnet:static <type-str> "FromTicks" (cl:the (dotnet "System.Int64") value)))
909: 
910: (cl:defun get-hash-code (obj)
911:   "Summary: Returns a hash code for this instance.
912: Returns: A 32-bit signed integer hash code.
913: "
914:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "GetHashCode"))
915: 
916: (cl:defun multiply (obj factor)
917:   "Summary: Returns a new System.TimeSpan object which value is the result of multiplication of this instance and the specified factor.
918: Returns: A new object that represents the value of this instance multiplied by the value of factor.
919: Parameters:
920:   - factor (System.Double): The value to be multiplied by.
921: "
922:   (dotnet:invoke (cl:the (dotnet "System.TimeSpan") obj) "Multiply" factor))
923: 

(Output capped at 50 KB. Showing lines 1-923. Use offset=924 to continue.)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-vector2.lisp"
}
```

**Error:**
```
File not found: /home/dfields/src/cl/dotcl-dungeonslime/cspackages/system-vector2.lisp
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/tests"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/tests</path>
<type>directory</type>
<entries>
dotcl-runtime.test.lisp
dungeon-slime.test.lisp
framework.lisp
monogame-framework.test.lisp
nvorbis.test.lisp
synthetic-target.test.lisp
system-console.test.lisp
system-runtime.test.lisp

(8 entries)
</entries>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 926.8s)

_Thinking:_

Now let me look at a few more key files to understand the full picture - the test target, AssemblyToLispy.cs, and the cspackages-test.lisp.


Let me look at a few more files to complete the picture.



**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispy.cs",
  "limit": 50
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispy.cs</path>
<type>file</type>
<content>
1: using System;
2: using System.Collections.Generic;
3: using System.IO;
4: using System.Linq;
5: using System.Reflection;
6: using System.Text;
7: using System.Xml.Linq;
8: 
9: // Douglas P. Fields, Jr. - symbolics@lisp.engineer
10: // Created: 2026-06-08
11: // ML assistance: Antigravity CLI, v1.0.6, Gemini Flash 3.5 (Medium), Ubuntu 24.04
12: 
13: /* Original prompt used for Phase 1:
14: 
15: Please review doc/assembly-to-lispy.md.
16: 
17: I would like you to create a new .cs file (exactly one)
18: that implements "Phase 1" as per that document.
19: The entry point should be a static method with three
20: parameters: the input directory, the input assembly file,
21: and the output file.
22: 
23: There should also be a test class or method that
24: takes a well known assembly (e.g., "System.Runtime.dll"
25: from the C# runtime, located in directory
26: "/usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/"
27: on Ubuntu, but at 
28: "/usr/share/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/"
29: on Arch Linux)
30: and ensures that the output is correct for a few items,
31: such as "System.Collections.ArrayList".
32: 
33: Please ensure that the code is very clean, extensible,
34: and well documented with comments and complete triple-slash
35: comments on the classes.
36: */
37: 
38: namespace DungeonSlime {
39: 
40:     /// <summary>
41:     ///   Provides functionality to extract metadata from .NET assemblies and export it in Common Lisp S-expression format.
42:     ///   This implements Phase 1 of the assembly-to-lispy specification.
43:     /// </summary>
44:     public static class AssemblyToLispy {
45: 
46:         /// <summary>
47:         ///   Generates Common Lisp S-expression metadata for the specified assembly and writes it to the output file.
48:         /// </summary>
49:         /// <param name="inputDirectory">The directory containing the assembly and its dependencies.</param>
50:         /// <param name="inputAssemblyFile">The filename of the target assembly .dll.</param>

(Showing lines 1-50 of 1142. Use offset=51 to continue.)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages-test.lisp",
  "limit": 50
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages-test.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;;
3: ;;; Integration tests for generated C# Lisp packages (cspackages/).
4: ;;;
5: ;;; Tests verify that methods, properties, constants, and operator overloads
6: ;;; generated by assembly-package-generator version 10+ work correctly.
7: ;;; Tests are run when this file is loaded.
8: 
9: (in-package :dungeon-slime-tests)
10: 
11: (defun run-cspackages-tests ()
12:   "Run all integration tests for generated C# packages."
13: 
14:   (format *error-output* "--- Running C# Packages Integration Tests ---~%")
15: 
16:   ;; Compare two values for equality, treating numbers by value
17:   ;; rather than by type+value (since DotCL may return double-float
18:   ;; for what C# defines as single-float).
19:   (defun %cspkg-equal (a b)
20:     (if (and (numberp a) (numberp b))
21:         (= a b)
22:         (equal a b)))
23: 
24:   ;; Helper assertion macro
25:   (defmacro assert-cspkg (form expected-value description)
26:     `(let ((result ,form))
27:       (if (%cspkg-equal result ,expected-value)
28:           (format *error-output* "[cspackages-test] PASS ~A: ~S -> ~S~%"
29:                   ,description result result)
30:           (progn
31:             (utils:format-red *error-output*
32:               "[cspackages-test] FAIL ~A: Expected ~S but got ~S~%"
33:               ,description ,expected-value result)
34:             (error "Test failure: ~A" ,description)))))
35: 
36:   ;; Helper for error signaling tests
37:   (defmacro assert-cspkg-error (form description)
38:     `(handler-case
39:       (progn
40:         ,form
41:         (utils:format-red *error-output*
42:           "[cspackages-test] FAIL ~A: No error signaled~%" ,description)
43:         (error "Test failure: ~A" ,description))
44:       (error (e)
45:         (format *error-output* "[cspackages-test] PASS ~A: signalled ~A~%"
46:                 ,description (type-of e)))))
47: 
48:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
49:   ;; 1. Vector2 Method Tests
50:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(Showing lines 1-50 of 367. Use offset=51 to continue.)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/test-harness.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/test-harness.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;;
3: ;;; Harness to run all the tests without their own harnesses
4: 
5: (in-package :dungeon-slime-tests)
6: 
7: (format *error-output* "[test-harness.lisp] Loading in package ~S~%" *package*)
8: 
9: (defun run-all-tests ()
10:   "Runs all the Lisp tests that don't have their own harness."
11:   (format *error-output* "[test-harness.lisp] Running all tests...~%")
12: 
13:   (format *error-output* "[test-harness.lisp] Running poc-tests...~%")
14:   (poc-tests)
15: 
16:   (format *error-output* "[test-harness.lisp] Running clr-generic tests...~%")
17:   (test-basic-dispatch)
18:   (test-inheritance-precedence)
19:   (test-alias-resolution)
20:   (test-clr-defmethods)
21:   (test-tilemap-and-tileset)
22:   (dungeon-slime::run-audio-tests)
23: 
24:   (format *error-output* "[test-harness.lisp] Running Package Generator tests...~%")
25:   (run-package-generator-tests)
26: 
27:   (format *error-output* "[test-harness.lisp] Running C# Packages Integration tests...~%")
28:   (run-cspackages-tests)
29: 
30:   (format *error-output* "[test-harness.lisp] Running Typed Calls tests...~%")
31:   (run-typed-calls-tests)
32: 
33:   (format *error-output* "[test-harness.lisp] Running Load System tests...~%")
34:   (run-load-system-tests)
35: 
36:   (format *error-output* "[test-harness.lisp] Running Collision tests...~%")
37:   (run-collision-tests)
38: 
39:   (format *error-output* "[test-harness.lisp] Running Texture Atlas tests...~%")
40:   (dungeon-slime::test-texture-atlas-from-file)
41: 
42:   (format *error-output* "[test-harness.lisp] Misc prints...~%")
43:   (format *error-output* "[From game-1.lisp] +atlas-filename+ = ~A~%" dungeon-slime::+atlas-filename+)
44: 
45:   (format *error-output* "[test-harness.lisp] ...tests complete.~%"))

(End of file - total 45 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages/microsoft-xna-framework-vector2.lisp",
  "limit": 50
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages/microsoft-xna-framework-vector2.lisp</path>
<type>file</type>
<content>
1: ;;; Generated automatically. Do not edit.
2: ;;; Class: Microsoft.Xna.Framework.Vector2
3: ;;; Generator Version: 18
4: ;;; Creation Date: 2026-07-02T19:02:32Z
5: 
6: (cl:in-package :cl-user)
7: 
8: (cl:defpackage :microsoft-xna-framework-vector2
9:   (:use :cl)
10:   (:shadow
11:    #:-
12:    #:*
13:    #:/
14:    #:+
15:    #:=
16:    #:ceiling
17:    #:floor
18:    #:length
19:    #:max
20:    #:min
21:    #:round
22:   )
23:   (:export
24:    #:<type>
25:    #:<type-str>
26:    #:<creation>
27:    #:<version>
28:    #:new
29:    #:new-single
30:    #:new-single-single
31:    #:+one+
32:    #:+unit-x+
33:    #:+unit-y+
34:    #:+zero+
35:    #:-
36:    #:--vector2
37:    #:--vector2-vector2
38:    #:*
39:    #:*-vector2-vector2
40:    #:*-vector2-single
41:    #:*-single-vector2
42:    #:/
43:    #:/-vector2-vector2
44:    #:/-vector2-single
45:    #:+
46:    #:=
47:    #:add
48:    #:barycentric
49:    #:catmull-rom
50:    #:ceiling

(Showing lines 1-50 of 588. Use offset=51 to continue.)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 80.0s)

_Thinking:_

Now let me look at the rest of assembly-package-generator.lisp and the cspackages-test.lisp more fully to understand the complete scope.


**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp",
  "offset": 948
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/assembly-package-generator.lisp</path>
<type>file</type>
<content>
948:                   ;; Single-Mode: name is kebab-name
949:                   (cl:cond
950:                     ((> static-count 0)
951:                      (cl:if (cl:and (= static-count 1) (cl:not (complex-group-p static-clean)))
952:                             (generate-single-overload stream (first static-clean) kebab-name fq-name t)
953:                             (generate-master-wrapper stream static-clean name kebab-name fq-name t (getf (first static-clean) :is-generic))))
954:                     ((> instance-count 0)
955:                      (cl:if (cl:and (= instance-count 1) (cl:not (complex-group-p instance-clean)))
956:                             (generate-single-overload stream (first instance-clean) kebab-name fq-name nil)
957:                             (generate-master-wrapper stream instance-clean name kebab-name fq-name nil (getf (first instance-clean) :is-generic)))))))
958:                
959:                ;; Generate per-overload typed functions with type-suffixed names (for clean-count >= 2)
960:                (when (>= clean-count 2)
961:                  (dolist (cm clean-methods)
962:                    (let* ((mname (method-overload-name cm))
963:                           (m-doc (getf cm :documentation))
964:                           (summary (getf m-doc :summary))
965:                           (returns (getf m-doc :returns))
966:                           (params (getf cm :parameters))
967:                           (is-generic-overload-p (getf cm :is-generic))
968:                           (is-static-overload-p (getf cm :is-static))
969:                           (param-names (mapcar (lambda (p) (map-param-name (getf p :name))) params))
970:                           (overload-signature (method-signature-str cm))
971:                           (args-str (cl:cond
972:                                       ((and is-static-overload-p is-generic-overload-p)
973:                                        (format nil "type~@[ ~{~A~^ ~}~]" param-names))
974:                                       (is-static-overload-p
975:                                        (format nil "~{~A~^ ~}" param-names))
976:                                       (is-generic-overload-p
977:                                        (format nil "type obj~@[ ~{~A~^ ~}~]" param-names))
978:                                       (cl:t
979:                                        (format nil "obj~@[ ~{~A~^ ~}~]" param-names))))
980:                           (docstring (build-docstring summary returns params m-doc))
981:                           (escaped-docstring (escape-lisp-string docstring))
982:                           ;; Construct a note about the specific overload signature
983:                           (overload-note (format nil "Calls ~A.~A ~A" fq-name name overload-signature))
984:                           (full-docstring (if (> (length docstring) 0)
985:                                               (concatenate 'string overload-note ". " docstring)
986:                                               overload-note))
987:                           (escaped-full-doc (escape-lisp-string full-docstring))
988:                           (dotnet-method-name (or (getf cm :mangled-name) name))
989:                           ;; Static method type hints for typed overloads
990:                           (static-typed-args
991:                             (if is-static-overload-p
992:                                 (mapcar (lambda (pn pt)
993:                                           (format nil "(cl:the (dotnet \"~A\") ~A)" pt pn))
994:                                         param-names
995:                                         (mapcar (lambda (p) (getf p :type)) params))
996:                                 nil)))
997:                      (format stream "(cl:defun ~A (~A)~%" mname args-str)
998:                      (format stream "  \"~A\"~%" escaped-full-doc)
999:                      (cl:cond
1000:                        ((and is-static-overload-p is-generic-overload-p)
1001:                         (format stream "  (dotnet:static-generic <type-str> \"~A\" (cl:list type)~@[ ~{~A~^ ~}~]))~%~%" dotnet-method-name param-names))
1002:                        (is-static-overload-p
1003:                         (if static-typed-args
1004:                             (format stream "  (dotnet:static <type-str> \"~A\"~@[~{ ~A~}~]))~%~%" dotnet-method-name static-typed-args)
1005:                             (format stream "  (dotnet:static <type-str> \"~A\"~@[ ~{~A~^ ~}~]))~%~%" dotnet-method-name param-names)))
1006:                        (is-generic-overload-p
1007:                         (format stream "  (dotnet:invoke-generic (cl:the (dotnet \"~A\") obj) \"~A\" (cl:list type)~@[ ~{~A~^ ~}~]))~%~%" fq-name dotnet-method-name param-names))
1008:                        (cl:t
1009:                         (format stream "  (dotnet:invoke (cl:the (dotnet \"~A\") obj) \"~A\"~@[ ~{~A~^ ~}~]))~%~%" fq-name dotnet-method-name param-names))))))
1010:                
1011:                ;; Emit dirty overload doc-comment if any
1012:                (when (> dirty-count 0)
1013:                  (format stream ";; Note: ~A.~A also has the following overloads with special~%" fq-name name)
1014:                  (format stream ";; parameter types (ref, out, params, or defaults) that are not~%")
1015:                  (format stream ";; yet supported:~%")
1016:                  (dolist (dm dirty-methods)
1017:                    (format stream ";;   ~A~%" (method-signature-str dm)))
1018:                  (format stream "~%"))))))
1019:         ) ;; close with-open-file
1020:       ) ;; close inner analysis let*
1021:     ) ;; close outer let*
1022:   ) ;; close defun generate-class-file
1023: 
1024: (defun generate-assembly-packages (metadata-file class-filter output-dir &optional constant-properties-list)
1025:   "Loads the metadata-file, filters classes by class-filter, and generates output Lisp files."
1026:   (unless (probe-file metadata-file)
1027:     (error "Metadata file not found: ~A" metadata-file))
1028:   
1029:   (let* ((metadata (utils:safe-read-form-from-file metadata-file))
1030:          (filters (and class-filter (> (length class-filter) 0) (split-string class-filter #\;)))
1031:          (classes-to-gen (if filters
1032:                              (remove-if-not
1033:                               (lambda (c)
1034:                                 (member (getf c :fully-qualified-name) filters :test #'string=))
1035:                               metadata)
1036:                              metadata)))
1037:     
1038:     (when (and filters (= 0 (length classes-to-gen)))
1039:       (utils:format-red *error-output* "Warning: No classes matched the filter ~S~%" class-filter))
1040:     
1041:     (dolist (cls classes-to-gen)
1042:       (format *error-output* "Generating package for C# Class: ~A~%" (getf cls :fully-qualified-name))
1043:       (generate-class-file cls output-dir constant-properties-list))
1044:     
1045:     t))
1046: 
1047: (defun run-assembly-package-generator (metadata-file class-filter output-dir &optional constant-properties-str)
1048:   "CLI entry point called by DotclHost.Call. Maps string parameters safely."
1049:   (handler-case
1050:       (let ((mfile (and metadata-file (> (length metadata-file) 0) metadata-file))
1051:             (cfilter (and class-filter (> (length class-filter) 0) class-filter))
1052:             (odir (and output-dir (> (length output-dir) 0) output-dir))
1053:             (cprops (and constant-properties-str (> (length constant-properties-str) 0) (split-string constant-properties-str #\,))))
1054:         (unless mfile
1055:           (error "Metadata file path is required."))
1056:         (unless odir
1057:           (error "Output directory path is required."))
1058:         (generate-assembly-packages mfile cfilter odir cprops))
1059:     (error (c)
1060:       (utils:format-red *error-output* "Error in assembly-package-generator: ~A~%" c)
1061:       (error c))))

(End of file - total 1061 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/cspackages-test.lisp",
  "offset": 50
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/cspackages-test.lisp</path>
<type>file</type>
<content>
50:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
51: 
52:   (format *error-output* "--- Vector2 Method Tests ---~%")
53: 
54:   (let* ((v1 (v2:new 3.0e0 4.0e0))
55:          (v2 (v2:new 0.0e0 0.0e0))
56:          (v3 (v2:new 1.0e0 0.0e0))
57:          (v4 (v2:new 0.0e0 1.0e0))
58:          (v2-pkg1 :microsoft-xna-framework-vector2))
59: 
60:     ;; Vector2.DistanceSquared - static, single clean + single dirty overload
61:     (assert-cspkg (funcall (find-symbol "DISTANCE-SQUARED" v2-pkg1) v1 v2) 25.0e0
62:                   "Vector2.DistanceSquared (3,4)->(0,0) = 25")
63: 
64:     (assert-cspkg (funcall (find-symbol "DISTANCE-SQUARED" v2-pkg1) v1 v1) 0.0e0
65:                   "Vector2.DistanceSquared same point = 0")
66: 
67:     ;; Vector2.Reflect - static, single clean overload
68:     (let* ((reflect (find-symbol "REFLECT" v2-pkg1))
69:            (v2-eq (find-symbol "=" v2-pkg1))
70:            (r (funcall reflect (v2:new 1.0e0 -1.0e0) (v2:new 0.0e0 1.0e0))))
71:       (assert-cspkg (funcall v2-eq r (v2:new 1.0e0 1.0e0)) t
72:                     "Vector2.Reflect (1,-1) about (0,1) = (1,1)"))
73: 
74:     (let* ((reflect (find-symbol "REFLECT" v2-pkg1))
75:            (v2-eq (find-symbol "=" v2-pkg1))
76:            (r (funcall reflect (v2:new 1.0e0 1.0e0) (v2:new 1.0e0 0.0e0))))
77:       (assert-cspkg (funcall v2-eq r (v2:new -1.0e0 1.0e0)) t
78:                     "Vector2.Reflect (1,1) about (1,0) = (-1,1)"))
79: 
80:     ;; Vector2.Length - instance property (version 9)
81:     (assert-cspkg (funcall (find-symbol "LENGTH" v2-pkg1) v1) 5.0e0
82:                   "Vector2.Length of (3,4) = 5")
83: 
84:     ;; Vector2.LengthSquared - instance method (version 9)
85:     (assert-cspkg (funcall (find-symbol "LENGTH-SQUARED" v2-pkg1) v1) 25.0e0
86:                   "Vector2.LengthSquared of (3,4) = 25")
87: 
88:     ;; Vector2 instance operators via cspackage (version 9)
89:     (let* ((v2-eq (find-symbol "=" v2-pkg1))
90:            (v2-add (find-symbol "+" v2-pkg1)))
91:       (assert-cspkg
92:         (funcall v2-eq (funcall v2-add v3 v4) (v2:new 1.0e0 1.0e0)) t
93:         "Vector2 + operator (UnitX + UnitY = One)"))
94: 
95:     ;; Bad type argument should signal an error
96:     (assert-cspkg-error
97:       (funcall (find-symbol "DISTANCE-SQUARED" v2-pkg1) "not-a-vector" v2)
98:       "Vector2.DistanceSquared errors on bad type arg")
99: 
100:     (assert-cspkg-error
101:       (funcall (find-symbol "REFLECT" v2-pkg1) "not-a-vector" v3)
102:       "Vector2.Reflect errors on bad type arg")
103:     )
104: 
105:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
106:   ;; 2. Rectangle Method Tests
107:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
108: 
109:   (format *error-output* "--- Rectangle Method Tests ---~%")
110: 
111:   (let* ((r-outer (rect:new 0 0 100 100))
112:          (r-inner (rect:new 10 10 20 20))
113:          (v-point (v2:new 50.0e0 50.0e0))
114:          (rect-pkg :microsoft-xna-framework-rectangle))
115: 
116:     ;; Rectangle.Intersects - single clean overload + dirty
117:     (let ((intersects (find-symbol "INTERSECTS" rect-pkg)))
118:       (assert-cspkg (funcall intersects r-outer r-inner) t
119:                     "Rectangle.Intersects overlapping rectangles")
120:       (assert-cspkg (funcall intersects (rect:new 0 0 32 32) (rect:new 100 100 32 32)) nil
121:                     "Rectangle.Intersects non-overlapping rectangles"))
122: 
123:     ;; Rectangle.Contains - multi-overload (5 clean + 3 dirty)
124:     ;; Master wrapper dispatch (Version 18 positional/keyword interface)
125:     (let ((contains (find-symbol "CONTAINS" rect-pkg)))
126:       (assert-cspkg (funcall contains r-outer v-point) t
127:                     "Rectangle.Contains passthrough center point")
128:       (assert-cspkg (funcall contains r-outer (v2:new 200 200)) nil
129:                     "Rectangle.Contains passthrough outside point")
130:       (assert-cspkg (funcall contains r-outer r-inner) t
131:                     "Rectangle.Contains passthrough contained rectangle")
132:       (assert-cspkg (funcall contains r-inner r-outer) nil
133:                     "Rectangle.Contains passthrough larger rectangle"))
134: 
135:     ;; Typed overload versions
136:     (let ((contains-vector2 (find-symbol "CONTAINS-VECTOR2" rect-pkg))
137:           (contains-rectangle (find-symbol "CONTAINS-RECTANGLE" rect-pkg)))
138:       (assert-cspkg (funcall contains-vector2 r-outer v-point) t
139:                     "Rectangle.Contains Vector2 typed overload")
140:       (assert-cspkg (funcall contains-vector2 r-outer (v2:new 200 200)) nil
141:                     "Rectangle.Contains Vector2 typed overload outside")
142:       (assert-cspkg (funcall contains-rectangle r-outer r-inner) t
143:                     "Rectangle.Contains Rectangle typed overload contained")
144:       (assert-cspkg (funcall contains-rectangle r-inner r-outer) nil
145:                     "Rectangle.Contains Rectangle typed overload larger"))
146: 
147:     ;; Rectangle property accessors (version 9)
148:     (assert-cspkg (funcall (find-symbol "LEFT" rect-pkg) r-outer) 0
149:                   "Rectangle.Left of (0,0,100,100) = 0")
150:     (assert-cspkg (funcall (find-symbol "RIGHT" rect-pkg) r-outer) 100
151:                   "Rectangle.Right of (0,0,100,100) = 100")
152:     (assert-cspkg (funcall (find-symbol "TOP" rect-pkg) r-outer) 0
153:                   "Rectangle.Top of (0,0,100,100) = 0")
154:     (assert-cspkg (funcall (find-symbol "BOTTOM" rect-pkg) r-outer) 100
155:                   "Rectangle.Bottom of (0,0,100,100) = 100")
156: 
157:     ;; Bad type argument to contains should signal an error
158:     (assert-cspkg-error
159:       (funcall (find-symbol "CONTAINS" rect-pkg) r-outer "not-a-vector")
160:       "Rectangle.Contains passthrough errors on bad type")
161: 
162:     ;; Bad type argument to typed overload should signal an error
163:     (assert-cspkg-error
164:       (funcall (find-symbol "CONTAINS-RECTANGLE" rect-pkg) r-outer "bad-arg")
165:       "Rectangle.Contains Rectangle typed overload errors on bad arg")
166:     )
167: 
168:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
169:   ;; 3. Point Method Tests
170:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
171: 
172:   (format *error-output* "--- Point Method Tests ---~%")
173: 
174:   (let* ((zero (dotnet:static "Microsoft.Xna.Framework.Point" "Zero"))
175:          (one (dotnet:new "Microsoft.Xna.Framework.Point" 1 1))
176:          (point-pkg :microsoft-xna-framework-point))
177: 
178:     ;; Point.ToVector2 - instance method
179:     (let ((v (funcall (find-symbol "TO-VECTOR2" point-pkg) one))
180:           (v2-eq (find-symbol "=" :microsoft-xna-framework-vector2)))
181:       (assert-cspkg (funcall v2-eq v (v2:new 1.0e0 1.0e0)) t
182:                     "Point.ToVector2 (1,1) = Vector2(1,1)"))
183: 
184:     ;; Point operators
185:     (let ((pt-eq (find-symbol "=" point-pkg))
186:           (pt-noteq (find-symbol "NOT=" point-pkg))
187:           (pt-add (find-symbol "+" point-pkg)))
188:       (assert-cspkg (funcall pt-eq zero zero) t
189:                     "Point = operator (true case)")
190:       (assert-cspkg (funcall pt-eq zero one) nil
191:                     "Point = operator (false case)")
192:       (assert-cspkg (funcall pt-noteq zero one) t
193:                     "Point not= operator (true case)")
194:       (let ((sum (funcall pt-add one one)))
195:         (assert-cspkg
196:           (funcall pt-eq sum (dotnet:new "Microsoft.Xna.Framework.Point" 2 2)) t
197:           "Point + operator (1,1)+(1,1) = (2,2)")))
198:     )
199: 
200:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
201:   ;; 4. TimeSpan Method Tests
202:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
203: 
204:   (format *error-output* "--- TimeSpan Method Tests ---~%")
205: 
206:   (let* ((t1 (ts:from-ticks 100))
207:          (t2 (ts:from-ticks 200))
208:          (t3 (ts:from-ticks 100)))
209: 
210:     ;; TimeSpan operators (version 9)
211:     (assert-cspkg (ts:= t1 t3) t
212:                   "TimeSpan = operator (true case)")
213:     (assert-cspkg (ts:= t1 t2) nil
214:                   "TimeSpan = operator (false case)")
215:     (assert-cspkg (ts:not= t1 t2) t
216:                   "TimeSpan not= operator (true case)")
217:     (assert-cspkg (ts:< t1 t2) t
218:                   "TimeSpan < operator (true case)")
219:     (assert-cspkg (ts:> t2 t1) t
220:                   "TimeSpan > operator (true case)"))
221: 
222:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
223:   ;; 5. Edge Cases
224:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
225: 
226:   (format *error-output* "--- Edge Case Tests ---~%")
227: 
228:   (let* ((r (rect:new 0 0 100 100))
229:          (rect-pkg :microsoft-xna-framework-rectangle))
230: 
231:     ;; Rectangle.Contains with Point (Version 18 positional/optional interface)
232:     (let ((p (dotnet:new "Microsoft.Xna.Framework.Point" 50 50)))
233:       (assert-cspkg (funcall (find-symbol "CONTAINS" rect-pkg) r p) t
234:                     "Rectangle.Contains Point (through passthrough)"))
235: 
236:     ;; Rectangle.Contains(int, int) and Contains(float, float) (Version 18 positional/optional interface)
237:     (assert-cspkg (funcall (find-symbol "CONTAINS" rect-pkg) r 50 50) t
238:                   "Rectangle.Contains(int,int) passthrough center")
239:     (assert-cspkg (funcall (find-symbol "CONTAINS" rect-pkg) r 200 200) nil
240:                   "Rectangle.Contains(int,int) passthrough outside"))
241: 
242:   ;; Vector2 constant properties (version 9)
243:   (let* ((v2-pkg :microsoft-xna-framework-vector2)
244:          (v2-eq (find-symbol "=" v2-pkg)))
245:     (assert-cspkg (funcall v2-eq (symbol-value (find-symbol "+ZERO+" v2-pkg))
246:                            (v2:new 0.0e0 0.0e0)) t
247:                   "Vector2.Zero constant")
248:     (assert-cspkg (funcall v2-eq (symbol-value (find-symbol "+ONE+" v2-pkg))
249:                            (v2:new 1.0e0 1.0e0)) t
250:                   "Vector2.One constant")
251:     (assert-cspkg (funcall v2-eq (symbol-value (find-symbol "+UNIT-X+" v2-pkg))
252:                            (v2:new 1.0e0 0.0e0)) t
253:                   "Vector2.UnitX constant")
254:     (assert-cspkg (funcall v2-eq (symbol-value (find-symbol "+UNIT-Y+" v2-pkg))
255:                            (v2:new 0.0e0 1.0e0)) t
256:                   "Vector2.UnitY constant"))
257: 
258:   ;; Rectangle constant property (version 9)
259:   (let* ((rect-pkg :microsoft-xna-framework-rectangle)
260:          (empty (symbol-value (find-symbol "+EMPTY+" rect-pkg))))
261:     (assert-cspkg (and (= (funcall (find-symbol "LEFT" rect-pkg) empty) 0)
262:                        (= (funcall (find-symbol "TOP" rect-pkg) empty) 0)
263:                        (= (funcall (find-symbol "RIGHT" rect-pkg) empty) 0)
264:                        (= (funcall (find-symbol "BOTTOM" rect-pkg) empty) 0))
265:                   t
266:                   "Rectangle.Empty constant"))
267: 
268:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
269:   ;; 6. Constructor Tests (Version 11)
270:   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
271:   (format *error-output* "--- Constructor Tests ---~%")
272: 
273:   ;; Vector2 Constructors (Struct, multi-overload)
274:   (let* ((v2-pkg :microsoft-xna-framework-vector2)
275:          (v2-eq (find-symbol "=" v2-pkg))
276:          (new-fn (find-symbol "NEW" v2-pkg))
277:          (new-single-single (find-symbol "NEW-SINGLE-SINGLE" v2-pkg))
278:          ;; Test default parameterless constructor (injected for structs)
279:          (v-def (funcall new-fn))
280:          ;; Test parameterized constructor via runtime dispatch (new)
281:          (v-param (funcall new-fn 3.0e0 4.0e0))
282:          ;; Test parameterized constructor via typed overload
283:          (v-typed (funcall new-single-single 3.0e0 4.0e0)))
284: 
285:     (assert-cspkg (funcall v2-eq v-def (v2:new 0.0e0 0.0e0)) t
286:                   "Vector2 default constructor (injected)")
287:     (assert-cspkg (funcall v2-eq v-param (v2:new 3.0e0 4.0e0)) t
288:                   "Vector2 constructor via new")
289:     (assert-cspkg (funcall v2-eq v-typed (v2:new 3.0e0 4.0e0)) t
290:                   "Vector2 constructor via new-single-single"))
291: 
292:   ;; Rectangle Constructors (Struct, multi-overload)
293:   (let* ((rect-pkg :microsoft-xna-framework-rectangle)
294:          (new-fn (find-symbol "NEW" rect-pkg))
295:          (new-int-int-int-int (find-symbol "NEW-INT32-INT32-INT32-INT32" rect-pkg))
296:          ;; Test default parameterless constructor
297:          (r-def (funcall new-fn))
298:          ;; Test parameterized constructor
299:          (r-param (funcall new-fn 10 20 100 200))
300:          ;; Test typed constructor
301:          (r-typed (funcall new-int-int-int-int 10 20 100 200)))
302: 
303:     (assert-cspkg (= (funcall (find-symbol "LEFT" rect-pkg) r-def) 0) t
304:                   "Rectangle default constructor left")
305:     (assert-cspkg (= (funcall (find-symbol "LEFT" rect-pkg) r-param) 10) t
306:                   "Rectangle parameterized constructor left")
307:     (assert-cspkg (= (funcall (find-symbol "LEFT" rect-pkg) r-typed) 10) t
308:                   "Rectangle typed constructor left"))
309: 
310:   ;; TimeSpan Constructors (Struct, multi-overload)
311:   (let* ((t-def (ts:new))
312:          (t-param (ts:new 5000))
313:          (t-typed (ts:new-int64 5000)))
314: 
315:     (assert-cspkg (ts:= t-def (ts:from-ticks 0)) t
316:                   "TimeSpan default constructor")
317:     (assert-cspkg (ts:= t-param (ts:from-ticks 5000)) t
318:                   "TimeSpan parameterized constructor")
319:     (assert-cspkg (ts:= t-typed (ts:from-ticks 5000)) t
320:                   "TimeSpan typed constructor"))
321: 
322:   ;; Uri Constructors (Class, multi-overload)
323:   (let* ((uri-pkg :system-uri)
324:          (new-fn (find-symbol "NEW" uri-pkg))
325:          (new-str (find-symbol "NEW-STRING" uri-pkg))
326:          ;; Test single parameter string constructor via new (class)
327:          (u-param (funcall new-fn "http://localhost/"))
328:          ;; Test single parameter string constructor via typed overload
329:          (u-typed (funcall new-str "http://localhost/")))
330: 
331:     (assert-cspkg (dotnet:invoke u-param "ToString") "http://localhost/"
332:                   "Uri constructor via new")
333:     (assert-cspkg (dotnet:invoke u-typed "ToString") "http://localhost/"
334:                   "Uri constructor via new-string"))
335: 
336:   ;; 4. Overload Resolution, Mixed-Mode, & Custom Condition Tests
337:   (format *error-output* "--- Overload Resolution & Condition Tests ---~%")
338: 
339:   ;; Test static mixed-mode normalize*
340:   (let* ((v (v2:new 3.0e0 4.0e0))
341:          (norm (v2:normalize* v)))
342:     (assert-cspkg (v2:length norm) 1.0e0 "v2:normalize* returns unit vector"))
343: 
344:   ;; Test utils:csharp-overload-not-found condition signaling on Vector2 division
345:   (handler-case
346:       (progn
347:         (v2:/ (v2:new 1.0e0 2.0e0) "invalid-value")
348:         (error "v2:/ did not signal utils:csharp-overload-not-found on invalid type"))
349:     (utils:csharp-overload-not-found (e)
350:       (assert-cspkg (utils:csharp-overload-class-name e) "Microsoft.Xna.Framework.Vector2" "Condition class name")
351:       (assert-cspkg (utils:csharp-overload-method-name e) "/" "Condition method name")
352:       (assert-cspkg (utils:csharp-overload-package-name e) "MICROSOFT-XNA-FRAMEWORK-VECTOR2" "Condition package name")
353:       (let ((args (utils:csharp-overload-supplied-args e)))
354:         (assert-cspkg (getf args :value2) "invalid-value" "Condition supplied-args value"))))
355: 
356:   ;; Test sprite-batch:begin type-checking and condition signaling
357:   (handler-case
358:       (progn
359:         ;; Pass invalid sort-mode type (integer instead of enum/dotnet-p)
360:         (sprite-batch:begin nil :sort-mode 123)
361:         (error "sprite-batch:begin did not signal utils:csharp-overload-not-found on invalid type"))
362:     (utils:csharp-overload-not-found (e)
363:       (assert-cspkg (utils:csharp-overload-method-name e) "Begin" "Condition method name for Begin")
364:       (let ((args (utils:csharp-overload-supplied-args e)))
365:         (assert-cspkg (getf args :sort-mode) 123 "Condition supplied-args sort-mode"))))
366: 
367:   (format *error-output* "--- C# Packages Integration Tests Completed ---~%"))

(End of file - total 367 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 237.6s)

_Thinking:_

Now I have a comprehensive understanding of the repository. Let me also check what the `tests/` directory contains (the C# test files) and understand the full structure better.

Let me also check what's in the AssemblyToLispyTestTarget directory and the .csproj file for the test targets.


**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispyTestTarget"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/AssemblyToLispyTestTarget</path>
<type>directory</type>
<entries>
AssemblyToLispyTestTarget.csproj
bin/
EdgeCases.cs
obj/

(4 entries)
</entries>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/tests/system-runtime.test.lisp",
  "limit": 30
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/tests/system-runtime.test.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;; Tests for System.Runtime.dll metadata
3: 
4: (in-package :dungeon-slime-tests)
5: 
6: (def-assembly-test "System.Runtime.dll" test-array-list
7:   (let ((al (find-if (lambda (cls) (string= (getf cls :name) "ArrayList")) *metadata*)))
8:     (assert-not-null al "Should find ArrayList class")
9:     (when al
10:       (assert-equal "System.Collections.ArrayList" (getf al :fully-qualified-name) "ArrayList fully qualified name")
11:       (assert-equal "System.Collections" (getf al :namespace) "ArrayList namespace")
12:       (assert-equal :class (getf al :kind) "ArrayList is a class")
13:       (assert-equal "System.Object" (getf al :superclass) "ArrayList superclass")
14:       (assert-true (find-if (lambda (i) (string= i "System.Collections.IList")) (getf al :interfaces))
15:                    "ArrayList interfaces should contain System.Collections.IList"))))

(End of file - total 15 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/tests/dotcl-runtime.test.lisp",
  "limit": 30
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/tests/dotcl-runtime.test.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;; Tests for DotCL.Runtime.dll metadata
3: 
4: (in-package :dungeon-slime-tests)
5: 
6: (def-assembly-test "DotCL.Runtime.dll" test-dotcl-runtime
7:   (let ((rt (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "DotCL.Runtime")) *metadata*)))
8:     (assert-not-null rt "Should find DotCL.Runtime type")
9:     (when rt
10:       (assert-equal :class (getf rt :kind) "Runtime is a class")
11:       (assert-true (find-if (lambda (m) (string= (getf m :name) "Load")) (getf rt :methods))
12:                    "Runtime should contain Load method"))))

(End of file - total 12 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/tests/monogame-framework.test.lisp",
  "limit": 30
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/tests/monogame-framework.test.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;; Tests for MonoGame.Framework.dll metadata
3: 
4: (in-package :dungeon-slime-tests)
5: 
6: (def-assembly-test "MonoGame.Framework.dll" test-monogame-framework
7:   (let ((game (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "Microsoft.Xna.Framework.Game")) *metadata*)))
8:     (assert-not-null game "Should find Microsoft.Xna.Framework.Game type")
9:     (when game
10:       (assert-equal :class (getf game :kind) "Game is a class")
11:       (assert-true (find-if (lambda (m) (string= (getf m :name) "Run")) (getf game :methods))
12:                    "Game should contain Run method")
13:       (assert-true (find-if (lambda (m) (string= (getf m :name) "Exit")) (getf game :methods))
14:                    "Game should contain Exit method"))))

(End of file - total 14 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 34.2s)

_Thinking:_

Now let me also check the framework.lisp in tests/ to understand the test infrastructure.


**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/tests/framework.lisp"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/tests/framework.lisp</path>
<type>file</type>
<content>
1: ;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
2: ;;; Base framework and schema/semantic validation for AssemblyToLispy tests
3: 
4: (in-package :dungeon-slime-tests)
5: 
6: (defvar *test-failures* 0)
7: (defvar *test-count* 0)
8: (defvar *metadata* nil)
9: 
10: (defmacro deftest (name &body body)
11:   `(defun ,name ()
12:      (format *error-output* "~%[TEST] Running ~A...~%" ',name)
13:      (let ((initial-failures *test-failures*))
14:        ,@body
15:        (if (= *test-failures* initial-failures)
16:            (format *error-output* "[TEST] ~A PASSED~%" ',name)
17:            (utils:format-red *error-output* "[TEST] ~A FAILED~%" ',name)))))
18: 
19: (defun assert-equal (expected actual msg)
20:   (incf *test-count*)
21:   (unless (equal expected actual)
22:     (incf *test-failures*)
23:     (utils:format-red *error-output* "  ASSERTION FAILED: ~A~%    Expected: ~S~%    Actual:   ~S~%"
24:             msg expected actual)))
25: 
26: (defun assert-true (actual msg)
27:   (incf *test-count*)
28:   (unless actual
29:     (incf *test-failures*)
30:     (utils:format-red *error-output* "  ASSERTION FAILED: ~A~%    Expected: logically true~%    Actual:   ~S~%"
31:             msg actual)))
32: 
33: (defun assert-not-null (actual msg)
34:   (incf *test-count*)
35:   (unless actual
36:     (incf *test-failures*)
37:     (utils:format-red *error-output* "  ASSERTION FAILED: ~A~%    Expected: not null~%    Actual:   ~S~%"
38:             msg actual)))
39: 
40: (deftest test-load-metadata
41:   (assert-not-null *metadata* "Metadata should be loaded"))
42: 
43: ;;; Assembly-specific test registration mapping
44: (defvar *assembly-tests* (make-hash-table :test #'equal))
45: 
46: (defun register-tests (assembly-name test-fn)
47:   "Registers a test function to be run when testing the specified assembly."
48:   (pushnew test-fn (gethash assembly-name *assembly-tests*)))
49: 
50: (defmacro def-assembly-test (assembly-name name &body body)
51:   "Defines an assembly-specific test and registers it under the target assembly name."
52:   `(progn
53:      (deftest ,name ,@body)
54:      (register-tests ,assembly-name ',name)))
55: 
56: ;;; C# BindingFlags representation values for reflection calls:
57: ;;; DeclaredOnly = 2, Instance = 4, Static = 8, Public = 16, NonPublic = 32.
58: ;;; The combination for searching fields, properties, and methods is 62.
59: ;;; The combination for searching constructors is 52.
60: (defvar *binding-flags-members* 62)
61: (defvar *binding-flags-constructors* 52)
62: 
63: (defun dotnet-array-to-list (array)
64:   "Converts a C# array returned by reflection calls into a standard Common Lisp list
65:    to allow sequence iteration and lookup."
66:   (let ((len (dotnet:invoke array "Length"))
67:         (list nil))
68:     (loop for i from (1- len) downto 0
69:           do (push (dotnet:invoke array "GetValue" i) list))
70:     list))
71: 
72: (defun plist-p (obj)
73:   "Verifies if the given object is a valid property list (plist) by checking that
74:    it is a list, has an even number of elements, and every key is a keyword."
75:   (when (listp obj)
76:     (when (evenp (length obj))
77:       (loop for (key val) on obj by #'cddr
78:             always (keywordp key)))))
79: 
80: (defun key-present-p (plist key)
81:   "Scans the property list to check if the specified key is explicitly present,
82:    independent of whether its value is nil."
83:   (loop for (k v) on plist by #'cddr
84:         when (eq k key) return t))
85: 
86: (defun validate-plist-keys (plist mandatory-keys allowed-keys context)
87:   "Ensures that all required keywords are present in the plist and that no
88:    undocumented or unexpected keywords exist. Returns nil on failure."
89:   (let ((valid t))
90:     (dolist (key mandatory-keys)
91:       (when (not (key-present-p plist key))
92:         (setf valid nil)
93:         (format *error-output* "[SCHEMA ERROR] ~A: Missing mandatory key ~S~%" context key)))
94:     (loop for (key val) on plist by #'cddr
95:           do (when (not (member key allowed-keys))
96:                (setf valid nil)
97:                (format *error-output* "[SCHEMA ERROR] ~A: Unknown key ~S with value ~S~%" context key val)))
98:     valid))
99: 
100: (defun validate-documentation-schema (doc context)
101:   "Validates the XML documentation sub-plist structure, checking for allowed
102:    documentation tags and correct type mappings."
103:   (let ((valid t))
104:     (when doc
105:       (if (not (plist-p doc))
106:           (progn
107:             (setf valid nil)
108:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Documentation is not a plist: ~S~%" context doc))
109:           (progn
110:             (when (not (validate-plist-keys doc nil '(:summary :returns :parameters) (format nil "~A (Documentation)" context)))
111:               (setf valid nil))
112:             (let ((summary (getf doc :summary))
113:                   (returns (getf doc :returns))
114:                   (parameters (getf doc :parameters)))
115:               (when (and summary (not (stringp summary)))
116:                 (setf valid nil)
117:                 (format *error-output* "[SCHEMA ERROR] ~A (Documentation): :summary must be a string, got ~S~%" context summary))
118:               (when (and returns (not (stringp returns)))
119:                 (setf valid nil)
120:                 (format *error-output* "[SCHEMA ERROR] ~A (Documentation): :returns must be a string, got ~S~%" context returns))
121:               (when parameters
122:                 (if (not (listp parameters))
123:                     (progn
124:                       (setf valid nil)
125:                       (format *error-output* "[SCHEMA ERROR] ~A (Documentation): :parameters must be a list, got ~S~%" context parameters))
126:                     (dolist (p parameters)
127:                       (if (not (plist-p p))
128:                           (progn
129:                             (setf valid nil)
130:                             (format *error-output* "[SCHEMA ERROR] ~A (Documentation): Parameter doc entry is not a plist: ~S~%" context p))
131:                           (progn
132:                             (when (not (validate-plist-keys p '(:name :description) '(:name :description) (format nil "~A (Documentation Parameter)" context)))
133:                               (setf valid nil))
134:                             (let ((pname (getf p :name))
135:                                   (pdesc (getf p :description)))
136:                               (when (and pname (not (stringp pname)))
137:                                 (setf valid nil)
138:                                 (format *error-output* "[SCHEMA ERROR] ~A (Documentation Parameter): :name must be a string, got ~S~%" context pname))
139:                               (when (and pdesc (not (stringp pdesc)))
140:                                 (setf valid nil)
141:                                 (format *error-output* "[SCHEMA ERROR] ~A (Documentation Parameter): :description must be a string, got ~S~%" context pdesc))))))))))))
142:     valid))
143: 
144: (defun validate-parameter-schema (param context)
145:   "Validates a single method or constructor parameter plist, checking for allowed modifier
146:    flags, expected types, and default value consistency."
147:   (let ((valid t))
148:     (if (not (plist-p param))
149:         (progn
150:           (setf valid nil)
151:           (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Parameter is not a plist: ~S~%" context param))
152:         (progn
153:           (when (not (validate-plist-keys param '(:name :type)
154:                                          '(:name :type :assembly-qualified-type :extension-this :out :ref :ref-readonly :scoped :params :has-default :default-value)
155:                                          context))
156:             (setf valid nil))
157:           (let ((pname (getf param :name))
158:                 (ptype (getf param :type))
159:                 (p-aq (getf param :assembly-qualified-type))
160:                 (p-ext (getf param :extension-this))
161:                 (p-out (getf param :out))
162:                 (p-ref (getf param :ref))
163:                 (p-ref-ro (getf param :ref-readonly))
164:                 (p-scoped (getf param :scoped))
165:                 (p-params (getf param :params))
166:                 (p-has-def (getf param :has-default))
167:                 (p-def-val (key-present-p param :default-value)))
168:             (when (and pname (not (stringp pname)))
169:               (setf valid nil)
170:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :name must be a string, got ~S~%" context pname))
171:             (when (and ptype (not (stringp ptype)))
172:               (setf valid nil)
173:               (format *error-output* "[SCHEMA ERROR] ~A: :type must be a string, got ~S~%" context ptype))
174:             (when (and p-aq (not (stringp p-aq)))
175:               (setf valid nil)
176:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :assembly-qualified-type must be a string, got ~S~%" context p-aq))
177:             (when (and p-ext (not (eq p-ext 't)))
178:               (setf valid nil)
179:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :extension-this must be t, got ~S~%" context p-ext))
180:             (when (and p-out (not (eq p-out 't)))
181:               (setf valid nil)
182:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :out must be t, got ~S~%" context p-out))
183:             (when (and p-ref (not (eq p-ref 't)))
184:               (setf valid nil)
185:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :ref must be t, got ~S~%" context p-ref))
186:             (when (and p-ref-ro (not (eq p-ref-ro 't)))
187:               (setf valid nil)
188:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :ref-readonly must be t, got ~S~%" context p-ref-ro))
189:             (when (and p-scoped (not (eq p-scoped 't)))
190:               (setf valid nil)
191:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :scoped must be t, got ~S~%" context p-scoped))
192:             (when (and p-params (not (eq p-params 't)))
193:               (setf valid nil)
194:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :params must be t, got ~S~%" context p-params))
195:             (when (and p-has-def (not (eq p-has-def 't)))
196:               (setf valid nil)
197:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :has-default must be t, got ~S~%" context p-has-def))
198:             (when (not (eq (if p-has-def t nil) (if p-def-val t nil)))
199:               (setf valid nil)
200:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :has-default is ~S but :default-value presence is ~S~%" context p-has-def p-def-val)))))
201:     valid))
202: 
203: (defun validate-method-schema (method context c#type)
204:   "Validates a single method plist and queries the resolved C# Type using reflection
205:    to confirm the method's clean or mangled name exists."
206:   (let ((valid t))
207:     (if (not (plist-p method))
208:         (progn
209:           (setf valid nil)
210:           (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Method entry is not a plist: ~S~%" context method))
211:         (progn
212:           (when (not (validate-plist-keys method '(:name :return-type)
213:                                          '(:name :mangled-name :is-static :extension-method :return-type :assembly-qualified-return-type :parameters :documentation :is-generic :generic-arity)
214:                                          context))
215:             (setf valid nil))
216:           (let ((mname (getf method :name))
217:                 (m-mangled (getf method :mangled-name))
218:                 (m-static (getf method :is-static))
219:                 (m-ext (getf method :extension-method))
220:                 (m-ret (getf method :return-type))
221:                 (m-aq-ret (getf method :assembly-qualified-return-type))
222:                 (m-params (getf method :parameters))
223:                 (m-doc (getf method :documentation)))
224:             (when (and mname (not (stringp mname)))
225:               (setf valid nil)
226:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :name must be a string, got ~S~%" context mname))
227:             (when (and m-mangled (not (stringp m-mangled)))
228:               (setf valid nil)
229:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :mangled-name must be a string, got ~S~%" context m-mangled))
230:             (when (and m-static (not (eq m-static 't)))
231:               (setf valid nil)
232:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :is-static must be t, got ~S~%" context m-static))
233:             (when (and m-ext (not (eq m-ext 't)))
234:               (setf valid nil)
235:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :extension-method must be t, got ~S~%" context m-ext))
236:             (when (and m-ret (not (stringp m-ret)))
237:               (setf valid nil)
238:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :return-type must be a string, got ~S~%" context m-ret))
239:             (when (and m-aq-ret (not (stringp m-aq-ret)))
240:               (setf valid nil)
241:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :assembly-qualified-return-type must be a string, got ~S~%" context m-aq-ret))
242:             (when (and m-params (not (listp m-params)))
243:               (setf valid nil)
244:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :parameters must be a list, got ~S~%" context m-params))
245:             (when m-params
246:               (dolist (p m-params)
247:                 (when (not (validate-parameter-schema p (format nil "~A (Parameter ~A)" context (getf p :name))))
248:                   (setf valid nil))))
249:             (when (not (validate-documentation-schema m-doc context))
250:               (setf valid nil))
251:             (when c#type
252:               (let* ((expected-name (if m-mangled m-mangled mname))
253:                      (all-methods (dotnet-array-to-list (dotnet:static "MonoUtils" "GetTypeMethods" c#type *binding-flags-members*)))
254:                      (found (loop for m in all-methods
255:                                   when (string= expected-name (dotnet:invoke m "Name"))
256:                                   return t)))
257:                 (when (not found)
258:                   (setf valid nil)
259:                   (utils:format-red *error-output* "[SEMANTIC ERROR] ~A: Method ~S does not exist on live type ~S~%"
260:                           context expected-name (dotnet:invoke c#type "FullName"))))))))
261:     valid))
262: 
263: (defun validate-constructor-schema (ctor context c#type)
264:   "Validates a constructor plist and verifies that a constructor with a matching
265:    parameter count is declared on the live C# Type."
266:   (let ((valid t))
267:     (if (not (plist-p ctor))
268:         (progn
269:           (setf valid nil)
270:           (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Constructor entry is not a plist: ~S~%" context ctor))
271:         (progn
272:           (when (not (validate-plist-keys ctor nil '(:public :protected :protected-internal :parameters :documentation) context))
273:             (setf valid nil))
274:           (let ((c-pub (getf ctor :public))
275:                 (c-prot (getf ctor :protected))
276:                 (c-prot-int (getf ctor :protected-internal))
277:                 (c-params (getf ctor :parameters))
278:                 (c-doc (getf ctor :documentation)))
279:             (when (and c-pub (not (eq c-pub 't)))
280:               (setf valid nil)
281:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :public must be t, got ~S~%" context c-pub))
282:             (when (and c-prot (not (eq c-prot 't)))
283:               (setf valid nil)
284:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :protected must be t, got ~S~%" context c-prot))
285:             (when (and c-prot-int (not (eq c-prot-int 't)))
286:               (setf valid nil)
287:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :protected-internal must be t, got ~S~%" context c-prot-int))
288:             (when (and c-params (not (listp c-params)))
289:               (setf valid nil)
290:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :parameters must be a list, got ~S~%" context c-params))
291:             (when c-params
292:               (dolist (p c-params)
293:                 (when (not (validate-parameter-schema p (format nil "~A (Constructor Parameter ~A)" context (getf p :name))))
294:                   (setf valid nil))))
295:             (when (not (validate-documentation-schema c-doc context))
296:               (setf valid nil))
297:             (when c#type
298:               (let* ((param-count (length c-params))
299:                      (all-ctors (dotnet-array-to-list (dotnet:static "MonoUtils" "GetTypeConstructors" c#type *binding-flags-constructors*)))
300:                      (found (loop for c in all-ctors
301:                                   when (= param-count (dotnet:invoke (dotnet:invoke c "GetParameters") "Length"))
302:                                   return t)))
303:                 (when (not found)
304:                   (setf valid nil)
305:                   (utils:format-red *error-output* "[SEMANTIC ERROR] ~A: Constructor with parameter count ~D does not exist on live type ~S~%"
306:                           context param-count (dotnet:invoke c#type "FullName"))))))))
307:     valid))
308: 
309: (defun validate-property-schema (prop context c#type)
310:   "Validates a property plist and queries the live C# Type using reflection
311:    to verify that the property name exists."
312:   (let ((valid t))
313:     (if (not (plist-p prop))
314:         (progn
315:           (setf valid nil)
316:           (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Property entry is not a plist: ~S~%" context prop))
317:         (progn
318:           (when (not (validate-plist-keys prop '(:name :type)
319:                                          '(:name :type :assembly-qualified-type :readable :writeable :static :get-method :set-method :documentation)
320:                                          context))
321:             (setf valid nil))
322:           (let ((pname (getf prop :name))
323:                 (ptype (getf prop :type))
324:                 (p-aq (getf prop :assembly-qualified-type))
325:                 (p-read (getf prop :readable))
326:                 (p-write (getf prop :writeable))
327:                 (p-static (getf prop :static))
328:                 (p-get (getf prop :get-method))
329:                 (p-set (getf prop :set-method))
330:                 (p-doc (getf prop :documentation)))
331:             (when (and pname (not (stringp pname)))
332:               (setf valid nil)
333:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :name must be a string, got ~S~%" context pname))
334:             (when (and ptype (not (stringp ptype)))
335:               (setf valid nil)
336:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :type must be a string, got ~S~%" context ptype))
337:             (when (and p-aq (not (stringp p-aq)))
338:               (setf valid nil)
339:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :assembly-qualified-type must be a string, got ~S~%" context p-aq))
340:             (when (and p-read (not (eq p-read 't)))
341:               (setf valid nil)
342:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :readable must be t, got ~S~%" context p-read))
343:             (when (and p-write (not (eq p-write 't)))
344:               (setf valid nil)
345:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :writeable must be t, got ~S~%" context p-write))
346:             (when (and p-static (not (eq p-static 't)))
347:               (setf valid nil)
348:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :static must be t, got ~S~%" context p-static))
349:             (when (and p-get (not (stringp p-get)))
350:               (setf valid nil)
351:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :get-method must be a string, got ~S~%" context p-get))
352:             (when (and p-set (not (stringp p-set)))
353:               (setf valid nil)
354:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :set-method must be a string, got ~S~%" context p-set))
355:             (when (not (validate-documentation-schema p-doc context))
356:               (setf valid nil))
357:             (when c#type
358:               (let* ((all-props (dotnet-array-to-list (dotnet:static "MonoUtils" "GetTypeProperties" c#type *binding-flags-members*)))
359:                      (found (loop for p in all-props
360:                                   when (string= pname (dotnet:invoke p "Name"))
361:                                   return t)))
362:                 (when (not found)
363:                   (setf valid nil)
364:                   (utils:format-red *error-output* "[SEMANTIC ERROR] ~A: Property ~S does not exist on live type ~S~%"
365:                           context pname (dotnet:invoke c#type "FullName"))))))))
366:     valid))
367: 
368: (defun validate-field-schema (field context c#type)
369:   "Validates a field plist and queries the live C# Type using reflection
370:    to verify that the field name exists."
371:   (let ((valid t))
372:     (if (not (plist-p field))
373:         (progn
374:           (setf valid nil)
375:           (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Field entry is not a plist: ~S~%" context field))
376:         (progn
377:           (when (not (validate-plist-keys field '(:name :type)
378:                                          '(:name :type :assembly-qualified-type :static :literal :init-only :public :documentation)
379:                                          context))
380:             (setf valid nil))
381:           (let ((fname (getf field :name))
382:                 (ftype (getf field :type))
383:                 (f-aq (getf field :assembly-qualified-type))
384:                 (f-static (getf field :static))
385:                 (f-literal (getf field :literal))
386:                 (f-init (getf field :init-only))
387:                 (f-pub (getf field :public))
388:                 (f-doc (getf field :documentation)))
389:             (when (and fname (not (stringp fname)))
390:               (setf valid nil)
391:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :name must be a string, got ~S~%" context fname))
392:             (when (and ftype (not (stringp ftype)))
393:               (setf valid nil)
394:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :type must be a string, got ~S~%" context ftype))
395:             (when (and f-aq (not (stringp f-aq)))
396:               (setf valid nil)
397:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :assembly-qualified-type must be a string, got ~S~%" context f-aq))
398:             (when (and f-static (not (eq f-static 't)))
399:               (setf valid nil)
400:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :static must be t, got ~S~%" context f-static))
401:             (when (and f-literal (not (eq f-literal 't)))
402:               (setf valid nil)
403:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :literal must be t, got ~S~%" context f-literal))
404:             (when (and f-init (not (eq f-init 't)))
405:               (setf valid nil)
406:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :init-only must be t, got ~S~%" context f-init))
407:             (when (and f-pub (not (eq f-pub 't)))
408:               (setf valid nil)
409:               (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :public must be t, got ~S~%" context f-pub))
410:             (when (not (validate-documentation-schema f-doc context))
411:               (setf valid nil))
412:             (when c#type
413:               (let* ((all-fields (dotnet-array-to-list (dotnet:static "MonoUtils" "GetTypeFields" c#type *binding-flags-members*)))
414:                      (found (loop for f in all-fields
415:                                   when (string= fname (dotnet:invoke f "Name"))
416:                                   return t)))
417:                 (when (not found)
418:                   (setf valid nil)
419:                   (utils:format-red *error-output* "[SEMANTIC ERROR] ~A: Field ~S does not exist on live type ~S~%"
420:                           context fname (dotnet:invoke c#type "FullName"))))))))
421:     valid))
422: 
423: (defun validate-type-schema (type-entry)
424:   "Main schema validation entry point for a top-level type plist. Validates all plist
425:    structures recursively and checks that the type and its members exist in the CLR."
426:   (let ((valid t))
427:     (if (not (plist-p type-entry))
428:         (progn
429:           (setf valid nil)
430:           (utils:format-red *error-output* "[SCHEMA ERROR] Type entry is not a plist: ~S~%" type-entry))
431:         (let* ((tname (getf type-entry :name))
432:                (fqname (getf type-entry :fully-qualified-name))
433:                (tns (getf type-entry :namespace))
434:                (tkind (getf type-entry :kind))
435:                (t-underlying (getf type-entry :enum-underlying-type))
436:                (t-doc (getf type-entry :documentation))
437:                (tsuper (getf type-entry :superclass))
438:                (t-ifaces (getf type-entry :interfaces))
439:                (t-flags (getf type-entry :flags))
440:                (t-props (getf type-entry :properties))
441:                (t-fields (getf type-entry :fields))
442:                (t-ctors (getf type-entry :constructors))
443:                (t-methods (getf type-entry :methods))
444:                (context (format nil "Type '~A'" (if fqname fqname (if tname tname "Unknown")))))
445:           
446:           (when (not (validate-plist-keys type-entry '(:name :fully-qualified-name :kind)
447:                                          '(:name :fully-qualified-name :namespace :kind :enum-underlying-type :documentation :superclass :interfaces :flags :properties :fields :constructors :methods)
448:                                          context))
449:             (setf valid nil))
450:           
451:           (when (and tname (not (stringp tname)))
452:             (setf valid nil)
453:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :name must be a string, got ~S~%" context tname))
454:           (when (and fqname (not (stringp fqname)))
455:             (setf valid nil)
456:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :fully-qualified-name must be a string, got ~S~%" context fqname))
457:           (when (and tns (not (stringp tns)))
458:             (setf valid nil)
459:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :namespace must be a string, got ~S~%" context tns))
460:           (when (and tkind (not (member tkind '(:class :struct :interface :enum :delegate))))
461:             (setf valid nil)
462:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :kind must be one of (:class :struct :interface :enum :delegate), got ~S~%" context tkind))
463:           (when (and t-underlying (not (stringp t-underlying)))
464:             (setf valid nil)
465:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :enum-underlying-type must be a string, got ~S~%" context t-underlying))
466:           (when (and t-underlying (not (eq tkind :enum)))
467:             (setf valid nil)
468:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :enum-underlying-type is present but :kind is ~S (must be :enum)~%" context tkind))
469:           (when (and tsuper (not (stringp tsuper)))
470:             (setf valid nil)
471:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :superclass must be a string, got ~S~%" context tsuper))
472:           (when (and t-ifaces (not (listp t-ifaces)))
473:             (setf valid nil)
474:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :interfaces must be a list, got ~S~%" context t-ifaces))
475:           (when t-ifaces
476:             (dolist (i t-ifaces)
477:               (when (not (stringp i))
478:                 (setf valid nil)
479:                 (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Interface name in :interfaces must be a string, got ~S~%" context i))))
480:           (when (and t-flags (not (listp t-flags)))
481:             (setf valid nil)
482:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :flags must be a list, got ~S~%" context t-flags))
483:           (when t-flags
484:             (dolist (f t-flags)
485:               (when (not (member f '(:abstract :sealed :import :serializable :generic-type :generic-type-definition :nested)))
486:                 (setf valid nil)
487:                 (utils:format-red *error-output* "[SCHEMA ERROR] ~A: Unknown flag keyword in :flags: ~S~%" context f))))
488:           (when (and t-props (not (listp t-props)))
489:             (setf valid nil)
490:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :properties must be a list, got ~S~%" context t-props))
491:           (when (and t-fields (not (listp t-fields)))
492:             (setf valid nil)
493:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :fields must be a list, got ~S~%" context t-fields))
494:           (when (and t-ctors (not (listp t-ctors)))
495:             (setf valid nil)
496:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :constructors must be a list, got ~S~%" context t-ctors))
497:           (when (and t-methods (not (listp t-methods)))
498:             (setf valid nil)
499:             (utils:format-red *error-output* "[SCHEMA ERROR] ~A: :methods must be a list, got ~S~%" context t-methods))
500:           
501:           (when (not (validate-documentation-schema t-doc context))
502:             (setf valid nil))
503:           
504:           (let ((c#type (when fqname (monoutils:get-type fqname))))
505:             (if (not c#type)
506:                 (progn
507:                   (setf valid nil)
508:                   (utils:format-red *error-output* "[SEMANTIC ERROR] ~A: Could not resolve type in live AppDomain~%" context))
509:                 (progn
510:                   (when t-props
511:                     (dolist (p t-props)
512:                       (when (not (validate-property-schema p (format nil "~A (Property ~A)" context (getf p :name)) c#type))
513:                         (setf valid nil))))
514:                   (when t-fields
515:                     (dolist (f t-fields)
516:                       (when (not (validate-field-schema f (format nil "~A (Field ~A)" context (getf f :name)) c#type))
517:                         (setf valid nil))))
518:                   (when t-ctors
519:                     (dolist (c t-ctors)
520:                       (when (not (validate-constructor-schema c (format nil "~A (Constructor)" context) c#type))
521:                         (setf valid nil))))
522:                   (when t-methods
523:                     (dolist (m t-methods)
524:                       (when (not (validate-method-schema m (format nil "~A (Method ~A)" context (getf m :name)) c#type))
525:                         (setf valid nil)))))))))
526:     valid))
527: 
528: (deftest test-schema-validation
529:   "Full schema validation test suite that runs over the entire loaded metadata
530:    collection and asserts that everything matches structurally and semantically."
531:   (format *error-output* "~%[TEST] Running full schema and semantic validation on loaded metadata...~%")
532:   (let ((all-valid t))
533:     (dolist (type-entry *metadata*)
534:       (when (not (validate-type-schema type-entry))
535:         (setf all-valid nil)))
536:     (assert-true all-valid "All items in metadata must adhere to the schema and exist in the CLR runtime")))
537: 
538: (defun run-all-assembly-tests (filename assembly-name)
539:   "Main entry point for executing Lisp-native test validations on the generated assembly
540:    metadata. Runs the full schema validation and type resolution suite on every target,
541:    and dispatches assembly-specific spot checks."
542:   (format *error-output* "~%==============================~%")
543:   (format *error-output* "Loading metadata from: ~A (~A)~%" filename assembly-name)
544:   (setf *metadata* (utils:safe-read-form-from-file filename))
545:   (format *error-output* "Metadata successfully loaded: ~A items found.~%" (length *metadata*))
546:   (format *error-output* "==============================~%")
547:   
548:   (setf *test-failures* 0)
549:   (setf *test-count* 0)
550:   
551:   (test-load-metadata)
552:   (test-schema-validation)
553:   
554:   ;; Run registered assembly-specific tests
555:   (let ((tests (gethash assembly-name *assembly-tests*)))
556:     (dolist (test-fn (reverse tests))
557:       (funcall test-fn)))
558:   
559:   (format *error-output* "~%==============================~%")
560:   (format *error-output* "TESTS COMPLETE: ~A run, ~A failed.~%" *test-count* *test-failures*)
561:   (format *error-output* "==============================~%")
562:   (if (> *test-failures* 0)
563:       nil
564:       t))

(End of file - total 564 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 480.8s)

_Thinking:_

Now I have a very comprehensive understanding of the repository. Let me compile my plan. Let me also check what tests reference MonoGame vs standard .NET assemblies.

Here's the summary of what needs to be split out:

**Package Generator Code:**
1. `assembly-package-generator.lisp` - The main generator code (1061 lines) - depends only on `packages.lisp` (for utils package) and `utils.lisp`
2. `Package-generator-tests.lisp` - Tests for the generator (237 lines) - references `dungeon-slime-tests` package and some generated packages like `ts`, `microsoft-xna-framework-vector2`

**C# Code:**
3. `AssemblyToLispy.cs` - C# assembly metadata generator (1142 lines) - standalone, depends only on standard .NET
4. `AssemblyToLispyTestTarget/` - C# test target assembly

**Generated cspackages/ (these are OUTPUTS, not source):**
- The `cspackages/` directory contains 52 files that are all GENERATED by the generator.
- These reference `monoutils:get-type`, `dotnet:invoke`, `dotnet:static`, etc.

**Test infrastructure in tests/:**
- `tests/framework.lisp` - Base framework (def-assembly-test, schema validation, etc.) - depends on `utils` and `monoutils` packages
- `tests/system-runtime.test.lisp` - Tests System.Runtime.dll - no MonoGame
- `tests/system-console.test.lisp` - Tests System.Console.dll - no MonoGame
- `tests/dotcl-runtime.test.lisp` - Tests DotCL.Runtime.dll - no MonoGame
- `tests/monogame-framework.test.lisp` - Tests MonoGame.Framework.dll - **HAS MonoGame**
- `tests/nvorbis.test.lisp` - Tests NVorbis.dll - no MonoGame
- `tests/synthetic-target.test.lisp` - Tests AssemblyToLispyTestTarget.dll - no MonoGame
- `tests/dungeon-slime.test.lisp` - Tests DungeonSlime.dll - no MonoGame

**cspackages-test.lisp** - Integration tests for generated packages - tests Vector2, Rectangle, Point, TimeSpan etc. - references `v2`, `rect` packages which are generated from MonoGame AND standard assemblies. But the tests use `v2` which is `microsoft-xna-framework-vector2` which is MonoGame.

**What tests can be moved as-is:**
Tests that reference only standard .NET assemblies (System.Runtime, System.Console, System.Uri, System.TimeSpan, System.IO.Path, System.Type, DotCL.Runtime, NVorbis):
- `tests/system-runtime.test.lisp`
- `tests/system-console.test.lisp`
- `tests/dotcl-runtime.test.lisp`
- `tests/nvorbis.test.lisp`
- `tests/synthetic-target.test.lisp`
- `tests/dungeon-slime.test.lisp`

Tests that reference MonoGame:
- `tests/monogame-framework.test.lisp` - stays in DungeonSlime
- `cspackages-test.lisp` - tests Vector2, Rectangle, Point (MonoGame), TimeSpan, Uri, SpriteBatch - has some that are MonoGame and some that are standard

**The `cspackages/` directory** - this is generated output. These files reference:
- `monoutils:get-type` - from DungeonSlime's monoutils.lisp/C#
- `dotnet:invoke`, `dotnet:static`, etc. - from DotCL
- `utils:csharp-overload-not-found` - from DungeonSlime's utils.lisp

The generated cspackage files are the OUTPUT of running the generator. They are not source code that needs to be split.

**What needs to be in the new package-generator project:**

1. **Core generator code:**
   - `assembly-package-generator.lisp` (or split into components)
   - `packages.lisp` equivalent (package definitions)
   - `utils.lisp` equivalent (the utils package with `safe-read-form-from-file`, `format-red`, `qualify-path`, `csharp-overload-not-found`, etc.)

2. **C# side:**
   - `AssemblyToLispy.cs` (the metadata extractor)

3. **C# test target:**
   - `AssemblyToLispyTestTarget/` directory

4. **Tests:**
   - `package-generator-tests.lisp` - but needs modification since it uses `ts`, `microsoft-xna-framework-vector2` etc.
   - `tests/` directory - most of these are fine

5. **Build system:**
   - Need a .csproj or similar to build the C# part
   - Need an ASDF system definition

The question is whether the new package should generate cspackages for standard .NET assemblies only, or also for MonoGame. Looking at the user's request:

> "take out tests that reference anything but standard DotNet assemblies is fine (e.g., MonoGame)"

So MonoGame tests should stay in DungeonSlime but MonoGame-generated packages CAN be generated by the package-generator (since the generator doesn't need MonoGame to work - it just generates the Lisp code).

Wait, actually the cspackages/ files that exist in DungeonSlime are output files. They reference monoutils (which is in DungeonSlime) and utils (which is in DungeonSlime). The generated packages for standard .NET types like System.TimeSpan, System.IO.Path, System.Uri, System.Type don't reference MonoGame. They only reference monoutils (for get-type), dotnet (for invoke/static), and utils (for csharp-overload-not-found).

So the new package-generator needs to:
1. Generate cspackages that depend on `monoutils` and `utils` packages
2. These packages need to be available at runtime

The question is: should the new package-generator also include `monoutils.lisp` (which is a C#-based package with `get-type`, `boxed-dotnet-p`, `dotnet-p`, `get-type-full-name`)?

Looking at monoutils.lisp, it depends on:
- `object:get-type` from system-object.lisp (a generated cspackage)
- `type:full-name` from system-type.lisp (a generated cspackage)
- `MonoUtilsRegistrar.Initialize()` from C#

Actually, monoutils depends on generated cspackages AND a C# DLL (MonoUtils.dll). So monoutils itself is complex.

But looking at the generated cspackages, they call `(monoutils:get-type ...)`. If the new package-generator generates cspackages for standard assemblies (System.Runtime, System.Console, System.IO, System.Uri, System.TimeSpan, System.Type, System.Collections, System.Reflection, etc.), then the generated code needs `monoutils:get-type` to work.

But wait - in the original DungeonSlime, the `cspackages/` files that were pre-generated reference monoutils. But monoutils itself depends on the generated system-type and system-object packages. So there's a circular dependency.

Let me re-read monoutils.lisp:
```lisp
(defun get-type (obj-or-string)
  (handler-case
    (if (stringp obj-or-string)
      (dotnet:resolve-type obj-or-string)
      (object:get-type obj-or-string))
    (error () nil)))
```

The `(object:get-type obj-or-string)` call calls the C# Type.GetType() method. It needs the system-object package loaded. But the system-object.lisp is generated by the generator.

In the original code, packages.lisp pre-declares all the cspackage packages to break this circular dependency. And monoutils is loaded before the cspackages.

For the new package-generator, I think the approach should be:
1. The generator produces cspackages that use `monoutils:get-type` and `utils:csharp-overload-not-found`
2. The monoutils package is needed but it's simple enough to include in the package-generator project
3. The system-object and system-type cspackages are generated by the generator itself

Actually, let me look more carefully at what monoutils uses from generated packages:
- `(object:get-type obj-or-string)` - this calls `system-object:get-type` which is the C# `System.Object.GetType()` method

But wait - `object:get-type` is actually defined in `cspackages/system-object.lisp`:
```lisp
(cl:defun get-type (obj-or-string)
  ...
```

No wait, that's monoutils' own `get-type` function. Let me re-read. Actually `system-object.lisp` defines a function called `get-type` that calls `System.Object.GetType()`. But monoutils ALSO defines `get-type`.

Actually looking at monoutils.lisp more carefully:
```lisp
(in-package :monoutils)
...
(defun get-type (obj-or-string)
  (handler-case
    (if (stringp obj-or-string)
      (dotnet:resolve-type obj-or-string)
      (object:get-type obj-or-string))
    (error () nil)))
```

So monoutils uses `object:get-type` which is from the `:system-object` package. This is the C# System.Object.GetType() method. The system-object.lisp file defines it.

For the new package-generator, the generated cspackages will need:
- `monoutils:get-type` for type resolution
- `dotnet:invoke` and `dotnet:static` from DotCL

The new package-generator would need to include monoutils as a dependency, OR it could use `dotnet:resolve-type` directly instead of `monoutils:get-type` for the standard library packages.

Actually, looking more carefully, the generated cspackages use `(monoutils:get-type "...")` to resolve types. This is because `monoutils:get-type` wraps `dotnet:resolve-type` with error handling. The new generator could just use `(dotnet:resolve-type "...")` directly, or it could keep using `monoutils:get-type`.

I think the cleanest approach for the new package-generator is:

1. Include a minimal `monoutils.lisp` that just provides `get-type` (wrapping `dotnet:resolve-type`) - this is essentially what monoutils does for the generator's needs
2. Include the `utils.lisp` package (with `safe-read-form-from-file`, `format-red`, `csharp-overload-not-found`)
3. Keep `assembly-package-generator.lisp` as-is
4. Keep `AssemblyToLispy.cs` as-is
5. Keep test infrastructure as-is

Now let me formulate the plan.

Actually, let me re-read the user's request more carefully:

> "make a plan to split out the assembly package generator code and tests into a new project in the directory ../package-generator please"

> "This package should contain all the code to generate the C# Lisp Packages exactly a it works today"

> "generate an executable that can also be installed by dotnet (like the `dotcl` command is installed by dotnet)"

So the new project should:
1. Be a dotnet package that can be installed via `dotnet tool install` or similar
2. Generate the same cspackages as today
3. Be self-contained enough to install

> "The goal for the first version would be to make as few changes to the existing code as possible"

> "taking out tests that reference anything but standard DotNet assemblies is fine (e.g., MonoGame)"

So:
- Tests referencing standard .NET assemblies: move to new project
- Tests referencing MonoGame: stay in DungeonSlime

> "The second part of the plan should be to remove the package generator and all the attendant tests from the current DungeonSlime repository"

> "The system can keep DungeonSlime tests that test MonoGame generated packages though, since those will not be in the package generator tests anymore."

So after moving things, DungeonSlime will keep tests that test MonoGame-generated packages (like cspackages-test.lisp which tests Vector2, Rectangle, Point from MonoGame).

Let me now write the comprehensive plan.

One more thing - I should check if the `cspackages/` directory in DungeonSlime contains only generated files (output) or if some are hand-written.


Now I have a thorough understanding of the repository. Let me check one more detail about which cspackages are hand-written vs generated, and what the Makefile looks like.



**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/Makefile"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/Makefile</path>
<type>file</type>
<content>
1: # Makefile for DungeonSlime
2: 
3: # Ubuntu
4: #REF_DIR = /usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
5: # Arch
6: REF_DIR = /usr/share/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9/ref/net10.0/
7: BIN_DIR := $(shell dotnet build DungeonSlime.csproj -getProperty:OutputPath)
8: OUT_DIR = cspackages
9: EXECUTABLE := $(BIN_DIR)DungeonSlime
10: 
11: .PHONY: all build test run clean cspackages repl check-parens
12: 
13: all: build test
14: 
15: build: build-actual # cspackages build-actual
16: 
17: check-parens:
18: 	find . -type f \( -name "*.lisp" -o -name "*.asd" \) ! -path "*/obj/*" ! -path "*/bin/*" ! -path "*/.git/*" | xargs python3 check_parens.py
19: 
20: build-actual:
21: 	# Build the project, compiling both C# and DotCL Common Lisp code in one step.
22: 	# NuGet reference dependencies are automatically copied to the bin directory
23: 	# before Lisp dependency resolution and compilation targets run, and
24: 	# Quicklisp-installed libraries are resolved via build-setup.lisp.
25: 	dotnet build DungeonSlime.csproj -v d -c Debug
26: 
27: cspackages:
28: 	mkdir -p obj $(OUT_DIR)
29: 	# System.Console
30: 	$(EXECUTABLE)  --assembly $(REF_DIR)System.Console.dll --output obj/System.Console.lispy.metadata
31: 	$(EXECUTABLE)  --assembly-metadata obj/System.Console.lispy.metadata --class System.Console --output $(OUT_DIR)
32: 	# System.Runtime
33: 	$(EXECUTABLE)  --assembly $(REF_DIR)System.Runtime.dll --output obj/System.Runtime.lispy.metadata
34: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.TimeSpan --output $(OUT_DIR) --constant-properties "*"
35: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.UriKind --output $(OUT_DIR) --constant-properties "*"
36: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Uri --output $(OUT_DIR) --constant-properties "*"
37: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Convert --output $(OUT_DIR)
38: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.AppDomain --output $(OUT_DIR)
39: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.IO.Path --output $(OUT_DIR)
40: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Boolean --output $(OUT_DIR)
41: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Type --output $(OUT_DIR)
42: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Object --output $(OUT_DIR)
43: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Single --output $(OUT_DIR)
44: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Double --output $(OUT_DIR)
45: 	$(EXECUTABLE)  --assembly-metadata obj/System.Runtime.lispy.metadata --class System.Reflection.MemberInfo --output $(OUT_DIR)
46: 	# MonoGame.Framework
47: 	$(EXECUTABLE)  --assembly $(BIN_DIR)MonoGame.Framework.dll --output obj/MonoGame.Framework.lispy.metadata
48: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Vector2 --output $(OUT_DIR) --constant-properties "*"
49: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Rectangle --output $(OUT_DIR) --constant-properties "*"
50: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Point --output $(OUT_DIR) --constant-properties "*"
51: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameTime --output $(OUT_DIR)
52: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Game --output $(OUT_DIR)
53: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GameWindow --output $(OUT_DIR)
54:   #
55: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keyboard --output $(OUT_DIR)
56: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.KeyboardState --output $(OUT_DIR)
57: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Keys --output $(OUT_DIR)
58: 	#
59: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Mouse --output $(OUT_DIR)
60: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.MouseState --output $(OUT_DIR)
61: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.ButtonState --output $(OUT_DIR)
62: 	#
63: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePad --output $(OUT_DIR)
64: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadState --output $(OUT_DIR)
65: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadDPad --output $(OUT_DIR)
66: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadThumbSticks --output $(OUT_DIR)
67: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.GamePadTriggers --output $(OUT_DIR)
68: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Buttons --output $(OUT_DIR)
69: 	#
70: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchPanel --output $(OUT_DIR)
71: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchCollection --output $(OUT_DIR)
72: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.TouchLocation --output $(OUT_DIR)
73: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Input.Touch.GestureSample --output $(OUT_DIR)
74: 	#
75: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Color --output $(OUT_DIR) --constant-properties "*"
76: 	#
77: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Content.ContentManager --output $(OUT_DIR)
78: 	#
79: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.GraphicsDeviceManager --output $(OUT_DIR)
80: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteEffects --output $(OUT_DIR)
81: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteSortMode --output $(OUT_DIR)
82: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SamplerState --output $(OUT_DIR) --constant-properties "*"
83: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.GraphicsDevice --output $(OUT_DIR)
84: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteBatch --output $(OUT_DIR)
85: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont --output $(OUT_DIR)
86: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.SpriteFont.Glyph --output $(OUT_DIR)
87: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Graphics.PresentationParameters --output $(OUT_DIR)
88: 	#
89: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.PlayerIndex --output $(OUT_DIR)
90:   #
91: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffect --output $(OUT_DIR)
92: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundEffectInstance --output $(OUT_DIR)
93: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Audio.SoundState --output $(OUT_DIR) --constant-properties "*"
94: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.Song --output $(OUT_DIR)
95: 	$(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class Microsoft.Xna.Framework.Media.MediaPlayer --output $(OUT_DIR)
96: 	# Add more classes here:
97: 	# $(EXECUTABLE)  --assembly-metadata obj/MonoGame.Framework.lispy.metadata --class X --output $(OUT_DIR)
98: 
99: 
100: test:
101: 	$(EXECUTABLE) --test
102: 
103: run:
104: 	$(EXECUTABLE)
105: 
106: clean:
107: 	dotnet clean DungeonSlime.csproj
108: 	# Keep our "vendored" cspackages that we previously created intentionally
109: 	# rm -rf $(OUT_DIR)
110: 
111: mgcb:
112: 	dotnet tool restore
113: 	dotnet tool run mgcb-editor-linux
114: 
115: repl:
116: 	dotcl --eval '(load "load-repl.lisp")' \
117: 	      --eval '(in-package :dungeon-slime)' repl

(End of file - total 117 lines)
</content>
```

**Tool: read**

**Input:**
```json
{
  "filePath": "/home/dfields/src/cl/dotcl-dungeonslime/DungeonSlime.csproj"
}
```

**Output:**
```
<path>/home/dfields/src/cl/dotcl-dungeonslime/DungeonSlime.csproj</path>
<type>file</type>
<content>
1: <Project Sdk="Microsoft.NET.Sdk">
2: 
3:   <!-- ========================================================================= -->
4:   <!-- General Project Configuration Property Group                              -->
5:   <!-- ========================================================================= -->
6:   <!-- This section defines standard .NET application settings:                  -->
7:   <!-- * OutputType: Configures the build as a Windows GUI executable (WinExe)   -->
8:   <!--   to prevent a console window from showing when launching the game.       -->
9:   <!-- * RootNamespace: Sets the default namespace for generated C# classes.     -->
10:   <!-- * ImplicitUsings/Nullable: Enables modern C# compiler features (implicit  -->
11:   <!--   usings and nullable reference type compile-time warnings).              -->
12:   <!-- * RollForward: Directs the .NET host to execute on newer major .NET       -->
13:   <!--   runtimes if the exact target runtime is not available locally.          -->
14:   <!-- * DefaultItemExcludes: Excludes the metadata test target directory from   -->
15:   <!--   implicit compilation, as it is a separate target library project.       -->
16:   <!-- ========================================================================= -->
17:   <PropertyGroup>
18:     <OutputType>WinExe</OutputType>
19:     <RootNamespace>DungeonSlime</RootNamespace>
20:     <ImplicitUsings>enable</ImplicitUsings>
21:     <Nullable>enable</Nullable>
22:     <RollForward>Major</RollForward>
23:     <DefaultItemExcludes>$(DefaultItemExcludes);AssemblyToLispyTestTarget\**</DefaultItemExcludes>
24:   </PropertyGroup>
25: 
26:   <!-- ========================================================================= -->
27:   <!-- Platform-Conditional Target Framework and Runtime Identifier (RID)        -->
28:   <!-- ========================================================================= -->
29:   <!-- This section specifies the Target Framework Moniker (TFM) and RID based   -->
30:   <!-- on the host operating system, which is necessary to resolve appropriate   -->
31:   <!-- platform binaries (e.g. MonoGame SDL vs. DX, and native libraries):       -->
32:   <!-- ========================================================================= -->
33:   <PropertyGroup Condition="$([MSBuild]::IsOSPlatform('Windows'))">
34:     <!-- net10.0-windows lets the MonoGame.Framework.WindowsDX package
35:          (ships against net8.0-windows7.0) resolve via NuGet's compat
36:          layer. Plain net10.0 doesn't match. -->
37:     <TargetFramework>net10.0-windows</TargetFramework>
38:     <!-- MonoGame.Library.SDL ships SDL2.dll only for win-x64; on Snapdragon
39:          Windows ARM64 the native-arm64 build doesn't exist, so force x64
40:          and let Prism emulation run the whole process. Performance hit is
41:          acceptable for a dev sample. -->
42:     <RuntimeIdentifier>win-x64</RuntimeIdentifier>
43:   </PropertyGroup>
44:   <PropertyGroup Condition="!$([MSBuild]::IsOSPlatform('Windows'))">
45:     <TargetFramework>net10.0</TargetFramework>
46:     <!-- Use the SDK's detected host RID (linux-x64, linux-arm64, osx-x64,
47:          osx-arm64). MonoGame.Framework.DesktopGL ships native libs for
48:          all of these. -->
49:     <RuntimeIdentifier>$(NETCoreSdkRuntimeIdentifier)</RuntimeIdentifier>
50:   </PropertyGroup>
51: 
52:   <!-- ========================================================================= -->
53:   <!-- DotCL Build Properties                                                    -->
54:   <!-- ========================================================================= -->
55:   <!-- This section configures properties required by the DotCL compiler task:   -->
56:   <!-- * DotclProjectAsd: Specifies the entry ASDF system definition file path.  -->
57:   <!--   The compiler task resolves dependencies and compiles Lisp sources       -->
58:   <!--   relative to this file.                                                  -->
59:   <!-- ========================================================================= -->
60:   <PropertyGroup>
61:     <DotclProjectAsd>$(MSBuildProjectDirectory)/dungeon-slime.asd</DotclProjectAsd>
62:   </PropertyGroup>
63: 
64:   <!-- ========================================================================= -->
65:   <!-- DotCL Build Initialization Script                                         -->
66:   <!-- ========================================================================= -->
67:   <!-- This section declares Lisp build initialization files that must be loaded -->
68:   <!-- by the DotCL compiler task before compiling project source files.         -->
69:   <!-- * DotclBuildInit: Points to the script that locates and loads Quicklisp,  -->
70:   <!--   registering the ASDF system search hooks so that external libraries     -->
71:   <!--   (such as 'anaphora') are successfully resolved at build-time.           -->
72:   <!-- ========================================================================= -->
73:   <ItemGroup>
74:     <DotclBuildInit Include="$(MSBuildProjectDirectory)/build-setup.lisp" />
75:   </ItemGroup>
76: 
77:   <!--
78:   To add external ASDF systems outside of Quicklisp or project-core, declare search paths here:
79:   <ItemGroup>
80:     <DotclAsdSearchPath Include="../path/to/some-library/" />
81:   </ItemGroup>
82:   -->
83: 
84:   <!-- ========================================================================= -->
85:   <!-- Raw Lisp Source File Exclusions                                           -->
86:   <!-- ========================================================================= -->
87:   <!-- Under .NET SDK-style projects, all files in the project folder matching   -->
88:   <!-- default patterns (including .lisp and .asd) are automatically included    -->
89:   <!-- in the standard <None> item group. This section removes them to:          -->
90:   <!-- 1. Prevent default MSBuild copy tasks from copying uncompiled Lisp source -->
91:   <!--    files directly to the root of the output directory during a build.     -->
92:   <!-- 2. Keep the files reserved exclusively for DotCL's custom compilation     -->
93:   <!--    targets (which package compiled FASLs in the dotcl-fasl/ subfolder).   -->
94:   <!-- 3. Prevent duplicate visual entries or warnings in IDE solution views.    -->
95:   <!-- ========================================================================= -->
96:   <ItemGroup>
97:     <None Remove="main.lisp" />
98:     <None Remove="dungeon-slime.asd" />
99:   </ItemGroup>
100: 
101:   <!-- ========================================================================= -->
102:   <!-- MonoGame NuGet Package References                                         -->
103:   <!-- ========================================================================= -->
104:   <!-- This section specifies the core MonoGame dependencies:                    -->
105:   <!-- * MonoGame.Framework.DesktopGL: Provides the cross-platform OpenGL/SDL    -->
106:   <!--   rendering, windowing, and audio capabilities.                           -->
107:   <!-- * MonoGame.Content.Builder.Task: Integrates the MonoGame Content Builder  -->
108:   <!--   (MGCB) tool directly into the MSBuild pipeline, compiling assets        -->
109:   <!--   (textures, fonts, audio) automatically during project builds.           -->
110:   <!-- ========================================================================= -->
111:   <ItemGroup>
112:     <PackageReference Include="MonoGame.Framework.DesktopGL" Version="3.8.*" />
113:     <PackageReference Include="MonoGame.Content.Builder.Task" Version="3.8.*" />
114:   </ItemGroup>
115: 
116:   <!-- ========================================================================= -->
117:   <!-- DotCL Runtime and Test Fixture References                                 -->
118:   <!-- ========================================================================= -->
119:   <!-- This section integrates Lisp runtime support and test target libraries:   -->
120:   <!-- * DotCL.Runtime PackageReference: Integrates the DotCL Lisp execution     -->
121:   <!--   host library and automatically imports package compilation targets,     -->
122:   <!--   allowing in-process Lisp compilation during MSBuild runs.               -->
123:   <!-- * AssemblyToLispyTestTarget ProjectReference: References the target test  -->
124:   <!--   assembly compiled specifically to verify metadata extraction and        -->
125:   <!--   reflection functionalities during tests.                                -->
126:   <!-- ========================================================================= -->
127:   <ItemGroup>
128:     <PackageReference Include="DotCL.Runtime" Version="0.1.15" />
129:     <ProjectReference Include="AssemblyToLispyTestTarget\AssemblyToLispyTestTarget.csproj" />
130:   </ItemGroup>
131: 
132:   <!-- ========================================================================= -->
133:   <!-- Contrib Lisp Library Copy Task                                            -->
134:   <!-- ========================================================================= -->
135:   <!-- This section copies the Lisp standard library ('contrib' directory) from  -->
136:   <!-- the restored NuGet package assets folder to the build output directory.   -->
137:   <!-- This is required so that the game host can dynamically resolve ASDF/UIOP  -->
138:   <!-- packages via (require "asdf") at runtime. The condition ensures that it   -->
139:   <!-- is only evaluated when the contrib directory variable is resolved to      -->
140:   <!-- prevent empty wildcard directory scanning errors during early builds.     -->
141:   <!-- ========================================================================= -->
142:   <ItemGroup Condition="'$(DotclProjectAsd)' != '' and '$(_DotCLContribDir)' != ''">
143:     <None Include="$(_DotCLContribDir)\**\*">
144:       <Link>contrib\%(RecursiveDir)%(Filename)%(Extension)</Link>
145:       <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
146:     </None>
147:   </ItemGroup>
148: 
149:   <!-- ========================================================================= -->
150:   <!-- Raw Audio Asset Copy Task                                                 -->
151:   <!-- ========================================================================= -->
152:   <!-- This section copies the raw sound effect (.wav) files to the build output -->
153:   <!-- directory. This is necessary because the Lisp game engine loads them       -->
154:   <!-- directly from the filesystem using SoundEffect.FromFile, which bypasses   -->
155:   <!-- MonoGame's ContentManager compiling pipeline.                             -->
156:   <!-- ========================================================================= -->
157:   <ItemGroup>
158:     <Content Include="Content\audio\*.wav">
159:       <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
160:     </Content>
161:   </ItemGroup>
162: 
163:   <!-- ========================================================================= -->
164:   <!-- NuGet Reference Assembly Copy Target                                      -->
165:   <!-- ========================================================================= -->
166:   <!-- This target copies all local NuGet reference assemblies (e.g. MonoGame)   -->
167:   <!-- to the output bin/ directory before Lisp dependency resolution runs.      -->
168:   <!-- This is necessary on clean builds to prevent compile-time Lisp loading    -->
169:   <!-- errors when resolving and loading interop type definitions.               -->
170:   <!-- ========================================================================= -->
171:   <Target Name="CopyReferencesBeforeLisp" BeforeTargets="_DotCLResolveDeps" DependsOnTargets="ResolveReferences" Condition="'$(DotclProjectAsd)' != ''">
172:     <MakeDir Directories="$(OutDir)" />
173:     <Copy SourceFiles="@(ReferenceCopyLocalPaths)" DestinationFolder="$(OutDir)" SkipUnchangedFiles="true" />
174:   </Target>
175: 
176:   <!-- ========================================================================= -->
177:   <!-- Output Directory Manifest Target                                          -->
178:   <!-- ========================================================================= -->
179:   <!-- This target writes the build target output folder path out to a text file -->
180:   <!-- ('obj/dotcl-outdir.txt') before Lisp root compilation executes.           -->
181:   <!-- This is required by compile-time Lisp macros to locate reference assembly -->
182:   <!-- paths dynamically, eliminating fragile hardcoded path assumptions.        -->
183:   <!-- ========================================================================= -->
184:   <Target Name="WriteOutDirForLisp" BeforeTargets="_DotCLCompileRoot" Condition="'$(DotclProjectAsd)' != ''">
185:     <WriteLinesToFile File="obj/dotcl-outdir.txt" Lines="$(OutDir)" Overwrite="true" />
186:   </Target>
187: 
188: 
189: 
190: </Project>

(End of file - total 190 lines)
</content>
```

---

## Assistant (Plan · Ornith-1.0-35B-GGUF-Q8_0 (local) · 747.6s)

_Thinking:_

Now I have a complete picture. Let me formulate a comprehensive plan.

Key observations:
1. The `cspackages/` directory contains 52 files that are all GENERATED output (they all have the header ";;; Generated automatically. Do not edit.")
2. The generator takes an assembly metadata file (from AssemblyToLispy.cs) and produces Lisp package files
3. The cspackages reference `monoutils:get-type`, `dotnet:invoke`, `dotnet:static`, and `utils:csharp-overload-not-found`
4. `monoutils` itself is a C# package that wraps DotCL functionality
5. The tests in `tests/` test the AssemblyToLispy metadata generation
6. `package-generator-tests.lisp` tests the generator's naming functions and the generated packages
7. `cspackages-test.lisp` tests the integration of generated packages

For the new project, I need to figure out:
- What Lisp packages the generator needs as dependencies
- What C# packages the generator needs as dependencies
- How to make it installable via dotnet

The new project will need:
1. The core generator Lisp code (assembly-package-generator.lisp)
2. The utility packages (utils.lisp) - or a simplified version
3. The monoutils package (or at least get-type) - since generated cspackages reference it
4. AssemblyToLispy.cs (the C# metadata extractor)
5. The test target (AssemblyToLispyTestTarget)
6. The test framework (tests/framework.lisp)
7. Tests for standard assemblies (system-runtime.test.lisp, system-console.test.lisp, etc.)
8. Tests for generated packages that don't reference MonoGame (need to filter cspackages-test.lisp)
9. Package-generator-tests.lisp (needs modification to remove MonoGame references)

For the DungeonSlime removal:
1. Remove assembly-package-generator.lisp
2. Remove package-generator-tests.lisp
3. Remove tests/ directory (most of it, except MonoGame-specific ones)
4. Remove cspackages-test.lisp (since it tests MonoGame packages now)
5. Update dungeon-slime.asd to remove references
6. Update packages.lisp to remove the assembly-package-generator package
7. Update test-harness.lisp to remove references
8. Update Program.cs to remove --assembly-metadata handling
9. Remove AssemblyToLispy.cs (or keep it - actually, the user said "remove the package generator and all the attendant tests")
10. Remove AssemblyToLispyTestTarget/

Wait, actually re-reading: "The second part of the plan should be to remove the package generator and all the attendant tests from the current DungeonSlime repository"

So the package generator code AND its attendant tests should be removed from DungeonSlime.

But the user also says: "The system can keep DungeonSlime tests that test MonoGame generated packages though, since those will not be in the package generator tests anymore."

So cspackages-test.lisp stays in DungeonSlime.

And actually, the user says to remove the "package generator" - that's the code that generates the packages. But the generated cspackages/ directory (the output files) - should those stay? They're needed by DungeonSlime for the game to work.

I think the cspackages/ directory should stay since they're the output of the generator that DungeonSlime needs at runtime. The user just wants the generator code removed.

Actually wait - looking at the Makefile, the `cspackages` target generates these files. If the generator is removed, the Makefile cspackages target can't work anymore. But the user said "take out tests that reference anything but standard DotNet assemblies is fine" and "remove the package generator". The cspackages/ files are pre-generated and checked in. So they can remain.

Hmm, but the user also said the cspackages tests should remain. That's cspackages-test.lisp which tests the generated packages. Since the cspackages/ files remain in DungeonSlime, these tests make sense to keep.

OK let me write the plan now.

One more thing to check - does `utils.lisp` use anything from DungeonSlime-specific code? Let me look again:
- `safe-read-form-from-file` - pure CL + UIOP
- `+base-directory+` - uses `dotnet:invoke` and `dotnet:static` from DotCL
- `path-combine` - uses UIOP
- `file-exists-and-readable-p` - pure CL + UIOP
- `qualify-path` - uses +base-directory+, path-combine, file-exists-and-readable-p
- `format-red` - pure CL
- `print-gf-methods` - uses `dotcl-mop:generic-function-methods` etc.

The utils.lisp doesn't reference any DungeonSlime-specific code. It references `dotnet:static`, `dotnet:invoke`, `monoutils:dotnet-p`, and `dotcl-mop`. The `dotcl-mop` is from the DotCL runtime.

Actually wait, I see `utils.lisp` doesn't reference DungeonSlime-specific code. The `+base-directory+` constant uses `(dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "get_BaseDirectory")`. And `format-red` is pure CL. The `print-gf-methods` uses `dotcl-mop` from DotCL. So utils.lisp is self-contained (depends on DotCL only).

But there's a tricky thing - `utils.lisp` defines `csharp-overload-not-found` which is referenced by generated cspackages. So that needs to stay.

And `utils.lisp` uses `path:combine` from the `:system-io-path` local-nickname, but that's commented out (the UIOP version is used instead). Actually looking again at packages.lisp:

```lisp
(defpackage :utils
  (:use :cl)
  (:local-nicknames
    (:path :system-io-path)
    (:app-domain :system-app-domain))
```

So utils depends on `system-io-path` and `system-app-domain` packages. In the new package-generator, these would be generated by the generator itself, so there's a circular dependency issue.

Wait, actually looking at the utils.lisp code again:
```lisp
(defun path-combine (part1 part2 &optional (part3 nil part3-p) (part4 nil part4-p))
  "Calls the UIOP Path Combining logic with 2-4 parameters."
  ...
  (uiop:subpathname*  part1 part2 part3 part4))
```

The UIOP version is actually used! The `path:combine` version is commented out. So utils.lisp doesn't actually USE `:system-io-path` at runtime. But the local-nickname is still declared. This could be a problem if the package-generator doesn't generate system-io-path before utils.lisp is loaded.

Actually, in the ASDF system definition, `utils` is listed before cspackages. So utils is loaded before the system-io-path package exists. But the local-nickname just doesn't resolve. Since the code doesn't actually use it (it's commented out), it might be OK as long as the package is pre-declared.

For the new package-generator, I should:
1. Remove the `:local-nicknames` from the utils package definition, OR
2. Pre-declare the `:system-io-path` and `:system-app-domain` packages, OR
3. Generate those packages first

Actually, the simplest approach is to pre-declare the packages that utils references as local-nicknames, similar to what packages.lisp does in DungeonSlime.

OK, I think I have enough information now. Let me write the plan.

Let me also consider: the user wants the new project to be installable via dotnet. So it needs to be a `dotnet` tool. The current DungeonSlime builds as a `WinExe`. The package-generator should be a `Exe` (console application) that:
1. Runs AssemblyToLispy to generate metadata
2. Runs the Lisp package generator to produce cspackages

Actually, looking at Program.cs, the package generator is invoked via:
```csharp
--assembly <path-to-dll> --output <path-to-metadata>
--assembly-metadata <metadata-file> --class <class-filter> --output <output-dir>
```

So the executable needs to support these CLI modes. The simplest approach for the new project is:
1. A C# console app (like Program.cs but simplified)
2. Include AssemblyToLispy.cs
3. Include the Lisp files
4. Use DotCL.Runtime to compile and load the Lisp code

The project structure would be something like:
```
../package-generator/
  package-generator.csproj
  Program.cs
  AssemblyToLispy.cs
  dungeon-slime-asd equivalent (new .asd file)
  assembly-package-generator.lisp
  utils.lisp
  packages.lisp (modified)
  monoutils.lisp (simplified)
  test-framework.lisp
  tests/
    system-runtime.test.lisp
    system-console.test.lisp
    dotcl-runtime.test.lisp
    nvorbis.test.lisp
    synthetic-target.test.lisp
    dungeon-slime.test.lisp
    package-generator-tests.lisp (modified)
    cspackages-test.lisp (modified - remove MonoGame parts)
```

Actually wait, the user said "The system can keep DungeonSlime tests that test MonoGame generated packages though". So `cspackages-test.lisp` should STAY in DungeonSlime. Only the parts of package-generator-tests.lisp that test non-MonoGame stuff should move.

Let me re-examine package-generator-tests.lisp:
- Lines 22-42: Tests `camel-to-kebab` - these are pure string manipulation, no runtime deps, fine to move
- Lines 45-55: Tests `split-string` - pure string, fine to move
- Lines 59-118: Tests `simple-method-p`, `clean-constructor-p`, `constructor-overload-name` using mock plists - no runtime deps, fine to move
- Lines 152-235: Tests operator overloads on TimeSpan and Vector2 - TimeSpan is System.Runtime (standard .NET), Vector2 is MonoGame

So for package-generator-tests.lisp:
- The first part (lines 1-149) can be moved as-is
- The Vector2 operator tests (lines 207-233) reference `microsoft-xna-framework-vector2` which is MonoGame - these should stay in DungeonSlime

And cspackages-test.lisp tests:
- Vector2, Rectangle, Point (MonoGame) - stays
- TimeSpan (System.Runtime, standard) - could move
- Uri (System.Runtime, standard) - could move
- SpriteBatch (MonoGame) - stays
- Various constants (Vector2.Zero, etc. - MonoGame) - stays

Actually, for the first version "to make as few changes to the existing code as possible", I think we should:
1. Move all the non-MonoGame tests (package-generator-tests.lisp without Vector2 parts, most tests/ files)
2. Keep cspackages-test.lisp in DungeonSlime since it tests both MonoGame and standard types
3. Remove the parts of package-generator-tests.lisp that test MonoGame-generated packages

Wait, actually let me reconsider. The user said the tests/ directory tests reference assemblies. Looking at the test files:

- `system-runtime.test.lisp` - tests System.Runtime.dll metadata (no MonoGame)
- `system-console.test.lisp` - tests System.Console.dll metadata (no MonoGame)
- `dotcl-runtime.test.lisp` - tests DotCL.Runtime.dll metadata (no MonoGame)
- `monogame-framework.test.lisp` - tests MonoGame.Framework.dll metadata (HAS MonoGame)
- `nvorbis.test.lisp` - tests NVorbis.dll metadata (no MonoGame)
- `synthetic-target.test.lisp` - tests AssemblyToLispyTestTarget.dll metadata (no MonoGame)
- `dungeon-slime.test.lisp` - tests DungeonSlime.dll metadata (no MonoGame)
- `framework.lisp` - shared test framework (no MonoGame)

So for tests/: move all except `monogame-framework.test.lisp`.

For package-generator-tests.lisp: move it but remove the Vector2 operator tests at the end (or split it).

For cspackages-test.lisp: This tests generated packages from BOTH standard assemblies (TimeSpan, Uri) and MonoGame (Vector2, Rectangle, Point, SpriteBatch). Since it mixes both, I think it stays in DungeonSlime for now.

Actually, re-reading the user's request one more time: "The system can keep DungeonSlime tests that test MonoGame generated packages though, since those will not be in the package generator tests anymore."

So DungeonSlime keeps tests that test MonoGame packages. The package-generator tests don't include those. This means cspackages-test.lisp (which tests MonoGame packages) stays in DungeonSlime.

OK let me now finalize my plan. I'll ask the user if I need clarification on anything.

Actually, let me just ask about a couple things that aren't 100% clear before writing the plan.

Hmm, actually I think I should just write the plan and present it. The user asked me to make a plan, not to ask clarifying questions first (though I can). Let me present a comprehensive plan and ask any clarifying questions at the end.

Let me also think about what the `monoutils.lisp` situation is. In the generated cspackages:
```lisp
(cl:defconstant <type> (monoutils:get-type "System.TimeSpan"))
```

So every generated package references `monoutils:get-type`. For the new package-generator to generate packages that work, it needs to provide `monoutils:get-type`.

Looking at monoutils.lisp:
```lisp
(in-package :monoutils)

(defun get-type (obj-or-string)
  "Gets the C# Type object of the specified object, or nil if none. If the
   obj is a Lisp string, it tries to resolve the C# Type with that name."
  (handler-case
    (if (stringp obj-or-string)
      (dotnet:resolve-type obj-or-string)
      (object:get-type obj-or-string))
    (error () nil)))
```

This uses `(object:get-type obj-or-string)` which calls `System.Object.GetType()`. In the new package-generator, the `system-object` package would be generated by the generator itself.

But wait, there's a chicken-and-egg problem: monoutils uses system-object, but system-object is generated by the generator, which needs monoutils.

In DungeonSlime, this is solved by:
1. packages.lisp pre-declares all cspackage packages (so system-object exists as a package)
2. monoutils is loaded before cspackages (monoutils.lisp is in the :components list before cspackages)
3. The `(object:get-type obj-or-string)` call only works if system-object.lisp is actually loaded

Actually, for the new package-generator, I think the simplest approach is to have monoutils NOT depend on system-object. The `(object:get-type obj-or-string)` call is only used when the input is NOT a string (i.e., it's an actual DotNet object). For the generated cspackages, the `<type>` constant is always resolved from a string (the fully qualified name). So we could simplify monoutils to just use `dotnet:resolve-type` for strings and provide an alternative for objects.

Actually, looking at this more carefully: in the generated cspackages, every use of `monoutils:get-type` is with a string argument:
```lisp
(cl:defconstant <type> (monoutils:get-type "System.TimeSpan"))
```

So we only need `get-type` to work with strings. We could simplify monoutils to not need system-object at all.

But wait, the tests might use `get-type` with objects. Let me check...

In the framework.lisp:
```lisp
(let ((c#type (when fqname (monoutils:get-type fqname))))
```

This passes a string (fqname) so it's fine.

In cspackages-test.lisp, I don't see direct use of `monoutils:get-type`.

So for the new package-generator, I can simplify monoutils to:
1. Only need to handle string input (use `dotnet:resolve-type`)
2. Or handle both but use `dotnet:resolve-type` for strings and skip the object path

Actually, the simplest is to just inline the resolve-type call in the generated cspackages instead of going through monoutils. But the user said "make as few changes to the existing code as possible", so I should keep monoutils as-is but make it self-contained.

Alternatively, I could generate cspackages that use `(dotnet:resolve-type "...")` directly instead of `(monoutils:get-type "...")`. But that changes the generator.

I think the cleanest approach is:
1. Include a minimal monoutils.lisp in the new package-generator
2. It provides `get-type` that wraps `dotnet:resolve-type` (the object case can fall back to `dotnet:resolve-type` too using `dotnet:type-of` or similar)
3. Don't need to pre-declare system-object since we don't need it

Let me now write the comprehensive plan.

Actually, I realize I should also check if `monoutils.lisp` references any DungeonSlime-specific code. Looking again:
- `dotnet:static "MonoUtilsRegistrar" "Initialize"` - this calls into the MonoUtilsRegistrar C# class which is in DungeonSlime's C# code (BaseCaller.cs and MonoUtils.cs).

So monoutils depends on the C# MonoUtilsRegistrar. For the new package-generator, this isn't needed since we don't need MonoUtilsRegistrar. The monoutils package in the new project just needs `get-type` and `dotnet-p` and `boxed-dotnet-p`.

Let me check what `dotnet-p` and `boxed-dotnet-p` are. They're from the C# side. Looking at BaseCaller.cs... actually, these are likely DotCL built-in functions. Let me check.

Looking at packages.lisp:
```lisp
(defpackage :monoutils
  (:use :cl)
  (:local-nicknames
    (:object :system-object)
    (:type :system-type))
  (:export #:add3
            #:dotnet-p
            #:boxed-dotnet-p
            #:get-type
            #:get-type-full-name))
```

But `add3`, `dotnet-p`, `boxed-dotnet-p` are not defined in monoutils.lisp! They must be provided by the C# `MonoUtilsRegistrar.Initialize()`. So monoutils depends on the C# MonoUtilsRegistrar DLL.

For the new package-generator, we don't need `add3`, `dotnet-p`, or `boxed-dotnet-p` from the C# side. The generated cspackages only use `monoutils:get-type` (for strings). So we can simplify monoutils to just define `get-type` and `get-type-full-name`, and either remove the other exports or provide stubs.

Actually, `dotnet-p` and `boxed-dotnet-p` are used in the generated cspackages:
```lisp
(cl:or (cl:null ~A) (monoutils:dotnet-p ~A))
```

So the generated code DOES reference `monoutils:dotnet-p`. We need this function.

But `dotnet-p` is provided by the C# MonoUtilsRegistrar. Can it be provided by Lisp instead? Let me check if it's a DotCL built-in.

Looking at the generated cspackages, `monoutils:dotnet-p` is called with various arguments. It's used in type checks like:
```lisp
(cl:or (cl:null paths) (monoutils:dotnet-p paths))
```

If `dotnet-p` is a DotCL built-in, we can define it in Lisp. Let me think about what `dotnet-p` does... it probably checks if an object is a DotNet-wrapped object. This is a DotCL concept.

Actually, looking at the C# side, BaseCaller.cs likely defines these. But for the package-generator, we can define them in pure Lisp.

Actually, I think the simplest approach for the new project is:
1. Provide a minimal `monoutils.lisp` that defines all needed functions in pure Lisp
2. Remove the `MonoUtilsRegistrar.Initialize()` call

This avoids needing a C# DLL for monoutils.

OK, I think I have enough to write the plan now. Let me also consider: should I ask the user about:
1. Whether to keep monoutils as-is or simplify it
2. Whether cspackages-test.lisp should be split
3. Whether to modify the generator to not use monoutils

Actually, the user said "make as few changes to the existing code as possible". So I should keep monoutils as-is (with minimal changes) and keep the generator as-is. The monoutils dependency is a complication but it's not a show-stopper.

Let me write the plan now. I'll include the plan and ask clarifying questions.

Let me think about what the plan should look like:

## Plan: Split Package Generator into Separate Project

### Phase 1: Create new project at ../package-generator

#### 1.1 Project Structure
```
../package-generator/
├── package-generator.csproj        # DotNet project file
├── dungeon-slime.asd               # ASDF system (adapted)
├── Program.cs                      # CLI entry point (adapted)
├── AssemblyToLispy.cs              # Copy from DungeonSlime
├── build-setup.lisp                # Copy from DungeonSlime
├── assembly-package-generator.lisp # Copy from DungeonSlime
├── packages.lisp                   # Adapted from DungeonSlime
├── utils.lisp                      # Copy from DungeonSlime
├── monoutils.lisp                  # Adapted (remove C# dependency)
├── cspackages/                     # Generated output (will be empty initially)
├── tests/
│   ├── framework.lisp              # Copy
│   ├── system-runtime.test.lisp    # Copy
│   ├── system-console.test.lisp    # Copy
│   ├── dotcl-runtime.test.lisp     # Copy
│   ├── nvorbis.test.lisp           # Copy
│   ├── synthetic-target.test.lisp  # Copy
│   ├── dungeon-slime.test.lisp     # Copy
│   └── package-generator-tests.lisp # Adapted (remove Vector2 tests)
└── README.md
```

Wait, I need to think about this more. The user wants the new project to be a dotnet-installable tool. So it should be a `dotnet` tool that generates cspackages.

The structure should be:
1. A C# project that builds an executable
2. The executable can:
   a. Generate metadata from a .NET assembly (using AssemblyToLispy)
   b. Generate Lisp packages from metadata (using assembly-package-generator)
3. The Lisp code is compiled by DotCL at build time

For the project to be installable via `dotnet tool install`, it needs to be a console app with a `<ToolCommandName>` in the csproj.

Let me think about the details more carefully:

The current flow in DungeonSlime is:
1. `dotnet build` compiles C# and DotCL
2. The executable runs with `--assembly` to generate metadata
3. Then `--assembly-metadata` to generate packages

For the new project, the executable should support:
1. `--assembly <path> --output <metadata-path>` - generate metadata
2. `--assembly-metadata <metadata-path> --class <filter> --output <output-dir>` - generate packages

The new project's csproj should reference DotCL.Runtime for Lisp compilation, similar to DungeonSlime.

OK, I think I have enough. Let me write the plan now. I'll be comprehensive but concise.

I have some questions for the user:
1. Should monoutils be simplified (remove C# dependency) or kept as-is?
2. Should package-generator-tests.lisp be fully moved with only Vector2 tests removed, or split into two files?
3. Should the new project also generate the cspackages for standard assemblies during its build, or should it just be a tool that generates them on demand?
4. For the new project, should we pre-generate cspackages for standard assemblies and include them, or leave the cspackages/ directory empty?

Let me present the plan and ask these questions.


I've now reviewed the repository thoroughly. Here's my plan.

---

## Plan: Split Package Generator into `../package-generator`

### Current Architecture (what I found)

**Generator source code:**
- `assembly-package-generator.lisp` (1061 lines) -- the Lisp package generator (v18)
- `AssemblyToLispy.cs` (1142 lines) -- C# metadata extractor
- `AssemblyToLispyTestTarget/` -- C# test target assembly
- `package-generator-tests.lisp` (237 lines) -- generator unit tests
- `tests/` (8 files) -- metadata validation tests against assemblies
- `tests/framework.lisp` -- shared test framework with schema/semantic validation

**Generated output (not source, but dependencies):**
- `cspackages/` -- 52 pre-generated `.lisp` files, all header'd "Generated automatically"
- These reference `monoutils:get-type`, `monoutils:dotnet-p`, `dotnet:invoke`, `dotnet:static`, and `utils:csharp-overload-not-found`

**Key dependencies the generator needs:**
- `utils.lisp` -- `safe-read-form-from-file`, `format-red`, `qualify-path`, `csharp-overload-not-found` condition
- `monoutils.lisp` -- `get-type` (wraps `dotnet:resolve-type`), `dotnet-p`, `boxed-dotnet-p`, plus C# `MonoUtilsRegistrar.Initialize()`
- DotCL runtime (DotCL.Runtime NuGet package)

### Phase 1: Create the new project

**Directory:** `../package-generator/`

```
../package-generator/
├── package-generator.csproj              # dotnet tool project
├── build-setup.lisp                      # Copy (Quicklisp hooks)
├── PackageGenerator.asd                  # ASDF system definition
├── Program.cs                            # Adapted CLI (remove game/DotclHost.Run logic)
├── AssemblyToLispy.cs                    # Copy
├── AssemblyToLispyTestTarget/            # Copy
│   ├── AssemblyToLispyTestTarget.csproj
│   └── EdgeCases.cs
├── assembly-package-generator.lisp       # Copy (no changes needed)
├── packages.lisp                         # Adapted (remove DungeonSlime-specific packages)
├── utils.lisp                            # Copy (no DungeonSlime deps)
├── monoutils.lisp                        # Adapted -- see questions below
├── package-generator-tests.lisp          # Adapted (remove Vector2 operator tests)
├── tests/
│   ├── framework.lisp                    # Copy
│   ├── system-runtime.test.lisp          # Copy
│   ├── system-console.test.lisp          # Copy
│   ├── dotcl-runtime.test.lisp           # Copy
│   ├── nvorbis.test.lisp                 # Copy
│   ├── synthetic-target.test.lisp        # Copy
│   └── dungeon-slime.test.lisp           # Copy
└── cspackages/                           # Will be empty; generated at runtime
```

**Key changes for the new project:**

1. **`packages.lisp`** -- Strip all DungeonSlime-specific packages (`:dungeon-slime`, `:dungeon-slime-tests`, `:csharp`, `:mg-classes`, `:game-repl`, `:clr-generic`). Keep only the package declarations needed: `:assembly-package-generator`, `:utils`, `:monoutils`, and pre-declarations of all cspackages. Also remove `:local-nicknames` from `:utils` since `system-io-path` won't be pre-generated (the commented-out `path:combine` code is not used; the UIOP version is).

2. **`utils.lisp`** -- Copy as-is. It only depends on DotCL and UIOP, not DungeonSlime. The `:local-nicknames` in packages.lisp referencing `system-io-path` and `system-app-domain` can be removed since the actual code in utils.lisp uses UIOP's `subpathname*`.

3. **`monoutils.lisp`** -- This is the trickiest dependency. The current version calls `MonoUtilsRegistrar.Initialize()` which is a C# class in DungeonSlime's `BaseCaller.cs`/`MonoUtils.cs`. The generated cspackages reference `monoutils:dotnet-p` and `monoutils:get-type`.
   - Option A: Include a minimal `MonoUtilsRegistrar.cs` in the new project that provides `dotnet-p`, `boxed-dotnet-p`, and `add3` to the DotCL package registry.
   - Option B: Define `dotnet-p` and `boxed-dotnet-p` in pure Lisp in monoutils.lisp (check if DotCL provides these as builtins).
   - Option C: Change the generator to not use `monoutils:dotnet-p` -- inline the check in generated code.
   - Option A is closest to "minimal changes."

4. **`Program.cs`** -- Adapted from DungeonSlime's. Keep the `--assembly` and `--assembly-metadata` modes. Remove the game bootstrapping, `--test` mode for the full DungeonSlime test harness, BaseCaller tests, and `RUN-ALL-TESTS` calls. The `--test` flag can be repurposed to run just the package-generator's own tests.

5. **`package-generator-tests.lisp`** -- Move as-is but remove lines 207-233 (Vector2 operator tests that reference `microsoft-xna-framework-vector2`). The remaining tests (camel-to-kebab, split-string, simple-method-p, constructor classification) use only mock plists and standard library packages.

6. **`tests/` files** -- Copy all except `monogame-framework.test.lisp`. The test framework (`framework.lisp`) is already dependency-free of DungeonSlime.

7. **`PackageGenerator.asd`** -- New ASDF system that includes: packages, utils, monoutils, assembly-package-generator, package-generator-tests, and tests.

8. **`package-generator.csproj`** -- New DotNet project targeting `net10.0`, with `DotCL.Runtime` NuGet reference, `AssemblyToLispyTestTarget` project reference, and a `<ToolCommandName>` for `dotnet tool install` compatibility.

### Phase 2: Remove from DungeonSlime

After verifying the new project builds and tests pass:

1. **Remove files:**
   - `assembly-package-generator.lisp`
   - `package-generator-tests.lisp`
   - `AssemblyToLispy.cs`
   - `AssemblyToLispyTestTarget/` (entire directory)

2. **Update `dungeon-slime.asd`:**
   - Remove `assembly-package-generator` from components
   - Remove `package-generator-tests` from components
   - Remove references in `test-harness`

3. **Update `packages.lisp`:**
   - Remove `:assembly-package-generator` package definition

4. **Update `test-harness.lisp`:**
   - Remove call to `(run-package-generator-tests)`

5. **Update `Program.cs`:**
   - Remove `--assembly-metadata` mode and `RUN-ASSEMBLY-PACKAGE-GENERATOR` call
   - Remove `AssemblyToLispy` metadata generation from `--test` mode
   - Remove `DungeonSlime.AssemblyToLispyTest.RunTests()` call

6. **Update `Makefile`:**
   - Remove `cspackages` target (or comment it out)
   - Remove `cspackages` from `build` target dependency

7. **Keep in DungeonSlime:**
   - `cspackages/` -- pre-generated files remain (they're the output the game needs)
   - `cspackages-test.lisp` -- tests MonoGame packages (Vector2, Rectangle, Point, SpriteBatch)
   - `tests/monogame-framework.test.lisp` -- tests MonoGame metadata
   - `BaseCaller.cs`, `MonoUtils.cs`, `MonoGameLispUtilities.cs`, `CheckSound.cs` -- C# utilities needed by DungeonSlime

### Clarifying Questions

1. **Monoutils dependency:** Should I go with Option A (include a minimal `MonoUtilsRegistrar.cs`) or Option B (define `dotnet-p`/`boxed-dotnet-p` in pure Lisp) for the new project? Option A is closer to current behavior but requires a small C# file. Option B is cleaner but I'd need to check if DotCL provides these.

2. **Package-generator-tests.lisp split:** Should I just remove the Vector2 tests (lines 207-233) from the file, or split into two files -- one with the portable tests and one (`vector2-operator-tests.lisp`) that stays in DungeonSlime?

3. **Pre-generated cspackages:** Should the new project's `cspackages/` directory be left empty (generator only produces output on demand), or should I include pre-generated cspackages for standard assemblies (System.Runtime, System.Console, System.Uri, etc.)? The Makefile in DungeonSlime generates them on demand using the DungeonSlime executable.

4. **Build integration:** Should the new project's Makefile include a `cspackages` target that generates standard-library packages automatically (similar to DungeonSlime's current Makefile), or should users invoke the generator manually?

---

