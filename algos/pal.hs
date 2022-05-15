--pallindrom

ispallin1 xs = xs == (reverse xs)

ispallin2 [] = True
ispallin2 [_] = True
ispallin2 xs = (head xs) == (last xs) && (ispallin2 $ init $ tail xs)

-- using fold

ispallin3 xs =
  foldl
    (\acc (a, b) -> if a == b then acc else False)
    True
    input
  where
    input = zip xs (reverse xs)

--linear Search

linear1 _ [] = Nothing
linear1 y (x : xs)
  | y == x = Just 0
  | otherwise = fmap (+ 1) (linear1 y xs)