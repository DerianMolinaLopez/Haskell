{-

-- Dice si el parametro b es multiplo del parametro a
múltiploDe :: Integer -> Integer -> Bool 
-}
main :: IO ()
main =do
    print (parametros 4 3)
parametros:: Integer -> Integer -> Bool
parametros a b = a `mod` b == 0
