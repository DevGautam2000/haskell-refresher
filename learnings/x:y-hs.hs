getListItems :: [Int] -> String
getListItems [] = "List is empty"
getListItems [x] = "The first item in list is: " ++ show x
getListItems [x, y] = "The first item is: " ++ show x ++ "and the last is: " ++ show y
getListItems (x : xs) = "The elements except first are: " ++ show xs

getFirstLetter :: String -> String
getFirstLetter [] = []
getFirstLetter all@(x : xs) = "The first letter in " ++ all ++ " is" ++ [x]

xs = [1, 2, 3]

main = do print $xs !! 2