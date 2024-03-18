-- Obtain a temperature in degrees Fahrenheit from the user.  If the temperature is 80 
-- degrees or more display the message "Go play golf" otherwise, if the temperature is 
-- 70 -79 degrees display the message "Put on a jacket", otherwise display the message 
-- "It is way too cold."  Perform a desk check using the following values: 95, 72, and 50. 

temp :: Int -> String
temp temperature = 
  if temperature >= 80 then "Go play golf"
   else
    if temperature >=70 && temperature <= 79 then do "Put on a jacket" else do "It is way too cold."


main :: IO()
main = do
 putStrLn "Enter the Temperature "
 input <- getLine
 let temperature = read input :: Int 
 let result = temp temperature 
 putStrLn result