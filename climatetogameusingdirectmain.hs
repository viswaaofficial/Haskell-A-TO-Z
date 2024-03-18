-- Obtain a temperature in degrees Fahrenheit from the user.  If the temperature is 80 
-- degrees or more display the message "Go play golf" otherwise, if the temperature is 
-- 70 -79 degrees display the message "Put on a jacket", otherwise display the message 
-- "It is way too cold."  Perform a desk check using the following values: 95, 72, and 50. 

main :: IO()
main = do
 putStrLn "Enter the temperature"
 input <- getLine
 let var = read input :: Int
 if var>80 then do putStrLn "Go Play golf" 
  else 
    if var>69 && var<80 then do putStrLn "Put on a jacket" else do putStrLn "It is way too cold"
