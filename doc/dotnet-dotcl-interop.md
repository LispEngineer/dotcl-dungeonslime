# .NET and DotCL Interoperability Guide

This document explains in detail all the mechanisms for interoperability between DotCL Common Lisp and the .NET Common Language Runtime (CLR). The interop capabilities are bidirectional: you can use .NET libraries and classes from Lisp, and you can embed, call, and interact with Lisp from C#.

## Direction 1: Calling .NET from Common Lisp

DotCL provides the `DOTNET` package, which contains all the primitives needed to bridge Lisp code with .NET types, methods, and delegates.

### Loading Assemblies and Dependencies

Before you can use a .NET type, its assembly must be loaded into the Application Domain.

**Loading Local or Framework Assemblies:**
Use `dotnet:load-assembly` to load an assembly by its simple name or file path.
```lisp
;; Load a framework assembly
(dotnet:load-assembly "System.Text.Json")
(dotnet:load-assembly "System.Windows.Forms")

;; Load from a specific path
(dotnet:load-assembly "/path/to/MyLibrary.dll")
```

**Loading NuGet Packages:**
Use `dotnet:require` to download and reference a NuGet package dynamically.
```lisp
;; Downloads Newtonsoft.Json from NuGet, extracts the correct TFM, and loads it.
(dotnet:require "Newtonsoft.Json" "13.0.3")
```

### Resolving Types

To explicitly resolve a type by name (useful for reflection or passing a type object), use `dotnet:resolve-type`:
```lisp
(let ((type (dotnet:resolve-type "System.Text.StringBuilder")))
  (format t "Resolved type: ~A~%" type))
```

### Creating Objects

Use `dotnet:new` to invoke a constructor and create an instance of a .NET class.
```lisp
;; Create a StringBuilder with an initial string
(defvar *sb* (dotnet:new "System.Text.StringBuilder" "Initial text"))

;; Create a generic List<string>
(defvar *list* (dotnet:new "System.Collections.Generic.List`1[System.String]"))
```
*(Note: `dotnet:new` works with optional-only constructors as well.)*

### Calling Instance Methods and Properties

Use `dotnet:invoke` to call instance methods or get properties/fields.
```lisp
;; Call method
(dotnet:invoke *sb* "Append" " and more text")

;; Get property (Length)
(let ((len (dotnet:invoke *sb* "get_Length")))
  (format t "Length: ~A~%" len))
```

To set a property or field, idiomatic Lisp uses `setf` with `dotnet:invoke` (which transparently expands to `dotnet:%set-invoke`):
```lisp
;; Truncate the StringBuilder by setting the Length property
(setf (dotnet:invoke *sb* "Length") 7)
```

### Calling Static Methods and Properties

For static members, use `dotnet:static` and `dotnet:%set-static`:
```lisp
;; Get current time
(defvar *now* (dotnet:static "System.DateTime" "get_Now"))

;; Call static method
(let ((parsed (dotnet:static "System.Int32" "Parse" "12345")))
  (format t "Parsed integer: ~A~%" parsed))

;; Set static property using idiomatic setf
(setf (dotnet:static "System.Console" "Title") "My Application")
```

### Generic Methods

To call generic methods, you must explicitly supply the type arguments.

**Static Generic Methods:**
```lisp
;; Enumerable.Empty<int>()
(defvar *empty-ints* (dotnet:static-generic "System.Linq.Enumerable" "Empty" '("System.Int32")))
```

**Instance Generic Methods:**
```lisp
;; Assuming `manager` has a method Load<T>(string)
(dotnet:invoke-generic manager "Load" '("Microsoft.Xna.Framework.Graphics.Texture2D") "logo")
```

### Dealing with Overloads and Out/Ref Parameters

**Type Hinting / Boxing:**
When an overloaded method signature cannot be resolved automatically from the Lisp types, you can use `dotnet:box` to explicitly specify the type.
```lisp
;; Explicitly pass an integer as a short (Int16) to resolve the correct overload
(dotnet:static "SomeClass" "DoWork" (dotnet:box 42 "System.Int16"))
```

You can inspect the boxed hint type or actual runtime type of an object:
```lisp
(dotnet:hint-type (dotnet:box 42 "System.Int16")) ; Returns Int16 System.Type
(dotnet:object-type *sb*)                         ; Returns StringBuilder System.Type
```

**Out and Ref Parameters:**
Use `dotnet:call-out` to invoke a method that modifies parameters by reference.
*(Note: `dotnet:call-out` does not support generic methods. You must create a non-generic C# wrapper if you need to pass `out`/`ref` arguments to a generic method.)*
```lisp
;; Int32.TryParse(string, out int)
(multiple-value-bind (success result)
    (dotnet:call-out "System.Int32" "TryParse" "98765")
  (when success
    (format t "Parsed: ~A~%" result)))
```

### Events and Delegates

You can attach Lisp functions to .NET events using `dotnet:add-event`. The runtime automatically wraps the Lisp function into a .NET delegate.
```lisp
(let ((btn (dotnet:new "System.Windows.Forms.Button")))
  (dotnet:add-event btn "Click"
    (lambda (sender e)
      (declare (ignore sender e))
      (format t "Button clicked!~%"))))
```

If you need to create a specific delegate explicitly (e.g., to pass to a method like `LINQ Where`), use `dotnet:make-delegate`:
```lisp
(let ((predicate (dotnet:make-delegate "System.Func`2[System.Int32,System.Boolean]"
                                       (lambda (x) (> x 10)))))
  ;; pass predicate to a .NET method...
  )
```

### Subclassing .NET Types (Defining Classes)

Lisp can emit dynamic .NET subclasses at runtime using `dotnet:define-class` (or its lower-level macro `dotnet:%define-class`).
```lisp
(dotnet:define-class "MyGame.CustomRenderer" ("BaseRendererType")
  ;; Constructor taking arguments and passing to base
  (:ctor ((device "GraphicsDevice"))
    (:base device)
    (format t "Renderer initialized~%"))

  ;; Custom state fields
  (:fields
    ("FrameCount" "System.Int32"))

  ;; Method override
  (:methods
    ("Draw" ((gameTime "Microsoft.Xna.Framework.GameTime")) :returns Void :override t
      ;; Calling the base class implementation
      (dotnet:call-base self "Draw" gameTime)
      (format t "Drawing frame!~%"))))
```

---

## Direction 2: Calling Common Lisp from C#

C# host applications can embed the DotCL runtime. This is done by adding a `PackageReference` to `DotCL.Runtime`.

### Initialization and Embedding

To start the DotCL engine in a .NET application, initialize the host:
```csharp
using DotCL;

// Initializes the Lisp runtime engine
DotclHost.Initialize();

// (Optional) Pull in the dotcl.core assemblies if they are bundled
DotclHost.FindCore();
```

### Loading Precompiled Lisp (`.fasl` files)

You can precompile your ASDF system into a `.fasl` and a dependency manifest during the MSBuild process (by setting `<DotclProjectAsd>MyApp.asd</DotclProjectAsd>`), and then load it securely without exposing the compiler/evaluator at runtime:
```csharp
// Load precompiled Lisp dependencies and code from manifest
DotclHost.LoadFromManifest(
    Path.Combine(AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt")
);
```
*(This is especially important for NativeAOT and Unity IL2CPP targets where `Reflection.Emit` is disabled).*

### Registering Host Functions

You can expose custom C# static functions directly to the Lisp environment using `DotclHost.Register`.

```csharp
public static class MyHostInterop 
{
    public static void ShowAlert(string message) 
    {
        Console.WriteLine($"ALERT from Lisp: {message}");
    }
}

// In initialization:
// This exposes the function as 'MY-APP:SHOW-ALERT' in Lisp.
DotclHost.Register("MY-APP", "SHOW-ALERT", (Action<string>)MyHostInterop.ShowAlert);
```
From Lisp, you can now call `(my-app:show-alert "Hello!")`.

### Converting Between .NET and Lisp Types

If you are interacting closely with Lisp internals from C#, you can use `DotclHost.ToClr` to marshal a Lisp object back to a standard .NET type:
```csharp
LispObject someLispList = ...; // Obtained from Lisp eval or callback
object clrObject = DotclHost.ToClr(someLispList);
```

### Lisp Callbacks via Delegates

Because Lisp can wrap its closures as .NET Delegates (using `dotnet:make-delegate` or implicitly in `dotnet:add-event`), the easiest way to call Lisp from C# is to have Lisp pass a standard C# `Action` or `Func` to your C# engine:

**C# API:**
```csharp
public static class EventManager 
{
    public static Action<string> OnPlayerDeath;

    public static void TriggerDeath(string reason) 
    {
        OnPlayerDeath?.Invoke(reason);
    }
}
```

**Lisp side binding the callback:**
```lisp
(dotnet:%set-static "MyGame.EventManager" "OnPlayerDeath"
  (dotnet:make-delegate "System.Action`1[System.String]"
    (lambda (reason)
      (format t "Player died because: ~A~%" reason))))
```
Now, whenever C# executes `EventManager.TriggerDeath(...)`, the Lisp lambda is invoked seamlessly. Unhandled errors crossing this boundary back into C# are caught and gracefully converted into standard .NET Exceptions.
