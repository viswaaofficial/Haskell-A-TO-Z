-- Print the given number in words eg. 21   two one. 

word :: Int -> String
word n = if n==0 then "Zero"
        else if n==1 then "One"
        else if n==2 then "Two"
        else if n==3 then "Three"
        else if n==4 then "Four"
        else if n==5 then "Five"
        else if n==6 then "Six"
        else if n==7 then "Seven"
        else if n==8 then "Eight"
        else if n==9 then "Nine"
        else sent n ""

sent :: Int -> String -> String
sent n str = if n==0 then str else sent (n`div`10) (show (word (n `mod` 10)) ++ str)

main :: IO()
main = do
    putStrLn "Enter the number"
    input <- getLine
    let val = read input :: Int
    putStrLn (word val)
