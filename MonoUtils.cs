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

    /** A class method version of the dotnet:static-generic function.
     *
     * TODO: This is super inefficient. We should probably memoize this such
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
            var t = DynamicBaseCaller.GetType(typeArgNames[i]);
            if (t == null) {
                throw new LispErrorException(
                        new LispError($"INVOKE-GENERIC: type not found: {typeArgNames[i]}"));
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
