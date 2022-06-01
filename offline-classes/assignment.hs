import Data.Char
import Data.Either
import Data.List (intercalate, sort)

{-
          DATE & TIME: Tue, April 19,2022 AT 12:44
          DESCRIPTION: HASKELL ASSIGNMENT 2022
          GROUP MEMBERS:
?          -  ADITTYA PRASAD
?          -  SUMAN GURUNG
?          -  RISHABH PRASAD
?          -  GAUTAM CHANDRA SAHA

! - GROUP 10
    * DEADLINE: 17 May 2022

    QUESTION: write a haskell program to implement various functional behaviours and function calls
          - map
          map takes a function and maps that function to each value in the list passed to it
          map (function) xs
          - fmap
          fmap (function) (functor)
          - sort
          - lambda
          - hofs
          - currying
          - Either
-}

-- ? __________________________________________________________________

doubleTheList xs = map (* 2) xs

-- ! this gives error with map
-- ? maybeFindLength [] = Nothing
-- ? maybeFindLength xs = map length $ Just xs

maybeFindLength [] = Nothing
maybeFindLength xs = fmap length $ Just xs

-- ? __________________________________________________________________

-- * list functions

sortTheListFrom xs ys = sort $intercalate "" $zipWith (++) xs ys

minL xs = minimum xs

lenL xs = length xs

-- ? __________________________________________________________________

-- * lambdas or anonymous function

showIt :: Int -> String
showIt = \x -> show x

addOne = \x -> x + 1

-- ? __________________________________________________________________

-- * higher order functions

_prime 1 _ = False
_prime n i
  | i == n = True
  | n `mod` i == 0 = False
  | otherwise = _prime n (i + 1)

isPrimeL :: (t1 -> t2) -> t1 -> t2
isPrimeL func num = func num

-- ? __________________________________________________________________

-- * function composition

pallindrome :: Int -> (Bool, String)
pallindrome num = (show num == reverse (show num), show num)

toText :: (Bool, String) -> String
toText (isPall, num) =
  if isPall
    then num ++ " is pallindrome"
    else num ++ " is not pallindrome"

isPallindrome :: Int -> String
isPallindrome = toText . pallindrome

-- ? __________________________________________________________________

-- * Currying

myadd x y = x + y -- ? simple function works

same y = y

-- ? using currying
myaddCurried :: Int -> (Int -> Int)
myaddCurried x y = x + same y

-- ? __________________________________________________________________

-- * Either

data DivType = INFINITE deriving (Show)

newtype Number = Number Float deriving (Show)

safeDiv :: Float -> Float -> Either DivType Number
safeDiv x 0 = Left INFINITE
safeDiv x y = Right $ Number $x / y

-- ? __________________________________________________________________

underscore 1 = "_"
underscore ln = "_" ++ underscore (ln - 1)

msg xs = map toUpper xs ++ "\n" ++ underscore (length xs) ++ "\n"

main = do
  putStrLn $msg "haskell program to show functional behaviours and function calls"
  putStrLn $msg "use of map"
  print $doubleTheList [1, 2, 3, 4]

  putStrLn $msg "\nuse of fmap"
  print $maybeFindLength []
  print $maybeFindLength [1, 2, 3, 4]

  putStrLn $msg "\nlist functions"
  print $sortTheListFrom ["123"] ["324"]
  print $minL [1, 2, 3]
  print $lenL [1, 2, 3]

  putStrLn $msg "\nlambdas or anonymous function"
  print $showIt 20
  print $addOne 20

  putStrLn $msg "\nhigher order function"
  print $isPrimeL _prime 11 2

  putStrLn $msg "\nfunction composition"
  print $isPallindrome 121

  putStrLn $msg "\nCurrying"
  print $myaddCurried 10 20

  putStrLn $msg "\nEither"
  print $safeDiv 10 0
  print $safeDiv 10 2
