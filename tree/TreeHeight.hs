module TreeHeight (
) where

import MyBinaryTree

theight :: Tree t -> Int
theight Empty =  0 
theight ( Node a  left right)  =  1 + max (theight left ) (theight right)

