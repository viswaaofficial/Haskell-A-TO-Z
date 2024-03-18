-- A Haskell function that reads a list and displays the element that comes in the list after
-- a number entered by the user.

-- Similar to Q9 just one change here instead of giving some rendom message as string we are returning the next element
searchs :: [Int] -> Int -> Int
searchs [] _ = -1
searchs [z] _ = -1
searchs (x:y:xs) value = if x == value
                        then y
                        else searchs (y:xs) value

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

    putStrLn $ show (searchs numbers value)
