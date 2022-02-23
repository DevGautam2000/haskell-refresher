per1 = ("Gautam",21)
per2 = ("Rishabh",21)


names = ["Gautam","Rishabh","Adittya"]
marksInMaths = [20,40,60]

main= do
    putStr "Person 1 is: "
    print(fst per1)
    putStr "With age: "
    print(snd per1)
    print(zip names marksInMaths)