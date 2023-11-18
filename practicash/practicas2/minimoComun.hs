{-
--Definir la función mcd, tal que (mcd a b) es el máximo común divisor de a y b 
calculado mediante el algoritmo de Euclides. Por ejemplo, mcd 30 45 == 15
mcd :: Integer -> Integer -> Integer

-}
main :: IO()
main = do
    print (mcd 30 45)
mcd :: Integer -> Integer -> Integer
mcd a b =
     if b == 0
         then 
            a 
         else
             mcd b (a `mod` b)
