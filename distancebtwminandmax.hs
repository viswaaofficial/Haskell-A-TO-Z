mymin :: [Int] -> Int
mymin [] = error "Empty list"
mymin [x] = x
mymin (x:xs) = if x<mymin(xs) then x else mymin(xs)

mymax :: [Int] -> Int
mymax [] = error "Empty list"
mymax [x] = x
mymax (x:xs) = if x>mymax(xs) then x else mymax(xs)

reach :: [Int] -> Int
reach [] = error "Empty List"
reach (xs)
 | (mymin(xs) > mymax(xs)) = mymin(xs)-mymax(xs)
 | otherwise = mymax(xs) - mymin(xs)