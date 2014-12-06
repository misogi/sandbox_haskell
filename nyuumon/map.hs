double :: Int -> Int
double x = 2 * x

summation :: (Int -> Int) -> Int -> Int
summation f 1 = f 1
summation f n = f n + summation f (n - 1)

square :: Int -> Int
square x = x * x

main = do print (summation square 3)
