-- chapter 8
data Tuple a b = T a b

first :: Tuple a b -> a
first (T x _) = x

second :: Tuple a b -> b
second (T _ y) = y

main = do print $ first (T 1 'a')
          print $ second (T 1 'a')
