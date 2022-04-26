-- bubble sort
bsort :: Ord a => [a] -> [a]
bsort [] = []
bsort s = case bsort' s of
  t
    | t == s -> t
    | otherwise -> bsort t
  where
    bsort' (x : y : xs)
      | x > y = y : bsort' (x : xs)
      | otherwise = x : bsort' (y : xs)
    bsort' s = s
