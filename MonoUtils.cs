using System;
using DotCL;

/** Proof of concept class to expose some functions to Lisp that
 * are implemented in C# but available in a normal-looking Lisp
 * package - in this case, "MONOUTILS".
 */
public static class MonoUtils {
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
} // MonoUtils

/** Register the various functions in the MONOUTILS package
 * by finding or creating the package, adding the necessary new
 * symbols, and setting their function slots.
 *
 * This should be called before doing anything else in Lisp.
 */
public static class MonoUtilsRegistrar {
    public static void Initialize() {
        // 1. Find or create the Lisp package named "MONOUTILS"
        Package? pkg = Package.FindPackage("MONOUTILS");
        if (pkg == null) {
            pkg = new Package("MONOUTILS"); 
        }

        // 2. Intern the symbol "ADD3" in the "MONOUTILS" package
        var (sym, _) = pkg.Intern("ADD3");

        // 3. Export the symbol so it is public (monoutils:add3)
        pkg.Export(sym);

        // 4. Assign the C# method to the symbol's Function slot
        sym.Function = new LispFunction(MonoUtils.AddThree, "ADD3", arity: 3);
    } // Initialize
} // MonoUtilsRegistrar
