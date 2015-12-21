import qualified Data.Map as Map
data LockerState = Taken | Free deriving (Show, Eq)

type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map =
  case Map.lookup lockerNumber map of
    Nothing -> Left $ "Locker " ++ show lockerNumber
      ++ " Doesnt exist!"
    Just (state, code) -> if state /= Taken
      then Right code
      else Left $ "Locker " ++ show lockerNumber
        ++ " is already taken!"

lockers :: LockerMap
lockers = Map.fromList
  [
  (100, (Taken, "ZD391"))
  ,(101, (Free, "JAH3I"))
  ,(102, (Free, "IQSA9"))
  ]

infixr 5 :-:
data List a = Empty | a :-: (List a)
  deriving (Show, Read, Eq, Ord)

infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)
