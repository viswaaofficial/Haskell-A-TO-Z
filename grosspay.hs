-- Obtain from the user an hourly pay rate and the number of hours worked for the week. 
-- Calculate and output their weekly pay according to the following: Regular pay is the 
-- pay up to 40 hours. Overtime pay is pay for the hours over 40.  Overtime is paid at 
-- a   rate of 1.5 times the hourly rate. Gross pay is the sum of the regular pay and the 
-- overtime pay. 

cal :: Int -> Int -> Int -- Cant write like Int Int -> Int
cal x y =
    if y < 40
        then x * y
        else (40 * x) + ((y - 40) * 15 * x `div` 10)

main :: IO ()
main = do
    putStrLn "Enter hour pay rate"
    inp <- getLine
    let hpr = read inp :: Int

    putStrLn "Enter number of hours"
    inps <- getLine
    let nhr = read inps :: Int

    let gross = cal hpr nhr
    putStrLn ("Gross pay: " ++ show gross)