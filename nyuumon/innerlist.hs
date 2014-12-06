-- chapter 7

qsort [] = []
qsort (p:xs) = qsort smaller ++ [p] ++ qsort larger
    where smaller = [x | x <- xs, x < p]
          larger = [x | x <- xs, x >= p]

main = do print $ [x | x <- [1..10], odd x]
          print $ qsort [3,2,4,1,5]
