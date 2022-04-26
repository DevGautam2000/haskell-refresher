import Data.Char -- for toUpper function
import Prelude hiding (map)

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map func (x : abc) = func x : map func abc

main = do
  print $ map toUpper " "

times4 :: Int -> Int
times4 x = x * 4

multListTimes4 :: [Int] -> [Int]
multListTimes4 [] = []
multListTimes4 (x : xs) = times4 x : multListTimes4 xs

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x : xs) (y : ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- passing function
doMult :: (Int -> Int) -> Int
doMult func = func 3

numberMUlBy3 = doMult times4

-- returning a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

addFunc = getAddFunc 4

main2 =
  do
    print (addFunc 4)
