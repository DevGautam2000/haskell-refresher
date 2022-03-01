
add = do 
    let a=10
    let b=20
    putStr "Addition is: "
    print (a+b)

subs = do
    let a=10
    let b=20
    putStr "Substraction is: "
    print (a-b)

mul = do
    let a=10
    let b=20
    putStr "Product is: "
    print (a*b)

division = do
    let a=10
    let b=20
    putStr "Quotient is: "
    print (a/b)

sequenceOperator = do -- ..
    print [1..10]
    print ['a'..'g']


-- postfix operator
modEx = mod 5 4

-- Infix operator
modEx2 = 5 `mod` 4

negNum = 5 - (-4)


-- sqrt of floating points
num9 = 9 
sqrt9 = sqrt num9

-- sqrt of integer 
num36 = 36 :: Int 
sqrt36 = sqrt (fromIntegral num36)


main = do
    add
    




    