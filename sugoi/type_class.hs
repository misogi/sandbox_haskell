-- 7.8


data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "Red light"
  show Yellow = "Yellow Light"
  show Green = "Green Light"

-- same decraration on GHC.Base
-- instance (Eq m) => Eq (Maybe m) where
--   Just x == Just y = x == y
--   Nothing == Nothing = True
--   _ == _ = False
