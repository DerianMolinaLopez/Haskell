{-
-- Dice si se presenta examen, estan excentos solo los 100 
excenta :: (Eq a, Num a) => a -> [Char]
-}
excenta :: (Eq a, Num a) => a -> [Char]
excenta x
  | x == 100   = "Está exento"
  | otherwise  = "No está exento"


main :: IO ()
main = do
  let resultado1 = excenta 100
  putStrLn $ "Resultado 1: " ++ resultado1

  let resultado2 = excenta 90
  putStrLn $ "Resultado 2: " ++ resultado2
