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

# Implementation

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

## Phase 2: Add More Type Details

For version 2, we're going to add more details about each type
that is found in the assembly.

Details to add:
* Kind of type: Class, Interface, Struct, Primitive, Value type, ...?
  * (What are all the kinds of types C# / CLR / CIL has?) Maybe this should be a set of
    flags instead of a single type, e.g., 
    `:class-info (:primitive :value-type :array :enum)` (or whatever?)
  * Contains Generic Parameters? (can also be told by the backtick in the name)
  * Maybe all the `Is` properties on `Type` should become an entry in 
    a `:type-flags` key in the plist, converted to a keyword and camel case
    * Examples:
    * `IsSealed` -> `:sealed`
    * `IsNotPublic` -> `:not-public`
    * Combined: `(:flags (:sealed :not-public))`
* Superclass (if any), a.k.a. `BaseType`
* Interfaces implemented
* Fields
  * Field name
  * Field type
  * Field information, e.g.,
    * Read-only
    * Const
    * (others?)
* Properties
  * Property name
  * Property type
  * Readable, writeable, init-only

Useful functions to implement:
* `CamelCaseToKebabCase`: Converts `CamelCase` to `camel-case` (sometimes referred to as snake-case in the doc, but technically kebab-case in Lisp conventions).

### Antigravity/Gemini's Suggestions and Scope Improvements

To ensure Phase 2 results in metadata comprehensive enough for automatic package generation, we recommend expanding the scope to include:
1. **XML Documentation Integration**: Parse the associated `.xml` documentation file generated with the assembly to attach `:documentation` strings to types, methods, fields, and properties.
2. **Method Parameter Details**: Capture parameter names, fully qualified types, and default values to allow generation of correct Lisp function signatures and dynamic argument checking.
3. **Generic Constraints**: Capture constraints on generic parameters (e.g., class, struct, new(), base-type) to support type-dispatching constraints.
4. **Attribute Recognition**: Detect custom attributes such as `[Obsolete]` or `[Extension]` (crucial for identifying extension methods).

### Phase 2: Implementation Plan (by Antigravity/Gemini)

#### 1. Kebab-Case Keyword Translation
Convert C# PascalCase/camelCase type and member properties to Lisp-friendly kebab-case keywords.
* Implement a `ToKebabCase` string helper.
* Map type-boolean checks (e.g., `IsSealed`, `IsAbstract`, `IsValueType`) into a list of keywords under a `:flags` key, e.g., `(:flags (:sealed :value-type))`.

#### 2. Detailed Member Metadata Plists
Extend output serialization to capture detailed structures:
* **Constructors**:
  * Extract using `type.GetConstructors()`.
  * Format under a `:constructors` list as a plist containing `:parameters` (ordered list of parameter plists).
* **Methods (including Operator Overloads)**:
  * Group methods by clean name under `:methods`. For each overload, generate a plist:
    * `:name`: Clean name.
    * `:mangled-name`: Real CIL name (e.g., `op_Addition` for operator overloads).
    * `:is-static`: `t` or `nil`.
    * `:return-type`: Fully qualified name of the return type.
    * `:parameters`: List of parameter plists: `(:name "argName" :type "System.String" :has-default t :default-value "defaultVal")`.
* **Properties**:
  * Extract using `type.GetProperties()`.
  * Format as: `(:name "PropName" :type "System.Int32" :readable t :writeable t :is-static nil)`.
* **Fields**:
  * Extract using `type.GetFields()`.
  * Format as: `(:name "FieldName" :type "System.String" :is-static t :is-literal t :is-init-only nil)`.

#### 3. XML Documentation Integration
If a matching documentation `.xml` file exists in the same directory as the target `.dll`:
* Load and parse the file using `System.Xml.Linq.XDocument`.
* Build a lookup dictionary matching XML member IDs (e.g., `T:System.Collections.ArrayList`, `M:System.Collections.ArrayList.Add(System.Object)`) to their `<summary>` and `<param>` summaries.
* Append a `:documentation` key with the retrieved string to the corresponding type/member/property plist.

## Phase N: Future

* Handle Extension Methods
  * Even if they're defined in other assemblies
  * How to find and enumerate them?
