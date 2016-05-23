module TakeWhile (
  myTakeWhile,
  myTakeWhiler
) where

myTakeWhile:: (a->Bool) -> [a] -> [a]
myTakeWhile _ [] = []
myTakeWhile  predicate (x:xs) 
                | predicate x = x: myTakeWhile predicate xs
                | otherwise = []

myTakeWhiler :: Foldable t => (a -> Bool) -> t a -> [a]
myTakeWhiler predicate = foldr step []
  where 
    step y ys 
      | predicate y = y:ys
      | otherwise  = []
