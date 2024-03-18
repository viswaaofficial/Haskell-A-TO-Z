lastele :: [a] -> a
lastele [x] = x
lastele (x:xs) = lastele xs

startEnd :: [a] -> (a,a)
startEnd [] = error "Empty List"
startEnd [x] = (x,x)
startEnd (x:xs) = (x,(lastele xs))
