-- A Haskell function that reads marks of ‘n’ students of a class and displays the class
-- average. Also if more than 2 students have marks less than class average, display a
-- suitable message


sums :: [Int] -> Int
sums [] = 0
sums (x:xs) = x + sums(xs)

lengthlst :: [Int] -> Int
lengthlst [] = 0
lengthlst (x:xs) = 1+ lengthlst(xs)

avgs :: [Int] -> Int
avgs [] = 0
avgs xs = sums (xs) `div` lengthlst (xs)

input :: Int -> IO [Int]
input 0 = return []
input n = do
  x <- getLine
  let num = read x :: Int
  xs <- input (n - 1)
  return (num : xs)

main :: IO String
main = do
  putStrLn "Enter the number of students:"
  inputStr <- getLine
  let maybeN = read inputStr :: Int
  result <- input maybeN
  let avg = avgs result
      belowAvgCount = lengthlst [x | x <- result, x < avg]
  putStrLn $ "Class average: " ++ show avg
  if belowAvgCount >= 2 
    then return "More than 2 students are below average"
    else return "It's good performance by the class"