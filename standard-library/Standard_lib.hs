-- Using the PRELUDE Standard Library

--These return the largest and smallest elements of a list repectively.
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

--reverse takes a list and reverses it
Prelude> :t reverse
reverse :: [a] -> [a]

Prelude> reverse [1..10]
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
Prelude> reverse ['a'..'k']
"kjihgfedcba"

--elem tells you if a specified element is in a list, and notElem is simply the opposite of that.

Prelude> :t elem
elem :: Eq a => a -> [a] -> Bool
Prelude> :t notElem
notElem :: Eq a => a -> [a] -> Bool

Prelude> elem 'a' "milkshake"
True
Prelude> notElem 'a' "milkshake"
False
Prelude> elem "ABC" ["ABCD", "AB", "CBA"]
False

--concat takes in a list of lists and combines them all into one list.
Prelude> :t concat
concat :: MonadPlus a => [a b] -> a b
(Think of this as [[a]] -> [a]
Prelude> concat ["ABCD", "AB", "CBA"]
"ABCDABCBA"

--take n [a] gives you the first n elements of the list. Likewise, drop n [a] gives you everything back except the first n elements of a list.
Prelude> :t take
take :: Int -> [a] -> [a]
Prelude> :t drop
drop :: Int -> [a] -> [a]

Prelude> take 4 "milk - legendary stuff"
"milk"
Prelude> drop 6 "milk - legendary stuff"
" legendary stuff"
Prelude> (take 4 string) ++ " is" ++ (drop 6 string) where string = "milk - legendary stuff"
"milk is legendary stuff"

--dropWhile and takeWhile take in a function (only certain types though) and uses it to 'test' elements of the list starting from the beginning. It will continue to take or drop elements from the list until an element fails the test.
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

--words takes in a single String and breaks it up wherever there are spaces, into a list of Strings. And unwords does the opposite.
Prelude> :t words
words :: String -> [String]
Prelude> :t unwords
unwords :: [String] -> String

Prelude> words "this is a cgi string after you decode it"
["this", "is", "a", "cgi", "string", "after", "you", "decode", "it"]
Prelude> unwords ["this", "is", "a", "cgi", "string", "after", "you", "decode", "it"]
"this is a cgi string after you decode it"

--Arithmetic
--div` is how many whole times the first number can be divided by the second number. `mod` is the remainder after the first number is divided by the second number.
Prelude> :t div
div :: Integral a => a -> a -> a
Prelude> :t mod
mod :: Integral a => a -> a -> a

Prelude> 17 `mod` 6
5
Prelude> 17 `div` 6
2

--gcd stands for Greatest Common Divisor of two numbers. lcm is the Lowest Common Multiple of two numbers.
Prelude> :t gcd
gcd :: Integral a => a -> a -> a
Prelude> :t lcm
lcm :: Integral a => a -> a -> a

Prelude> gcd 21 5
1
Prelude> gcd 21 14
7
Prelude> lcm 4 8
8
Prelude> lcm 12 8
24

--Even and odd

Prelude> :t even
even :: Integral a => a -> Bool
Prelude> :t odd
odd :: Integral a => a -> Bool

Prelude> even 5
False
Prelude> odd 5
True

--sum & product

Prelude> :t sum
sum :: Num a => [a] -> a
Prelude> :t product
product :: Num a => [a] -> a

Prelude> sum [1..10]
55
Prelude> product [1..4]
24

--Tuples
--fst and snd take in a two-element tuple and return the first and second element of that tuple respectively.

Prelude> :t fst
fst :: (a,b) -> a
Prelude> :t snd
snd :: (a,b) -> b

Prelude> fst ("Star", "Craft")
"Star"
Prelude> snd ("Star", "Craft")
"Craft"

--zip takes in two lists of (possibly different) things and turns them into a list of 2-element tuples.
Prelude> :t zip
zip :: [a] -> [b] -> [(a,b)]
Prelude> :t unzip
unzip :: [(a,b)] -> ([a],[b])

Prelude> zip "ABCD" [1,6,3,23,12]
[('A', 1), ('B', 6), ('C', 3), ('D', 23)]
Prelude> zip "ABCD" [1,6,3,23]
[('A', 1), ('B', 6), ('C', 3), ('D', 23)]

--Higher Order Functions
