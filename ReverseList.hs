reverseList ::  [a] -> [a]
reverseList []  = []
reverseList  (x:xs) = (reverseList xs) ++ [x]

makePali:: [a] -> [a]
makePali xs =  xs ++ reverseList xs
