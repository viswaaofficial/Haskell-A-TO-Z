-- Question 1

luhnDouble :: Int -> Int
luhnDouble x = if (2*x > 9) then (2*x - 9) else 2*x

luhn :: Int->Int->Int->Int->Bool
luhn a b c d = if ((luhnDouble a + b + luhnDouble c + d) `mod` 10) == 0 then True else False

-- Question 2

altMap :: (a->b) -> (a->b) -> [a] -> [b]
altMap f g [] = []
altMap f g [x] = [f x]
altMap f g (x:y:ys) = f x:g y:altMap f g ys

-- Question 3

luhnbank :: [Int] -> Bool
luhnbank xs = if (sum (altMap (\x -> if 2*x>9 then 2*x -9 else 2*x) (\x -> x) xs)) `mod` 10 == 0 then True else False

-- Question 4

stringsort :: [(String,String)] -> [(String,String)]
stringsort [] =[]
stringsort ((x,y):xs) = stringsort small ++ [(x,y)] ++ stringsort big where
    small = filter (\z -> fst(z) <= fst (x,y)) xs
    big = filter (\z -> fst(z) > fst (x,y)) xs

stringsortls :: [(String,String)] -> [(String,String)]
stringsortls [] =[]
stringsortls ((x,y):xs) = stringsortls small ++ [(x,y)] ++ stringsortls big where
    small = filter (\z -> snd(z) <= snd (x,y)) xs
    big = filter (\z -> snd(z) > snd (x,y)) xs

-- Question 5

newton :: (Fractional a) => a -> a -> [a]
newton x y = ((y+x/y)/2):(newton x ((y+x/y)/2))

-- Question 6

mylist :: [Int] -> [[Int]]
mylist [] = []
mylist (x:xs) = (x:xs):(mylist (filter (\y -> (y `mod` x /= 0)) (x:xs)))

-- Question 7

myconcat :: [[Int]] -> [Int]
myconcat = foldr (\x acc -> x ++ acc) []

-- Question 8

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter p = concat . map box
  where box x = if p x then [x] else []

-- Question 9
-- map p (filter q [List])

-- Question 10

myall :: (a->Bool) -> [a] -> Bool
myall f xs = foldr (&&) True (map (\x -> if f x then True else False) xs)

myor :: (a->Bool) -> [a] -> Bool
myor f xs = foldr (||) False (map (\x -> if f x then True else False) xs)

mytakewhile :: (a->Bool) -> [a] -> [a]
mytakewhile f (x:xs) = if f x then x:(mytakewhile f xs) else []

-- Question 11

mymap :: (a->a) -> [a] -> [a]
mymap f = foldr (\x acc -> (f x):acc) []

fldfilter :: (a->Bool) -> [a] -> [a]
fldfilter p = foldr (\x acc -> if (p x) then x:acc else acc) []

-- Question 12

dec2int :: [Int] -> Int
dec2int  = foldl (\acc x -> acc * 10 + x) 0

-- Question 13

mycurry :: ((a,b) -> c) -> a -> b -> c
mycurry f a b = f (a,b)

myuncurry :: (a->b->c) -> (a,b) -> c
myuncurry f (a,b) = f a b