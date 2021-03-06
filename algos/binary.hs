binsearch :: [Int] -> Int -> Int -> Int -> Int -- list, value, low, high, return int
binsearch xs value low high
   | high < low       = -1
   | xs!!mid > value  = binsearch xs value low (mid-1)
   | xs!!mid < value  = binsearch xs value (mid+1) high
   | otherwise        = mid
   where
   mid = (high + low) `div` 2


      