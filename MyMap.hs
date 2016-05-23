module MyMap (
) where

mapr:: (a -> b) -> [a] -> [b]
mapr f = foldr step []  
  where step y ys = f y : ys

mapl:: (a->b) -> [a] -> [b]
mapl f = foldl step [] 
  where step  ys y = f y : ys
