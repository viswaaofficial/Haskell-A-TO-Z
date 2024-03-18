lengthlist :: [Int] -> Int
lengthlist [] = 0
lengthlist [_] = 1
lengthlist (_:xs) = 1 + lengthlist xs

middle :: [Int] -> [Int]
middle [] = error "No element"
middle [_] = error "single element"
middle [_,_] = error "double element"
middle xs = [xs !! i | i <- [start .. end-1]]
  where
    lengthval = lengthlist xs
    start = lengthval `div` 3
    end = start + 3
