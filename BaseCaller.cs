using System;
using System.Reflection;
using System.Reflection.Emit;

/*
public class BaseCaller {
    public static void CallBaseDynamic(Object target, string methodName) {

        var targetType = target.GetType();

        // 1. Grab the MethodInfo from the BaseType specifically
        MethodInfo baseMethod = targetType.BaseType.GetMethod(
            methodName, 
            BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic
        );

        if (baseMethod == null) {
            throw new ArgumentException($"Method {methodName} not found on base type of {targetType}.");
        }

        // 2. Create a DynamicMethod. 
        // Note: For simplicity, this assumes a void return type and no parameters.
        DynamicMethod dynamicMethod = new DynamicMethod(
            "CallBase_" + methodName,
            typeof(void),              // Return type
            new Type[] { targetType }, // Parameter types (just 'this' pointer)
            targetType                 // Owner type
        );

        // 3. Generate the specific IL instructions
        ILGenerator il = dynamicMethod.GetILGenerator();
        // Not sure about this next line
        il.Emit(OpCodes.Ldarg_0);          // Load 'this' onto the evaluation stack
        il.Emit(OpCodes.Call, baseMethod); // Use CALL instead of CALLVIRT! This is the magic step.
        il.Emit(OpCodes.Ret);              // Return

        // 4. Create a delegate and execute it
        Action<Child> baseCaller = (Action<Child>)dynamicMethod.CreateDelegate(typeof(Action<Child>));
        baseCaller(this);
    }
} // BaseCaller
*/

public static class DynamicBaseCaller {

    /** Calls the named method on the target object.
    */
    public static void CallBaseMethod(object target, string methodName) {
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
    }
} // DynamicBaseCaller

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
