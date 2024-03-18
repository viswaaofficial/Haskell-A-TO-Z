-- 3.	Write function percentWeight that takes a list of weights and returns a list of percentages of the total weight of all items as strings. For example percentWeight [12, 24, 36, 48] yields ["10.0%","20.0%","30.0%","40.0%"].
sumlist :: [Int] -> Int
sumlist [] = 0 
sumlist [x]  = x
sumlist (x:xs) = x+sumlist(xs)

percentWeight :: [Int] -> [String]
percentWeight [] = []
percentWeight [x] = ["100"]
percentWeight (x:xs) = do
    let total = sumlist (x:xs)
    ((show ((x*100) `div` total)):(percentweightrest xs total)) 

percentweightrest :: [Int] -> Int -> [String]
percentweightrest (x:xs) val = ((show ((x*100) `div` val)):(percentweightrest xs val))
percentweightrest [] _ = []