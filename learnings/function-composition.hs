import Data.List

eveno :: Int -> Bool
eveno = even

noto  :: Bool -> String
noto x = if x
   then "This is an even Number"
   else "This is an ODD number"

isNumEven = noto.eveno

rsort :: [Int] -> [Int]
rsort = reverse.sort
l :: [Int]
l = [1,2,3,4]

