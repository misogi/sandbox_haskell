

mapped = map (\x -> x * x) [1,2,3,4,5]
add = \x y -> x + y

main = do print mapped
          print (add 3 4)
