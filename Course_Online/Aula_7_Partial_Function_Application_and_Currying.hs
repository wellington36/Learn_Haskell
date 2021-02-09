-- f :: a -> b -> c -> d
-- f :: a -> (b -> (c -> d))

add :: Int -> Int -> Int
add = (\x -> (\y -> x + y))

-- map :: (a -> b) -> [a] -> [b]
doubleList = map (\x -> 2*x)
