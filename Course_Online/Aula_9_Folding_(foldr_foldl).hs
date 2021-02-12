-- foldr :: (a -> b -> b) -> b -> [a] -> b

-- foldr (+) 0 [1...n] => 0 + 1 + ... + n

-- foldr (\elem acc -> <term>) <start_acc> <list>

-- foldl (\acc elem -> <term>) <start_acc> <list>