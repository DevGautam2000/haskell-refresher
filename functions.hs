add :: Int->Int->Int --function declaration
add x y  = x+y


-- patter matching
fact :: Int->Int
fact 0=1 --pattern to be matched
fact n = n*fact (n-1)

-- Guards
{- 
Guards is a concept that is very similar to pattern matching.
 In pattern matching, we usually match one or more expressions, 
 but we use guards to test some property of an expression.
 -}
fact2 :: Integer -> Integer 
fact2 n | n == 0 = 1 
        | n /= 0 = n * fact2 (n-1)
fact2 _ = 1

isletter :: Char -> Bool
isletter x = x `elem` ['a'..'z'] || x `elem` ['A'..'Z']

sorted   :: [Int] -> Bool
sorted [] = True
sorted [x] = True 
sorted (x:y:zs) = x<=y && sorted (y:zs)

-- Where clause
-- the following function calculates ax^2 + bx + c
roots :: (Float, Float, Float) -> (Float, Float)  
roots (a,b,c) = (x1, x2) where 
   x1 = e + sqrt d / (2 * a) 
   x2 = e - sqrt d / (2 * a) 
   d = b * b - 4 * a * c  
   e = - b / (2 * a) 

main = do
    print(add 10 20)
    print (fact 5)
    print (fact2 5)
    print (roots (1,-8,6))