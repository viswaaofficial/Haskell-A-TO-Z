-- A Haskell function that searches for a number (value) in a list and displays an
-- appropriate message. The list of numbers and the value to be searched should be read
-- from the user.

searchs :: [Int] -> Int -> String
searchs [] _ = "Value not found in the list"
searchs (x:xs) value = if x == value
                        then "Value found in the list"
                        else searchs xs value

-- Function to take input from the user and store values in a list
input :: Int -> IO [Int]
input 0 = return []
input n = do
    putStrLn "Enter a number:"
    x <- readLn
    xs <- input (n - 1)
    return (x : xs)

main :: IO ()
main = do
    putStrLn "Enter the number of elements in the list:"
    n <- readLn
    numbers <- input n

    putStrLn "Enter the value to search for:"
    value <- readLn

    putStrLn $ searchs numbers value
