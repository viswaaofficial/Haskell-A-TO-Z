lengthstr :: String -> Int
lengthstr [] = 0
lengthstr (x:xs) = 1+lengthstr xs

joinstr :: String -> String -> String
joinstr xs ys = xs ++ ys

lastele :: String -> String
lastele [] = []
lastele [x] = [x]
lastele (x:xs) = lastele xs

reversestr :: String -> String
reversestr [] = []
reversestr [x] = [x]
reversestr xs = (lastele xs)++reversestr (init xs)

copystr :: String -> String -> String
copystr [] _ = []
copystr [x] _ = [x]
copystr xs _ = xs

appendstr :: String -> String -> String
appendstr xs ys = ys ++ xs


findstr :: String -> String -> Bool
findstr _ [] = False  -- Base case: if the second string is empty, the first string is not found
findstr [] _ = True   -- Base case: if the first string is empty, it's found (since it matches an empty string)
findstr (x:xs) (y:ys)
    | x == y = findstr xs ys  -- If the characters match, continue checking the rest of the strings
    | otherwise = findstr (x:xs) ys  -- If the characters don't match, check the next character in the second string

