summ xs = foldr (+) 0 xs -- sum of list

andd xs = foldr (&&) True xs -- anding on a list

concate xs = foldl (++) [] xs -- concatanation of lists

concate2 xs = foldr (:) [] xs -- concatanation of lists

listLen xs = foldr (\x y -> 1 + y) 0 xs -- length of a list

countOf :: Int -> [Int] -> Int
countOf n = foldr (\ele acc -> if n == ele then acc + 1 else acc) 0

isAll e = foldr (\x -> (&&) $ e == x) True

main = do
  print $summ [1, 2, 3]
  print $andd [True, False, False]
  print $concate [[1, 2], [3, 4], [5]]
  print $listLen [1, 3, 4]
  print $countOf 2 [2, 3, 1, 3, 2]
