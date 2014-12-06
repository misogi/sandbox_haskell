-- chapter 8
data Point = Pt Double Double | Pt3D Double Double Double

norm :: Point -> Double
norm (Pt x y) = sqrt $ x * x + y * y
norm (Pt3D x y z) = sqrt $ x*x+y*y+z*z

main = do print $ norm (Pt 3 0)
          print $ norm (Pt 1 2)
          print $ norm (Pt3D 1 1 2)
