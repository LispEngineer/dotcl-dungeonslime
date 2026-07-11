# Package Documentation for `dotcl`

This document provides detailed documentation for the symbols exported (and key internal ones) by the `DOTCL` package in the DotCL Common Lisp environment. These symbols provide core system services, platform diagnostic metrics, package management extensions (including package locks and package-local nicknames), and complete threading/synchronization primitives compliant with modern Common Lisp library expectations (such as `bordeaux-threads`).

*(Note: Originally generated against DotCL 0.1.15. Manually updated to include new capabilities up to DotCL 0.1.17).*

All functionality is backed by the C# engine under the hood, mostly mapped via static helper functions inside the `DotCL.Runtime` class.

---

## Index of Symbols

### Special Variables
* [`DOTCL:*DEBUG-STACKTRACE*`](#dotcldebug-stacktrace)
* [`DOTCL:*HOST-FEATURES*`](#dotclhost-features)
* [`DOTCL:*PACKAGE-LOCKS-DISABLED*`](#dotclpackage-locks-disabled)
* [`DOTCL:*SAVE-SIL*`](#dotclsave-sil)

### Macros
* [`DOTCL:WITHOUT-PACKAGE-LOCKS`](#dotclwithout-package-locks)

### Functions
* [`DOTCL:%CTYPE-STATS`](#dotclctype-stats)
* [`DOTCL:%RUN-PROCESS`](#dotclrun-process)
* [`DOTCL::%SET-REPL-READLINE-HOOK`](#dotclset-repl-readline-hook)
* [`DOTCL:SET-PARALLEL-EVAL`](#dotclset-parallel-eval)
* [`DOTCL::GC`](#dotclgc)
* [`DOTCL:ACQUIRE-LOCK`](#dotclacquire-lock)
* [`DOTCL:ADD-PACKAGE-LOCAL-NICKNAME`](#dotcladd-package-local-nickname)
* [`DOTCL:ALL-THREADS`](#dotclall-threads)
* [`DOTCL:ALLOC-REPORT`](#dotclalloc-report)
* [`DOTCL:ALLOC-RESET`](#dotclalloc-reset)
* [`DOTCL:BACKTRACE`](#dotclbacktrace)
* [`DOTCL:BACKTRACE-WITH-ARGS`](#dotclbacktrace-with-args)
* [`DOTCL:COMMAND-LINE-ARGUMENTS`](#dotclcommand-line-arguments)
* [`DOTCL:CONDITION-BROADCAST`](#dotclcondition-broadcast)
* [`DOTCL:CONDITION-NOTIFY`](#dotclcondition-notify)
* [`DOTCL:CONDITION-VARIABLE-P`](#dotclcondition-variable-p)
* [`DOTCL:CONDITION-WAIT`](#dotclcondition-wait)
* [`DOTCL:CURRENT-THREAD`](#dotclcurrent-thread)
* [`DOTCL:DESTROY-THREAD`](#dotcldestroy-thread)
* [`DOTCL:DOTCL-HOMEDIR-PATHNAME`](#dotcldotcl-homedir-pathname)
* [`DOTCL:FUNCTION-SIL`](#dotclfunction-sil)
* [`DOTCL:GC-STATS`](#dotclgc-stats)
* [`DOTCL:GETCWD`](#dotclgetcwd)
* [`DOTCL:GETENV`](#dotclgetenv)
* [`DOTCL:LAUNCH-PROCESS`](#dotcllaunch-process)
* [`DOTCL:LOCK-PACKAGE`](#dotcllock-package)
* [`DOTCL:LOCKP`](#dotcllockp)
* [`DOTCL:MAKE-CONDITION-VARIABLE`](#dotclmake-condition-variable)
* [`DOTCL:MAKE-LOCK`](#dotclmake-lock)
* [`DOTCL:MAKE-RECURSIVE-LOCK`](#dotclmake-recursive-lock)
* [`DOTCL:MAKE-SEMAPHORE`](#dotclmake-semaphore)
* [`DOTCL:MAKE-THREAD`](#dotclmake-thread)
* [`DOTCL:PACKAGE-LOCAL-NICKNAMES`](#dotclpackage-local-nicknames)
* [`DOTCL:PACKAGE-LOCKED-P`](#dotclpackage-locked-p)
* [`DOTCL:PRINT-BACKTRACE`](#dotclprint-backtrace)
* [`DOTCL:QUIT`](#dotclquit)
* [`DOTCL:RECURSIVE-LOCK-P`](#dotclrecursive-lock-p)
* [`DOTCL:RELEASE-LOCK`](#dotclrelease-lock)
* [`DOTCL:REMOVE-PACKAGE-LOCAL-NICKNAME`](#dotclremove-package-local-nickname)
* [`DOTCL:RUN-PROCESS`](#dotclrun-process-1)
* [`DOTCL:SAVE-APPLICATION`](#dotclsave-application)
* [`DOTCL:SIGNAL-SEMAPHORE`](#dotclsignal-semaphore)
* [`DOTCL:SIL-TO-FASL`](#dotclsil-to-fasl)
* [`DOTCL:THREAD-ALIVE-P`](#dotclthread-alive-p)
* [`DOTCL:THREAD-JOIN`](#dotclthread-join)
* [`DOTCL:THREAD-NAME`](#dotclthread-name)
* [`DOTCL:THREAD-OBJECT`](#dotclthread-object)
* [`DOTCL:THREAD-YIELD`](#dotclthread-yield)
* [`DOTCL:THREADP`](#dotclthreadp)
* [`DOTCL:UNLOCK-PACKAGE`](#dotclunlock-package)
* [`DOTCL:WAIT-ON-SEMAPHORE`](#dotclwait-on-semaphore)

---

## Special Variables

### `DOTCL:*DEBUG-STACKTRACE*`

* **Type:** Special Variable
* **Value Type:** Boolean (defaults to `nil`).
* **Description:** Controlling flag for stack trace logging on unhandled Lisp/CLR errors. When bound or set to `t`, the dynamic error catching block in the DotCL runtime catches unhandled exceptions and outputs a complete reified C# stack trace to standard error before invoking the interactive debugger or terminating the thread.
* **Under the Hood:** Inspected by the exception dispatch helper method in `Startup.cs`.
* **Usage Example:**
  ```lisp
  (setf dotcl:*debug-stacktrace* t)
  ```

---

### `DOTCL:*HOST-FEATURES*`

* **Type:** Special Variable
* **Value Type:** List of keywords (e.g. `(:x86-64 :linux :dotnet :dotcl)`).
* **Description:** Represents a read-only list of platform features describing the compiling/host system. While `CL:*FEATURES*` may be temporarily altered during cross-compilation (e.g., compile-file target setup), `*HOST-FEATURES*` is populated once at startup and remains constant.
* **Under the Hood:** Initialized in `Startup.cs` using a snapshot of `featuresList` (representing the running OS, processor architecture, and .NET CLR context).
* **Usage Example:**
  ```lisp
  (member :linux dotcl:*host-features*) ; Returns non-NIL if running on Linux
  ```

---

### `DOTCL:*PACKAGE-LOCKS-DISABLED*`

* **Type:** Special Variable
* **Value Type:** Boolean (defaults to `nil`).
* **Description:** Flag indicating whether package locks are bypassed. When bound to `t`, symbol modifications and definition exports in locked packages (such as `COMMON-LISP` or `DOTCL`) are permitted. Typically not set directly; instead, bound via the `dotcl:without-package-locks` macro.
* **Under the Hood:** Queried by `Runtime.CheckPackageLock` in `Runtime.Packages.cs` to decide whether to throw a package-lock violation error.
* **Usage Example:**
  ```lisp
  (let ((dotcl:*package-locks-disabled* t))
    (intern "MY-NEW-SYMBOL" :common-lisp))
  ```

---

### `DOTCL:*SAVE-SIL*`

* **Type:** Special Variable
* **Value Type:** Boolean (defaults to `nil`).
* **Description:** Flag indicating whether compiler Simple Instruction Language (SIL) structures should be retained. When set to `t`, the compiler stores the generated list of assembly instruction forms on the function symbol's property list under the `%SIL` key.
* **Under the Hood:** Inspected during the code generation phase of `defun` compiler macros.
* **Usage Example:**
  ```lisp
  (setf dotcl:*save-sil* t)
  (defun test-fn (x) (+ x 1))
  (dotcl:function-sil #'test-fn) ; Returns the compiled SIL representation
  ```

---

## Macros

### `DOTCL:WITHOUT-PACKAGE-LOCKS`

* **Type:** Macro
* **Syntax:**
  ```lisp
  (dotcl:without-package-locks &body body)
  ```
* **Description:** Bypasses package locks for the duration of the evaluation of the body forms. Useful when debugging or extending standard libraries at the REPL.
* **Under the Hood:** Implemented as a macro in `Startup.cs` that wraps the body in a `let` block binding `dotcl:*package-locks-disabled*` to `t`.
* **Usage Example:**
  ```lisp
  (dotcl:without-package-locks
    (defun cl:first (x)
      (car x)))
  ```

---

## Functions

### `DOTCL:%CTYPE-STATS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:%ctype-stats)
  ```
* **Description:** Returns a diagnostic status report string containing performance statistics of the runtime's CType dispatch route caching.
* **Under the Hood:** Calls the static method `Runtime.CTypeStats` in `CType.cs`.
* **Usage Example:**
  ```lisp
  (format t "~A~%" (dotcl:%ctype-stats))
  ```

---

### `DOTCL:%RUN-PROCESS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:%run-process program &optional arguments-list)
  ```
* **Description:** Backward-compatible alias for `dotcl:run-process`. Runs an external OS process and returns outputs.
* **Usage Example:**
  ```lisp
  (dotcl:%run-process "ls" '("-la"))
  ```

---

### `DOTCL::%SET-REPL-READLINE-HOOK`

* **Type:** Function (Internal)
* **Syntax:**
  ```lisp
  (dotcl::%set-repl-readline-hook function)
  ```
* **Description:** Sets the Lisp function called by the REPL interface to handle line inputs.
* **Under the Hood:** Assigns the global static `ReadlineHook` field in `Startup.cs`. Used by `dotcl-repl` to install readline console wrappers.
* **Usage Example:**
  ```lisp
  (dotcl::%set-repl-readline-hook
    (lambda (prompt)
      (format t "~A" prompt)
      (read-line)))
  ```

---

### `DOTCL:SET-PARALLEL-EVAL`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:set-parallel-eval flag)
  ```
* **Description:** Opt-in to parallel `eval`. When set to true, macro expansion and evaluation paths are executed with parallel semantics using the thread-safe internal macro table introduced in DotCL 0.1.17.
* **Parameters:**
  * `flag` (Boolean): Truthy value to enable parallel eval, `nil` to disable.

---

### `DOTCL::GC`

* **Type:** Function (Internal)
* **Syntax:**
  ```lisp
  (dotcl::gc)
  ```
* **Description:** Invokes the CLR garbage collector immediately and aggressively, freeing unreferenced managed memory and running pending finalizers.
* **Under the Hood:** Backed by static routine in `Startup.cs` that executes `GC.Collect(2, GCCollectionMode.Aggressive, true, true)` followed by `GC.WaitForPendingFinalizers()`.
* **Usage Example:**
  ```lisp
  (dotcl::gc)
  ```

---

### `DOTCL:ACQUIRE-LOCK`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:acquire-lock lock &optional (wait-p t) timeout-seconds)
  ```
* **Description:** Acquires a mutual exclusion lock (`LispLock`).
* **Parameters:**
  * `lock` (LispLock): The lock to acquire.
  * `wait-p` (Boolean, optional): If `nil`, the call returns immediately rather than blocking if the lock is held by another thread. Defaults to `t`.
  * `timeout-seconds` (Number, optional): Maximum duration to block waiting for the lock. If exceeded, returns `nil`.
* **Returns:** `t` if the lock was successfully acquired, otherwise `nil`.
* **Under the Hood:** Backed by `Runtime.AcquireLock` in `Runtime.Thread.cs`. Uses `System.Threading.Monitor.Enter` or `Monitor.TryEnter`.
* **Usage Example:**
  ```lisp
  (let ((lock (dotcl:make-lock "my-lock")))
    (when (dotcl:acquire-lock lock nil)
      (unwind-protect
           (print "Critical Section")
        (dotcl:release-lock lock))))
  ```

---

### `DOTCL:ADD-PACKAGE-LOCAL-NICKNAME`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:add-package-local-nickname nickname actual-package &optional (package *package*))
  ```
* **Description:** Registers a package-local nickname. Inside the scope of the target `package` (defaults to the current package), references to `nickname` resolve to `actual-package`. Used to write clean code without package prefix collision.
* **Under the Hood:** Backed by `Runtime.AddPackageLocalNickname` in `Runtime.Packages.cs`. Modifies the local nicknames dictionary stored inside the target `Package` metaobject.
* **Usage Example:**
  ```lisp
  (dotcl:add-package-local-nickname "JSON" "NEwtonsoft.Json")
  ```

---

### `DOTCL:ALL-THREADS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:all-threads)
  ```
* **Description:** Returns a list of all currently active `LispThread` instances in the running environment.
* **Under the Hood:** Backed by `Runtime.AllThreads` in `Runtime.Thread.cs`. Gathers values from the internal thread tracking registry dictionary `_threadRegistry`.
* **Usage Example:**
  ```lisp
  (dolist (th (dotcl:all-threads))
    (format t "Thread name: ~A~%" (dotcl:thread-name th)))
  ```

---

### `DOTCL:ALLOC-REPORT`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:alloc-report)
  ```
* **Description:** Prints a detailed table to standard output reporting the allocation counts and percentages of each Lisp object type (e.g. `Cons`, `Fixnum`, `LispString`). Only active when the runtime process starts with the environment variable `DOTCL_ALLOC_PROF=1`.
* **Under the Hood:** Backed by static call in `Startup.cs` querying `Diagnostics.AllocCounter.Snapshot()`.
* **Usage Example:**
  ```lisp
  (dotcl:alloc-report)
  ```

---

### `DOTCL:ALLOC-RESET`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:alloc-reset)
  ```
* **Description:** Zeros out all counters stored in the allocation profiler.
* **Under the Hood:** Calls `Diagnostics.AllocCounter.Reset()`.
* **Usage Example:**
  ```lisp
  (dotcl:alloc-reset)
  ```

---

### `DOTCL:BACKTRACE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:backtrace)
  ```
* **Description:** Returns a list of current call frames as strings, representing the Lisp backtrace.

---

### `DOTCL:BACKTRACE-WITH-ARGS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:backtrace-with-args)
  ```
* **Description:** Returns a list of current call frames, including argument values where available, representing the Lisp backtrace.

---

### `DOTCL:COMMAND-LINE-ARGUMENTS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:command-line-arguments)
  ```
* **Description:** Returns a Lisp list of strings containing all raw command line arguments passed to the executing host process. Note that this includes the executable name at index 0.
* **Under the Hood:** Backed by static function in `Startup.cs` calling `System.Environment.GetCommandLineArgs()`.
* **Usage Example:**
  ```lisp
  (first (dotcl:command-line-arguments)) ; Returns path of the running executable
  ```

---

### `DOTCL:CONDITION-BROADCAST`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:condition-broadcast condition-variable)
  ```
* **Description:** Wakes up all threads currently blocked and waiting on the specified condition variable.
* **Under the Hood:** Backed by `Runtime.ConditionBroadcast` in `Runtime.Thread.cs`. Locks the CV synchronization object and invokes `Monitor.PulseAll`.
* **Usage Example:**
  ```lisp
  (dotcl:condition-broadcast cv)
  ```

---

### `DOTCL:CONDITION-NOTIFY`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:condition-notify condition-variable)
  ```
* **Description:** Wakes up a single thread currently blocked and waiting on the specified condition variable.
* **Under the Hood:** Backed by `Runtime.ConditionNotify` in `Runtime.Thread.cs`. Locks the CV sync object and invokes `Monitor.Pulse`.
* **Usage Example:**
  ```lisp
  (dotcl:condition-notify cv)
  ```

---

### `DOTCL:CONDITION-VARIABLE-P`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:condition-variable-p object)
  ```
* **Description:** Predicate function returning `t` if the object is a Lisp condition variable, otherwise `nil`.
* **Under the Hood:** Performs a C# type check `args[0] is LispConditionVariable` inside `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:condition-variable-p my-var)
  ```

---

### `DOTCL:CONDITION-WAIT`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:condition-wait condition-variable lock &key timeout)
  ```
* **Description:** Releases the acquired lock and blocks the current thread until another thread notifies the condition variable. Re-acquires the lock before returning.
* **Parameters:**
  * `condition-variable` (LispConditionVariable): The CV to wait on.
  * `lock` (LispLock): The lock currently held by the calling thread.
  * `:timeout` (Number, keyword): Optional maximum duration in seconds to block before returning.
* **Returns:** `t` on notification signal, or `nil` on timeout.
* **Under the Hood:** Backed by `Runtime.ConditionWait` in `Runtime.Thread.cs`. Internally releases the lock, locks the CV synchronization object, executes `Monitor.Wait` with the resolved timeout, and subsequently re-enters the lock.
* **Usage Example:**
  ```lisp
  (let ((lock (dotcl:make-lock))
        (cv (dotcl:make-condition-variable)))
    (dotcl:acquire-lock lock)
    (unwind-protect
         (dotcl:condition-wait cv lock :timeout 5)
      (dotcl:release-lock lock)))
  ```

---

### `DOTCL:CURRENT-THREAD`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:current-thread)
  ```
* **Description:** Returns the thread object (`LispThread`) representing the currently executing thread.
* **Under the Hood:** Backed by `Runtime.CurrentThread` in `Runtime.Thread.cs`. Uses a `[ThreadStatic]` field to store the thread's local identity, lazily creating a wrapper for the `Thread.CurrentThread` if not already registered.
* **Usage Example:**
  ```lisp
  (dotcl:current-thread) ; Returns #<THREAD "main" RUNNING>
  ```

---

### `DOTCL:DESTROY-THREAD`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:destroy-thread thread)
  ```
* **Description:** Forcefully interrupts the execution of the specified Lisp thread.
* **Under the Hood:** Backed by `Runtime.DestroyThread` in `Runtime.Thread.cs`. Modern .NET does not support `Thread.Abort`; therefore, this calls `thread.Interrupt()` to inject a `ThreadInterruptedException` at the next blocking operation.
* **Usage Example:**
  ```lisp
  (dotcl:destroy-thread my-thread)
  ```

---

### `DOTCL:DOTCL-HOMEDIR-PATHNAME`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:dotcl-homedir-pathname)
  ```
* **Description:** Returns the directory pathname pointing to the root home directory of the DotCL installation.
* **Under the Hood:** Backed by `Runtime.ContribParent` in `Runtime.Core.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:dotcl-homedir-pathname)
  ```

---

### `DOTCL:FUNCTION-SIL`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:function-sil function)
  ```
* **Description:** Returns the saved Simple Instruction Language (SIL) code structure of the given compiled function if `*SAVE-SIL*` was active when the function was compiled, otherwise `nil`.
* **Under the Hood:** Accesses the `Sil` property of the `LispFunction` object inside `Startup.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:function-sil #'my-function)
  ```

---

### `DOTCL:GC-STATS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:gc-stats)
  ```
* **Description:** Queries the system for garbage collector generation collection counts and memory usage metrics.
* **Returns:** A list of the format `(gen0-count gen1-count gen2-count total-memory total-allocated-bytes)`.
* **Under the Hood:** Backed by `Runtime.GcStats` in `Runtime.Misc.cs`. Queries the .NET `GC` class methods (e.g. `GC.CollectionCount`, `GC.GetTotalMemory`, and `GC.GetTotalAllocatedBytes`).
* **Usage Example:**
  ```lisp
  (dotcl:gc-stats) ; Returns e.g. (12 3 1 20456112 50212000)
  ```

---

### `DOTCL:GETCWD`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:getcwd)
  ```
* **Description:** Returns the current working directory of the process as a Lisp pathname ending with a directory separator.
* **Under the Hood:** Backed by static function in `Startup.cs` which gets `Directory.GetCurrentDirectory()` and converts it to a `LispPathname`.
* **Usage Example:**
  ```lisp
  (dotcl:getcwd) ; Returns #P"/home/user/project/"
  ```

---

### `DOTCL:GETENV`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:getenv name)
  ```
* **Description:** Retrieves the value of the environment variable specified by `name` (string or symbol). Returns its string value, or `nil` if not defined.
* **Under the Hood:** Backed by static function in `Startup.cs` that maps arguments and calls `System.Environment.GetEnvironmentVariable(name)`.
* **Usage Example:**
  ```lisp
  (dotcl:getenv "PATH")
  ```

---

### `DOTCL:LAUNCH-PROCESS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:launch-process program arguments &key directory input output error if-input-does-not-exist if-output-exists if-error-output-exists)
  ```
* **Description:** Streaming process handle for UIOP `launch-program`/`process-info`. Unlike `run-process` (which waits and collects all output), this exposes the child's stdin/stdout/stderr as live Lisp streams so the full `run-program` contract can be built on UIOP's `slurp-input-stream`. Each of input/output/error can be `:stream` (default), a pathname (file redirection), `nil` (EOF / discard), or `t` / `:inherit` (inherit parent handle).

---

### `DOTCL:LOCK-PACKAGE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:lock-package package)
  ```
* **Description:** Locks the specified package. Locking prevents adding new definitions, exporting symbols, or redefining symbols in that package, preventing accidental modifications to core libraries.
* **Under the Hood:** Backed by `Runtime.LockPackage` in `Runtime.Packages.cs`. Sets the package's internal lock state flag.
* **Usage Example:**
  ```lisp
  (dotcl:lock-package "CL-USER")
  ```

---

### `DOTCL:LOCKP`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:lockp object)
  ```
* **Description:** Predicate function returning `t` if the object is a thread lock (`LispLock`), otherwise `nil`.
* **Under the Hood:** Checks `args[0] is LispLock` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:lockp (dotcl:make-lock)) ; Returns T
  ```

---

### `DOTCL:MAKE-CONDITION-VARIABLE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:make-condition-variable &key name)
  ```
* **Description:** Creates and returns a new condition variable object (`LispConditionVariable`) used for signaling and thread coordination.
* **Under the Hood:** Backed by `Runtime.MakeConditionVariable` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (defvar *my-cv* (dotcl:make-condition-variable :name "producer-cv"))
  ```

---

### `DOTCL:MAKE-LOCK`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:make-lock &optional (name "anonymous"))
  ```
* **Description:** Creates and returns a new non-recursive mutual exclusion lock (`LispLock`).
* **Under the Hood:** Backed by `Runtime.MakeLock` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (defvar *my-lock* (dotcl:make-lock "data-access-lock"))
  ```

---

### `DOTCL:MAKE-RECURSIVE-LOCK`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:make-recursive-lock &optional (name "anonymous"))
  ```
* **Description:** Creates and returns a recursive thread lock. Unlike a standard lock, a recursive lock allows the thread currently holding it to re-acquire it multiple times without deadlocking itself.
* **Under the Hood:** Backed by `Runtime.MakeRecursiveLock` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (defvar *rec-lock* (dotcl:make-recursive-lock "recursive"))
  ```

---

### `DOTCL:MAKE-SEMAPHORE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:make-semaphore &key (initial-count 0) name)
  ```
* **Description:** Creates and returns a counting semaphore object.
* **Under the Hood:** Backed by `Runtime.MakeSemaphore` in `Runtime.Thread.cs` (wrapping `System.Threading.SemaphoreSlim`).
* **Usage Example:**
  ```lisp
  (defvar *sem* (dotcl:make-semaphore :initial-count 3 :name "pool-sem"))
  ```

---

### `DOTCL:MAKE-THREAD`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:make-thread function &key name)
  ```
* **Description:** Spawns and runs a new background thread to execute the zero-argument Lisp function. It captures and inherits the current dynamic bindings of the parent thread, ensuring lexical and dynamic context preservation.
* **Returns:** A `LispThread` object.
* **Under the Hood:** Backed by `Runtime.MakeThread` in `Runtime.Thread.cs`. Snapshots dynamic bindings via `DynamicBindings.Snapshot()`, spawns a new .NET `Thread` (with `IsBackground = true`), restores the bindings snapshot, invokes the function, registers the result, and tracks it in `_threadRegistry`.
* **Usage Example:**
  ```lisp
  (dotcl:make-thread
    (lambda ()
      (format t "Hello from background thread!~%"))
    :name "my-worker")
  ```

---

### `DOTCL:PACKAGE-LOCAL-NICKNAMES`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:package-local-nicknames &optional (package *package*))
  ```
* **Description:** Returns a Lisp association list (alist) representing all package-local nicknames defined inside the target package.
* **Under the Hood:** Backed by `Runtime.PackageLocalNicknames` in `Runtime.Packages.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:package-local-nicknames *package*) ; Returns e.g. (("JSON" . #<PACKAGE "Newtonsoft.Json">))
  ```

---

### `DOTCL:PACKAGE-LOCKED-P`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:package-locked-p package)
  ```
* **Description:** Predicate returning `t` if the package is locked, otherwise `nil`.
* **Under the Hood:** Backed by `Runtime.PackageLockedP` in `Runtime.Packages.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:package-locked-p "COMMON-LISP") ; Returns T
  ```

---

### `DOTCL:PRINT-BACKTRACE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:print-backtrace)
  ```
* **Description:** Prints the current call stack backtrace to standard output.

---

### `DOTCL:QUIT`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:quit &optional (exit-code 0))
  ```
* **Description:** Terminates the host application process immediately, returning the specified integer exit code to the operating system.
* **Under the Hood:** Backed by static function in `Startup.cs` calling `System.Environment.Exit(exit-code)`.
* **Usage Example:**
  ```lisp
  (dotcl:quit 0)
  ```

---

### `DOTCL:RECURSIVE-LOCK-P`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:recursive-lock-p object)
  ```
* **Description:** Returns `t` if the object is a recursive lock, otherwise `nil`.
* **Under the Hood:** Checks `args[0] is LispLock lk && lk.Recursive` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:recursive-lock-p (dotcl:make-recursive-lock)) ; Returns T
  ```

---

### `DOTCL:RELEASE-LOCK`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:release-lock lock)
  ```
* **Description:** Releases the specified mutex lock, allowing other threads waiting on it to acquire it.
* **Under the Hood:** Backed by `Runtime.ReleaseLock` in `Runtime.Thread.cs`. Invokes `System.Threading.Monitor.Exit`.
* **Usage Example:**
  ```lisp
  (dotcl:release-lock lock)
  ```

---

### `DOTCL:REMOVE-PACKAGE-LOCAL-NICKNAME`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:remove-package-local-nickname nickname &optional (package *package*))
  ```
* **Description:** Unregisters a package-local nickname inside the target package.
* **Under the Hood:** Backed by `Runtime.RemovePackageLocalNickname` in `Runtime.Packages.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:remove-package-local-nickname "JSON")
  ```

---

### `DOTCL:RUN-PROCESS`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:run-process program &optional arguments-list)
  ```
* **Description:** Spawns an external operating system process.
* **Parameters:**
  * `program` (String): The path or name of the executable.
  * `arguments-list` (List of Strings, optional): Arguments to pass to the process.
* **Returns:** A list of the format `(exit-code stdout-string stderr-string)`.
* **Under the Hood:** Backed by static function in `Startup.cs` utilizing `System.Diagnostics.Process`. It launches the process with standard output and standard error streams redirected, asynchronously reading them to avoid pipe buffer deadlocks.
* **Usage Example:**
  ```lisp
  (multiple-value-bind (code stdout stderr)
      (values-list (dotcl:run-process "uname" '("-a")))
    (format t "Exit code: ~A, Out: ~A~%" code stdout))
  ```

---

### `DOTCL:SAVE-APPLICATION`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:save-application output-file &key executable)
  ```
* **Description:** Dumps/saves the current running state of the Lisp image. Currently supports only `:executable nil`.
* **Under the Hood:** Backed by `Runtime.SaveApplication` in `Runtime.Core.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:save-application "my-image.fasl")
  ```

---

### `DOTCL:SIGNAL-SEMAPHORE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:signal-semaphore semaphore &optional (count 1))
  ```
* **Description:** Signals/releases a counting semaphore, incrementing its internal counter by the specified integer `count`. Wakes up waiting threads.
* **Under the Hood:** Backed by `Runtime.SignalSemaphore` in `Runtime.Thread.cs`. Invokes `SemaphoreSlim.Release(count)`.
* **Usage Example:**
  ```lisp
  (dotcl:signal-semaphore my-sem)
  ```

---

### `DOTCL:SIL-TO-FASL`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:sil-to-fasl input-path output-path)
  ```
* **Description:** Converts a monolithic compiler Simple Instruction Language (SIL) source file to a binary .FASL PE assembly.
* **Under the Hood:** Backed by static function in `Startup.cs` utilizing `DotCL.Emitter.FaslAssembler`. Reads the SIL input string, parses forms via `Reader.TryRead`, and adds the monolithic form instructions to a new `FaslAssembler` module before saving.
* **Usage Example:**
  ```lisp
  (dotcl:sil-to-fasl "input.sil" "output.fasl")
  ```

---

### `DOTCL:THREAD-ALIVE-P`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:thread-alive-p thread)
  ```
* **Description:** Predicate returning `t` if the Lisp thread is currently executing or active, otherwise `nil`.
* **Under the Hood:** Backed by `Runtime.ThreadAliveP` in `Runtime.Thread.cs`. Checks the `.NET` thread's `IsAlive` property.
* **Usage Example:**
  ```lisp
  (dotcl:thread-alive-p my-thread)
  ```

---

### `DOTCL:THREAD-JOIN`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:thread-join thread)
  ```
* **Description:** Blocks the executing thread until the target `thread` finishes execution.
* **Returns:** The return value computed by the target thread.
* **Under the Hood:** Backed by `Runtime.ThreadJoin` in `Runtime.Thread.cs`. Calls `thread.Join()` on the underlying .NET thread object and retrieves the cached `ReturnValue` field.
* **Usage Example:**
  ```lisp
  (let ((worker (dotcl:make-thread (lambda () (* 10 10)))))
    (dotcl:thread-join worker)) ; Returns 100
  ```

---

### `DOTCL:THREAD-NAME`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:thread-name thread)
  ```
* **Description:** Returns the string name of the thread, or `"anonymous"` if no name was provided at creation.
* **Usage Example:**
  ```lisp
  (dotcl:thread-name (dotcl:current-thread))
  ```

---

### `DOTCL:THREAD-OBJECT`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:thread-object thread)
  ```
* **Description:** Returns the underlying .NET `System.Threading.Thread` object for a DotCL thread wrapper.

---

### `DOTCL:THREAD-YIELD`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:thread-yield)
  ```
* **Description:** Yields execution of the current thread, allowing other waiting threads to run on the processor.
* **Under the Hood:** Backed by `Runtime.ThreadYield` in `Runtime.Thread.cs` calling `System.Threading.Thread.Yield()`.
* **Usage Example:**
  ```lisp
  (dotcl:thread-yield)
  ```

---

### `DOTCL:THREADP`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:threadp object)
  ```
* **Description:** Predicate returning `t` if the object is a Lisp thread (`LispThread`), otherwise `nil`.
* **Under the Hood:** Checks `args[0] is LispThread` in `Runtime.Thread.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:threadp my-obj)
  ```

---

### `DOTCL:UNLOCK-PACKAGE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:unlock-package package)
  ```
* **Description:** Unlocks a package, allowing new definitions or exports to be registered freely without raising package-lock errors.
* **Under the Hood:** Backed by `Runtime.UnlockPackage` in `Runtime.Packages.cs`.
* **Usage Example:**
  ```lisp
  (dotcl:unlock-package "COMMON-LISP")
  ```

---

### `DOTCL:WAIT-ON-SEMAPHORE`

* **Type:** Function
* **Syntax:**
  ```lisp
  (dotcl:wait-on-semaphore semaphore &key timeout)
  ```
* **Description:** Blocks the current thread until the semaphore count is greater than zero and can be decremented.
* **Parameters:**
  * `semaphore` (LispSemaphore): The semaphore to wait on.
  * `:timeout` (Number, keyword, optional): Maximum duration to wait in seconds.
* **Returns:** `t` if successfully acquired/decremented, or `nil` on timeout.
* **Under the Hood:** Backed by `Runtime.WaitOnSemaphore` in `Runtime.Thread.cs`. Resolves the timeout milliseconds and executes `SemaphoreSlim.Wait(timeoutMs)`.
* **Usage Example:**
  ```lisp
  (let ((sem (dotcl:make-semaphore :initial-count 0)))
    (dotcl:wait-on-semaphore sem :timeout 2.5)) ; Returns NIL after 2.5 seconds
  ```
