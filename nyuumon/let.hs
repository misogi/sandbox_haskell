cylindar :: Double -> Double -> Double
cylindar r h = let square x = x * x
                   base = 3.14 * square r
               in h * base

cylindar2 :: Double -> Double -> Double
cylindar2 r h = h * base
    where square x = x * x
          base = 3.14 * square r

main = print (cylindar2 2.0 5.0)
