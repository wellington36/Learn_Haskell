import Data.List ( sort )

-- (.) :: (b -> c) -> (a -> b) -> a -> c

-- (f . g) equiv. to (\x -> f (g x))

descSort1 :: Ord a => [a] -> [a]
descSort1 = reverse . sort

descSort2 :: Ord a => [a] -> [a]
descSort2 = (\x -> reverse (sort x))

descSort3 :: Ord a => [a] -> [a]
descSort3 x = reverse (sort x)

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

($) :: (a -> b) -> a -> b


main :: IO ()
main = do
    print $ descSort1 [1..10]
