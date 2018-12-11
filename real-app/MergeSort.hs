-- Example of a real application: Merge sort

main :: IO ()    -- This says that main is an IO action.
main = return ()   -- This tells main to do nothing.


--This splits the list into 2 parts
mergesort'splitinhalf :: [a] -> ([a], [a])
--The two parts are sorted by the algorithm
mergesort'splitinhalf xs = (take n xs, drop n xs)
--The sorted parts are merged by a special merging procedure for sorted list
    where n = (length xs) `div` 2

--Merging two sorted arrays
--If the first list is empty [] then the result of the merge is the second list xs
mergesort'merge :: (Ord a) => [a] -> [a] -> [a]
--If the second list is empty [] then the result of the merge is the first list xs
mergesort'merge [] xs = xs
--Otherwise we compare the first elements of the lists and append with the colon
-- :function the least of them to the new list which is the result of merging the remaining two lists
mergesort'merge xs [] = xs
mergesort'merge (x:xs) (y:ys)
    | (x < y) = x:mergesort'merge xs (y:ys)
    | otherwise = y:mergesort'merge (x:xs) ys


mergesort :: (Ord a) => [a] -> [a]
mergesort xs
    | (length xs) > 1 = mergesort'merge (mergesort ls) (mergesort rs)
    | otherwise = xs
    where (ls, rs) = mergesort'splitinhalf xs
