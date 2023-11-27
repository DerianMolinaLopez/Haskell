main :: IO ()
main = do
    putStrLn "Ingresa algo:"
    input <- getLine
    putStrLn ("Ingresaste: " ++ input)
