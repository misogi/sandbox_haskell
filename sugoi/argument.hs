-- 9.4

import System.Environment
import Data.List

main = do
  args <- getArgs
  progName <- getProgName
  putStrLn "THe arguments are:"
  mapM_ putStrLn args
  putStrLn "The program name is:"
  putStrLn progName
