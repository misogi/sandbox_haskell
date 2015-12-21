-- 8.1
-- main = putStrLn "hello, world"

main = do
  putStrLn "Hello , whats your name"
  name <- getLine
  putStrLn ("Hey " ++ name ++ ",you rock!")
