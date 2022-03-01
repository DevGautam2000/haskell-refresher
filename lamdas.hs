

mulby2  = map (\x->x*2) [1..10]

mulby4  = map (*4) [1..10]

mulby6 = [x*6 | x<-[1..10]]

mulBy num = [x*num | x<-[1..10]]

main = do 
 print $mulBy 10