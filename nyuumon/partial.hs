-- chapter 4

multiply :: Int -> Int -> Int
multiply x y = x * y

multiply' :: (Int, Int) -> Int
multiply' (x, y) = x * y

double :: Int -> Int
double = multiply 2

main = print (double 3)
