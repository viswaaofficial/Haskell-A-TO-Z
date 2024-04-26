lengthss :: [a] -> Int
lengthss = foldr (\x -> (+) 1) 0

lengthacc :: [a] -> Int
lengthacc = foldr (\_ acc -> acc + 1) 0

mapfg :: (a->b) -> [a] -> [b]
mapfg f = foldr ((:) . f) []

mapfgs :: (a->b) -> [a] -> [b]
mapfgs f = foldr (\x acc -> ((f x) : acc)) []

sumarr :: [Int] -> Int
sumarr = foldr (\x -> (+) x) 0

filterarr :: (a->Bool) -> [a] -> [a]
filterarr f = foldr (\x acc -> if (f x) then x:acc else acc) []

reversearr :: [a] -> [a]
reversearr = foldl (\acc x -> x : acc) []

reversearrfoldr :: [a] -> [a]
reversearrfoldr = foldr (\x acc -> acc ++ [x]) []

sumofsquares :: [Int] -> Int
sumofsquares = foldr (\x acc -> (acc+x^2)) 0

-- Best method till now
palindrome :: [Int] -> Bool
palindrome xs = foldr (&&) True $ zipWith (==) xs (reverse xs)

maxele :: [Int] -> Int
maxele = foldr(\x acc -> if x>acc then x else acc) 0

headele :: [Int] -> Int
headele = foldr(\x acc -> x) 0

tailele :: [Int] -> Int
tailele = foldl(\acc x -> x) 0

-- Important here we can see why we are using xs along with it 
mapwithind :: [Int] -> [(Int, Int)]
mapwithind xs = foldr (\x acc -> (x, length xs - length acc - 1) : acc) [] xs

-- Till now we have seen three ways of solving a question using fold
-- one is just using \x
-- other one is using \x and acc
-- last on is using \x acc and xs as a parameter as well

factorial :: Int -> Int
factorial n = foldl (\acc x -> acc * x) 1 [1..n]

anyTrue :: [Bool] -> Bool
anyTrue = foldr (\x acc -> x||acc) False

-- Remove duplicates using foldr and foldl
remove :: [Int] -> [Int]
remove = foldr (\x acc -> if (elem x acc) then acc else x:acc) []

removefoldl :: [Int] -> [Int]
removefoldl = foldl (\acc x -> if (elem x acc) then acc else acc++[x]) []

listIntersection :: Eq a => [a] -> [a] -> [a]
listIntersection xs ys = foldr (\x acc -> if x `elem` ys then x : acc else acc) [] xs


-- Function Composition

-- (.) :: (b->c) -> (a->b) -> a -> c
-- f.g = \x -> f (g x)

-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (f . g) x = f (g x)

-- (negate . subtract 5)  4
-- map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
