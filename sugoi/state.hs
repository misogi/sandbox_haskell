-- 14.3
import Control.Monad.State
import System.Random

type Stack = [Int]

pop' :: Stack -> (Int, Stack)
pop' (x:xs) = (x, xs)

push' :: Int -> Stack -> ((), Stack)
push' a xs = ((), a:xs)

pop'' :: State Stack Int
pop'' = state $ \(x:xs) -> (x, xs)

push'' :: Int -> State Stack ()
push'' a = state $ \xs -> ((), a:xs)

pop :: State Stack Int
pop = do
  (x:xs) <- get
  put xs
  return x

push :: Int -> State Stack ()
push x = do
  xs <- get
  put (x:xs)

stackManip' :: Stack -> (Int, Stack)
stackManip' stack = let
  ((), newStack1) = push' 3 stack
  (a, newStack2) = pop' newStack1
  in pop' newStack2

stackManip :: State Stack Int
stackManip = do
  push 3
  pop
  pop

stackStuff :: State Stack ()
stackStuff = do
  push 3
  a <- pop
  if a == 5
    then push 7
    else do
      push 3
      push 8

moreStack :: State Stack ()
moreStack = do
  a <- stackManip
  if a == 100
    then stackStuff
    else return ()

randomSt :: (RandomGen g, Random a) => State g a
randomSt = state random

threeCoins :: State StdGen (Bool, Bool, Bool)
threeCoins = do
  a <- randomSt
  b <- randomSt
  c <- randomSt
  return (a, b, c)
