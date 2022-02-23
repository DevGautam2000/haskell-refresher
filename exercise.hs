
-- Q1 waft return true if an element is in a list otherwise return false

ele :: (Eq a) => a -> [a] -> Bool
ele _ [] = False
ele n (x:xs) = (x == n) || ele n xs

-- Q2  waft return all duplicates in a list
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | x `elem` xs = x : nub xs
    | otherwise = nub xs


-- -- Q3 waft check is a list is in ascending order
isAsci ::(Ord a) => [a] -> Bool
isAsci [] = True
isAsci [x] = True 
isAsci (x:y:xs) = x <= y && isAsci(y:xs)

-- -- Q4
