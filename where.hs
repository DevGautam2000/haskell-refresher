
avgMarks :: Double -> Double -> String 
avgMarks m n
    | avg <= 4.0 = "good"
    | avg <= 7.0 = "fine"
    | otherwise = "great"
    where avg = ( m + n)/2.0
 