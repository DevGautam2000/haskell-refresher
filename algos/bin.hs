binsearch xs value low high
  | high < low = -1
  | xs !! mid > value = binsearch xs value low (mid -1)
  | xs !! mid < value = binsearch xs value (mid -1) high
  | otherwise = mid
  where
    mid = low + (high - low) `div` 2

main = do
  let xs = [1, 2, 3]
  print $binsearch xs 2 0 (length xs)