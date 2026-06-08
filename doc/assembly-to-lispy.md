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
* `CamelCaseToSnakeCase`: Converts `CamelCase` to `camel-case`

## Phase TODO:

* List operator overloads (i.e., `op_` methods?)
