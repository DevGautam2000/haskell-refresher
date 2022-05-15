{-

there are 3 datatypes in haskell

DATA
- it consists of multiple constructors and multiple fields
    for example:
    data Color  = RBG (Int | Int | Int)

TYPE
- Type is an alias of DATA datatype
 for eg. type A = Color

NewData NewType
- it has one constructors and onlyl one field
    eg. newtype Name = Name String
 -}

-- :set -package QuickCheck

reves :: [a] -> [a]
reves xs = rev_aux [] xs
  where
    rev_aux acc [] = acc
    rev_aux acc (x : xs) = rev_aux (x : acc) xs

{-

DATA
- it consists of multiple constructors and multiple fields
    for example:
    data Color  = RBG Int  Int  Int | HSL Int Int Int
-}
data Color = RBG Int Int Int | HSL Int Int Int deriving (Show)

{-

TYPE
- Type is an alias of DATA datatype
 for eg. type A = Color

 -}
type A = Color

a :: A
a = RBG 0 0 0

{-

NewData NewType
- it has one constructors and only one field
    eg. newtype Name = Name String

 -}
newtype Str = S String deriving (Show)

b :: Str
b = S "fas"

main2 = do
  print a
  print b
