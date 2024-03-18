-- 1. Find the biggest of two numbers.
findBiggest :: (Ord a) => a -> a -> a
findBiggest x y = if x >= y then x else y

-- 2. Find the smallest of two numbers.
findSmallest :: (Ord a) => a -> a -> a
findSmallest x y = if x <= y then x else y

-- 3. Find the biggest of three numbers.
findBiggestOfThree :: (Ord a) => a -> a -> a -> a
findBiggestOfThree x y z = max x (max y z)

-- 4. Check if a number is even or odd.
isEven :: Integral a => a -> Bool
isEven x = x `mod` 2 == 0
