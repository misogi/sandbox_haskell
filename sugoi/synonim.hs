import qualified Data.Map as Map

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]

myBook = Map.fromList [("aya", "1234")]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook

type IntMap v = Map.Map Int v
