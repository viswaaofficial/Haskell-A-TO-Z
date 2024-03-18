-- Check if a Number is Armstrong or Not

sumehh :: Int -> Int
sumehh n = if n==0 then 0
        else
            arms n 0

arms :: Int -> Int -> Int
arms n val = if n==0 then val
            else arms (n `div` 10) (val + (n `mod` 10)^3)

checkarms :: Int->Bool
checkarms n = if (n==sumehh n) then True else False

