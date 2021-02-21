-- Name and Age ruim
-- data Person = Person String Int

data Person = Person { name :: String,
                       age :: Int}

greet1 :: Person -> [Char]
greet1 person = "Hi " ++ name person

greet2 :: Person -> [Char]
greet2 (Person n _) = "Hi " ++ n

data Point = 
    | D2 { x :: Int, y :: Int }
    | D3 { x :: Int, y :: Int, z :: Int }

-- x (D2 1 2)
-- => 1

-- x (D3 1 2 3)
-- => 1