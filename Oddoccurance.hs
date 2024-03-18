-- A haskell function to find the Number Occurring Odd Number of Times in an list.
-- Input :arr = {1, 2, 3, 2, 3, 1, 3}
-- Output : 3
-- Input :arr = {5, 7, 2, 7, 5, 2, 5}
-- Output : 5

countnum :: [Int] -> Int -> Int
countnum [] num = 0
countnum (x:xs) num = if num==x then (1+(countnum (xs) num)) else (countnum (xs) num)

input :: Int -> IO [Int]
input 0 = return []
input n = do
  x <- getLine
  let num = read x :: Int
  xs <- input (n - 1)
  return (num : xs)

main :: IO ()
main = do
 putStrLn "Enter the number of elements in the list:"
 inputStr <- getLine
 let maybeN = read inputStr :: Int
 result <- input maybeN
 let oddCountNums = [x | x <- result, odd (countnum result x)]
 putStrLn "Numbers occurring an odd number of times:"
 print(oddCountNums)