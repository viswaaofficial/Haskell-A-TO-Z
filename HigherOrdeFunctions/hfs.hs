zipwithours :: (a->b->c) -> [a] -> [b] -> [c]
zipwithours f [] [] =[]
zipwithours f [] [_] = []
zipwithours f [_] [] = []
zipwithours f (x:xs) (y:ys) = (f x y):(zipwithours f xs ys)

flipss :: (a->b->c) -> (b->a->c)
flipss f = g where
    g x y = f y x

mapsss :: (a->b) -> [a] -> [b]
mapsss f [] = []
mapsss f (x:xs) = (f x):(mapsss f xs)

zipnew :: [a] -> [b] -> [(a,b)]
zipnew [] [] = []
zipnew [] [_] = []
zipnew [_] [] = []
zipnew (x:xs) (y:ys) = (x,y):(zipnew xs ys)

filternew :: (a->Bool) -> [a] -> [a]
filternew f [] = []
filternew f (x:xs) = if (f x) then (x:filternew f xs) else filternew f xs

quicksort :: Ord a => [a] -> [a]
quicksort [] = [] 
quicksort (x:xs) = smallsorted ++ [x] ++ bigsorted where
    smallsorted = quicksort (filter (<= x) xs)
    bigsorted = quicksort (filter (> x) xs)

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..]) where p x = x `mod` 3829 == 0
    
-- sum of all odd squares that are smaller than 10,000
-- sum(filter (odd) (map (^2) [100,99..0]))

collatzz :: Int -> [Int]
collatzz 1 = [1]
collatzz x = if (even x) then (x):(collatzz (x `div` 2)) else (x):(collatzz (x*3+1))

numLongChains :: Int
numLongChains = length (filter isLong (map collatzz [1..100])) where isLong xs = length xs > 15
-- numLongChains = map collatzz [1..100]

