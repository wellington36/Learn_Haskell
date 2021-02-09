-- name <args> = ... name <args'> ...

fac1 :: (Ord p, Num p) => p -> p
fac1 n = 
    if n <= 1 then
        1
    else
        n * fac1 (n-1)

fac2 :: (Ord p, Num p) => p -> p
fac2 n
    | n <= 1    = 1
    | otherwise = n * fac2 (n-1)

is_zero 0 = True
is_zero _ = False 

fac3 :: (Ord t, Num t) => t -> t
fac3 n = aux n 1
    where
        aux n acc
            | n <= 1    = acc
            | otherwise = aux (n-1) (n * acc)
