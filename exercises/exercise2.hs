{-
          AUTHOR : GAUTAM CHANDRA SAHA
          DATE & TIME: Thu, February 24,2022 AT 13:40 
          DESCRIPTION:

-}

-- write a program to check if a number is pallindrome or not 

-- usign function composition
pallindrome :: Int -> (Bool,String)
pallindrome num = (show num == reverse (show num),show num)

toText :: (Bool,String) -> String
toText (isPall,num) = 
    if isPall then num ++ " is pallindrome"
    else num ++ " is not pallindrome"

isPallindrome :: Int -> String 
isPallindrome = toText.pallindrome

main = do
    print $isPallindrome 232
    print $isPallindrome 32