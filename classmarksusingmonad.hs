import Control.Monad (replicateM)

-- Function to calculate the average of a list
average :: [Float] -> Float
average xs = sum xs / fromIntegral (length xs)

-- Function to read marks and calculate class average
main :: IO ()
main = do
    putStrLn "Enter the number of students:"
    n <- readLn :: IO Int  -- Reads the number of students
    putStrLn "Enter the marks of each student:"
    marks <- replicateM n (readLn :: IO Float)  -- Reads 'n' marks
    let avg = average marks
    putStrLn $ "Class Average: " ++ show avg
    let belowAvgCount = length (filter (< avg) marks)
    if belowAvgCount > 2
        then putStrLn "More than two students have marks below the class average."
        else return ()