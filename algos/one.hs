--Quick Check

{-rev xs = rev_aux[] xs
    where
    rev_aux acc [] = acc
    rev_aux acc(x:xs)= rev_aux(x:acc) xs -}

--Pallindrome

ispallin1 xs = xs == reverse xs

ispallin2 :: Eq a => [a] -> Bool
ispallin2 [] = True
ispallin2 [_] = True
ispallin2 xs = (head xs) == (last xs) && (ispallin2 $ init $ tail xs)

--using fold
ispallin3 xs =
  foldl
    (\acc (a, b) -> if a == b then acc else False)
    True
    input
  where
    input = zip xs (reverse xs)

--Linear Search

linsearch _ [] = Nothing
linsearch y (x : xs)
  | y == x = Just 0
  | otherwise = linsearch y xs

-- linsearch1_ [] = -1

-- linsearch1 y xs = head [i | (x, i) <- zip xs [0 ..], y == x]

--Pallindrom
