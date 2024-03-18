-- The expression returned from if else should be ofn the same form then only it will work
-- here although we have let with us then in the last expression of else is putstrln and in case of if also its putStrLn

ageCalculator :: Int -> Int
ageCalculator currentAge =
  if currentAge >= 16
    then 0
    else 16 - currentAge

main :: IO ()
main = do
  putStrLn "Enter your Name"
  name <- getLine
  putStrLn "Enter the Current Age"
  input <- getLine
  let currentAge = read input :: Int
  if currentAge >= 16
    then putStrLn $ "Hello, " ++ name ++ "! You are old enough to drive."
    else do
      let yearsToWait = ageCalculator currentAge
      putStrLn $ "Hello, " ++ name ++ "! You have to wait " ++ show yearsToWait ++ " years before you can drive legally."