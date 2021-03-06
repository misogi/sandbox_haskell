-- 14.1
import Data.Monoid
import Control.Monad.Writer

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Compared to 9.")

applyLog :: (a, String) -> (a -> (b, String)) -> (b, String)
applyLog (x, log) f = let (y, newLog) = f x  in (y, log ++ newLog)

applyLog' :: (Monoid m) => (a, m) -> (a -> (b, m)) -> (b, m)
applyLog' (x, log) f = let (y, newLog) = f x in (y, log `mappend` newLog)

aplg = ("tobin", "Got outlaw name.") `applyLog` (\x -> (length x, "applied Length."))

type Food = String
type Price = Sum Int

addDrink :: Food -> (Food, Price)
addDrink "beans" = ("milk", Sum 25)
addDrink "Jerky" = ("whiskey", Sum 99)
addDrink _ = ("beer", Sum 30)

apdr = ("beans", Sum 5) `applyLog'` addDrink `applyLog'` addDrink

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Got number: " ++ show x])

multWithLog :: Writer [String] Int
multWithLog = do
  a <- logNumber 3
  b <- logNumber 5
  tell ["Gonna multiply these two"]
  return (a*b)

gcd' :: Int -> Int -> Writer [String] Int
gcd' a b
  | b == 0 = do
    writer (a, ["Finished with " ++ show a])
  | otherwise = do
    tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
    gcd' b (a `mod` b)

gcdReverse :: Int -> Int -> Writer (DiffList String) Int
gcdReverse a b
  | b == 0 = do
    tell $ toDiffList ["Finished with " ++ show a]
    return a
  | otherwise = do
    result <- gcdReverse b (a `mod` b)
    tell $ toDiffList [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
    return result

newtype DiffList a = DiffList {getDiffList :: [a] -> [a]}

toDiffList :: [a] -> DiffList a
toDiffList xs = DiffList (xs++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

instance Monoid (DiffList a) where
  mempty = DiffList (\xs -> [] ++ xs)
  (DiffList f) `mappend` (DiffList g) = DiffList (\xs -> f (g xs))

finalCountDown :: Int -> Writer [String] ()
finalCountDown 0 = do
  tell ["0"]
finalCountDown x = do
  finalCountDown (x-1)
  tell [show x]

finalCountDown' :: Int -> Writer (DiffList String) ()
finalCountDown' 0 = do
  tell (toDiffList ["0"])
finalCountDown' x = do
  finalCountDown' (x-1)
  tell (toDiffList [show x])
