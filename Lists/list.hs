boomBangs :: Integral a => [a] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

mymap :: (a->b) -> [a] -> [b]
mymap f xs = [f x|x<-xs]

myfilter :: (a->Bool) -> [a] -> [a]
myfilter f xs = [x|x<-xs, f x]

myconcat :: [[a]] ->[a]
myconcat xss = [x| xs<-xss, x<- xs]

triads :: Int -> [(Int,Int,Int)]
triads n = [(x,y,z) | x <- [1..n], y <- [1..n],z <- [1..n], x*x+y*y==z*z]

listtotuple :: [[a]] -> [(a,a)]
listtotuple xxs = [(x,y)|x<-(head xxs),y<-(last xxs)]

-- Concatenation using different methods

concatss :: [[a]] -> [a]
concatss [] = []
concatss (xs:xxs) = xs ++ concatss xxs

concatusingcomp :: [[a]] -> [a]
concatusingcomp xxs = [x|xs<-xxs,x<-xs]

mymapss :: (a->b) -> [a] -> [b]
mymapss f [] = []
mymapss f (x:xs) = f x:(mymapss f xs)

myfilterpm :: (a->Bool) -> [a] -> [a]
myfilterpm f [] = []
myfilterpm f (x:xs) = if (f x) then x:(myfilterpm f xs) else (myfilterpm f xs)

myzip :: [a] -> [b] -> [(a,b)]
myzip [] [] = []
myzip [_] [] = []
myzip [] [_] = []
myzip (x:xs) (y:ys) = (x,y):(myzip xs ys)

myzipwith :: (a->b->c) -> [a] -> [b] -> [c]
myzipwith f [] [] = []
myzipwith f [_] [] = []
myzipwith f [] [_] = []
myzipwith f (x:xs) (y:ys) = (f x y):myzipwith f xs ys

-- "Steve Buscemi" !! 6

myindex :: [a] -> Int -> a
myindex [] n = error "Empty List"
myindex [x] 0 = x
myindex (x:xs) n = if n==0 then x else myindex xs (n-1)

myinit :: [a] -> [a]
myinit [] = []
myinit [x] = []
myinit (x:xs) = x:myinit xs

myreverse :: [a] -> [a]
myreverse [] = []
myreverse [x] = [x]
myreverse (x:xs) = myreverse xs ++ [x]

mymaximum ::(Ord a) => [a] -> a
mymaximum [] = error "Empty List"
mymaximum [x] = x
mymaximum (x:xs) = if x>mymaximum xs then x else mymaximum xs

mysum :: [Int] -> Int
mysum [] = 0
mysum [x] = x
mysum (x:xs) = x+mysum xs

mycycle :: [a] -> [a]
mycycle []= []
mycycle (xs) = xs++mycycle(xs) 

myrepeat :: x -> [x]
myrepeat x = [x] ++ (myrepeat x)

myreplicate :: Int -> Int -> [Int]
myreplicate 0 _ = []
myreplicate n x = if n>0 then x:(myreplicate (n-1) x) else []

mynull :: [a] -> Bool
mynull [] = True
mynull [_] = False