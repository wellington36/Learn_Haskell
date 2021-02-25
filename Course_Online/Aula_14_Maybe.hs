import Data.Maybe

data Maybe a = Nothing | Just a

safediv :: Integer a => a -> a -> Maybe a
safediv a b =
    if b == o then Nothing else Just $ div a b

-- From Data.Maybe:

isJust :: Maybe a -> Bool

isNothing :: Maybe a -> Bool

fromJust :: Maybe a -> a

fromMaybe :: a -> Maybe a -> a

-- fromMaybe 3.1415 (Nothing)
-- => 3.1415

-- fromMaybe 3.1415 (Just 2.7183)
-- => 2.7183
