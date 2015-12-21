data Person = Person String String Int Float String String
  deriving (Show)

firstName :: Person -> String
firstName (Person firstName _ _ _ _ _) = firstName
