lucky :: Int -> String
lucky 7 = "Lucky SEVEN"
lucky x = "Sorry!"

sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe x = "Not between 1 to 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

charName :: Char -> String
charName 'a' = "Alb"

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "empty"
head' (x:_) = x
