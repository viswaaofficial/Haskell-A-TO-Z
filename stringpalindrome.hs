--  Check if a given string is a palindrome or not. 

isPalindrome :: String -> Bool
isPalindrome str = checkPalindrome str
    where
        checkPalindrome :: String -> Bool
        checkPalindrome [] = True
        checkPalindrome [_] = True
        checkPalindrome (x:xs) = 
            if x == last xs
                then checkPalindrome (init xs)
                else False

main :: IO ()
main = do
    putStrLn "Enter the word to check"
    input <- getLine

    if isPalindrome input
        then putStrLn "The given input is a palindrome"
        else putStrLn "It is not a palindrome"

        