
-- name arg1 arg2 ... argn 

-- Example
in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x =
    x >= min && x <= max

x :: Integer
x = 1

y :: Bool
y = True

z :: Float
z = 3.1415

in_range2 :: Integer -> Integer -> Integer -> Bool
in_range2 min max x =
    let in_lower_bound = min <= x
        in_upper_bound = max >= x
    in in_lower_bound && in_upper_bound

in_range3 :: Integer -> Integer -> Integer -> Bool
in_range3 min max x = ilb && iub
    where
        ilb = min <= x
        iub = max >= x

in_range4 :: Integer -> Integer -> Integer -> Bool
in_range4 min max x =
    if ilb then iub else False
    where
        ilb = min <= x
        iub = max >= x

-- ghci> :t (+)
-- (+) :: Num a => a -> a -> a

main :: IO ()
main = do
    print $ in_range 0 5 3