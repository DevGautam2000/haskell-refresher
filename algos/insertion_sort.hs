isort [] = []
isort [x] = [x]
isort (x : xs) = insert (isort xs)
  where
    insert [] = [x]
    insert (y : ys)
      | x < y = x : y : ys
      | otherwise = y : insert ys