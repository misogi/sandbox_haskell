putQStrLn str = do
    putChar '"'
    putStr str
    putChar '"'
    putChar '\n'

putStrLn' str = do
    putStr str
    putChar '\n'

main = do
    putStrLn "Enter Text:"
    str <- getLine
    putQStrLn str