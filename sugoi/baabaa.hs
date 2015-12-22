-- 9.2

import System.IO

main = do
  handle <- openFile "haiku.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle
  -- readFile はハンドルを自動で閉じる
  cont2 <- readFile "haiku.txt"
  putStr cont2
