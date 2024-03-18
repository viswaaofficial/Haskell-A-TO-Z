quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = small ++ [x] ++ big
 where
    small = quicksort (filter (<=x) xs)
    big = quicksort (filter (>x) xs)