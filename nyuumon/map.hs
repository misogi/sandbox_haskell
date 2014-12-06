double :: Int -> Int
double x = 2 * x

square :: Int -> Int
square x = x * x

main = do print (map double [1,2,3,4,5])
