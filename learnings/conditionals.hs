
main = do
   let var = 23
   if even var
      then putStrLn "Number is Even"
   else putStrLn "Number is Odd"

main2 = do   
   let var = 25 
   
   if var == 0 
      then putStrLn "Number is zero" 
   else if even var
      then putStrLn "Number is Even" 
   else putStrLn "Number is Odd"


doubleEvenNum x = 
   if even x
      then x
   else x*2

-- case

getJob :: Int -> String
getJob age = case age of
   18 -> "You don't get the job"
   25 -> "You get the job"
   _ -> "Go away you are not even eligible"



main3 = putStrLn "Hello World"

