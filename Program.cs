// This file is the main entry point when we build a full
// executable in C#. It is executed in sequence as if this
// were a static void Main. This is the standard since
// C# 9 and .NET 6.
// See: https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/program-structure/#top-level-statements-vs-main-method

using DotCL;

string? assemblyFile = null;
string? outputFile = null;
bool hasAssembly = false;
bool hasOutput = false;

string? assemblyMetadataFile = null;
string? classFilter = null;
string? outputDir = null;
bool hasAssemblyMetadata = false;
var isTestMode = false;


for (int i = 0; i < args.Length; i++) {
    if (args[i] == "--assembly" && i + 1 < args.Length) {
        assemblyFile = args[i + 1];
        hasAssembly = true;
        i++;
    } else if (args[i] == "--assembly-metadata" && i + 1 < args.Length) {
        assemblyMetadataFile = args[i + 1];
        hasAssemblyMetadata = true;
        i++;
    } else if (args[i] == "--class" && i + 1 < args.Length) {
        classFilter = args[i + 1];
        i++;
    } else if (args[i] == "--output" && i + 1 < args.Length) {
        outputFile = args[i + 1];
        outputDir = args[i + 1];
        hasOutput = true;
        i++;
    } else if (args[i] == "--output") {
        outputFile = "-";
        hasOutput = true;
    } else if (args[i] == "--test") {
        isTestMode = true;
    }
}

if (hasAssembly && !string.IsNullOrEmpty(assemblyFile)) {
    Console.Error.WriteLine($"[Program.cs] Generating assembly metadata...");
    if (!hasOutput || string.IsNullOrEmpty(outputFile)) {
        outputFile = "-";
    }
    if (outputFile == "-") {
        DungeonSlime.AssemblyToLispy.RedirectLogsToError = true;
    }
    try {
        string fullAssemblyPath = Path.GetFullPath(assemblyFile);
        string inputDir = Path.GetDirectoryName(fullAssemblyPath) ?? Directory.GetCurrentDirectory();
        string inputAssemblyFile = Path.GetFileName(fullAssemblyPath);
        DungeonSlime.AssemblyToLispy.GenerateLispyMetadata(inputDir, inputAssemblyFile, outputFile);
    } catch (Exception ex) {
        Console.Error.WriteLine($"[Program.cs] Error generating metadata: {ex.Message}");
        Console.Error.WriteLine(ex.StackTrace);
        Environment.Exit(1);
    }
    Console.Error.WriteLine($"[Program.cs] ...assembly metadata generation complete.");
    return;
}

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

if (hasAssemblyMetadata && !string.IsNullOrEmpty(assemblyMetadataFile)) {
    Console.WriteLine("[Program.cs] Running assembly package generator...");
    try {
        var generatorManifestPath = Path.Combine(AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
        DotclHost.LoadFromManifest(generatorManifestPath);
        DotclHost.Call("RUN-ASSEMBLY-PACKAGE-GENERATOR", assemblyMetadataFile, classFilter ?? "", outputDir ?? "");
    } catch (Exception ex) {
        Console.Error.WriteLine($"[Program.cs] Error in assembly package generator: {ex.Message}");
        Console.Error.WriteLine(ex.StackTrace);
        Environment.Exit(1);
    }
    Console.WriteLine("[Program.cs] ...assembly package generator complete.");
    return;
}

var manifestPath = Path.Combine(
    AppContext.BaseDirectory, "dotcl-fasl", "dotcl-deps.txt");
Console.WriteLine($"[Program.cs] manifest: {manifestPath}");
var loaded = DotclHost.LoadFromManifest(manifestPath);
Console.WriteLine($"[Program.cs] LoadFromManifest loaded {loaded} fasls");

//////////////////////////////////////////////////////////////////////////////
// Tests

if (isTestMode) {
    Console.WriteLine($"[Program.cs] Running Base class tests...");
    // Test the creation to call base classes of random C# objects
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

    Console.WriteLine($"[Program.cs] Running Lisp tests...");
    // FIXME: Not sure why this actually works without being specified in the
    // dungeon-slime-tests package
    DotclHost.Call("RUN-ALL-TESTS");

    Console.WriteLine($"[Program.cs] Running assembly-to-lispy tests...");
    DungeonSlime.AssemblyToLispyTest.RunTests();

    Console.WriteLine($"[Program.cs] Not running game; in --test mode.");
    return;
}

///////////////////////////////////////////////////////////////////////////
// Main game

// MAKE-GAME (defined in main.lisp) returns a MonoGameCLOSProxy instance.
// FIXME: I'm really not sure why this works without being qualified with
// DUNGEON-SLIME: or ::
var gameObj = DotclHost.Call("MAKE-GAME");

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
