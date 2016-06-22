{-# LANGUAGE Arrows, NoMonomorphismRestriction #-}
import Text.XML.HXT.Core

data Guest = Guest { firstName, lastName :: String }
  deriving (Show, Eq)

getGuest = deep (isElem >>> hasName "guest") >>> 
  proc x -> do
    fname <- getText <<< getChildren <<< deep (hasName "fname") -< x
    lname <- getText <<< getChildren <<< deep (hasName "lname") -< x
    returnA -< Guest { firstName = fname, lastName = lname }
