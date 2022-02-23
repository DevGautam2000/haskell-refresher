import Data.List (sort)

natural5 = [1,2,3,4,5]

natural10 = natural5 ++ [6,7,8,9,10] -- con catenation 

anotherWay = 2:4:5:6:[] 

moreNatural = 12:13:natural10 --output:  [12,13,1,2,3,4,5,6,7,8,9,10]
leng = length moreNatural

multiList = [[1,2,3], [4,5,6]]

revList = reverse moreNatural

isEmpty = null moreNatural

valueAtIndex2 = moreNatural!!2

firstV = head moreNatural
lastV = last moreNatural

exceptLast = init moreNatural -- return all vals except the last one

first3Vals = take 3 moreNatural

remove3Vals = drop 3 moreNatural

is12InList = 12 `elem` moreNatural

maxValue = maximum moreNatural
minValue = minimum moreNatural

l = [2,3,4,5]
sumL = sum l
proL = product l

gen0To10 = [0..10]

evenList = [2,4..10]

letterList = ['A', 'D'..'G']

infiList = [10,20..]

many2s = take 5 (repeat 2)
many3s = replicate 5 2

cycleList = take 10 (cycle[1,2,3])

sortedList = sort [2,3,1,4]

sumOfLists = zipWith (+) [1,2,3] [3,2,1]

greaterThan5 = filter (>5) [2,3,4,10,67]

evensTill40 = takeWhile (<=40) [2,4..]

prodOfListL = foldl (*) 1 [2,3,4,5] -- product from left to right
prodOfListR = foldr (*) 2 [2,3,4,5] -- product from right to left