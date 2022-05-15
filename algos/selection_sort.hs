import Data.List (delete)

ssort [] = []
ssort xs = let x = minimum xs in x : ssort (delete x xs)