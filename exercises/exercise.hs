-- Q1 waft return true if an element is in a list otherwise return false

ele :: (Eq a) => a -> [a] -> Bool
ele _ [] = False
ele n (x : xs) = (x == n) || ele n xs

-- Q2  waft return all duplicates in a list
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x : xs)
  | x `elem` xs = x : nub xs
  | otherwise = nub xs

-- -- Q3 waft check is a list is in ascending order
isAsci :: (Ord a) => [a] -> Bool
isAsci [] = True
isAsci [x] = True
isAsci (x : y : xs) = x <= y && isAsci (y : xs)

-- -- Q4 waft check if there is path that exists from node a to b
suc :: Int -> [(Int, Int)] -> [Int]
suc x [] = []
suc x ((y, z) : list) =
  if x == y
    then z : suc x list
    else suc x list

hasPath :: Int -> Int -> [Int] -> [(Int, Int)] -> Bool
hasPath src dst visited edges
  | src == dst = True
  | src `elem` visited = False
  | otherwise = any (\nxt -> hasPath nxt dst (src : visited) edges) (suc src edges)
