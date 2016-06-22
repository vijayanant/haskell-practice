module MyBinaryTree where

data Tree a =  Node a  (Tree a ) (Tree a) | Empty
              deriving (Show)

height:: Tree a -> Int
height Empty =  0 
height ( Node a  left right)  =  1 + max (height left ) (height right)


treeMap:: (a -> b) -> Tree a -> Tree b
treeMap _ Empty = Empty
treeMap f  (Node a l r)  =  Node ( f a )  ( treeMap f l )  ( treeMap f r )

instance Functor Tree where
  fmap  = treeMap

zipTree:: Tree a -> Tree b -> Maybe (Tree (a,b))
zipTree Empty Empty = Just Empty
zipTree (Node x l1 r1) (Node y l2 r2 ) =
  zipTree l1 l2 >>= \left -> 
  zipTree r1 r2 >>= \right -> 
  return (Node (x, y ) left right) 
zipTree _ _  = Nothing

zipTree1:: Tree a -> Tree b -> Maybe (Tree (a,b))
zipTree1 Empty Empty = Just Empty
zipTree1 (Node x l1 r1) (Node y l2 r2 ) = do
  left <- zipTree1 l1 l2
  right <- zipTree1 r1 r2
  return (Node (x, y ) left right) 
zipTree1 _ _  = Nothing

half:: Integral a => a -> Maybe a
half x 
    | odd x = Nothing
    | otherwise  = Just (x `div` 2)

result = True `elem` [True, True, False, True, False]

