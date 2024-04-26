-- ghci> fromEnum 'A'
-- 65

-- ghci> toEnum 65 :: Char
-- 'A'

myDistance :: Double -> Double -> Double -> Double -> Double
myDistance a b c d = sqrt (((c-a)^2) + ((d-b)^2))

postagePrice :: Int -> Int
postagePrice x = if (x<=500 && x>0) then 250 else
                 if (x>500 && x<5000) then 300 + (x-500) else
                 if x>=5000 then 6000 else 0


square ::(Num a) => a->a
square x = x^2

map_list ::(Num a,Ord a) => (a->a) -> a -> a -> a -> [a]
map_list f a b n = if a<=b then (f a):(map_list f (a+n) b n) else []

largeTuples :: Int -> [(Int,Int)] -> [(Int,Int)]
largeTuples x [] = []
largeTuples x ((a,b):xs) = if (a+b)>x then (a,b):largeTuples x xs else largeTuples x xs

inputlist :: Int -> IO [Int]
inputlist 0 = return []
inputlist n = do
    num <- readLn :: IO Int
    -- x <- getLine
    -- let num = read x :: Int
    xs <- inputlist (n-1)
    return (num:xs)
inputList :: IO()
inputList = do
    input <- getLine
    let lst = read input :: [Int]
    print(lst)
mycurry :: ((a,b)->c) -> a -> b -> c
mycurry f a b = f (a,b)

myuncurry :: ((a->b->c)) -> (a,b) -> c
myuncurry f (a,b) = f a b

