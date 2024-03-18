vowels :: String -> Int
vowels [] = 0
vowels (x:xs) = if x `elem` ['a','e','i','o','u','A','E','I','O','U'] then 1 + vowels xs else vowels xs

consonants :: String -> Int
consonants [] = 0
consonants (x:xs) = if x `elem` ['a','e','i','o','u','A','E','I','O','U'] then consonants xs else 1+ consonants xs

numbers :: String -> Int
numbers [] = 0
numbers (x:xs) = if x `elem` ['0','1','2','3','4','5','6','7','8','9'] then 1 + numbers xs else numbers xs

allvals :: String -> (Int,Int,Int)
allvals [] = (0,0,0)
allvals xs = (vowels xs,consonants xs,numbers xs)