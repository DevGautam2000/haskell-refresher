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

con = foldr (\x acc -> [x] : (map ((:) x) acc)) [] [3, 1, 2]

--3 [2] => 3:[2]
--[3,2] : [[1]] => [[3,2],[1]]
{-
2 []
[2] : map (2:) []
[2]:[]
[[2]]

1 [[2]]

[1]:map (1:) [[2]]
[1]:[[1,2]]
[[1],[1,2]]

3 [[1],[1,2]]

[3]: map(3:) [[1],[1,2]]
[[3],[3,1],[3,1,2]]

-}

-- type classes wk-11

safediv :: Integral a => a -> a -> Maybe a
safediv a b = if b == 0 then Nothing else Just $ div a b

-- * FROM TODAY

mapp :: (a -> b) -> [a] -> [b]
mapp _ [] = []
mapp func (x : ys) = func x : mapp func ys

fact n = aux n 1
  where
    aux n acc =
      if n <= 1
        then acc
        else aux (n -1) (n * acc)

{-

fact 4

aux 4 1
4 not < or = 1
acc = 1
aux (4-1) (4*1) => aux (3) (4)

3 not < or = 1
acc = 4
aux (3-1) (3*4) => aux (2) (12)

2 not < or = 1
acc = 12
aux (2-1) (2*12) => aux (1) (24)

1 = 1
acc = 24
aux (1-1) (1*24) => 24

ans : 24
 -}

isBig s
  | s > 3 = True
  | otherwise = False

addd x y = ad x y
  where
    ad a b = a + b

-- ? generating a list
genList lb ub
  | lb > ub = []
  | lb == ub = [lb]
  | otherwise = lb : genList (lb + 1) ub

lenList xs = foldr (\x acc -> acc + 1) (0) xs

lenList2 xs = foldl (\acc x -> acc + 1) (0) xs

filterOp = [(x, y) | x <- [1, 2, 3], y <- ['a', 'b'], x > 1, y < 'b']

main2 = do
  print $mapp (\x -> show x ++ show (x + 1)) [1, 2, 3, 4]
  print $mapp (\(x, y, z) -> show (x + y) ++ z) [(1, 2, " Gautam"), (3, 4, " Rishabh")]
  print $filter (\x -> x `mod` 2 == 0) [1, 2, 3]
  print $filter (\(x, y) -> x /= y) [(1, 2), (3, 3)]

summ [] = 0
summ (x : xs) = x + (summ xs)

sf xs = foldl (\acc x -> acc + x) 0 xs

dl = map (\x -> 2 * x) [1, 2, 3]

concata [] = []
concata (x : xs) = x ++ concata xs

countInList xs ele = foldr (\x acc -> if x == ele then acc + 1 else acc) 0 xs

countFromList [] _ _ = 0
countFromList (x : xs) ele acc =
  if x == ele
    then 1 + countFromList xs ele acc
    else 0 + countFromList xs ele acc

main3 = do
  i <- getLine
  print i
  if i /= "quit"
    then main3
    else return ()

count :: (Show t, Ord t, Num t) => t -> t -> IO ()
count n m = do
  putStrLn (show n)
  if n < m
    then count (n + 1) m
    else return ()

printFrom thisTo that = do
  putStr $show thisTo ++ " "
  if thisTo < that
    then printFrom (thisTo + 1) that
    else return ()

adddd :: Num a => a -> a -> [a] -> [a]
adddd x y zs = x + y : zs

-- monads

maybeadd2 :: (Monad m, Num b) => m b -> b -> m b
maybeadd2 mx y = mx >>= (\x -> return $ x + y)

maybeadd :: (Monad m, Num b) => m b -> m b -> m b
maybeadd mx my =
  mx >>= (\x -> my >>= (\y -> return $ x + y))

mbadd :: (Monad m, Num b) => m b -> m b -> m b
mbadd mx my = do
  x <- mx
  y <- my
  return $x + y

linsrch :: Int -> [Int] -> Int -> Maybe Int
linsrch _ [] _ = Nothing
linsrch ele (x : xs) acc
  | x == ele = Just acc
  | otherwise = linsrch ele xs (acc + 1)

isPallindrome ele = show ele == reverse (show ele)

lagrange :: [(Float, Float)] -> Float -> Float
lagrange xs x = foldl (\acc (xj, y) -> acc + (y * l xj)) 0 xs
  where
    l xj =
      foldl
        ( \acc (xk, _) ->
            if xj == xk
              then acc
              else acc * ((x - xk) / (xj - xk))
        )
        1
        xs

data Gau = C Int Int deriving (Eq)

funnn :: Gau -> Gau -> Bool
funnn x y
  | x == y = True
  | otherwise = False

queue = []

enqueue q ele = ele : q

dequeue q = init q

main4 = do
  let qu = enqueue queue 10
  putStrLn "Enqueued 10 into queue"
  let qu2 = enqueue qu 20
  putStrLn "Enqueued 20 into queue"
  putStr "Queue now: "
  print qu2
  putStrLn ""
  putStrLn "Dequeued from queue"
  let qu3 = dequeue qu2
  putStr "Queue now: "
  print qu3
  putStrLn ""

genList2 lb ub xs
  | lb >= ub = ub : xs
  | otherwise = lb : genList2 (lb + 1) ub xs

funccc lb ub = [x | x <- [lb .. ub]]