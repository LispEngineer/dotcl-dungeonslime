using System;
using System.Linq;
using DotCL;

/** A variety of C# functions that are exposed as part of a Lisp package
 * called "MONOUTILS" - defined in monoutils.lisp. */
public static class MonoUtils {

    /** Proof of concept C# method that adds three lisp Numbers.
     * Throws an error if any argument is not a number. 
     * The error is a LispErrorException wrapping a LispProgramError.
     * (No idea if that is the correct thing to do.)
     */
    public static LispObject AddThree(LispObject[] args) {
        // 1. Validate argument count
        if (args.Length != 3) {
            throw new LispErrorException(
                new LispProgramError("ADD3: wrong number of arguments (expected 3)")
            );
        }

        // 2. Validate and cast arguments using AsNumber (throws Lisp TYPE-ERROR automatically on failure)
        Number n1 = Runtime.AsNumber(args[0]);
        Number n2 = Runtime.AsNumber(args[1]);
        Number n3 = Runtime.AsNumber(args[2]);

        // 3. Add them using dotcl's polymorphic generic addition
        LispObject sumOfTwo = Runtime.Add(n1, n2);
        LispObject totalSum = Runtime.Add(sumOfTwo, n3);

        return totalSum;
    } // AddThree

    /** This is a C# equivalent to dotnet::%resolve-type in DotCL.
     * This looks up the specified typeName parameter in the
     * dotnet:*type-aliases* hashtable and returns the expanded
     * type name, if found. It looks up both the uppercased version
     * using (ToUpperInvariant()) as well as the originally passed
     * in string. */
    private static string ResolveTypeAlias(string typeName) {
        try {
            Symbol typeAliasesSym = Startup.SymInPkg("*TYPE-ALIASES*", "DOTNET");
            if (typeAliasesSym == null || typeAliasesSym.Value == null) {
                return typeName;
            }
            LispObject val = DynamicBindings.Get(typeAliasesSym);
            if (val is LispHashTable ht) {
                string upperName = typeName.ToUpperInvariant();
                LispObject mapped = ht.Get(new LispString(upperName), Nil.Instance);
                if (mapped is LispString ls) {
                    return ls.Value;
                } else if (mapped is Symbol sym) {
                    return sym.Name;
                }

                mapped = ht.Get(new LispString(typeName), Nil.Instance);
                if (mapped is LispString ls2) {
                    return ls2.Value;
                } else if (mapped is Symbol sym2) {
                    return sym2.Name;
                }
            }
        } catch {
            // Fall back to original typeName if lookups fail or are not bound yet
            // TODO: Log something?
        }
        return typeName;
    } // ResolveTypeAlias



    /// <summary>
    ///   Invokes a generic instance method dynamically on a target object from Common Lisp.
    ///   This is a class method version of the dotnet:static-generic function.
    ///
    ///   I have not tested this with functions that take complex types such as
    ///   List<List<Map<String,Object>>> or anything like that!
    /// </summary>
    /// <param name="args">
    ///   An array of LispObject arguments from Lisp:
    /// <list type="bullet">
    /// <item>
    ///   <term>args[0]</term>
    ///   <description>The target instance object to call the method on.</description>
    /// </item>
    /// <item>
    ///   <term>args[1]</term>
    ///   <description>The name of the generic instance method (String).</description>
    /// </item>
    /// <item>
    ///   <term>args[2]</term>
    ///   <description>A Lisp list of generic type argument name strings.</description>
    /// </item>
    /// <item>
    ///   <term>args[3..]</term>
    /// <description>The actual arguments to pass to the generic method.</description>
    /// </item>
    /// </list>
    /// </param>
    /// <returns>The LispObject representation of the method's return value.</returns>
    /// <remarks>
    /// Detailed Lisp Usage:
    /// <code>
    ///   (monoutils:invoke-generic instance "MethodName" '("TypeArg1" "TypeArg2" ...) arg1 arg2 ...)
    /// </code>
    ///
    /// Example: Calling a generic method Draw&lt;T&gt; (specialized to Texture2D):
    /// If there is a generic method "Draw" on an object "renderer" with signature
    /// <c>public void Draw&lt;T&gt;(T asset, Vector2 position, Color color)</c>,
    /// it can be invoked from Lisp as follows:
    /// <code>
    /// (let ((texture (logo game))
    ///       (position (dotnet:static "Microsoft.Xna.Framework.Vector2" "Zero"))
    ///       (color (dotnet:static "Microsoft.Xna.Framework.Color" "White")))
    ///   (monoutils:invoke-generic renderer "Draw"
    ///                             '("Microsoft.Xna.Framework.Graphics.Texture2D")
    ///                             texture position color))
    /// </code>
    /// </remarks>
    /* TODO: This is super inefficient. We should probably memoize this such
     * that the concrete method located is stored, with the key being
     * the provided target class type, the method name, and the
     * type arguments.
     */
    public static LispObject InvokeGeneric(LispObject[] args) {
        // Expect: (monoutils:invoke-generic instance "MethodName" '("TypeArg1" ...) method-args...)
        if (args.Length < 3) {
            throw new LispErrorException(new LispProgramError(
                "INVOKE-GENERIC: requires at least 3 arguments (instance method-name type-args-list &rest args)"));
        }

        // 1. Resolve and unwrap the target instance
        object? target = Runtime.LispToDotNet(args[0], typeof(object));
        if (target == null) {
            throw new LispErrorException(new LispError("INVOKE-GENERIC: target instance is null"));
        }

        string memberName = args[1] switch { LispString ls => ls.Value, _ => args[1].ToString() ?? "" };
        var type = target.GetType();

        // 2. Parse the Lisp list of generic type argument names
        var typeArgNames = new System.Collections.Generic.List<string>();
        var cursor = args[2];
        while (cursor is Cons c) {
            typeArgNames.Add(c.Car switch { LispString ls => ls.Value, _ => c.Car.ToString() ?? "" });
            cursor = c.Cdr;
        }

        var lispArgs = args.Skip(3).ToArray();

        // 3. Find the matching generic instance method definition on the target class type
        var methodDef = type.GetMethods(System.Reflection.BindingFlags.Public 
                                        | System.Reflection.BindingFlags.Instance)
            .Where(m => m.Name == memberName
                     && m.IsGenericMethodDefinition
                     && m.GetGenericArguments().Length == typeArgNames.Count
                     && m.GetParameters().Length == lispArgs.Length)
            .FirstOrDefault()
            ?? throw new LispErrorException(new LispError(
                $"INVOKE-GENERIC: no generic instance method {type.FullName}.{memberName} " +
                $"with {typeArgNames.Count} type arg(s) and {lispArgs.Length} parameter(s)"));

        // 4. Resolve type names into concrete System.Type instances
        var concreteTypes = new Type[typeArgNames.Count];
        for (int i = 0; i < typeArgNames.Count; i++) {
            string resolvedTypeName = ResolveTypeAlias(typeArgNames[i]);
            var t = DynamicBaseCaller.GetType(resolvedTypeName);
            if (t == null) {
                throw new LispErrorException(
                        new LispError($"INVOKE-GENERIC: type not found: {typeArgNames[i]} (resolved as: {resolvedTypeName})"));
            }
            concreteTypes[i] = t;
        }

        // 5. Specialise the generic method and convert Lisp arguments
        var concreteMethod = methodDef.MakeGenericMethod(concreteTypes);
        var paramInfos = concreteMethod.GetParameters();

        var callArgs = new object?[lispArgs.Length];
        for (int i = 0; i < lispArgs.Length; i++) {
            callArgs[i] = Runtime.LispToDotNet(lispArgs[i], paramInfos[i].ParameterType);
        }

        // 6. Invoke the method and return the result as a LispObject
        try {
            var result = concreteMethod.Invoke(target, callArgs);
            return Runtime.DotNetToLisp(result);
        } catch (System.Reflection.TargetInvocationException tie) {
            throw new LispErrorException(new LispError(
                $"INVOKE-GENERIC {type.FullName}.{memberName}: {tie.InnerException?.Message ?? tie.Message}"));
        }
    } // InvokeGeneric
} // MonoUtils

/** Register the various functions in the MONOUTILS package
 * by finding or creating the package, adding the necessary new
 * symbols, and setting their function slots.
 *
 * This should be called before doing anything else in Lisp.
 */
public static class MonoUtilsRegistrar {
    public static void Initialize() {
        // Find or create the Lisp package named "MONOUTILS"
        Package? pkg = Package.FindPackage("MONOUTILS");
        pkg ??= new Package("MONOUTILS");

        // Intern and export "ADD3"
        var (sym1, _) = pkg.Intern("ADD3"); // Intern the symbol in the "MONOUTILS" package
        pkg.Export(sym1); // Export the symbol so it is public
        // Assign the C# method to the symbol's Function slot
        sym1.Function = new LispFunction(MonoUtils.AddThree, "ADD3", arity: 3);

        // Intern and export "INVOKE-GENERIC"
        var (sym2, _) = pkg.Intern("INVOKE-GENERIC");
        pkg.Export(sym2);
        sym2.Function = new LispFunction(MonoUtils.InvokeGeneric, "INVOKE-GENERIC", arity: -1);
    }
}
