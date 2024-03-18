-- Important Note
-- Function Signature for no input and only return value
-- functionName :: ReturnType
-- Function Signature for input and on return value
-- functionName :: InputType -> ()

printmes :: (Int,Int)
printmes = printvar 108 0 0

printvar :: Int -> Int -> Int-> (Int,Int)
printvar n sumu inc = if n<200 then printvar (n+9) (sumu+n) (inc+1) else (sumu,inc)

-- GPT 4 Code
-- main :: IO ()
-- main = do
--     let (count, total) = countAndSumDivisibleBy9 100 200 0 0
--     putStrLn $ "Number of integers divisible by 9: " ++ show count
--     putStrLn $ "Sum of integers divisible by 9: " ++ show total

-- countAndSumDivisibleBy9 :: Int -> Int -> Int -> Int -> (Int, Int)
-- countAndSumDivisibleBy9 current end count total = 
--     if current > end 
--         then (count, total)
--         else if current `mod` 9 == 0 
--             then countAndSumDivisibleBy9 (current + 1) end (count + 1) (total + current)
--             else countAndSumDivisibleBy9 (current + 1) end count total