merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

msort [] = []
msort [a] = [a]
msort xs = merge (msort (firstHalf xs)) (msort (secondHalf xs))

{-

msort [2,1,3]
xs = [2,1,3]
todo : first call
! merge (msort $firsthalf xs ) (msort $secondHalf xs )

? firstHalf xs = let n = length xs in take (div n 2) xs
  n = 3
  n/2 = 1
  firstHalf => [2]

* secondHalf xs = let n = length xs in drop (div n 2) xs
  n = 3
  n/2 = 1
  secondHalf => [1,3]

? => msort [2]  msort [1,3]

todo: second call
? ==> [2]
* ==> msort ([1]) msort ([3])

todo: third call
? ==>
* ==> [1] [3]

 -}
firstHalf xs = let n = length xs in take (div n 2) xs

secondHalf xs = let n = length xs in drop (div n 2) xs