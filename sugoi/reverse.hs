-- 8 章
import Control.Monad

main =  do
  return ()
  a <- return "sum"
  putStrLn $ "RYUO" ++ a
  line <- getLine
  let a = "hell"
      b = "yeah"
  putStrLn $ a ++ " " ++ b
  putStr "Hello "
  putChar 'I'
  print True
  sequence $ map print [1,2,3,4]
  when (False) $ do
    putStrLn "when-"
  colors <- forM [1,2,3,4] $ \a -> do
    putStrLn $ show a ++ " forM line"
    return 1
  if null line
    then return ()
    else do
      putStrLn $ reverseWords line
      main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
