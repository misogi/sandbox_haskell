-- 9.7

import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString as S
import System.Environment
import System.Directory
import Control.Exception
import System.IO

main = do
  (fileName1:fileName2:_) <- getArgs
  copy fileName1 fileName2

copy source dest = do
  contents <- B.readFile source
  bracketOnError
    (openTempFile "." "temp")
    (\(tempName, tempHandle) -> do
      hClose tempHandle
      removeFile tempName)

    (\(tempName, tempHandle) -> do
      B.hPutStr tempHandle contents
      hClose tempHandle
      renameFile tempName dest)
