-- Sum of n odd numbers

sumodd :: Int -> Int
sumodd n = if n==0 then 0 else calc n 0 0

calc :: Int -> Int -> Int-> Int
calc n val i = if n==0 then val else calc (n-1) (val+(i*2)+1) (i+1)
