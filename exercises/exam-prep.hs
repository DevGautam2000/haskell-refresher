import Data.Char
import Prelude hiding (map)

-- functions

isTen num =
  if num == 10
    then True
    else undefined

isTwo num
  | num == 2 = True
  | otherwise = undefined

party' food = case food == "pizza" of
  True -> "hooray pizza party!"
  False -> "it's not pizza :("

foo =
  let greeting = "hello"
      greetee = "world"
   in print (greeting ++ " " ++ greetee)

add :: Num a => a -> a -> a
add x y = x + y

add' :: Int -> (Int -> Int) --function declaration
add' x y = x + y

doubleList :: [Integer] -> [Integer]
doubleList xs = map (\x -> 2 * x) xs

app :: (a -> b) -> a -> b
app f x = f x

ad1 :: Int -> Int
ad1 x = x + 1

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib (x -2) + fib (x -1)

fac :: Int -> Int
fac 0 = 1
fac 1 = 1
fac x = x * fac (x -1)

genL :: Int -> Int -> [Int]
genL n m
  | m < n = []
  | m == n = [m]
  | m > n = n : genL (n + 1) m

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map func (x : abc) = func x : map func abc

mmmm x acc = [x] : map (x :) acc

main = do
  print $(let (a, b, c, d) = (1, 2, 3, 4) in a + b + c + d) * 100
  print $app (\x -> x + 1) 1
  print $map toUpper "s"

-- polymorphism wk10-h11

ffff xs elem = elem : xs

rev = foldl (\acc elem -> elem : acc) [] [1, 2, 3, 4, 5]

con = foldr (\x acc -> [x] : (map (x :) acc)) [] [1, 2]

{-
2 []
[2] : map (2:) []
[2]:[]
[[2]]

1 [[2]]

[1]:map (1:) [[2]]
[1]:[[1,2]]
[[1],[1,2]]

-}

-- type classes wk-11

safediv :: Integral a => a -> a -> Maybe a
safediv a b = if b == 0 then Nothing else Just $ div a b