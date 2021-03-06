-- 7.9
class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo Bool where
  yesno = id

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
  if yesno yesnoVal
    then yesResult
    else noResult

-- 7.10

class Functor' f where
  fmap' :: (a -> b) -> f a -> f b

instance Functor' Maybe where
  fmap' f (Just x) = Just (f x)
  fmap' f Nothing = Nothing

instance Functor' (Either a) where
  fmap' f (Right x) = Right (f x)
  fmap' f (Left x) = Left x
