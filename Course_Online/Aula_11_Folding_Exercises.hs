

-- 1
rev :: [a] -> [a]
rev = foldl (\acc x -> x : acc) []

-- 2
prefixes :: [a] -> [[a]]
prefixes = 
    foldr (\x acc -> [x] : (map ((:) x) acc)) []

-- 3
lagrange :: [(Float, Float)] -> Float -> Float
lagrange xs x = foldl (\acc (xj, y) -> acc + (y * l xj)) 0 xs
    where
        l xj = foldl (
            \acc (xk, _) ->
                if xj == xk then
                    acc
                else
                    acc * ((x - xk)/(xj - xk))
            ) 1 xs

-- 4
data Trie a = Leaf a | Node a [Trie a]

-- t =
--     Node "c" [
--         Node "a"
--             [Leaf "r", Leaf "t"],
--         Node "o"
--             [Node "o"
--                 [Leaf "l"]]]

foldtrie :: (b -> a -> b) -> b -> Trie a -> b
foldtrie f acc (Leaf x) = f acc x
foldtrie f acc (Note x xs) = foldl f' (f acc x) xs
    where
        f' acc t = foldtrie f acc t



main :: IO ()
main = do
    print $ rev [1..10]
    print $ prefixes [1..10] 
    print $ lagrange [(1, 2), (2, 3), (4, 5)] 3
    