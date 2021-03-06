data LexerToken
  = Whitespace
  | StringLit
  | IntList
  deriving (Show)

cppUses :: LexerToken -> Bool
cppUses Whitespace = True
cppUses _ = False

cppUsesWhiteSpace = print (cppUses Whitespace)

-- custom data class
data Customer = Customer String String Double
  deriving (Show)

gautam :: Customer
gautam = Customer "Gautam Chandra Saha" "Arithang, Gangtok" 2000.0 -- customer name address balance

getBalance :: Customer -> Double
getBalance (Customer _ _ bal) = bal

getBalanceOfGautam = print (getBalance gautam)

data Color = Red | Blue | Green | Yellow deriving (Eq)

fun :: Color -> Bool
-- fun x = case x of
--   Red -> True
--   _ -> False
fun x
  | x == Red = True
  | otherwise = False
