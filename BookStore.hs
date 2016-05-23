module BookStore (
) where

type BookId  = Int
type Title = String
type Author = String

data BookInfo = Book BookId Title [Author]
                deriving (Show)

type Cartesian = (Int, Int)
type Polar = (Int, Int)

type Point2D = (Double, Double)
type Centre = Point2D
type Radius = Double

data Shape  =  Circle Centre Radius
              |Polygon [Point2D]
              deriving (Show)
