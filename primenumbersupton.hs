isPrime :: Int -> Bool
isPrime n = if n <= 1 then False else checkDivisors n (n - 1)

checkDivisors :: Int -> Int -> Bool
checkDivisors _ 1 = True
checkDivisors n divisor = n `mod` divisor /= 0 && checkDivisors n (divisor - 1)

printPrimes :: Int -> String
printPrimes i = init $ printPrime i ""

printPrime :: Int -> String -> String
printPrime 0 val = val
printPrime i val = if isPrime i
                   then printPrime (i - 1) (show i ++ "," ++ val)
                   else printPrime (i - 1) val

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Int
    putStrLn $ "Prime numbers up to " ++ show number ++ ": " ++ printPrimes number
