-- chapter 8

data Point = Pt Double

instance Eq Point where
  (Pt x) == (Pt x') = x == x'

instance Ord Point where
  compare (Pt x) (Pt x')
    | x == x' = EQ
    | x < x' = LT
    | otherwise = GT

main = do print $ (Pt 1) == (Pt 2)
          print $ (Pt 1) >= (Pt 2)
