-- A Haskell function that reads a list and print the sum of elements at odd list indices.

sumodd :: [Int] -> [Int]
sumodd []         = []   -- Base case: empty list returns empty list
sumodd [x]        = [x]  -- Base case: list with one element returns that element
sumodd (x:_:rest) = x : sumodd rest  -- Select element at odd index and recurse on remaining list
