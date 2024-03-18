-- main :: IO()
-- main = do
--  inputs <- getLine
--  let inputval = read inputs :: Int
--  putStrLn $ "Value which we got as input is " ++ show inputval

-- main :: IO()
-- main = do
--     inputs <- readLn :: IO Int
--     putStrLn $ "Values is " ++ show inputs

-- main :: IO()
-- main = do
--     inputs <- getLine
--     let inputval = read inputs :: Int
--     putStrLn ("Values is " ++ show (inputval)) -- putStrLn "Values is " ++ show (inputval) will lead to error


-- List Input in one line
-- main :: IO ()
-- main = do
--     inputs <- getLine
--     let inputVals = map read (words inputs) :: [Int]
--     print inputVals
