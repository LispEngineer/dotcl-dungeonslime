# Creating a Lispy C# Standard Library

* Author: Douglas P. Fields, Jr. - symbolics@lisp.engineer
* Last updated: 2026-06-06

DotCL projects will likely do a lot of things using C# Standard Library classes,
methods, etc. Each one will be hard to type check and verify because they are
just strings for classes, methods, properties, events, etc.

I propose building something that parses the C# standard library and outputs
very lispy function libraries of the C# standard library. This can then be
extended to any other C# library to provide a lispy interface.

Names can be converted from CamelCase to snake-case automatically, although
I would have an override list of names. Conventions can be converted, e.g.,
boolean returning functions named `Is` could be changed to have a `-p` or `?`
suffix. (The latter is my preferred, but that is probably because of recent
usage of Clojure.) Things like "to" or "from" methods, type conversions,
could use things like `->` and `<-`.


# Implementation Options

There are several possible ways to do this:

## Option 1: Package per Class

Make a package for each class.
* Example: `System.Timespan` or `csharp/System.Timespan`
* Each method can have one function that checks its arguments and
  calls the proper overloaded method with the correct number of arguments.
* Package local nicknames can be used for easy of development
  * Example: `ts` for `csharp/System.Timespan`

Pros:

Cons:

### Option 1A (and 2A): Macro Package

Have another package of the same exact (function)
symbols but make them macros instead, to shave a tiny
bit of efficiency, for things that just turn into
simple `dotnet:invoke` (etc.) type calls.

Load this package, which will transitively load
the original package as well (not exporting its
conflicting symbols).

Use the original function package so I'll get
nice stack traces for debugging. (Not that DotCL
does that yet, but you get what I'm saying.)


## Option 2: Class name prefixes

Abbreviate the class names (e.g., `TimeStamp` becomes `ts-`) and
prefix each function with this abbreviation. Then, I need only
one package for each part of the C# namespace.

* There may be some disambiguation necessary

Pros:

Cons:

### Option 2A: See Above for 1A

## Option 3: CLOS integration

Once C# classes are integrated into the CLOS type hiearachy,
I can define C# generic methods for all methods, and specialize
them for each set of parameters. This way, there would be one
(DotCL C# library) package with all the overloaded generics
and each C# class that is specialized in

Refer to [abcl-java-interop](abcl-java-interop.md) for a discussion
of how ABCL integrated Java classes into its CLOS & MOP.

Consider extending the operators from CL-Generics for operator
overloads in the C# standard library.

Pros:

Cons:


## Option 4: (Other ideas?)

TODO


# Implementation Concerns / Ideas

## Phasing

The first implementation should be very simple:
* Pick a simple C# Standard Library Class
  * Simple meaning, doesn't use a lot of C# features, maybe just
    basic fields, properties and methods
  * Doesn't use generic type system
* Implement the parser for that class (see below)
* Implement all the abbreviations, convention conversions, etc.
* Output the DotCL Common Lisp code for that simple example class

The second implementation should iterate all the classes
and indicate which are compatible with the first implementation,
and then output the packages (or whatever implementation option
is chosen) for that.

The third implementation could try another important library
(e.g., MonoGame like I'm using here) and make sure that the
capabilities can be used beyond the .Net C# standard library
initially targeted.

The fourth implementation could output packages skipping any
as yet unsupported feature, so that I could at least get some
partial value out of classes with unsupported features.

From there, each subsequent version should add capabilities until I have
implemented everything possible. :) These versions should also add
optimizations as well as supported features.

## Creating the Library

To get the raw data to convert to DotCL Common Lisp:
* Parse the source files of the C# standard library
* Parse the compiled Assembly files and PDB files
  of the C# standard library
  * Use the `.pdb` (Program Database) debugging symbols somehow?
* Use reflection to learn everything about loaded assemblies
  and classes and do the work that way?

Thoughts:
* Handling extension methods
* Handling partial classes (I shouldn't have to care?)

### Applicable Tools

* [`System.Reflection.MetadataLoadContext`](https://learn.microsoft.com/en-us/dotnet/standard/assembly/inspect-contents-using-metadataloadcontext)
* `System.Reflection.Metadata`
* [`Mono.Cecil`](https://www.mono-project.com/docs/tools+libraries/libraries/Mono.Cecil/)
* [`dnlib`](https://github.com/0xd4d/dnlib)
* Roslyn compiler & `Microsoft.CodeAnalysis`
* [ILSpy](https://github.com/icsharpcode/ilspy)

### Library Files

Look around `~/.dotnet` which has way, way too many files...

Core library:
* `System.Private.CoreLib.dll` is private, OS-specific code
* `System.Runtime.dll` and `netstandard.dll` are the things I
  actually link against, which calls the above.

The Base Class Library (BCL) has many other assemblies, over 100.
Some include:
* `System.Collections.dll` and its ilk
* `System.Net.Http.dll` for `HttpClient` and other `System.Net` assemblies
* `System.Linq.dll` for LINQ (probably don't need this if I have CL!)
* `System.Console.dll`
* `System.IO.dll` and its related assemblies

### AOT

What if all I have is AOT (ahead of time) compiled assemblies?
Shoudln't worry about this for now...

## Type Library

Create a package (library) of Type constants:

* Since symbols can have any value, I can do things like: `+type-System.TimeSpan+`.
  * Come up with a nice naming convention, that sort of looks ugly, maybe
    with different earmuffs and using a package instead of `type-` in the name?
* I could have a method that gets a specialized generic type, 
  or constructed type, e.g.,
  `(get-type "System.Collections.ArrayList<string>")`, but that also
  could also add `+type-System.Collections.ArrayList<string>+` to the same
  package, and dynamically look that up using it as a cache.
* Could have a `get-type` that takes all the type specifiers as arguments.
  `(get-type "System.Collections.ArrayList" "string")`.
  * If the sub-types have type specifiers, it could be handled with lists, like
    `(get-type "ArrayList" '("List "string"))`
* Can also deal with unbound types, like `List<>` or `Dictionary<,>`

## Improved Efficiency

Since these stubs will have a lot of details about the invocations,
it might be possible to compile into much more efficient calls than
using `dotnet:invoke`, `dotnet:static`, `dotnet:static-generic`, and
my own `monoutils:invoke-generic`.

## DocStrings

Output docstrings that include:
* Original C# documentation (if any/available)
* Detailed types of all parameters/overloads
* Attributes
* Version information?
...

## Version Information

Include any version information from the source files or compiled
CIL files (Assembly files) in the Lisp packages. If not available to get in an
automated fashion, get it from the environment (e.g., like
`dotnet --version`) or from the user
as an input.

Have startup checks that check the loaded assembly versions against
the Lisp compiled versions and output warnings if they differ?

* `System.Runtime.InteropServices.RuntimeInformation.FrameworkDescription`
* `Environment.Version`
* `AssemblyVersion`
* `AssemblyFileVersion`
* `AssemblyInformationalVersion`

```c#
// Get the assembly that contains the base 'object' type
Assembly coreLibrary = typeof(object).Assembly;

// Extract its version
Version coreVersion = coreLibrary.GetName().Version;
Console.WriteLine($"Core Library Version: {coreVersion}");
```

## Anonymous Types & LINQ?


# Handling C# Capabilities

## Constructors

## Generic Types

How to handle C# generics
* Classes, interfaces with type parameters
* Structs, records with type parameters
* Methods with type parameters

## Parameters Defaults

## `params`

## Out/Ref Parameters

## Records

Treat the same as classes? Implement special equality capabilities?

## Value Types

* Primitives
  * `native int` (signed/unsigned)
* Structs
  * `ref struct`s, e.g., `Span<T>`
* `enum`s
* Tuples (C# 7's `System.ValueTuple`, not the `System.Tuple` class)
* Nullable value types
* Unsafe C#
  * Data pointers (e.g., `T*`)
  * Function pointers (e.g., `delegate*`

## Enumerations

## Indexers

## Fields, Properties

* Constants
* Read-only fields

Thoughts:
* `setf` forms for Fields & Properties

## Operator Overloading

When a C#-respecting defgeneric is available, this system can also use
something like [CL Generics](https://github.com/alex-gutev/generic-cl)
and add specialized methods for the C# operators. These are, after all,
just static methods with names like `op_addition`.

## Attributes

## Nullability

* `Nullable<T>`
* `T?`

## Events

## Delegates


# Handling CIL Capabilities 

C# is just one language on top of the Common Language Runtime (CIL).
The Common Intermediate Language (CIL) offers many other capabilities
that I might have to deal with if I parse the CIL directly.

## CIL Global Methods & Fields

## CIL Method Overloading by Return Type

## CIL Array Indexing

In CIL, arrays can be multi-dimensional and can have arbitrary lower bounds.
(Hey Matlab, I could compile your 1-indexed arrays to CIL nicely, LOL.)

## Other CIL Stuff

This stuff probably isn't relevant to us, but CIL also supports
these things that C# doesn't leverage.
* Tail Call Optimization (TCO)
* `fault` blocks (beyond `try` - `catch` - `finally`)
* Custom Modifiers (`modreq`, `modopt`)


# Other Libraries

This same treatment can be done for any other C# library.

Some early possibilities:
* MonoGame (of course!)
* Godot
  * Unity, if I want to support a commerical project
* ASP.NET (DotCL Sample)
* MAUI (DotCL Sample)

If the generation could be fully automated and implemented
from compiled CIL, then creating the Lispy Stubds could become
a standard `dotnet tool` that could take any NuGet package
and output the Lispy interface packages.


# Future Directions

## Other Language Targets

DotCL targets the CLR. So, the Haskeller in me thinks I should look
at supporting F# capabilities in DotCL as well.
(Talk about scope creep!)

There's also [IronScheme](https://github.com/IronScheme/IronScheme),
which targets the CLR. It would be interesting to have a CLR-based
Scheme (R6RS) to Common Lisp interoperability...

