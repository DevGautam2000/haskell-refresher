data TreeNode = LeftN Int | RightN Int | NULL | ROOT Int
  deriving (Eq, Show)

binTree :: [(TreeNode, TreeNode)]
binTree = [(LeftN 20, RightN 25), (LeftN 10, RightN 30), (LeftN 2, RightN 3), (NULL, NULL), (NULL, NULL), (LeftN 29, RightN 40), (NULL, NULL)]

{-
            20
          /    \
        10     30
       /  \   /  \
      2    3 29   40

 -}

isTreeEmpty tree
  | null tree = True
  | otherwise = False

traverseTree :: [(TreeNode, TreeNode)] -> Int -> IO ()
traverseTree tree ind = do
  if (ind == 0) || (ind < length tree -1) && (fst (tree !! ind) /= NULL)
    then print ("Node" ++ show (ind + 1) ++ ": " ++ show (fst (tree !! ind)) ++ " " ++ show (fst (tree !! (ind + 1))) ++ " " ++ show (snd (tree !! (ind + 1))))
    else putStr ""

  if ind /= length tree -1
    then traverseTree tree (ind + 1)
    else print "DONE!"

insertNode val1 val2 = do
  let newTree = init binTree
  let flnTree = newTree ++ [(LeftN val1, RightN val2)]
  flnTree ++ [(NULL, NULL)]

main = do
  putStrLn "Check if tree is empty"
  print $isTreeEmpty binTree
  putStrLn "\nTraverse Tree:"
  traverseTree binTree 0

  putStrLn "\nInsert a node at Tree:"
  let ntree = insertNode 400 500
  print ntree

  putStrLn "\nTraverse new Tree:"
  traverseTree ntree 0
