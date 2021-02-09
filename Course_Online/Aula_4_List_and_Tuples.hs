import Data.List

-- [1, 2, 3, 4, 5] :: [Interger]

-- [x:xs] let x is a first element and xs is remainder in the list

asc :: Int -> Int -> [Int]
asc n m
 | m < n    = []
 | m == n   = [m]
 | m > n    = n : asc (n+1) m

-- head :: [a] -> a
-- head [1, 2, 3, 4, 5]
-- => 1

-- tail :: [a] -> [a]
-- tail [1, 2, 3, 4, 5]
-- => [2, 3, 4, 5]

-- length :: [a] -> Int
-- length [1, 2, 3, 4, 5]
-- => 5

-- init :: [a] -> [a]
-- init [1, 2, 3, 4, 5]
-- => [1, 2, 3, 4]

-- null :: [a] -> Bool
-- null []
-- => True

-- and :: [Bool] -> Bool
-- and [True, False, True]
-- => False

-- or :: [Bool] -> Bool
-- or [True, False, True]
-- => True

-- ##### List Comprehension #####

-- [ 2*x | x <- [1, 2, 3]]
-- => [2, 4, 6]

-- [ 2*x | x <- [1, 2, 3], x > 1]
-- => [4, 6]

-- [<gen> | <elem> <- <list>, ..., <guard>, ...]

sum1 :: Num p => [p] -> p
sum1 []      = 0
sum1 (x:xs)  = x + sum1 xs

evens :: [Int] -> [Int]
evens []        = []
evens (x:xs)
 | mod x 2 == 0 = x : evens xs
 | otherwise    = evens xs

-- ##### Tuples #####

-- (1, 2) :: (Int, Int)

fst :: (a, b) -> a
fst (x, _) = x

snd :: (a, b) -> b
snd (_, y) = y

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [x + y | (x, y) <- xs]
