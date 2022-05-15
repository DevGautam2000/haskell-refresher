bSort :: Ord a => [a] -> [a]
bSort s = case bSort' s of
  t
    | t == s -> t
    | otherwise -> bSort t
  where
    bSort' (x : y : xs)
      | x > y = y : bSort' (x : xs)
      | otherwise = x : bSort' (y : xs)
    bSort' s = s

secondloop [x] = [x]
secondloop (x : y : xs)
  | x <= y = x : secondloop (y : xs)
  | otherwise = y : secondloop (x : xs)

firstloop 0 xs = xs
firstloop n xs = firstloop (n -1) (secondloop xs)

bubble_sort xs = firstloop n xs where n = length xs

{-
bSort [] = []
bSort x = case new == x of
               True -> x
               False -> bSort new
    where
        new = bSortInner x

        bSortInner [] = []
        bSortInner [x] = [x]
        bSortInner (x : y : xs)
            | y <= x = y : bSortInner (x : xs)
            | otherwise = x : bSortInner (y : xs)

bubbleSort' (x:y:xs) =
  if x > y then y:bubbleSort' (x:xs)
  else x:bubbleSort' (y:xs)
bubbleSort' xs = xs
bubbleSort [] = []
bubbleSort a =
  let t1 = bubbleSort' a
  in bubbleSort (init t1) ++ [last t1] -}