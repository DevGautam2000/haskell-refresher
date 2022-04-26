emptyStack = []

push element stack = element : stack

topOf [] = Nothing
topOf (x : xs) = Just x

pop [] = Nothing
pop (x : xs) = Just xs

popp = tail

peak stk = head stk

pairwise [] = []
pairwise [x] = [x]
pairwise (x : y : xs) = y : x : pairwise xs