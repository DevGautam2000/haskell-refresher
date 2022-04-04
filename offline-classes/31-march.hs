-- using stack
-- stack ghci --paackage QuickCheck

-- cabal repl --build-depends QuickCheck
-- import Text.QuickCheck
-- proper_reverse xs=reverse (reverse xs) == xs

-- quickCheck proper_reverse
-- OUTPUT : +++ OK, passed 100 tests.

-- prop  a b = (a+b) == (b+a)
-- quickCheck prop
-- OUTPUT : +++ OK, passed 100 tests.

-- prop xs = not (null xs )==>(length $ tail xs) == ((length xs) -1)
-- quickCheck prop
-- OUTPUT: +++ OK, passed 100 tests; 11 discarded.
