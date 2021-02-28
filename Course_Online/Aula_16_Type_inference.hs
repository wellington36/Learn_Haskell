import Data.List (sort)

-- f :: ?
-- f = <expt>


-- add :: Num a => a -> a -> [a] -> [a]
-- add x y z = (x + y) : z

-- (+) :: (Num d) => d -> d -> d
-- (:) :: e -> [e] -> -> [e]

-- x :: a
-- y :: b
-- z :: c

-- from (x + y) derive a = d and b = d
-- from (x + y) : z derive [e] = c and d = e

-- x :: d
-- y :: d
-- z :: [e]
-- z :: [d]

f :: Ord a => [a] -> [a]
f = reverse . sort

-- reverse :: [a] -> [a]
-- (.) :: (c -> d) -> (b -> c) -> b -> d
-- sort :: Ord e => [e] -> [e]

-- from reverse . sort derive
--     b = [e], c = [e], c = [a], d = [a]
-- => f :: Ord a => [a] -> [a]

-- fx :: a -> [a]
-- fx x = x : x

-- x :: a
-- (:) :: b -> [b] -> [b]

-- from (x:x) derive a = b and a = [b]
-- => b = [b] <- TYPE ERROR!!!

