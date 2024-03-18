-- Remove all duplicates and return the original list

isele :: (Eq a) => [a] -> a -> Bool
isele [] _ = False
isele [y] x = x == y
isele (x:xs) y = x == y || isele xs y

recc :: (Eq a) => [a] -> [a] -> [a]
recc [] check = check
recc (x:xs) check = if isele check x then recc xs check else recc xs (x:check)

remdel :: (Eq a) => [a] -> [a]
remdel list = reverse (recc list [])
