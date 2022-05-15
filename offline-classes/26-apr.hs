-- * syllabus for sessional

-- datatypes and pattern matching
-- funtions and polymorphism
-- user defined datatypes

pairwiseSwap [] = []
pairwiseSwap [x] = [x]
pairwiseSwap (x : y : zs) = y : x : pairwiseSwap zs

readStr :: String -> Float
readStr = read
