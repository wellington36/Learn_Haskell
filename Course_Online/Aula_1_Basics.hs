sum1 :: Num p => [p] -> p
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

-- or
sum2 :: [Int] -> Int
sum2 = foldr (+) 0

main :: IO ()
main = do
    print $ sum1 [1..10]
    print $ sum2 [1..10]

-- Lazy (let func1, 2 and 3 defined)

-- func :: p1 -> p2
-- func arg =
--     let x = func1 arg
--         y = func2 arg
--         z = func3 arg
--     in
--     if z then x else y