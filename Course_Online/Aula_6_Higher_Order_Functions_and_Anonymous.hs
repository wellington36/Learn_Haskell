app :: (a -> b) -> a -> b
app f x = f x

add1 :: Int -> Int
add1 x = x + 1

-- (\<args> -> <expr>)

add2 :: Integer -> Integer
add2 = (\x -> x + 1)

add3 :: Integer -> Integer -> Integer -> Integer
add3 = (\x y z -> x + y + z)

add4 :: Integer -> Integer
add4 = app (\x -> x+1)

-- map :: (a -> b) -> [a] -> [b]

-- map (\x -> x+1) [1, 2, 3, 4, 5]
-- => [2, 3, 4, 5, 6]

-- map (\(x, y) -> x + y) [(1, 2), (2, 3), (3, 4)]
-- => [3, 5, 7]

-- filter :: (a -> Bool) -> [a] -> [a]

-- filter (\x -> x > 2) [1, 2, 3, 4, 5]
-- => [3, 4, 5]
