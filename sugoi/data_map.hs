import qualified Data.Map as Map
import Data.Char

phoneBook = [
  ("betty", "555-2938"),
  ("betty", "555-2938"),
  ("bonny", "452-2928"),
  ("patsy", "493-2928")
  ]

phoneBookList :: Map.Map String String
phoneBookList = Map.fromList phoneBook

newBook = Map.insert "grace" "341-9021" phoneBookList

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

intBook = Map.map string2digits phoneBookList

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
  where add number1 number2 = number1 ++ ", " ++ number2
