## Haskell Language

- Temiloluwa Aremu
- temiloluwa.aremu@uoit.net

## About the language

> What is Haskell?

Haskell is a general-purpose, purely functional programming language incorporating many recent innovations in programming language design.Haskell provides higher-order functions, non-strict semantics,static polymorphic typing, user-defined algebraic datatypes, pattern-matching, list comprehensions, a module system, a monadic I/O system, and a rich set of primitive datatypes, including lists, arrays,arbitary and fixed precision integers, and floating-point numbers.

> _History_

Haskell is named after Haskell Brooks Curry. He was an American Mathematician and logician. Haskell's main work was in combinatory logic, a notation designed to eliminate the need for variables in mathematical logic. Combinatory logic captures many key features of computation, and as a result, is useful in computer science. Haskell has three programming languages named after him: Haskell, Brooks, and Curry.

> _Interesting Features_

- Haskell the programming language is built around **functions**, useful blocks of code that do specific tasks. They are called and used only when needed. 

- Haskell has functions are treated as values like integers (numbers) and strings. You can add a function to another similarly to how you would add an integer to another integer e.g 1 + 1.

- Haskell uses **non-strict semantics**  meaning that the input arguments are not evaluated unless the argurents passed into the function are used to evalute what is in the body of the function.

- Haskell has **string static typing** which means that it evalutes the code before runtime, when the code is staic and possibly as the code is written.

- Haskell uses **strong data typing** which is evaluting properties of all inputs into a function and uses the function to sort numbers and strings of text.

- Haskell uses **lazy evalution** which allows the result of a function to be handed to another function on the same line of code.It doesn't perform a computation unless it needs to.

- Haskell has no **loops or branching** only recursion. 

- Haskell is based on **typed lambda calculus**.

## About the syntax

*Sequence/Range Operator*

```haskell
main :: IO()
main = do
   print [1..10]
```
This would generate the following output ->
[1,2,3,4,5,6,7,8,9,10]

*Hello World! in Haskell*

```haskell
main :: IO ()
main = putStrLn "Hello, World!"
```

## About the tools

Haskell uses a open-source native complier called Glasgow Haskell Complier (GHC). It provides a cross-platform environment for the writing and testing of Haskell code and it dupports numerous extensions, libraries and optimisations that streamline the process of generating and executing code. GHC is by far the most widely used Haskell complier and offers the most features.
GHC generates fast code, particularly for concurrent programs. It works on several platforms including Mac, Windows, Linux and several processor architectures.

GHC complies Haskell code either directly to assembly, bytecode or using LLVM as a back-end. GHC can also generate C code as an intermediate target for porting to new platforms. GHC itself is written in Haskell but the runtime system, which is essential to run programs, is written in C and C--. The interactive environment complies Haskell to bytecode, and supports execution of mixed bytecode/complied programs. GHC comes with several libraries, and are available on Hackage.

There are also popular alternatives:

- JHC- This is a whole program complier. It is more convenient for cross-compiling and ususally produces smaller binaries.The source code is extremely clear and readable. It aims to produce the most efficent programs possible via whole program analysis and other optimizations.

- UHC- The Utrecht Haskell Complier is near feature-complete.It has multiple back-ends including a JVM bytecode interpreter backend, a JavaScript backend and a full program analysis backend. It implements many of GHC's most popular extensions and some original extensions as well.

## About the standard library

> _Give some examples of the functions and data structures
> offered by the standard library_.

## About open source library

> _Describe at least one contribution by the open source
community written in the language._

# Analysis of the language

> _Organize your report according to the project description
document_.


