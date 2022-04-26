import Data.Char

main = do
  putStr "Enter your name: "
  name <- getLine
  print ("Hello " ++ [toUpper x | x <- name])
