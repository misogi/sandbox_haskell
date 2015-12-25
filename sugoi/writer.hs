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
