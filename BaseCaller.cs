using System.Reflection;
using System.Reflection.Emit;

public static class DynamicBaseCaller {

    /** Calls the named method on the target object.
     * This must be a method that takes no arguments and returns Void.
     */
    public static void CallBaseMethod_VoidVoid(object target, string methodName) {
        if (target == null) {
            throw new ArgumentNullException(nameof(target));
        }

        Type targetType = target.GetType();
        Type baseType = targetType.BaseType;

        if (baseType == null) {
            throw new InvalidOperationException($"Type '{targetType.Name}' does not have a base class.");
        }

        // 1. Get the method from the base type specifically
        MethodInfo baseMethod = baseType.GetMethod(
            methodName,
            BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic
        );

        if (baseMethod == null) {
            throw new ArgumentException($"Method '{methodName}' not found on base type '{baseType.Name}'.");
        }

        // 2. Create a DynamicMethod that takes 'object' as a parameter
        DynamicMethod dynamicMethod = new DynamicMethod(
            "CallBase_" + methodName,
            typeof(void),                  // Return type
            new Type[] { typeof(object) }, // Parameter type (generic object)
            targetType,                    // Owner type (grants access to non-public members)
            true                           // Skip JIT visibility checks
        );

        // 3. Generate the IL instructions
        ILGenerator il = dynamicMethod.GetILGenerator();

        il.Emit(OpCodes.Ldarg_0);               // Load the 'object target' argument onto the stack
        il.Emit(OpCodes.Castclass, targetType); // CAST the generic object to the actual type
        il.Emit(OpCodes.Call, baseMethod);      // Non-virtual call to the base method
        il.Emit(OpCodes.Ret);                   // Return

        // 4. Create an Action<object> delegate and invoke it
        Action<object> invokeBase = (Action<object>)dynamicMethod.CreateDelegate(typeof(Action<object>));
        invokeBase(target);
    } // CallBaseMethod_VoidVoid

    /** Returns a Func to call the named method on the target object.
     * This must be a method that takes the specified arguments and returns anything.
     */
    public static Func<object, object[], object> CallBaseMethodBuilder(object target, string methodName, Type[] paramTypes) {
        if (target == null) {
            throw new ArgumentNullException(nameof(target));
        }

        // Sanitize inputs
        paramTypes ??= Type.EmptyTypes;

        Type targetType = target.GetType();
        Type baseType = targetType.BaseType;

        if (baseType == null) {
            throw new InvalidOperationException($"Type '{targetType.Name}' does not have a base class.");
        }

        // 1. Get the specific method matching the provided parameter types
        MethodInfo baseMethod = baseType.GetMethod(
            methodName,
            BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic,
            null,
            paramTypes,
            null
        );

        if (baseMethod == null) {
            throw new ArgumentException($"Method '{methodName}' with matching signature not found on base type '{baseType.Name}'.");
        }

        // 2. Create a DynamicMethod: Returns 'object', accepts 'object target' and 'object[] args'
        DynamicMethod dynamicMethod = new DynamicMethod(
            "CallBase_" + methodName,
            typeof(object),
            [typeof(object), typeof(object[])],
            targetType,
            true // Skip Visibility
        );

        ILGenerator il = dynamicMethod.GetILGenerator();

        // Load 'target' and cast to the actual derived type
        il.Emit(OpCodes.Ldarg_0);
        il.Emit(OpCodes.Castclass, targetType);

        // 3. Load and cast/unbox each argument
        for (int i = 0; i < paramTypes.Length; i++) {
            il.Emit(OpCodes.Ldarg_1);       // Load the 'args' array
            il.Emit(OpCodes.Ldc_I4, i);     // Load the current array index
            il.Emit(OpCodes.Ldelem_Ref);    // Get the array element (as object)

            Type paramType = paramTypes[i];

            // Convert the 'object' back to the specific parameter type
            if (paramType.IsValueType) {
                il.Emit(OpCodes.Unbox_Any, paramType);
            } else {
                il.Emit(OpCodes.Castclass, paramType);
            }
        }

        // 4. Make the non-virtual call to the base method
        il.Emit(OpCodes.Call, baseMethod);

        // 5. Handle the return value
        if (baseMethod.ReturnType == typeof(void)) {
            // If void, we must push null onto the stack to satisfy the Func<..., object> return type
            il.Emit(OpCodes.Ldnull);
        } else if (baseMethod.ReturnType.IsValueType) {
            // If it returns a value type (e.g., int, bool), box it into an object
            il.Emit(OpCodes.Box, baseMethod.ReturnType);
        }

        il.Emit(OpCodes.Ret);

        // 6. Create the delegate and invoke
        Func<object, object[], object> invokeBase = (Func<object, object[], object>)
            dynamicMethod.CreateDelegate(typeof(Func<object, object[], object>));

        return invokeBase;
    } // CallBaseMethodBuilder

    /** Calls the named method on the target object.
     * This must be a method that takes the specified arguments and returns anything.
     */
    public static object CallBaseMethod(object target, string methodName, Type[] paramTypes, object[] args) {
        args ??= [];
        paramTypes ??= Type.EmptyTypes;

        if (args.Length != paramTypes.Length) {
            throw new ArgumentException("Parameter types array and arguments array must have the same length.");
        }

        var invokeBase = CallBaseMethodBuilder(target, methodName, paramTypes);

        return invokeBase(target, args);
    } // CallBaseMethod

    /** Helper function to call a Func on a target object.
     * This is to make it easy to call a cached/stored Func from lisp. */
    public static object CallFunc(Func<object, object[], object> func, object target, params object[] args) {
        return func(target, args);
    } // CallFunc
} // DynamicBaseCaller

////////////////////////////////////////////////////////////////////////////////
// Test classes

public class Parent
{
    public virtual void Speak() {
        Console.WriteLine("Parent says hello!");
    }
}

public class Child : Parent
{
    public override void Speak() {
        Console.WriteLine("Child says hello!");
    }
}

public class Calculator {
    public virtual string Add(int a, string b) {
        return $"Base calculation: {a} + {b}";
    }
}

public class AdvancedCalculator : Calculator {
    public override string Add(int a, string b) {
        return $"Overridden calculation: {a} and {b}";
    }
}