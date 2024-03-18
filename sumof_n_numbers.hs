-- Sum of n even numbers

sumeven :: Int -> Int
sumeven n = if n==0 then 0 else calc n 0 1

calc :: Int -> Int -> Int-> Int
calc n val i = if n==0 then val else calc (n-1) (val+(i*2)) (i+1)
