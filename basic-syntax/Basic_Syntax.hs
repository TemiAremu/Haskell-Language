main :: IO()
main = do

--Basic operators in Haskell like addition, subtraction, multiplication etc

--Addition(+) operator is used for the addition function. This shows you how to add two integer numbers
   let var1 = 10
   let var2 = 35
   putStrLn "The addition of the two numbers is:"
   print(var1 + var2)

--Subtraction(-) operator is used for the subtraction function. This shows you how to subtract two integer numbers
   let var1 = 30
   let var2 = 12
   putStrLn "The Subtraction of the two numbers is:"
   print(var1 - var2)

--Multiplication(*) operator is used for multiplication operations. This shows you how to multiply two numbers
   let var1 = 4
   let var2 = 3
   putStrLn "The Multiplication of the two Numbers is:"
   print(var1 * var2)

--Division(/) operator is used to divide two numbers
   let var1 = 21
   let var2 = 3
   putStrLn "The Division of the Two Numbers is:"
   print(var1/var2)

--Sequence/Range operator(..) is used while declaring a list with a sequence of values. This prints all values from 1 to 10
   print [1..10]

--Floor function
   print (floor(5.9))

-- Using recursion (with the "ifthenelse" expression)
factorial n = if n < 2
              then 1
              else n * factorial (n - 1)

-- Using recursion (with pattern matching)
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Using recursion (with guards)
factorial n
   | n < 2     = 1
   | otherwise = n * factorial (n - 1)

--Using the PRELUDE Library

Prelude> :t reverse
reverse :: [a] -> [a]

Prelude> reverse [1..10]
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
Prelude> reverse ['a'..'k']
"kjihgfedcba"

--Extra List Processing

Prelude> :t maximum
maximum :: Ord a => [a] -> a
Prelude> :t minimum
minimum :: Ord a => [a] -> a

Prelude> maximum ['a'..'z']
'z'
Prelude> maximum [True, True, False]
True
Prelude> minimum ["ABCD", "ABCE", "ABC"]
"ABC"


Prelude> :t takeWhile
takeWhile :: (a -> Bool) -> [a] -> [a]
Prelude> :t dropWhile
dropWhile :: (a -> Bool) -> [a] -> [a]

Prelude> takeWhile (<=4) [1..10]
[1, 2, 3, 4]
Prelude> takeWhile (isDigit) "5984357one2three234"
"5984357"
Prelude> dropWhile (isDigit)  "5984357one2three234"
"one2three234"


--Arithmetic
Prelude> :t div
div :: Integral a => a -> a -> a
Prelude> :t mod
mod :: Integral a => a -> a -> a

Prelude> 17 `mod` 6
5
Prelude> 17 `div` 6
2

Prelude> :t even
even :: Integral a => a -> Bool
Prelude> :t odd
odd :: Integral a => a -> Bool

Prelude> even 5
False
Prelude> odd 5
True


Prelude> :t sum
sum :: Num a => [a] -> a
Prelude> :t product
product :: Num a => [a] -> a

Prelude> sum [1..10]
55
Prelude> product [1..4]
24

--Higher Order Functions
Main> map (+1) [1..5]
[2, 3, 4, 5, 6]
Main> map (toLower) "abcDEFG12!@#"
"abcdefg12!@#"
Main> map (`mod` 3) [1..10]
[1, 2, 0, 1, 2, 0, 1, 2, 0, 1]


Main> filter (isAlpha) "$#!+abcDEF657"
"abcDEF"
Main> filter (even) [1..10]
[2, 4, 6, 8, 10]
Main> filter (>5) [1..10]
[6, 7, 8, 9, 10]
