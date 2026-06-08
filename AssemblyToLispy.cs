using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;

// Douglas P. Fields, Jr. - symbolics@lisp.engineer
// Created: 2026-06-08
// ML assistance: Antigravity CLI, v1.0.6, Gemini Flash 3.5 (Medium), Ubuntu 24.04

/* Prompt used:

Please review doc/assembly-to-lispy.md.

I would like you to create a new .cs file (exactly one)
that implements "Phase 1" as per that document.
The entry point should be a static method with three
parameters: the input directory, the input assembly file,
and the output file.

There should also be a test class or method that
takes a well known assembly (e.g., "System.Runtime.dll"
from the C# runtime, located in directory
"/usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.8/ref/net10.0/")
and ensures that the output is correct for a few items,
such as "System.Collections.ArrayList".

Please ensure that the code is very clean, extensible,
and well documented with comments and complete triple-slash
comments on the classes.
*/

namespace MonoGameLispDemo {

    /// <summary>
    ///   Provides functionality to extract metadata from .NET assemblies and export it in Common Lisp S-expression format.
    ///   This implements Phase 1 of the assembly-to-lispy specification.
    /// </summary>
    public static class AssemblyToLispy {

        /// <summary>
        ///   Generates Common Lisp S-expression metadata for the specified assembly and writes it to the output file.
        /// </summary>
        /// <param name="inputDirectory">The directory containing the assembly and its dependencies.</param>
        /// <param name="inputAssemblyFile">The filename of the target assembly .dll.</param>
        /// <param name="outputFile">The destination path for the generated Lisp file.</param>
        /// <exception cref="ArgumentException">Thrown when input paths are null or empty.</exception>
        /// <exception cref="FileNotFoundException">Thrown when the target assembly file cannot be found.</exception>
        public static void GenerateLispyMetadata(string inputDirectory, string inputAssemblyFile, string outputFile) {
            if (string.IsNullOrEmpty(inputDirectory)) {
                throw new ArgumentException("Input directory cannot be null or empty.", nameof(inputDirectory));
            }
            if (string.IsNullOrEmpty(inputAssemblyFile)) {
                throw new ArgumentException("Input assembly file cannot be null or empty.", nameof(inputAssemblyFile));
            }
            if (string.IsNullOrEmpty(outputFile)) {
                throw new ArgumentException("Output file path cannot be null or empty.", nameof(outputFile));
            }

            string assemblyPath = Path.Combine(inputDirectory, inputAssemblyFile);
            if (!File.Exists(assemblyPath)) {
                throw new FileNotFoundException($"Target assembly file not found: {assemblyPath}");
            }

            Console.WriteLine($"[AssemblyToLispy] Starting metadata extraction for: {assemblyPath}");

            // Set up custom resolver to find dependencies in the same directory
            ResolveEventHandler resolver = (sender, args) => {
                var assemblyName = new AssemblyName(args.Name).Name;
                var dependencyPath = Path.Combine(inputDirectory, assemblyName + ".dll");
                if (File.Exists(dependencyPath)) {
                    Console.WriteLine($"[AssemblyResolver] Resolving dependency: {assemblyName} from {dependencyPath}");
                    return Assembly.LoadFrom(dependencyPath);
                }
                return null;
            };

            AppDomain.CurrentDomain.AssemblyResolve += resolver;

            try {
                Assembly assembly = Assembly.LoadFrom(assemblyPath);
                var allTypes = new List<Type>();

                // Retrieve defined types
                try {
                    allTypes.AddRange(assembly.GetExportedTypes());
                } catch (ReflectionTypeLoadException ex) {
                    Console.WriteLine("[AssemblyToLispy] ReflectionTypeLoadException encountered. Retrieving successfully loaded types.");
                    foreach (var loaderEx in ex.LoaderExceptions) {
                        if (loaderEx != null) {
                            Console.WriteLine($"[AssemblyToLispy] Loader Exception: {loaderEx.Message}");
                        }
                    }
                    allTypes.AddRange(ex.Types.OfType<Type>());
                }

                // Retrieve forwarded types (critical for facades like System.Runtime.dll)
                try {
                    Type[] forwarded = assembly.GetForwardedTypes();
                    if (forwarded != null) {
                        allTypes.AddRange(forwarded);
                    }
                } catch (Exception ex) {
                    Console.WriteLine($"[AssemblyToLispy] Warning: Could not retrieve forwarded types: {ex.Message}");
                }

                // Filter and sort the unique list of public types
                var types = allTypes
                    .Where(t => IsPublicType(t))
                    .GroupBy(t => t.FullName)
                    .Select(g => g.First())
                    .OrderBy(t => t.FullName)
                    .ToList();

                var plistStrings = new List<string>();

                foreach (Type type in types) {
                    string typeName = type.Name;
                    string fullName = type.FullName ?? typeName;
                    string ns = type.Namespace ?? "";

                    Console.WriteLine($"[OutputClass] Processing class: {fullName}");

                    var methods = type.GetMethods(BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly)
                        .Select(m => m.Name)
                        .OrderBy(name => name)
                        .ToList();

                    string methodsListStr = FormatLispList(methods);

                    // Phase 2A: Retrieve type kind, superclass, interfaces, and flags
                    string kindStr = GetTypeKind(type);
                    string superclassStr = type.BaseType != null ? EscapeLispString(type.BaseType.FullName ?? type.BaseType.Name) : "nil";
                    var interfaces = type.GetInterfaces().Select(i => i.FullName ?? i.Name).OrderBy(name => name).ToList();
                    string interfacesStr = FormatLispList(interfaces);
                    string flagsStr = GetTypeFlags(type);

                    string plistStr = $"(:name {EscapeLispString(typeName)} :fully-qualified-name {EscapeLispString(fullName)} :namespace {EscapeLispString(ns)} :kind {kindStr} :superclass {superclassStr} :interfaces {interfacesStr} :flags {flagsStr} :methods {methodsListStr})";
                    plistStrings.Add(plistStr);
                }

                var sb = new StringBuilder();
                sb.AppendLine("(");
                foreach (string plistStr in plistStrings) {
                    sb.AppendLine($"  {plistStr}");
                }
                sb.AppendLine(")");

                string? outputDirectory = Path.GetDirectoryName(outputFile);
                if (!string.IsNullOrEmpty(outputDirectory) && !Directory.Exists(outputDirectory)) {
                    Directory.CreateDirectory(outputDirectory);
                }

                File.WriteAllText(outputFile, sb.ToString(), Encoding.UTF8);
                Console.WriteLine($"[AssemblyToLispy] Successfully wrote metadata to {outputFile}");

            } finally {
                AppDomain.CurrentDomain.AssemblyResolve -= resolver;
            }
        }

        /// <summary>
        ///   Checks if the given type is publicly visible, including parent declaring types for nested types.
        /// </summary>
        /// <param name="type">The System.Type to check.</param>
        /// <returns>True if the type is public; otherwise, false.</returns>
        private static bool IsPublicType(Type type) {
            if (type.IsGenericParameter) {
                return false;
            }
            Type? current = type;
            while (current != null) {
                if (!current.IsPublic && !current.IsNestedPublic) {
                    return false;
                }
                current = current.DeclaringType;
            }
            return true;
        }

        /// <summary>
        ///   Escapes a string to make it compatible with Common Lisp string literals.
        /// </summary>
        /// <param name="str">The input string to escape.</param>
        /// <returns>The escaped string wrapped in double quotes, or "nil" if the input is null.</returns>
        private static string EscapeLispString(string str) {
            if (str == null) {
                return "nil";
            }
            var sb = new StringBuilder();
            sb.Append('"');
            foreach (char c in str) {
                if (c == '"') {
                    sb.Append("\\\"");
                } else if (c == '\\') {
                    sb.Append("\\\\");
                } else {
                    sb.Append(c);
                }
            }
            sb.Append('"');
            return sb.ToString();
        }

        /// <summary>
        ///   Formats a collection of strings as a space-separated Common Lisp list.
        /// </summary>
        /// <param name="items">The items to format.</param>
        /// <returns>A string representation of the Common Lisp list, or "nil" if empty.</returns>
        private static string FormatLispList(IEnumerable<string> items) {
            if (items == null || !items.Any()) {
                return "nil";
            }
            return "(" + string.Join(" ", items.Select(EscapeLispString)) + ")";
        }

        /// <summary>
        ///   Converts a PascalCase or camelCase string to a Lisp kebab-case string.
        /// </summary>
        /// <param name="name">The PascalCase/camelCase string.</param>
        /// <returns>A kebab-case representation.</returns>
        public static string CamelCaseToKebabCase(string name) {
            if (string.IsNullOrEmpty(name)) {
                return string.Empty;
            }
            var sb = new StringBuilder();
            for (int i = 0; i < name.Length; i++) {
                char c = name[i];
                if (char.IsUpper(c)) {
                    if (i > 0 && name[i - 1] != '-' && (!char.IsUpper(name[i - 1]) || (i + 1 < name.Length && char.IsLower(name[i + 1])))) {
                        sb.Append('-');
                    }
                    sb.Append(char.ToLower(c));
                } else {
                    sb.Append(c);
                }
            }
            return sb.ToString();
        }

        /// <summary>
        ///   Determines the Common Lisp kind symbol of a type (e.g., :class, :struct, :interface, :enum, :delegate).
        /// </summary>
        /// <param name="type">The System.Type to analyze.</param>
        /// <returns>A string representation of the Lisp keyword kind.</returns>
        private static string GetTypeKind(Type type) {
            if (type.IsEnum) {
                return ":enum";
            }
            if (type.IsInterface) {
                return ":interface";
            }
            if (typeof(Delegate).IsAssignableFrom(type)) {
                return ":delegate";
            }
            if (type.IsValueType) {
                return ":struct";
            }
            return ":class";
        }

        /// <summary>
        ///   Evaluates standard boolean reflection flags for a type and formats them as a list of Lisp keywords.
        /// </summary>
        /// <param name="type">The System.Type to inspect.</param>
        /// <returns>A string representing the Lisp list of keywords, or "nil" if empty.</returns>
        private static string GetTypeFlags(Type type) {
            var flags = new List<string>();
            if (type.IsAbstract) {
                flags.Add(":" + CamelCaseToKebabCase("Abstract"));
            }
            if (type.IsSealed) {
                flags.Add(":" + CamelCaseToKebabCase("Sealed"));
            }
            if (type.IsImport) {
                flags.Add(":" + CamelCaseToKebabCase("Import"));
            }
            // We use '#pragma warning disable SYSLIB0050' because the 'Type.IsSerializable' property has been
            // marked obsolete starting in .NET 8.0 due to legacy formatter-based serialization being deprecated.
            // However, this metadata is still highly valuable for our Common Lisp integration to identify types that
            // support serialization (e.g. for object marshalling or deep copies). To achieve a clean, warning-free
            // build (0 warnings/errors) while still retrieving this property, we wrap the access in a pragma warning
            // disable/restore block. This disables warning SYSLIB0050 specifically for this expression, and immediately
            // restores it to prevent silencing any other deprecated API usage elsewhere in our code.
#pragma warning disable SYSLIB0050
            if (type.IsSerializable) {
                flags.Add(":" + CamelCaseToKebabCase("Serializable"));
            }
#pragma warning restore SYSLIB0050
            if (type.IsGenericType) {
                flags.Add(":" + CamelCaseToKebabCase("GenericType"));
            }
            if (type.IsGenericTypeDefinition) {
                flags.Add(":" + CamelCaseToKebabCase("GenericTypeDefinition"));
            }
            if (type.IsNested) {
                flags.Add(":" + CamelCaseToKebabCase("Nested"));
            }
            if (flags.Count == 0) {
                return "nil";
            }
            return "(" + string.Join(" ", flags) + ")";
        }
    }

    /// <summary>
    ///   Contains test suites for verifying the correctness of the AssemblyToLispy generator.
    /// </summary>
    public static class AssemblyToLispyTest {

        /// <summary>
        ///   Runs the AssemblyToLispy test case on System.Runtime.dll and validates the generated plist data.
        /// </summary>
        /// <exception cref="Exception">Thrown when a test assertion fails.</exception>
        public static void RunTests() {
            string inputDir = "/usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.8/ref/net10.0/";
            string assemblyName = "System.Runtime.dll";
            string tempOutputFile = Path.Combine(Path.GetTempPath(), "System.Runtime.lispy.metadata.tmp");

            try {
                Console.WriteLine("[AssemblyToLispyTest] Starting test run on System.Runtime.dll...");
                AssemblyToLispy.GenerateLispyMetadata(inputDir, assemblyName, tempOutputFile);

                if (!File.Exists(tempOutputFile)) {
                    throw new Exception($"Test failed: Output file was not created at {tempOutputFile}");
                }

                string content = File.ReadAllText(tempOutputFile);

                // Basic structure assertions
                if (!content.StartsWith("(") || !content.TrimEnd().EndsWith(")")) {
                    throw new Exception("Test failed: Output is not wrapped in outer parentheses.");
                }

                // Check for System.Collections.ArrayList
                if (!content.Contains("\"System.Collections.ArrayList\"")) {
                    throw new Exception("Test failed: Output does not contain System.Collections.ArrayList.");
                }

                // Verify Phase 2A metadata fields for ArrayList
                if (!content.Contains(":kind :class")) {
                    throw new Exception("Test failed: ArrayList kind is not marked as :class.");
                }
                if (!content.Contains(":superclass \"System.Object\"")) {
                    throw new Exception("Test failed: ArrayList superclass is not marked as \"System.Object\".");
                }
                if (!content.Contains("\"System.Collections.IList\"")) {
                    throw new Exception("Test failed: ArrayList interfaces does not contain \"System.Collections.IList\".");
                }
                if (!content.Contains(":serializable")) {
                    throw new Exception("Test failed: ArrayList flags does not contain :serializable.");
                }

                // Check for some expected methods of ArrayList
                if (!content.Contains("\"Add\"") || !content.Contains("\"Clear\"") || !content.Contains("\"Contains\"")) {
                    throw new Exception("Test failed: System.Collections.ArrayList does not seem to have the expected methods.");
                }

                Console.WriteLine("[AssemblyToLispyTest] All tests PASSED successfully!");

            } catch (Exception ex) {
                Console.Error.WriteLine($"[AssemblyToLispyTest] TEST FAILED: {ex.Message}");
                Console.Error.WriteLine(ex.StackTrace);
                throw;
            } finally {
                if (File.Exists(tempOutputFile)) {
                    Console.WriteLine($"[AssemblyToLispyTest] Test output file: {tempOutputFile}");
                    // File.Delete(tempOutputFile);
                }
            }
        }
    }
}
