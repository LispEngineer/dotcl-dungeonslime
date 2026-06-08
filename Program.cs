// This file is the main entry point when we build a full
// executable in C#. It is executed in sequence as if this
// were a static void Main. This is the standard since
// C# 9 and .NET 6.
// See: https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/program-structure/#top-level-statements-vs-main-method

using DotCL;

// Quick sanity check: a pure C# Game subclass that clears to red. If this
// shows red, MonoGame works in this project; the issue is dotcl interop
// passing struct args to .NET methods.
if (args.Length > 0 && args[0] == "--csharp-sanity") {
    using var sanity = new CsharpSanityGame();
    sanity.Run();
    sanity.Dispose();
    return;
}

// Test our creation to call base classes of random C# objects
if (args.Length > 0 && args[0] == "--base") {
    var Child = new Child();
    Child.Speak();
    Console.WriteLine("The next line should be the parent");
    DynamicBaseCaller.CallBaseMethod_VoidVoid(Child, "Speak");
    Console.WriteLine();

    var Calc = new AdvancedCalculator();
    Console.WriteLine(Calc.Add(1, "two"));
    Console.WriteLine("The next line should be the Base Calculator");
    Console.WriteLine(
        DynamicBaseCaller.CallBaseMethod(Calc, "Add",
            new Type[] { typeof(int), typeof(string) },
            new object[] { 3, "four" })
    );
    Console.WriteLine();

    Console.WriteLine("The next line should be the parent (again)");
    var ret = DynamicBaseCaller.CallBaseMethod(Child, "Speak", null, null);
    Console.WriteLine($"Value of ret: {ret}; is ret null? {ret == null}");
    if (ret != null) {
        Console.WriteLine($"Type of ret: {ret.GetType().FullName}");
    }
    Console.WriteLine();

    var func = DynamicBaseCaller.CallBaseMethodBuilder(Calc, "Add",
        new Type[] { typeof(int), typeof(string) });
    Console.WriteLine("The next 2 lines should be the Base Calculator (again)");
    Console.WriteLine(func(Calc, new object[] { 5, "six" }));
    Console.WriteLine(DynamicBaseCaller.CallFunc(func, Calc, 7, "eight"));

    return;
}

var IsTestMode = (args.Length > 0 && args[0] == "--test");

// Boot dotcl BEFORE constructing the Game so the Lisp side has a chance to
// (dotnet:define-class "MonoGameCLOSProxy" (Game) ...) and the dynamically
// emitted assembly is loaded. Then we instantiate the Lisp-defined type
// via DotclHost.Call("MAKE-GAME") and Run() it on the main thread.

DotclHost.Initialize();

// Register my Custom C#-implemented Lisp package with DotCL's
// package registry.
MonoUtilsRegistrar.Initialize();

// dotcl's ResolveDotNetType does not seem to need the types force
// previously loaded at this point anymore.

var manifestPath = Path.Combine(
    AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
Console.WriteLine($"[Program.cs] manifest: {manifestPath}");
var loaded = DotclHost.LoadFromManifest(manifestPath);
Console.WriteLine($"[Program.cs] LoadFromManifest loaded {loaded} fasls");

// MAKE-GAME (defined in main.lisp) returns a MonoGameCLOSProxy instance.
var gameObj = DotclHost.Call("MAKE-GAME");
if (IsTestMode) {
    Console.WriteLine($"[Program.cs] Running assembly-to-lispy tests...");
    MonoGameLispDemo.AssemblyToLispyTest.RunTests();
    Console.WriteLine($"[Program.cs] Not running game; in --test mode.");
    return;
}

if (gameObj is LispDotNetObject dno &&
    dno.Value is Microsoft.Xna.Framework.Game game) {
    Console.WriteLine($"[Program.cs] running game: {game.GetType().FullName}");
    // We invoke the (non-virtual) Run() method on this object directly, rather than casting this
    // to Game, which would run that specific Run() method
    var runMethod = game.GetType().GetMethod("Run",
        System.Reflection.BindingFlags.Public |
        System.Reflection.BindingFlags.Instance |
        System.Reflection.BindingFlags.DeclaredOnly); // Non-virtual
    if (runMethod != null) {
        Console.WriteLine("[Program.cs] Executing actual object's shadowed Run()");
        try {
            runMethod.Invoke(game, null);
        } catch (System.Reflection.TargetInvocationException ex) {
            Console.WriteLine($"[Program.cs] Got exception: {ex}");
            throw ex.InnerException ?? ex;
        // TODO: Catch other exceptions
        }
    } else {
        // There was no shadowed Run() so just use the one on the Game
        // TODO: Catch exceptions
        game.Run();
    }
    // Not necessary if the process ends after this, but if it doesn't:
    game.Dispose();
} else {
    throw new InvalidOperationException(
        $"MAKE-GAME returned unexpected: {gameObj?.GetType().Name}");
}
