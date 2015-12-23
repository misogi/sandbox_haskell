import Control.Applicative

-- 11.3
myAction :: IO String
myAction = (++) <$> getLine <*> getLine

-- 11.4

sequenceA' :: (Applicative f) => [f a] -> f [a]
sequenceA' [] = pure []
sequenceA' (x:xs) = (:) <$> x <*> sequenceA' xs
