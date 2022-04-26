-- insertion sort
insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort [x] = [x]
insertionSort (x : xs) = insert $ insertionSort xs
  where
    insert [] = [x]
    insert (y : ys)
      | x < y = x : y : ys
      | otherwise = y : insert ys

--------------------------------------------------

{-

-- modules in haskell

haskell can be considered as a collection of modules. It is purely functional language and everything is denoted as an expression.Hence, module can be called as a collection of similar or related type of functions.

There are 4 different modules:

1. Data.List
2. Data.Char
3. Data.Map(Map)
4. Data.Set
s
-}

checkX x =
  if x > 3
    then return 10
    else return 5

-- merge sort
merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

msort [] = []
msort [a] = [a] --base condition
msort xs = merge (msort (firstHalf xs)) (msort (secondHalf xs))

-- [1,2,3,4]
firstHalf xs =
  let n = length xs --4
   in take (div n 2) xs --div n 2 = 2 take 2 from xs [1,2]

secondHalf xs =
  let n = length xs
   in drop (div n 2) xs --div n 2 = 2 drop 2 from xs [34,5]