maxrec :: (Ord a) => [a] -> a
maxrec [] = error "Empty list"
maxrec [x] = x
maxrec (x:xs) = if x>maxrec(xs) then x else maxrec(xs)

myreplicate :: (Num i,Ord i) => i -> a -> [a]
myreplicate n x = if n<=0 then [] else (x:myreplicate (n-1) x)


-- Returns list of first n elements of original list
mytake :: (Num i,Ord i) => i -> [a] -> [a]
mytake _ [] = []
mytake n (x:xs) = if n>0 then x:mytake (n-1) xs else []

myreverse :: [a] -> [a]
myreverse [] = []
myreverse [x] = [x]
myreverse (x:xs) = myreverse xs ++ [x]

myelem :: (Eq a) => a -> [a] -> Bool
myelem _ [] = False
myelem n (x:xs) = if x==n then True else (myelem n xs)

myquick :: (Ord a) => [a] -> [a]
myquick [] = []
myquick (x:xs) = small ++ [x] ++ big where
    small = myquick (filter (<=x) xs)
    big = myquick (filter (>x) xs)


-- List Composition Examples
myquicksort :: (Ord a) => [a] -> [a]
myquicksort [] = []
myquicksort (x:xs) = small ++ [x] ++ big where
    small = myquicksort [a|a<-xs,a<=x]
    big = myquicksort [a|a<-xs,a>x]