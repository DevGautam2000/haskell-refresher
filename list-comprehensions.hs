multiplesOf2 = [x*2 | x<-[1..10]] -- outputs: [2,4,6,8,10,12,14,16,18,20]

listOne = [1,2,3,4]
listOneDouble = [x*2| x<-listOne]

tableOf2 = [x*2 | x<-[0..12]]

-- filtering 
listOf3Times = [x*3 | x<-[1..20] , x*3<=50] 
numsDivBy13and9 = [x | x<-[1..500] , x `rem` 13 == 0 , x `rem` 9 == 0]

powOf3 = [3^n | n<-[1..10]]

mulTable = [[x * y | y<-[1..12]] | x<-[1..5]]

fib = 0:1:[ a+b | (a,b) <- zip fib (tail fib)]

main = do
    print(fib !! 2) -- 3rd fibonacci value as list is 0-indexed
    print(take 20 fib) -- first 20 fibonacci values