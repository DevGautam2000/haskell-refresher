import qualified Data.Set as Set 

text1 = "hey buddy"
text2= "This is Haskell Class"

main= do 
    let set1= Set.fromList text1
        set2= Set.fromList text2
    print(set1)
    print(set2)