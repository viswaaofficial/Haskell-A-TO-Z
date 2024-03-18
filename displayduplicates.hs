-- A Haskell function to display all the duplicates elements in the list.

-- Check if an element is present in the list
isElement :: Int -> [Int] -> Bool
isElement _ [] = False
isElement n (x:xs) =
    if n == x
    then True
    else isElement n xs

-- Check for duplicates in a list
hasDuplicates :: [Int] -> Bool
hasDuplicates [] = False
hasDuplicates (x:xs) =
    if isElement x xs
    then True
    else hasDuplicates xs

-- Find duplicate elements in a list
duplicates :: [Int] -> [Int]
duplicates [] = []
duplicates (x:xs) =
    if isElement x xs && not (isElement x (duplicates xs))
    then x : duplicates xs
    else duplicates xs


main :: IO ()
main = do
    let arr = [1, 2, 3, 2, 3, 1, 3]
    putStrLn "Duplicate elements in the list:"
    mapM_ print (duplicates arr)