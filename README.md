Haskell Language

- Temiloluwa Aremu
- temiloluwa.aremu@uoit.net

## About the language

> _Language Description_
>
> - Haskell is a general-purpose functional programming language with non-strict semantics and strong static typing. It is named after Haskell Brooks Curry. He was an American Mathematician and logician. Haskell's main work was in combinatory logic, a notation designed to eliminate the need for variables in mathematical logic. Combinatory logic captures many key features of computation, and as a result, is useful in computer science. Haskell has three programming languages named after him: Haskell, Brooks, and Curry.

> - Some interesting features

Haskell the programming language is built around functions, useful blocks of code that do specific tasks. They are called and used only when needed. 

Haskell has functions are treated as values like integers (numbers) and strings. You can add a function to another similarly to how you would add an integer to another integer e.g 1 + 1.

Haskell uses non-strict semantics  meaning that the input argurments are not evaluated unless the argurents passed into the function are used to evalute what is in the body of the function.

Haskell has string static typing which means that it evalutes the code before runtime, when the code is staic and possibly as the code is written.

Haskell uses strong data typing which is evaluting properties of all inputs into a function and uses the function to sort numbers and strings of text.

Haskell uses lazy evalution which allows the result of a function to be handed to another function on the same line of code.It doesn't perform a computation unless it needs to.

Haskell has no loops because it doesn't need them. 

## About the syntax

> _give some code snippet of the language_

*Sequence/Range Operator*

```haskell
main :: IO()
main = do
   print [1..10]
```
This would generate the following output ->
[1,2,3,4,5,6,7,8,9,10]

## About the tools

> _Describe the compiler or interpreter needed_.

## About the standard library

> _Give some examples of the functions and data structures
> offered by the standard library_.

## About open source library

> _Describe at least one contribution by the open source
community written in the language._

# Analysis of the language

> _Organize your report according to the project description
document_.


