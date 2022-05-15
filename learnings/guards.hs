isOdd :: Int -> Bool
isOdd x
  | even x = False
  | otherwise = True

isEven = even

whatLanguage :: String -> String
whatLanguage s
  | s == ".cpp" = "C plus plus"
  | s == ".java" = "Java"
  | otherwise = "Python"