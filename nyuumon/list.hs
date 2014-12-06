-- chapter 5

main = do print $ map (2 *) [1,2,3,4]
          print $ [3,4,5] !! 1
          print $ take 2 $ [2,3,4] ++ [5,6]
          print $ concat [[2], [3,4,5], [6]]
          print $ zip [1,2,3] [4,5]
