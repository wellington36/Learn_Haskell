(+) :: Num a => a -> a -> a

sum :: Num p => [p] -> p
sum [] = 0
sum (x:xs) = x + sum xs

-- ghci> :info Num
-- class Num a where
--   (+) :: a -> a -> a
--   (-) :: a -> a -> a
--   (*) :: a -> a -> a
--   negate :: a -> a
--   abs :: a -> a
--   signum :: a -> a
--   fromInteger :: Integer -> a
--   {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-}

-- ghci> :info Show
-- class Show a where
--   showsPrec :: Int -> a -> ShowS
--   show :: a -> String
--   showList :: [a] -> ShowS
--   {-# MINIMAL showsPrec | show #-}

-- ghci> :info Eq
-- class Eq a where
--     (==) :: a -> a -> Bool
--     (/=) :: a -> a -> Bool
--     {-#MINIMAL (==) | (/=) #-}

-- ghci> :info Ord
-- class Eq a => Ord a where
--     compare :: a -> a -> Ordering
--     (<) :: a -> a -> Bool
--     (<=) :: a -> a -> Bool
--     (>) :: a -> a -> Bool
--     (>=) :: a -> a -> Bool
--     max :: a -> a -> a
--     min :: a -> a -> a
--     {-# MINIMAL compare | (<=) #-}

data Temperature = C Float | F Float

instance Eq Temperature where
    (==) (C n) (C m) = n == m
    (==) (F n) (F m) = n == m
    (==) (C c) (F f) = (1.8*c + 32) == f
    (==) (F f) (C c) = (1.8*c + 32) == f

-- data Temperature = C Float | F Float
--     deriving (Show, Eq)

-- Derived equivalence:
--     (==) (C n) (C m) = n == m
--     (==) (F n) (F m) = n == m
--     (==) _ _ = False