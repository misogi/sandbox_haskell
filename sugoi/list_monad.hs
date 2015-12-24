import Control.Monad
-- 13.6

sevensOnly :: [Int]
sevensOnly = do
  x <- [1..50]
  guard ('7' `elem` show x)
  return x

listOfTuples :: [(Int, Char)]
listOfTuples = do
  n <- [1,2]
  ch <- ['a', 'b']
  return (n, ch)

listOfTuples' :: [(Int, Char)]
listOfTuples' =
  [1,2]
  >>= \n -> ['a', 'b']
  >>= \ch -> return (n, ch)

listOfTuples'' :: [(Int, Char)]
listOfTuples'' =
  [(n, ch) | n <- [1,2], ch <- ['a', 'b']]

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c, r) = do
  (c', r') <- [(c+2, r+1), (c+2, r-1), (c-2, r-1)
    ,(c-2, r+1), (c+1, r-2), (c+1, r+2), (c-1, r-2)
    ,(c-1, r+2)]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c', r')

moveKnight' :: KnightPos -> [KnightPos]
moveKnight' (c, r) = filter onBoard
  [(c+2, r+1), (c+2, r-1), (c-2, r-1)
  ,(c-2, r+1), (c+1, r-2), (c+1, r+2), (c-1, r-2)
  ,(c-1, r+2)]
  where onBoard (c, r) = c `elem` [1..8] && r `elem` [1..8]

in3 :: KnightPos -> [KnightPos]
in3 start = do
  first <- moveKnight start
  second <- moveKnight first
  moveKnight second

in3' :: KnightPos -> [KnightPos]
in3' start =
  return start >>= moveKnight >>= moveKnight >>= moveKnight

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start
