cFreq ele = foldr (\x acc -> if ele == x then acc + 1 else acc) 0

countingSort nums = do
  let freq = [0 | _ <- [1 .. (maximum nums + 1)]]
  let nxs = [(cFreq x nums, x) | x <- nums]
  print nxs

-- ! INCOMPLETE