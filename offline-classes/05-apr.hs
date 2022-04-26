{-

there are 3 datatypes in haskell

DATA
- it consists of multiple constructors and multiple fields
    for example:
    data Color  = RBG (Int | Int | Int)

TYPE
- Type is an alias of DATA datatype
 for eg. type a = color

NewData NewType
- it has one constructors and onlyl one field
    eg. NewType name = Name String
 -}

-- :set -package QuickCheck

reves :: [a] -> [a]
reves xs = rev_aux [] xs
  where
    rev_aux acc [] = acc
    rev_aux acc (x : xs) = rev_aux (x : acc) xs
