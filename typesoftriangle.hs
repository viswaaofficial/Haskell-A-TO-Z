-- Lengths of three sides of a triangle a, b, c are given as input. Finds if the triangle is 
-- isosceles, equilateral, or scalene. Hint: In an equilateral triangle three sides are equal. 
-- In an isosceles triangle two sides are equal. In a scalene triangle three sides are not 
-- equal

main :: IO()
main = do
    putStrLn "Enter the first side of the triangle"
    input <- getLine
    let sideOne = read input :: Int
    putStrLn "Enter the second side of the triangle"
    input <- getLine
    let sideTwo = read input :: Int
    putStrLn "Enter the third side of the triangle"
    input <- getLine
    let sideThree = read input :: Int
    if sideOne == sideTwo && sideTwo == sideThree && sideThree == sideOne then putStrLn "It is equilateral triangle"
    else 
        if sideOne == sideTwo || sideTwo == sideThree || sideThree == sideOne
            then putStrLn "It is Isosceles triangle"
        else putStrLn "It is scalene triangle"