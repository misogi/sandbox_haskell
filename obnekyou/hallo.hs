factorial 0 = 1
factorial n =
    if n > 0
        then n * factorial(n - 1)
    else
        error "Factional of negative number!"

main = print (factorial (-2))