a b c d =
    "Func a called with" ++ b ++ " " ++ c ++ " " ++ d

sq b = b * b

sm a b = a + b

pyth a b = a * a + b * b

pyth' (a, b) = a * a + b * b

b = "b"
c = "c"
d = "d"

main = do
    print $ sm (sm 1 4) $ sm 2 3