-- binSearch :: (Ord a) => a -> [a] -> Maybe Int
-- binSearch _ [] = Nothing
-- binSearch n xs
--   | elem == n = Just index
--   | elem < n = (+ index) . (+ 1) <$> binSearch n bs
--   | otherwise = binSearch n as
--   where
--     index = length xs `quot` 2
--     (as, elem : bs) = splitAt index xs

binarySrch :: Ord t => [t] -> t -> Int -> Int -> Int
binarySrch [] _ _ _ = -1
binarySrch xs ele f l
  | f > l = -1
  | ele == xs !! mid = mid
  | xs !! mid < ele = binarySrch xs ele (mid + 1) l
  | otherwise = binarySrch xs ele f (mid -1)
  where
    mid = f + ((l - f) `div` 2)

binarySrchMaybe :: Ord t => [t] -> t -> Int -> Int -> Maybe Int
binarySrchMaybe [] _ _ _ = Nothing
binarySrchMaybe xs ele f l
  | f > l = Nothing
  | ele == xs !! mid = Just mid
  | xs !! mid < ele = binarySrchMaybe xs ele (mid + 1) l
  | otherwise = binarySrchMaybe xs ele f (mid -1)
  where
    mid = f + ((l - f) `div` 2)