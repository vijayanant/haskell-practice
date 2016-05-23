module MyList (
) where

data List a  =  Cons a (List a)
                | Nil
                deriving (Show)

fromList:: [a] -> List a
--fromList (x:xs) = Cons x  ( fromList xs )
--fromList [] = Nil
fromList  = foldr Cons Nil 

toList:: List a  -> [a]
toList  (Cons x xs) =  x:  toList xs 
toList Nil = []

-- Foldable methods

null:: List a -> Bool
null Nil =  True
null _  = False

vfoldr:: (a -> b -> b ) -> b -> List a -> b
vfoldr step zero (Cons x xs) = step x ( vfoldr step  zero xs ) 
vfoldr _ zero Nil = zero

vmap:: (a->b) -> List a -> List b
vmap f (Cons x xs) = Cons (f x) (vmap f xs)
vmap f Nil = Nil

vmap':: (a->b) -> List a -> List b
vmap' f = vfoldr step Nil
  where 
    step y = Cons (f y)

vtoList:: List a -> [a]
vtoList  = vfoldr (:) [] 

vlookup:: Eq a => a -> List (a, b) -> Maybe b
vlookup  x  = vfoldr step  Nothing
  where 
    step y ys 
      | fst y == x = Just $ snd y
      | otherwise = ys

