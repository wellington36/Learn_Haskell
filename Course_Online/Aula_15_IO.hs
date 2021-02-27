import Data.Char (toUpper)

hw = putStrLn "Hello World"

hw :: IO ()

greet :: IO ()
greet = do
    putStrLn "What's your name?"
    name <- getLine
    let uname = map toUpper name
    putStrLn ("Hello " ++ uname ++ ".")

main :: IO ()
main = do
    i <- getLine
    if i /= "quit" then do
        putStrLn ("Input: " ++ i)
        main
    else
        return ()