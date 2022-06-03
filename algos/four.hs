import Data.Map (Map)
import qualified Data.Map as Map

myMap :: Integer -> Map Integer [Integer]
myMap n = Map.fromList (map makePair [1 .. n])
  where
    makePair x = (x, [x])

main = do
  putStrLn "for Data.Map"
  let map = myMap 3
  print map
