-- class Applicative m => Monad m where
--   (>>=) :: m a -> (a -> m b) -> m b
--   (>>) :: m a -> m b -> m b
--   return :: a -> m a
--   {-# MINIMAL (>>=) #-}
--         -- Defined in ‘GHC.Base’
-- instance Monad (Either e) -- Defined in ‘Data.Either’
-- instance Monad [] -- Defined in ‘GHC.Base’
-- instance Monad Maybe -- Defined in ‘GHC.Base’
-- instance Monad IO -- Defined in ‘GHC.Base’
-- instance Monad ((->) r) -- Defined in ‘GHC.Base’

-- (>>=) :: Monad m => m a -> (a -> m b) -> m b

-- Just 1 >>= (\x -> Just x)
-- ==> Just 1

-- Nothing >>= (\x -> Just x)
-- ==> Nothing

maybeadd :: Num b => Maybe b -> b -> Maybe b
maybeadd :: mx y = mx >>= (\x -> Just $ x + y)

