import Data.Char (toUpper, ord)

-- 1. Print your address.
printAddress :: String
printAddress = "E136 Kashyapa Bhavanam , AVV Ettimadai"

-- 2. Find sum, difference, product, quotient and remainder.
add :: Int -> Int -> Int
add a b = a + b

sub :: Int -> Int -> Int
sub a b = a - b

multiply :: Int -> Int -> Int
multiply a b = a * b

divide :: Int -> Int -> Int
divide a b = a `div` b

remi :: Int -> Int -> Int
remi a b = a `mod` b

-- 3. Convert distance given in km to m.
kmToMeters :: Double -> Double
kmToMeters distanceInKm = distanceInKm * 1000

-- 4. Convert temperature given in Fahrenheit to Celsius.
fahrenheitToCelsius :: Double -> Double
fahrenheitToCelsius fahrenheit = (fahrenheit - 32) * (5 / 9)

-- 5. Convert measurement given in feet to cms.
feetToCms :: Double -> Double
feetToCms feet = feet * 30.48

-- 6. Find the square, cube, square root of the given number.
squareCubeRoot :: Double -> (Double, Double, Double)
squareCubeRoot x = (x^2, x^3, sqrt x)

-- 7. Calculate simple interest.
simpleInterest :: Double -> Double -> Double -> Double
simpleInterest p r t = p * r * t / 100

-- 8. Calculate compound interest.
compoundInterest :: Double -> Double -> Double -> Double
compoundInterest p r t = p * (1 + r / 100) ** t - p

-- 9. Calculate the volume and surface area of a sphere.
sphereVSA :: Double -> (Double, Double)
sphereVSA radius = (4 / 3 * pi * radius^3, 4 * pi * radius^2)

-- 10. Calculate the area of a triangle whose sides are given.
area_Tri :: Double -> Double -> Double -> Double
area_Tri a b c = let s = (a + b + c) / 2 in sqrt (s * (s - a) * (s - b) * (s - c))

-- 11. Convert the given character to uppercase.
convertToUppercase :: Char -> Char
convertToUppercase = toUpper

-- 12. Find the ASCII value of the given character.
findAsciiValue :: Char -> Int
findAsciiValue = ord


-- 13. Find the sum of digits of a 3-digit number.
sumOfDigits :: Int -> Int
sumOfDigits n = (n `div` 100) + ((n `div` 10) `mod` 10) + (n `mod` 10) -- / is used in case of double or float in order to have it as int we can use `div` for integer

-- 14. Interchange the value of two variables.
interchange :: (Int, Int) -> (Int, Int)
interchange (x, y) = (y, x)

-- 15. Interchange the value of two variables without using a 3rd variable.
interchangeWithout :: (Int, Int) -> (Int, Int)
interchangeWithout (x, y) = (y, x)

-- 16. Calculate the displacement S, initial velocity u, acceleration a, time t, S = ut + 1/2 at^2
calculateDisplacement :: Float -> Float -> Float -> Float
calculateDisplacement u a t = u * t + 0.5 * a * t * t



