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

## Phase 2: TODO