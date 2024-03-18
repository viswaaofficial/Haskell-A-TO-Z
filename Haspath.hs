-- Using Let - In

-- hasPath :: [(Int,Int)] -> Int -> Int -> Bool
-- hasPath [] x y = x==y -- This is the one which returns False if there is no path and Empty list occurs in that case so it checks if m==y definitely it is False
-- hasPath xs x y
--  | x==y = True -- This is the one which returns True if path exists | Also for direct path condition at end m=y so here it comes like m==y which is true and returns True
--  | otherwise = 
--     let xs' = [(n,m) | (n,m) <- xs, n/=x] in or [hasPath xs' m y | (n,m) <- xs, n==x]

-- Using Where

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
 | x == y = True
 | otherwise = or [hasPath xs' m y | (n, m) <- xs, n == x]
   where xs' = [(n, m) | (n, m) <- xs, n /= x]
    