intersperse:: a -> [[a]] -> [a]
intersperse _ [] = []
intersperse c [x,y] = x ++  [c] ++  y
intersperse c (x:xs) =  x ++ [c] ++ intersperse c xs

