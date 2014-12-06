-- chapter 9
data Point = Pt Double Double

instance Eq Point where
  (Pt x y) == (Pt x' y') = x == x' && y == y'

main = do print $ (Pt 1 2) == (Pt 2 3)
          print $ (Pt 1 2) /= (Pt 2 3)
