-- To convert days into years, weeks and days

conv :: Int -> (Int,Int,Int)
conv m = (year,week,day)
 where
  year = m `div` 365
  y = m `mod` 365
  week = y `div` 7
  day = y `mod` 7

main :: IO()
main = do
 putStrLn "Enter the number of days: "
 input <- getLine
 let var = read input :: Int -- Getline is a string, so we need to convert it to an integer
 let (year,week,day) = conv var
 putStrLn $ "Year: " ++ show year ++ " Week: " ++ show week ++ " Day: " ++ show day -- $ is used to get value of variables