-- chapter 8

data List a = Cons a (List a) | Nil

length' :: List a -> Int
length' Nil = 0
length' (Cons x xs) = 1 + length' xs

main = do print $ length' Nil
          print $ length' $ Cons 1 $ Cons 2 $ Cons 3 Nil
