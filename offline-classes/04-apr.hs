-- linear search in haskell

-- linearSrch xs ele = ele `elem` xs

-- linearS [] ele = False
-- linearS (x : ys) ele = x == ele || linearS ys ele

-- wrtie a program for linear search using maybe type
--  using maybe
linearsearch :: Eq a => a -> [a] -> Maybe Bool
linearsearch _ [] = Nothing
linearsearch ele (x : xs)
  | ele == x = Just True
  | otherwise = linearsearch ele xs

-- --ASSIGNMENT: write a pallindrome program using folding
-- -- mom and mom
isPallindrome val =
  foldr (&&) True $ zipWith (==) (show val) $reverse $show val

-- import Test.QuickCheck

reves xs = rev_aux [] xs
  where
    rev_aux acc [] = acc
    rev_aux acc (x : xs) = rev_aux (x : acc) xs

-- pro xs = collect (length xs) $ reverse xs == rev xs
