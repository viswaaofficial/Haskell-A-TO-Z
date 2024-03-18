collatz :: Int-> [Int]
collatz 1 = [1]
collatz 0 = [0]
collatz x
 | even x = x:(collatz (x`div`2))
 | odd x = x:(collatz (x*3 + 1))