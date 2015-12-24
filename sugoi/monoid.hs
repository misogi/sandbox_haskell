-- 12.1
import Data.Monoid

data CoolBool = CoolBool { getCoolBool :: Bool }

helloMe :: CoolBool -> String
helloMe (CoolBool _) = "hello"

newtype CookBool = CookBool {getCookBool :: Bool}

helloMe' :: CookBool -> String
helloMe' (CookBool _) = "hello"

data Race = Human | Elf | Orc | Goblin

newtype CharList = CharList { getCharList :: [Char] }
  deriving (Eq, Show)

newtype Pair b a = Pair { getPair :: (a, b) }

instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)

-- 12.3

lengthCompare :: String -> String -> Ordering
lengthCompare x y =
  (length x `compare` length y) `mappend`
  (vowels x `compare` vowels y) `mappend`
  (x `compare` y)
    where vowels = length . filter (`elem` "aeiou")
