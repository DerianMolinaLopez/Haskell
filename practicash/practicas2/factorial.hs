main :: IO()
main = do
    print (fact 10)
--con guarda
fact :: Integer -> Integer
fact n
  | n == 0    = 1 --caso base para la salida
  | n < 0     = error "No está definido para números negativos"
  | otherwise = n * fact (n - 1)
--con patrones
fact2 :: Integer -> Integer
fact2 0 = 1
fact2 n
  | n < 0     = error "No está definido para números negativos"
  | otherwise = n * fact (n - 1)
