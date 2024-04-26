fact :: Int -> Int
fact 0 = 1
fact n = n*fact(n-1)

-- TUPLES BUILT IN FUNCTION - fst means first element and snd means second element
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a) -> (a,a)
addVectors a b c = (fst a + fst b + fst c, snd a + snd b + snd c)

addv :: (Num a) => (a,a) -> (a,a) -> (a,a)
addv (x,y) (x2,y2) = (x+x2,y+y2)

lengthmy :: (Num a) => [a] -> a
lengthmy [] = 0
lengthmy (x:xs) = 1+(lengthmy xs)
-- See its very clear when we use Num is here we can see that we have mentioned our output is of format a
-- but in implementation we have directly kept 0 which means its a number then a can't be string so to have a clarity
-- we use Num typeclasss

mysum :: (Num a) => [a] -> a
mysum [] = 0
mysum (x:xs) = x+mysum xs

bmi :: (RealFloat a) => a -> String
bmi x
 | x <= 18.5 = "You are Under Weight"
 | x <= 25   = "You are Supposedly Normal"
 | x <= 30   = "You are over weight"
 | otherwise = "Need to take care"

bmiifelse :: (RealFloat a) => a -> String
bmiifelse x = 
 if x<=18.5 then "You are under weight" 
 else if x<=25 then "You are supposedly normal"
 else if x<=30 then "You are over weight" 
 else "Need to take care"

mymax :: Int -> Int -> Int
mymax a b
 | a>b = a
 | otherwise = b

mycompare :: Int -> Int -> Ordering
mycompare a b
 | a>b = GT
 | a<b = LT
 | otherwise = EQ 

--  Where Clause
bmiTell :: (RealFloat a) => a -> a -> String    --Revised using Where
bmiTell weight height
 | bmi <= 18.5 = "You're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
 | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^ 2


-- Where clause with more variable
bmiTellswe :: (RealFloat a) => a -> a -> String
bmiTellswe weight height
 | bmi <= skinny = "You're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
 | bmi <= fat    = "You're fat! Lose some weight, fatty!"
 | otherwise     = "You're a whale, congratulations!"
 where 
  bmi = weight / height ^ 2;
  skinny = 18.5;
  normal = 25.0;
  fat = 30.0
-- We can either leave each constructs as it is or can use ; it's our wish

bmiTelldiff :: (RealFloat a) => a -> a -> String
bmiTelldiff weight height
 | bmi <= skinny = "You're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
 | bmi <= fat    = "You're fat! Lose some weight, fatty!"
 | otherwise     = "You're a whale, congratulations!"
 where 
  bmi = weight / height ^ 2;
  (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where (f:_) = firstname
       (l:_) = lastname

-- How to use several inline variables in let using semicolons
-- (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)
-- Here if we dont use colons we will definitely get error

-- LIST COMPREHENSION IMPORTANT!!!!!
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

-- CASES IN HASKELL
head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

-- They are useful for pattern matching against something in the middle of an expression.
describeListss :: [a] -> String
describeListss xs = "The list is " ++ case xs of [] -> "empty."
                                                 [x] -> "a singleton list."
                                                 xs -> "a longer list."
                      

describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
                      