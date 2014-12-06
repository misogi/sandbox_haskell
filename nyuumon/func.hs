add :: Int -> Int -> Int
add x y = x + y

fact :: Int -> Int
fact 0 = 1
fact x = x * fact (x-1)

main = print (fact 5)
