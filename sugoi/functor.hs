-- 11.1

import Data.Char
import Data.List

main = do
  line <- fmap reverse getLine
  putStrLn $ "you said " ++ line
  putStrLn $ "yes you said " ++ line ++ " aa!"
  line2 <- fmap (intersperse '-' . reverse . map toUpper) getLine
  putStrLn line2
  line3 <- fmap (map (read :: String -> Int)) (fmap words getLine)
  putStrLn $ show line3

data CMaybe a = CNothing | CJust Int a deriving (Show)

instance Functor CMaybe where
  fmap f CNothing = CNothing
  fmap f (CJust counter x) = CJust (counter+1) (f x)
