-- A Haskell function that reads a list and find the smallest element in the list

smallls :: [Int] -> Int
smallls [] = 0
smallls (x:xs) = findSmallest x xs  -- Start the recursion with the first element as the smallest

findSmallest :: Int -> [Int] -> Int
findSmallest smallest [] = smallest  -- Base case: return the smallest found so far
findSmallest smallest (x:xs) =
  if x < smallest
    then findSmallest x xs  -- If the current element is smaller, update smallest and continue recursion
    else findSmallest smallest xs  -- Otherwise, continue recursion with the current smallest
