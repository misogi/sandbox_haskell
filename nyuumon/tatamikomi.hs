-- chapter 7

main = do print $ foldr (+) 0 [1,2,3]
          print $ foldr (-) 0 [1,2,3]
          print $ foldl (-) 1 [1,2,3]
          print $ foldr (+) 0 [1..5]
