import Control.Exception (SomeException)
import Control.Exception.Base
import qualified Data.Set as Set

text1 = "Hey buddy"

-- set : "Hbdeuy"

text2 = "This tutorial is for Haskell"

set3 = Set.fromList [1, 2, 3, 3]

main :: IO ()
main = do
  let set1 = Set.fromList [1, 2, 3, 3]
      set2 = Set.fromList text2
  print (set1)
  print (set2)

capital all@(x : xs) = " The first letter of " ++ all ++ " is " ++ [x]

initials firstname lastname = [f] ++ " . " ++ [l] ++ ". "
  where
    (f : _) = firstname
    (l : _) = lastname

main2 = do
  result <- try (evaluate (5 `div` 0)) :: IO (Either SomeException Int)
  case result of
    Left ex -> putStrLn $ "Caught exception: " ++ show ex
    Right val -> putStrLn $ "The answer was: " ++ show val

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_ : xs) = 1 + length' xs
