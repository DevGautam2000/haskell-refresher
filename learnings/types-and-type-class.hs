ftypeInt :: Int -> Int -> Int
ftypeInt x y = x * x + y * y

-- funcname param1 param2 = operations (returnn value)

ftypeInteger :: Integer -> Integer -> Integer
ftypeInteger x y = x * x + y * y

ftypeFloat :: Float -> Float -> Float
ftypeFloat x y = x * x + y * y

ftypeDouble :: Double -> Double -> Double
ftypeDouble x y = x * x + y * y

ftypeBool :: Bool -> Bool
ftypeBool = not

ftypeChar :: Char -> Char
ftypeChar x = 'K'

-- Read type class
readInt :: String -> Int
readInt = read

-- Custom type class
data Area = Circle Float Float Float

surface :: Area -> Float
surface (Circle _ _ r) = pi * r ^ 2

main = do
  print (ftypeInt 2 3)
  -- print (ftypeInt 2333084 44545454454554545445454544545)  -- garbage value
  print (ftypeInteger 23330847983886765765 44545454454554545445454544545)
  print (ftypeFloat 2.563242 3.81243)
  print (ftypeDouble 2.563242 3.81243)
  print (ftypeBool True)
  print (ftypeChar 'V')

  -- EQ type class
  print (8 == 8)
  print (8 /= 8)

  -- Ord type class
  print (4 < 5)
  print (4 <= 4)
  print (4 > 3)
  print (4 >= 3)

  {-
  Show has a functionality to print its argument as a String.
  Whatever may be its argument, it always prints the result as a String.
   -}

  --  Show type class
  print (show [1 .. 10])

  --Read type class
  -- coverts string to int
  print (readInt "14")

  -- Enum type class
  print (succ 12)
  print (pred 12)

  --Bounded type class
  print (maxBound :: Int)
  print (minBound :: Int)

  -- Num type class
  print (2 :: Int)
  print (2 :: Float)

  -- Integral
  {- Integral can be considered as a sub-class of the Num Type Class.
  Num Type class holds all types of numbers, whereas Integral type class
  is used only for integral numbers. Int and Integer are the types under
  this Type class. -}

  -- Floating
  {- Like Integral, Floating is also a part of the Num Type class,
  but it only holds floating point numbers. Hence, Float and Double
  come under this type class. -}

  -- Custom type class
  print (surface $ Circle 10 20 10)

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (a, b) (c, d) = (a + c, b + d)

main2 = do
  print (sumMe 10 20)
  print (sumMe 1.55 2.5)
  print (addTuples (2, 3) (3, 2))

data Employee
  = Employee
      { name :: String,
        desig :: String
      }
  | Employee2
      { name :: String,
        desig :: String
      }
  deriving (Eq, Show)

gautam =
  Employee
    { name = "Gautam Chandra Saha",
      desig = "Software Development Engineer II"
    }

rishabh =
  Employee
    { name = "Rishabh Prasad",
      desig = "Product Management Lead"
    }

isGautamRishabh = rishabh == gautam -- equality is checked as it was derived

gautamData = show gautam

data Shirt = S | M | L

instance Eq Shirt where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = True

instance Show Shirt where
  show S = "Small"
  show L = "Large"
  show M = "Medium"

isSmallAvailable = S `elem` [S, M, L]

theSizeofS = show S

-- custom type class

class MyEq a where
  areEqual :: a -> a -> Bool

instance MyEq Shirt where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False

newSize = areEqual M S
