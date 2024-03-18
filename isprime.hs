-- basic method

-- isPrime :: Int -> Bool
-- isPrime n =
--     if n <= 1
--         then False
--     else
--         let helper k =
--                 if k * k > n
--                     then True
--                 else if n `mod` k == 0
--                     then False
--                 else helper (k + 1)
--         in helper 2

-- main :: IO ()
-- main = do
--     putStrLn "Enter the number"
--     input <- getLine
--     let number = read input :: Int
--     let prime = isPrime number
--     if prime
--         then putStrLn "Prime"
--         else putStrLn "Not Prime"

-- Using Guards

-- isPrime :: Int -> Bool
-- isPrime n
--     | n <= 1 = False  -- Numbers less than or equal to 1 are not prime
--     | otherwise = checkDivisors n (n - 1)

-- checkDivisors :: Int -> Int -> Bool
-- checkDivisors _ 1 = True  -- Base case: If we reach 1, then the number is prime
-- checkDivisors n divisor
--     | n `mod` divisor == 0 = False  -- If n is divisible by divisor, it's not prime
--     | otherwise = checkDivisors n (divisor - 1)  -- Check the next divisor

-- Using If Else

isPrime :: Int -> Bool
isPrime n = if n <= 1
                then False  -- Numbers less than or equal to 1 are not prime
                else checkDivisors n (n - 1)

checkDivisors :: Int -> Int -> Bool
checkDivisors _ 1 = True  -- Base case: If we reach 1, then the number is prime
checkDivisors n divisor = if n `mod` divisor == 0
                             then False  -- If n is divisible by divisor, it's not prime
                             else checkDivisors n (divisor - 1)  -- Check the next divisor

