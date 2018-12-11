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

The most important Haskell library is called the **Prelude**. It is implicity imported by default, and includes the most commonly used functions.

**List Processing Basics**
- (:) The basic list constructor. Adds an element to the front of a list.
- (++) The list concatenator. Adds a list onto the front of another list. Make sure you understand the difference between : and ++
- (head) Returns the first element of a list.
- (last) The opposite of head; last returns the last element of a list.
- (tail) The tail of a list is everything except the first element. Returns an error if the list is empty.
- (init) The opposite of tail. Given a list, init returns the list without the last element.
- (length) Returns the length of the list
- (!!) Returns the element of a list located at the specified index. Note that an 'index' starts counting from zero. 

**Extra List Processing**
 - maximum and minimum: These return the largest and smallest elements of a list repectively.
 - reverse: reverse takes a list and returns the reverse.
 - elem and notElem : elem tells you if a specified element is in a list, and notElem is simply the opposite of that.
 - concat: concat takes in a list of lists and combines them all into one list.
 - take and drop: take n [a] gives you the first n elements of the list. Likewise, drop n [a] gives you everything back except the first n elements of a list.
 - takeWhile and dropWhile: Similar to take and drop. They take in a function and use it to 'test' elements of the list starting from the beginning.

**Higher Order Functions**
- map: It takes in two inputs - a function, and a list. It then applies this function to every element in the list.
- fold: fold takes in a function and folds it in between the elements of a list.
- filter: Filter takes in a 'test' and a list, and it chucks out any elements of the list which don't satisfy that test.
 
## About open source library

There are numerous open-source projects being contributed for the Haskell Language. A very popular one is Pandoc which is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library. 

**Pandoc**

If you need to convert files from one markup format into another, pandoc is your swiss-army knife. Pandoc can convert documents in (several dialects of) Markdown, reStructuredText, textile, HTML, DocBook, LaTeX, MediaWiki markup, TWiki markup, TikiWiki markup, Creole 1.0, Vimwiki markup, roff man, OPML, Emacs Org-Mode, Emacs Muse, txt2tags, Microsoft Word docx, LibreOffice ODT, EPUB, or Haddock markup to HTML formats, Ebooks, PDF to name a few
The official github library is https://github.com/jgm/pandoc

## Analysis of the language

# Functional vs Procedural Programming

Haskell is a **functional** programming language in which most expressions are **pure**. This means that functions generally have no side effects. A distinct construct exists to represent side effects, orthogonal to the type of functions. A pure function can return a side effect that is subsequently executed, modeling the impure functions of other languages. Haskell must compute a result and do it only for the current value of global constants and it's arguments. It cannot modify a global and it cannot modify the values that it's given as arguments.

# Meta-Programming / Macros

Template Haskell is an extension to Haskell 98 that allows you to do type-safe compile-time **meta-programming**, with Haskell both as the manipulating language and the language being manipulated.

Intuitively Template Haskell provides new language features that allow us to convert back and forth between concrete syntax, i.e. what you would type when you write normal Haskell code, and abstract syntax trees. These abstract syntax trees are represented using Haskell datatypes and, at compile time, they can be manipulated by Haskell code. This allows you to reify (convert from concrete syntax to an abstract syntax tree) some code, transform it and splice it back in (convert back again), or even to produce completely new code and splice that in, while the compiler is compiling your module.

# Symbol Resolution and its support for Closure

Closures are not a violation because all bindings in Haskell are immutable. It is very common that lambda expressions capture variables from outside the body of the definition. In Haskell, functions are an essential part of the language, largely because Haskell is based on the Lambda Calculus. In the Lambda Calculus, there are functions that have "free variables", meaning that they use variables that were not passed as direct parameters to them. Functions with free variables are what you would call "closures" in this case.  Haskell essentially creates functions with free variables everywhere, and thus, closures are created all the time. 

# Lexical vs Dynamic Scoping

Haskell uses Lexical scoping. A block defines a new scope. Variables can be declared in that scope, and aren't visible from the outside. However, variables outside the scope -- in enclosing scopes -- are visible unless they are overridden (shadowed).

# Functional Programming Constructs

Functional Programming Constructs are added to Haskell for reasons like:
- Pattern Matching: Functional languages typically have extremely compact syntax for dealing with pattern matching. This winds up very useful in things like Data Mining.

- Generic Programming/Metaprogramming: These both improve code adaptability tremendously by allowing a program to either be more flexible or to modify itself as it goes along. This can be hugely important in AI.

- State Control: Functional Programming has no variables whatsoever, it has symbols instead. Every "variable" has a single unchanging value. That means we don't get any kind of ambiguity in terms of what something is. 

# Static vs Dynamic Types

Haskell has a static type system. Type inference is done at compile time. All types are checked at compile time. Haskell implementations may erase types at runtime, as they have a compile-time proof of type safety. Many bugs are found at compile time, rather than run time.

# Strengths and Weaknesses

Strengths

- It produces high performance executables as it uses abstract mathematical concepts like monads, combinators etc

- Supports lazy evaluation

- The interactive environment (hugs/ghci) allow you to prototype ideas quickly

- Very expressive and concise syntax

- Has a great concurrency system, which is ready for high performance applications.

- GHC is actively being developed and improved, including support for code execution on GPU for that extra kick of high-performance computing

- Type system is very flexible and supports type inference. This reduces the possible erros. The type system is checked at compile time and helps with documentation

Weaknesses

- Haskell takes long to master. Things like monads and functors are hard to understand without a mathematical background

- The IDE options are not as good compared to other programming languages

- Haskell cannot be used for iphone or android development

