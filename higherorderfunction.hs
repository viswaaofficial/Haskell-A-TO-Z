-- multThree :: (Num a) => a -> (a ->(a -> a) )
-- multThree x y z = x * y * z

-- ghci> let multby3 = multThree 3
-- ghci> let multby12 = multby3 4  
-- ghci> multby12 5
-- 60

-- now if we call multThree 4 5 It will lead to error
-- Now it will allow only one input then it returns a function which can be stored to another variable
-- This happens if we dont bind it to some name or a passing variable

-- multThree :: (Num a) => a -> a -> a -> a
-- multThree x y z = x * y * z
-- ghci> let multby3 = multThree 3
-- ghci> let multby12 = multby3 4 
-- ghci> multby12 5               
-- 60
-- ghci> multby3 4 5
-- 60
-- I have no idea even on not using the brackets it's automically acting as partial function

-- compareWithHundred :: (Num a, Ord a) => a -> Ordering
-- compareWithHundred x = compare 100 x IS wnat we usually try but that can be replaced by the one in below
-- compareWithHundred = compare 100
-- It returns how much is 100 is when compared to the parameter given so it return if 100 is GT LT or EQ

-- divideByTen :: (Floating a) => a -> a
-- divideByTen = (/10)

-- mulByTen :: (Num a) => a -> a
-- mulByTen = (10*)

-- isUpperAlphanum :: Char -> Bool
-- isUpperAlphanum = (`elem` ['A'..'Z'])
-- isUpperAlphanum 'a'  here we can see that now a will be checked in the list generated and if it is an element it returns True else False

-- SECTION AND USING = What I understood is they are trying to section a part of function and then they are using
-- subtract4 = (subtract 4)
-- In the above one subtract is inbuilt function which actually takes two arguments but now we are doing partial function
-- so what happens is the partial function returns a function which takes a single argument which will then get subtracted by 4
-- subtract4 6 means it will return abs of 4 - 6 which is 2

-- Uses of Section and Using

-- Here, (subtract 4) is a section. It partially applies the subtract function to its second argument, which is 4. 
-- This results in a new function that subtracts 4 from its argument.

-- Sections are used for convenience and readability. 
-- Instead of defining a lambda function explicitly, as in (subtract 4) x = x - 4, 
-- you can use sections for a more concise and intuitive representation.

-- Zip with function
-- zipwiths :: (a->b->c) -> [a] -> [b] -> [c]
-- zipwiths _ [] _ = []
-- zipwiths _ _ [] = []
-- zipwiths f (x:xs) (y:ys) = (f x y):zipwiths f xs ys

-- flips :: (a->b->c) -> (b->a->c)
-- flips f = g where g x y = f y x
-- It jsut flips the parameters of two function

-- mymap :: (a->b) -> [a] -> [b]
-- mymap _ [] = []
-- mymap f (x:xs) = f x:mymap f xs

-- myfilter :: (a->Bool) -> [a] -> [a]
-- myfilter _ [] = []
-- myfilter f (x:xs) = if f x then x:(myfilter f xs) else myfilter f xs

-- quicksort :: (Ord a) => [a] -> [a]
-- quicksort [] = []
-- quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
--     where smallerSorted = quicksort [y | y <- xs, y <= x]
--           biggerSorted = quicksort [y | y <- xs, y > x]

-- quicksort :: (Ord a) => [a] -> [a]
-- quicksort [] = []
-- quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
--     where smallerSorted = quicksort (myfilter (<=x) xs)
--           biggerSorted = quicksort (myfilter (>x) xs)

-- find the largest number under 100,000 that's divisible by 3829
-- divby3829 :: Integral(a) => [a]
-- divby3829 = filter p [10000,9999..0]
--  where p x = x `mod` 3829 == 0

-- largestDivisible :: (Integral a) => a
-- largestDivisible = head (filter p [0,1..10000])
--  where p x = x `mod` 3829 == 0

