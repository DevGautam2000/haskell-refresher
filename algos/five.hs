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