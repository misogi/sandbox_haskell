-- 8.1
-- main = putStrLn "hello, world"
import Data.Char

main :: IO ()
main = do
  putStrLn "Hello , whats your first name"
  firstName <- getLine
  putStrLn "Whats your las name"
  lastName <- getLine
  let bigFirstName = map toUpper firstName
      bigLastName = map toUpper lastName
  putStrLn $ "Hey " ++ bigFirstName
    ++ ",you rock!" ++ bigLastName
    ++ ", How are you."

-- nameTag = "Hello, my name is " ++ getLine
