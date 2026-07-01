# Antigravity Context & Memory (dotcl-dungeonslime)

This document contains highly distilled knowledge, technical insights, and strict behavioral rules established during previous sessions. Read this carefully to restore full context.

## 1. Strict Behavioral Rules
* **Never use Git for modifications:** You must **only** use `git` for read-only commands (e.g., `git status`, `git log`, `git diff`). You will **never** use git to stage (`git add`), commit (`git commit`), or checkout files to revert changes without explicit permission.
* **No unprompted edits:** Do **NOT** make any changes to files or take initiative to rewrite code unless explicitly directed by the user. If you find a broken piece of code but weren't asked to fix it, explain the issue and wait for permission.
* **No DotCL source code changes:** Do NOT modify the core DotCL repository code. All work must be confined to the `dotcl-dungeonslime` codebase.
* **Documentation & Comments:** Always include detailed comments explaining *why* things are done. Keep `README.md`, `doc/implementation-notes.md`, `FILES.md`, and `antigravity-log.md` fully up to date.
* **Language style:** Do *not* use personal pronouns ("we", "I") in documentation or comments. Use the passive voice (e.g., "This metadata is captured...").
* **Formatting:** Maintain standard markdown formatting. Wrap text at 80-100 columns. Avoid gratuitous whitespace.
* **C# / Lisp Style:** For C#, use standard K&R/Java style braces (open brace on same line as block statement). For Lisp, do not use `and`/`or` for flow control—use `when`/`unless` instead.

## 2. Lisp/.NET CLOS Compile-Time Architecture

### Assembly Resolution & Pathing
Hardcoded output directories (e.g., `bin/Debug/net10.0/ubuntu...`) break cross-platform builds.
* **Retrieving `$(OutDir)` at Compile Time:**
  Do NOT use `uiop:run-program` to spawn a nested `dotnet build` to query properties—MSBuild node locks/environment inheritance will cause it to silently fail and return empty strings.
  Instead, `DungeonSlime.csproj` contains a target (`WriteOutDirForLisp`) that dumps the active `$(OutDir)` into `obj/dotcl-outdir.txt` before Lisp compilation. Read this file at compile-time to locate assemblies dynamically.
* **Locating the Project Root:**
  Do **NOT** use `(asdf:system-source-directory "dungeon-slime")` to build file paths inside `eval-when` or REPL scripts. The ASDF system is not strictly loaded in the raw `dotcl` REPL, which will cause a `#<MISSING-COMPONENT>` crash.
  Instead, rely on `*default-pathname-defaults*`, which natively points to the project root during both `make build` and `dotcl` REPL execution.

### The `defmethod` and `.NET` Integration Workarounds
DotCL implements CLOS wrappers for C# types using their *short name* (e.g., `System.Object` becomes `dotcl-internal::|Object|`). Because `defmethod` evaluates `find-class` at compile-time, explicitly defining methods specializing on C# types fails if the external assembly (e.g., MonoGame) is not loaded into the DotCL compiler process.

* **The `eval-when` Workaround (Recommended):**
  Use `eval-when (:compile-toplevel)` to forcefully load the external assembly and explicitly register the C# type before `defmethod` expands.
  ```lisp
  (eval-when (:compile-toplevel)
    (let* ((outdir-file (merge-pathnames "obj/dotcl-outdir.txt" *default-pathname-defaults*))
           (bin-dir (with-open-file (s outdir-file) (read-line s)))
           (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll") *default-pathname-defaults*)))
      (dotnet:load-assembly (namestring dll-path)))
    (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2")))
  ```
* **The `eval` Workaround (Alternative):**
  If compile-time loading isn't feasible, defer macro-expansion to runtime by quoting the method:
  `(eval '(defmethod get-x ((obj dotcl-internal::|Vector2|)) ...))`

## 3. MSBuild Execution Mechanics

### Output Visibility (`*error-output*`)
When DotCL is executed by MSBuild's `<Exec>` task during `make build`, standard output (`format t`) is intercepted by MSBuild and logged at `"Low"` importance, making it totally invisible at default log levels.
* **To print diagnostic output during compilation:** Always use `*error-output*` (e.g., `(format *error-output* "...")`). MSBuild treats standard error as `"High"` importance, guaranteeing it penetrates the build noise.

### Compilation Caching (`DotclCompileRoot`)
MSBuild caches the compilation of Lisp files. If no `.lisp` input file has been modified, MSBuild **skips** the `DotclCompileRoot` target entirely. 
* **If compile-time outputs are missing**, it's because the compiler wasn't run. Make a trivial edit to a `.lisp` file or run `make clean && make build` to invalidate the cache.

### The Two-Stage Build
If `eval-when` dynamically loads an assembly from `bin/`, a fresh `make clean && make build` will crash. This is because the Lisp compiler target runs `BeforeBuild`—meaning NuGet dependencies (like MonoGame) haven't been copied to `bin/` yet.
* **Fix:** The `Makefile` implements a two-stage build. It first runs `dotnet build -p:DotclProjectAsd=""` (building only C# and extracting dependencies), followed by the full build including Lisp targets.
