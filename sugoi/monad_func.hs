-- 14.5
import Control.Monad.Writer

keepSmall :: Int -> Writer [String] Bool
keepSmall x
  | x < 4 = do
    tell ["keeping " ++ show x]
    return True
  | otherwise = do
    tell [show x ++ " is too large, throw it away"]
    return False

powerset :: [a] -> [[a]]
powerset xs = filterM (\x -> [True, False]) xs
