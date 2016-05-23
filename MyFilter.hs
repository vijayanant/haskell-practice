filterr:: (a->Bool) -> [a] -> [a]
filterr predicate xs = foldr step [] xs
  where step y ys | predicate y = y:ys 
                  |otherwise = ys

filterl:: (a->Bool) -> [a] ->[a]
filterl predicate xs = foldl step [] xs
  where step ys y | predicate y  =  y:ys
                  | otherwise = ys
