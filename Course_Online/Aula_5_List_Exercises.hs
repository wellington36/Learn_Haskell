import Data.List()


-- 1
func_elem :: (Eq a) => a -> [a] -> Bool
func_elem _ [] = False
func_elem e (x:xs) = (e == x) || (func_elem e xs)

-- 2
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
 | x `elem` xs  = nub xs
 | otherwise    = x : nub xs

-- 3
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [_] = True
isAsc (x:xs)
 | x <= (head xs)     = isAsc xs
 | otherwise          = False

-- 4
hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] a b = a == b
hasPath (x:xs) a b = (a, b) == x || hasPath (xs) a b



main :: IO ()
main = do
    print $ func_elem 3 [1, 2, 3, 4]
    print $ nub [1, 5, 2, 3, 2, 3, 2, 3]
    print $ isAsc [1, 2, 7, 4, 5]
    print $ hasPath [(1, 2), (3, 2), (2, 1)] 1 2

