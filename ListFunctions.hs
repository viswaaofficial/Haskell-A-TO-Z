-- Length of a list

lengthlist :: [a] -> Int   -- a is generic type it can be of any data type
lengthlist [] = 0
lengthlist xs = 1 + lengthlist (tail xs)

-- Other method
--lengthlist (x:xs) = 1 + lengthlist xs

-- sum of a list
sumlist :: [Int] -> Int
sumlist [] = 0
sumlist (x:xs) = x + sumlist xs

-- average of a list
avglist :: [Int] -> Int
avglist [] = 0
avglist xs = (sumlist xs) `div` (lengthlist xs)


input :: Int -> IO [Int]
input 0 = return []
input n = do
  x <- getLine
  let num = read x :: Int
  xs <- input (n - 1)
  return (num : xs)


