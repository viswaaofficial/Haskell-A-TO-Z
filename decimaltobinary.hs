-- Convert decimal to binary
decToBinary :: Int -> String
decToBinary n = if n == 0
    then "0"
    else calculateBinary n ""

calculateBinary :: Int -> String -> String
calculateBinary n val = if n == 0
    then val
    else calculateBinary (n `div` 2) (show (n `mod` 2) ++ val)

main :: IO ()
main = do
    putStrLn "Enter the decimal number:"
    input <- getLine
    let number = read input :: Int
    putStrLn $ "Binary representation: " ++ decToBinary number


-- Using List
-- decimalToBinary :: Int -> [Int]
-- decimalToBinary 0 = [0]
-- decimalToBinary n = reverse (helper n)
--   where
--     helper 0 = []
--     helper n = let (q, r) = n `divMod` 2 in r : helper q
