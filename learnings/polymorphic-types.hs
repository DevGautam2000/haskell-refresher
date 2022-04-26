data Shape = Circle Float | Rectangle Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle rad) = pi * rad ^ 2
area (Rectangle len bred) = len * bred

main = do
  print $area $ Circle 2 -- dollar sign and . sign get rid of parenthesis print (area (Circle 2))
  print . area $ Circle 2 -- dollar sign and . sign get rid of parenthesis
  print $area $ Rectangle 3 4
  print . area $ Rectangle 3 4