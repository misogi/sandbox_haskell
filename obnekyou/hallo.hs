-- Say hello

module Main where
import Prelude

main = do av <- getArgs
    putStrLn $ "Hi, " ++ (av !! 0) ++ " !"