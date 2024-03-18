isempty :: [a] -> Bool
isempty [] = True
isempty (x:xs) = False

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = small ++ [x] ++ big
 where
    small = quicksort (filter (<=x) xs)
    big = quicksort (filter (>x) xs)

input :: Int -> IO [Int]
input 0 = return []
input n = do
    val <- readLn :: IO Int
    xs <- input(n-1)
    return (val:xs)


inputln :: IO()
inputln = do
    val <- getLine
    let list = map read (words val) :: [Int]
    print(list)

genlist :: Int -> Int -> [Int]
genlist x y = [x,x+1..y]

myzipwith :: (a->b->c) -> [a] -> [b] -> [c]
myzipwith f _ [] = []
myzipwith f [] _ = []
myzipwith f (x:xs) (y:ys) = f x y:(myzipwith f xs ys)

mymap :: (a->b) -> [a] -> [b]
mymap f [] = []
mymap f (x:xs) = f x:(mymap f xs)

findele :: (Num a, Eq a) => [a] -> a -> a
findele [] _ = error "Index out of bound"
findele (x:xs) n
 | n == 0 = x
 | otherwise = findele xs (n-1)

myflip :: (a->b->c) -> (b->a->c)
myflip f = g
 where g y x = f x y

myfilter :: (a->Bool) -> [a] -> [a]
myfilter f [] = []
myfilter f (x:xs) = if f x then x:(myfilter f xs) else (myfilter f xs)

quicks ::(Ord a) => [a] -> [a]
quicks [] = []
quicks (x:xs) = small ++ [x] ++ big
 where
    small = quicks (filter (<=x) xs)
    big = quicks (filter (>x) xs)

inplist :: Int -> IO [Int]
inplist 0 = return []
inplist n = do
    val <- readLn :: IO Int
    xs <- inplist(n-1)
    return (val:xs)