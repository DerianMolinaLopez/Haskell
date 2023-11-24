múltiploDe :: Integer -> Integer -> Bool
múltiploDe a b = b `mod` a == 0
main :: IO ()
main = do
  let resultado = múltiploDe 3 9
  putStrLn (show resultado)
