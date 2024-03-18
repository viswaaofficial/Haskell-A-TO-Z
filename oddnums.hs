-- A Haskell function that reads a list and print the odd numbers in the list.

oddls :: [Int] -> [Int]
oddls [] = []
oddls xs = [x| x <- xs, not(x `mod` 2 == 0)]