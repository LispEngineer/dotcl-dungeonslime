# Assembly Metadata in Lispy Format

## Overview

A program that reads information about an assembly (its `.dll` and associated
documentation `.xml` file) and outputs information that will be used to
generate DotCL Lisp packages. The output will be in a Common Lisp compatible
s-expression format.

There are several reasonable approaches to doing this:
* Use DocFX on the assembly to generate YAML
  * Then convert the YAML
* Use Roslyn/Microsoft Code Analysis tools in C#
  * Directly output s-expressions

## References

References:
* [DotNet YAML Format](https://dotnet.github.io/docfx/docs/dotnet-yaml-format.html)
* [DocFX Metadata Format](https://dotnet.github.io/docfx/spec/metadata_format_spec.html)
* [DocFX CLI](https://dotnet.github.io/docfx/reference/docfx-cli-reference/overview.html)
* [Microsoft.CodeAnalysis](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-10)
* [C# S-Expression Code](https://rosettacode.org/wiki/S-expressions#C#)

## Details

What we care about:
* Methods, including:
  * Operator overloads
  * Accessors
* Properties & Fields
* Constructors
* Namespace
* Name
* Type: Class, Struct, etc.
* Superclasses
* Interfaces
* Static or not
* Generic Parameters

For methods, constructors and anything else that takes parameters:
* Parameter lists
* Parameter types (fully qualified)
* Parameter names
* Parameter defaults

For methods and the constructors, outputa single top level entry
with the name of the method (or the constructor), and a list of
all the overloads.

For anything which will have its name mangled in the CIL version
(e.g., `operator +` becomes `op_Addition`), include the mangled
version of the name which is what would need to be called by
DotCL's `invoke`.

# Details of Output Format

The general format is a Common Lisp s-expression.

The top-level form is a list containing one entry per class (or other C# entity) being documented.

Each entry is a Common Lisp plist with keys that are keywords. All keys are Common Lisp keywords.

> [!IMPORTANT]
> This section must be kept updated with any future changes to the `AssemblyToLispy` code and metadata output structure.

## Entity Entry Details

Each type entry plist contains the following entries, by key:

* `:name` (String): The simple name of the type (e.g., `ArrayList` or ``Action`4``).
* `:fully-qualified-name` (String): The fully qualified name of the type, including
  the namespace (e.g., `System.Collections.ArrayList` or ``System.Action`4``).
* `:namespace` (String): The namespace in which the type is defined 
  (e.g., `System.Collections` or `System`).
* `:kind` (Keyword): The classification of the C# entity. Must be one of the following:
  * `:class` (a class type)
  * `:struct` (a value type that is not an enum)
  * `:interface` (an interface type)
  * `:enum` (an enumeration type)
  * `:delegate` (a delegate type)
* `:superclass` (String or `nil`): The fully qualified name of the base class. 
  If there is no base class (such as for interfaces or `System.Object`), 
  this value is `nil`.
* `:interfaces` (List of Strings or `nil`): An alphabetically sorted list of the fully
  qualified names of all interfaces implemented by this type. If no interfaces are 
  implemented, this value is `nil`.
* `:flags` (List of Keywords or `nil`): A list of active boolean type flags, converted
  to Lisp-friendly kebab-case keywords. If no flags are active, this value is `nil`.
  Supported flag keywords are:
  * `:abstract` (the type is abstract)
  * `:sealed` (the type is sealed)
  * `:import` (the type is imported from a COM type library)
  * `:serializable` (the type has the `[Serializable]` attribute)
  * `:generic-type` (the type is a generic type)
  * `:generic-type-definition` (the type is a generic type definition)
  * `:nested` (the type is nested inside another type)
* `:methods` (List of Strings or `nil`): An alphabetically sorted list of the names 
  of public methods declared directly on this type. If no public methods are declared
  on this type, this value is `nil`.


# Implementation Phases

This will be implemented in phases.

## Phase 1: Roslyn / Microsoft Code Analysis

* Read an assembly
  * Input: Assembly directory, filename of `.dll`
  * Output: Destination filename

* Output format: 
  * A single Common Lisp List in S-expression format
  * Each entry in the list is a Common Lisp plist
    containing information about one entry in the Assembly
  * Plist keys: Common Lisp keywords (e.g., :methods)
  * Plist values: As necessary:
    * Common Lisp Strings
    * Common Lisp Lists
    * Common Lisp PLists

* Console output: Have the class write information to the
  console about what it's doing, at least for each
  entry of the assembly level.
  * Each line written should include a prefix that shows what
    part of the code is executing, e.g., `[OutputClass] Processing class: System.Collections.ArrayList`

* For each item in assembly, output to the output file:
  * Name of the class/struct/whatever
  * Fully qualified name
  * Namespace
  * List of methods (one per override)

No parameters, nothing else. Just very basic information, to
prove that we can read it and output a well-fromatted
Common Lisp s-expression.

### Notes on Output

* **Names with backticks**: If a name has a backtick followed by a number,
  that indicates the number of generic parameters that  class has.
  For example, ``Tuple`3`` means a `Tuple` with 3 generic arguments.

## Phase 2: Detailed Metadata and Documentation

Phase 2 is divided into five sequential sub-phases:

* **Phase 2A**: Add general metadata
* **Phase 2B**: Add details on fields and properties
* **Phase 2C**: Add details on the methods and constructors
* **Phase 2D**: Add documentation information
* **Phase 2E**: Add remaining Phase 2 capabilities (generic constraints, attributes, etc.)

### Phase 2A: Add General Metadata

This sub-phase extracts top-level type kind and classification properties:
* **Kind of Type**: Output a `:kind` key (e.g., `:class`, `:struct`, 
  `:interface`, `:enum`, `:delegate`).
* **Inheritance**:
  * `:superclass`: Fully qualified name of the base class.
  * `:interfaces`: A list of fully qualified names of implemented interfaces.
* **Type Flags**: Convert standard boolean reflection checks (`IsSealed`, `IsAbstract`, 
  etc.) to Lisp-friendly keywords, mapped under a `:flags` key, e.g. 
  `(:flags (:sealed :abstract))`.
* **Kebab-Case Utility**: Implement a `CamelCaseToKebabCase` string helper 
  (converts PascalCase/camelCase to kebab-case keywords, e.g., `:is-value-type`).

### Phase 2B: Add Details on Fields and Properties

This sub-phase extracts member variables and metadata accessors:

* **Properties**:
  * Extract using `type.GetProperties()`.
  * Format each property as a plist:
    * `:name`: Property name.
    * `:type`: Fully qualified property type.
    * `:readable`: `t` or `nil`.
    * `:writeable`: `t` or `nil`.
    * `:static`: `t` or `nil`.
    * The names of the get and set methods (if any)
    * Any other relevant information from `PropertyInfo`
* **Fields**:
  * Extract using `type.GetFields()`.
  * Format each field as a plist:
    * `:name`: Field name.
    * `:type`: Fully qualified type.
    * `:static`: `t` or `nil`.
    * `:literal`: `t` or `nil` (for constants).
    * `:init-only`: `t` or `nil` (for read-only fields).
    * `:public`: `t` or `nil`.

Any value that is `nil` should have its key omitted, as `getf` will
default to `nil` anyway.

### Phase 2C: Add Details on Methods and Constructors

This sub-phase extracts detailed signatures for methods, constructors, and parameter lists:
* **Constructors**:
  * Extract using `type.GetConstructors()`.
  * Format under a `:constructors` list as a plist containing `:parameters` (ordered list of parameter plists).
* **Methods (including Operator Overloads)**:
  * Group methods by clean name under `:methods`. For each overload, generate a plist:
    * `:name`: Clean name.
    * `:mangled-name`: Real CIL name (e.g., `op_Addition` for operator overloads).
    * `:is-static`: `t` or `nil`.
    * `:return-type`: Fully qualified name of the return type.
    * `:parameters`: List of parameter plists (ordered).
* **Parameters**:
  * For each parameter, capture a plist:
    * `:name`: Parameter name.
    * `:type`: Fully qualified parameter type.
    * `:has-default`: `t` or `nil`.
    * `:default-value`: Formatted default value representation (e.g. string, number, or `:nil`).

### Phase 2D: Add Documentation Information

This sub-phase integrates assembly XML documentation comments into the metadata output:
* **Parsing Options**:
  * **Option A (Direct Parsing)**: Load and parse the associated `.xml` file directly using `System.Xml.Linq.XDocument`. This is self-contained and lightweight.
  * **Option B (Roslyn Provider)**: Use `Microsoft.CodeAnalysis.XmlDocumentationProvider.CreateFromFile(xmlPath)` to obtain the documentation. Note that while this manages file loading/caching, it still returns raw XML strings (e.g., `<member name="...">...</member>`), requiring custom XML parsing to extract clean text. It also adds a dependency on the `Microsoft.CodeAnalysis` NuGet package.
* **Signature Mapping**: Match reflection signatures to XML documentation keys:
  * Types: `T:Namespace.TypeName`
  * Methods: `M:Namespace.TypeName.MethodName(Args...)`
  * Properties: `P:Namespace.TypeName.PropertyName`
  * Fields: `F:Namespace.TypeName.FieldName`
* **Output**: Build a dictionary lookup of XML comments, and append a `:documentation` key to the corresponding type/member/property plist containing the summary text and parameter descriptions.

### Phase 2E: Remaining Phase 2 Capabilities

This sub-phase implements advanced type-system characteristics:
* **Generic Constraints**:
  * Extract constraints on generic parameters (e.g., `where T : class`, `new()`, base-type, or interface constraints) using `Type.GetGenericParameterConstraints()`.
  * Format under `:generic-constraints` in the plist to support type-dispatching and constraints validation in the generated Lisp packages.
* **Attributes**:
  * Extract custom attributes applied to types or members (e.g., `[Obsolete]`, `[Extension]`, or custom attributes) using `GetCustomAttributes()`.
  * Format under `:attributes` to enable detection of extension methods and lifecycle/deprecated annotations.

## Phase N: Future

* Handle Extension Methods
  * Even if they're defined in other assemblies
  * How to find and enumerate them?
