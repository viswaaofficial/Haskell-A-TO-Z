-- Using guards
temp :: Int -> String
temp x
 | (x>=80) = "Go play golf"
 | (x>=70 && x<=79) = "put on jacket"
 | otherwise = "It is way too cold"
