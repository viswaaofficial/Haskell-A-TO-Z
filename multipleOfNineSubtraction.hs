-- To ensure that the subtraction of any two-digit number and its reverse is always 
-- the multiple of nine. For example, entered number is 54 and its reverse is 45. The 
-- difference between them is 9.  

check :: Int -> Bool
check x
  | x < 10 || x > 99 = False  -- You might want to handle this differently
  | otherwise = difference `mod` 9 == 0
  where
    reversed = reverseNumber x
    difference = abs (x - reversed)

reverseNumber :: Int -> Int
reverseNumber x = (x `mod` 10) * 10 + (x `div` 10)

main :: IO()
main = do
  putStrLn "Enter a two digit number"
  input <- getLine
  let var = read input :: Int
  let x = check var
  putStrLn $ "The given digit satisfies statement is " ++ show x
