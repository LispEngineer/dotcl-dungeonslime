using DotCL;

// Quick sanity check: a pure C# Game subclass that clears to red. If this
// shows red, MonoGame works in this project; the issue is dotcl interop
// passing struct args to .NET methods.
if (args.Length > 0 && args[0] == "--csharp-sanity") {
    using var sanity = new CsharpSanityGame();
    sanity.Run();
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

// Boot dotcl BEFORE constructing the Game so the Lisp side has a chance to
// (dotnet:define-class "Demo.LispGame" (Game) ...) and the dynamically
// emitted assembly is loaded. Then we instantiate the Lisp-defined type
// via DotclHost.Call("MAKE-GAME") and Run() it on the main thread.

DotclHost.Initialize();

// Force MonoGame's core types loaded so dotcl's ResolveDotNetType can see
// Game / GraphicsDeviceManager / GameTime / Color / GraphicsDevice when the
// Lisp side names them by short name.
_ = typeof(Microsoft.Xna.Framework.Game).FullName;
_ = typeof(Microsoft.Xna.Framework.GraphicsDeviceManager).FullName;
_ = typeof(Microsoft.Xna.Framework.GameTime).FullName;
_ = typeof(Microsoft.Xna.Framework.Color).FullName;
_ = typeof(Microsoft.Xna.Framework.Graphics.GraphicsDevice).FullName;

var manifestPath = Path.Combine(
    AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
Console.WriteLine($"[Program.cs] manifest: {manifestPath}");
var loaded = DotclHost.LoadFromManifest(manifestPath);
Console.WriteLine($"[Program.cs] LoadFromManifest loaded {loaded} fasls");

// MAKE-GAME (defined in main.lisp) returns a Demo.LispGame instance.
var gameObj = DotclHost.Call("MAKE-GAME");
if (gameObj is LispDotNetObject dno
    && dno.Value is Microsoft.Xna.Framework.Game game)
{
    Console.WriteLine($"[Program.cs] running game: {game.GetType().FullName}");
    game.Run();
}
else
{
    throw new InvalidOperationException(
        $"MAKE-GAME returned unexpected: {gameObj?.GetType().Name}");
}
