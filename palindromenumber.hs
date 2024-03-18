-- Check if a Number is Palindrome or not

rever :: Int -> Int
rever n = if n==0 then 0
            else
                rev n 0


rev :: Int -> Int -> Int
rev n rem = if n==0 
    then rem
    else rev (n `div` 10) (rem*10 + n `mod` 10)

palindrome :: Int -> Bool
palindrome n = if (n==rever n) then True else False