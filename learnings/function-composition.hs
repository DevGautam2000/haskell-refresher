import Data.List

eveno :: Int -> Bool
eveno = even

noto :: Bool -> String
noto x =
  if x
    then "This is an even Number"
    else "This is an ODD number"

isNumEven = noto . eveno

-- eveno :: a -> b
-- noto :: c-> a
-- (.) :: c->b

{-
TYPE INFERENCE :: isNumEven

noto :: Bool -> String
syntax: first :: c -> d

evenno :: Int -> Bool
syntax: second :: b -> c

(.) :: (c -> d) -> (b -> c) -> b -> d

isNumEven :: Int -> String
syntax :: b -> d

b= e, c = e, c= a, d= a

 -}

ss :: Num a => a -> a -> a
ss x b = x + b

rsort :: [Int] -> [Int]
rsort = reverse . sort

-- reverse :: [a] -> [a] -- c -> d
-- sort :: [a] -> [a] -- b -> c
-- reverse . sort ::[a] -> [a] -- b -> d
-- (.) :: (c -> d) -> (b -> c) -> b -> d
l :: [Int]
l = [1, 2, 3, 4]
