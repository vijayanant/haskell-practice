mydrop:: Int -> [a] -> [a]
mydrop _ [] = []
mydrop 0 xs  = xs
mydrop n (x:xs)  
  | n < 0 = x:xs
  | otherwise = mydrop (n-1)  xs

x =  mydrop [1,2,3,4,5]
