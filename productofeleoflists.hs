-- A Haskell function finds the product of elements of a list.

products :: [Int] -> Int
products [] = 0
products (x:xs) = if not (null xs) then x*products(xs) else x
