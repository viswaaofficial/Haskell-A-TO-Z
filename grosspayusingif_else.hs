main :: IO ()
main = do
  putStrLn "Enter the Hourly pay rate"
  input1 <- getLine
  let payRate = read input1 :: Int
  putStrLn "Enter the Number of Hours you worked for the week"
  input2 <- getLine
  let workHours = read input2 :: Int
  let forExtraHour = workHours - 40

  let result = if workHours <= 40
                 then workHours * payRate
                 else (40 * payRate) + (forExtraHour * (15 * payRate `div` 10))

  putStrLn $ "Your weekly earnings are: " ++ show result
