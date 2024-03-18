-- A Haskell function that reads a list and print the sum of even numbers in the list.

sums :: [Int] -> Int
sums [] = 0
sums (x:xs) = x + sums(xs)

evenls :: [Int] -> Int
evenls [] = 0
evenls xs = sums [x| x <- xs, (x `mod` 2 == 0)]
