-- 9.2

import System.IO
import Data.Char

main = do
  handle <- openFile "haiku.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle
  -- readFile はハンドルを自動で閉じる
  cont2 <- readFile "haiku.txt"
  writeFile "haiku2.txt" (map toUpper cont2)
