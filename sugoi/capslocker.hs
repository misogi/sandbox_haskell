-- 9.1
import Control.Monad
import Data.Char

main = interact respondPalindromes

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\line -> length line < 10) . lines

respondPalindromes :: String -> String
respondPalindromes =
  unlines .
  map (\xs -> if isPal xs then "palindrome" else "not a palindrome") .
  lines

isPal :: String -> Bool
isPal xs = xs == reverse xs
