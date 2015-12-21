data Person = Person {
  firstName :: String
  , lastName :: String
  , age :: Int } deriving (Show, Eq, Read)

mysteryDude = "Person {firstName=\"michael\"" ++
  ", lastName=\"Dia\", age=43}"

data Car = Car {
  company :: String
  , model :: String
  , year :: Int
} deriving (Show)

tellCar :: Car -> String
tellCar (Car {company = c, model = m, year = y}) =
  "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Eq, Ord, Show, Read, Bounded, Enum)

-- minBound :: Day
-- maxBound :: Day
-- sacc Monday
-- pred Saturday
