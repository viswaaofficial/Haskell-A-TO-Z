-- A Haskell function that searches for a number (value) in a list and displays an
-- appropriate message. The list of numbers and the value to be searched should be read
-- from the user ****  USING MAP FUNCTION ****

searchs :: [Int] -> Int -> String
searchs [] _ = "Value not found in the list"
searchs (x:xs) value
    | x == value = "Value found in the list"
    | otherwise = searchs xs value

-- Single line insertion of list using maps
main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    putStrLn "Enter the value to search for:"
    value <- readLn
    let numbers = map read $ words input :: [Int]  
    putStrLn $ searchs numbers value

