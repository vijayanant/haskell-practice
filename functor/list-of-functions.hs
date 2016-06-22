module ListOfFunctions (
) where

add1 = (+1)
add3 = (+3)

composeed = add1 . add3

flist = [add1, add3]

applyFunction :: [Integer->Integer] -> Integer -> [Integer]
applyFunction (f:fs) v = f v : applyFunction fs v
applyFunction [] _ = []


special:: Integer -> [ Integer ]
special x
  | x == 0 = [0]
  | odd x = x: special  ( 2 * x ) 
  | otherwise = x:special  ( x `div` 3)
