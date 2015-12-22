import Control.Monad
import Data.Char

main = do
  contents <- getContents
  putStrLn $ map toUpper (shortLinesOnly contents)

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\line -> length line < 10) . lines
