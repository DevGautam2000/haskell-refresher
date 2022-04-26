{-

-- modules in haskell

haskell can be considered as a collection of modules. It is purely functional language and everything is denoted as an expression.Hence, module can be called as a collection of similar or related type of functions.

There are 4 different modules:

1. Data.List
2. Data.Char
3. Data.Map(Map)
4. Data.Set
s
-}

import Data.List

main = do
  print $intersperse '.' "Youtube.com"
  print $intercalate ['.'] ["Youtube", "com"]