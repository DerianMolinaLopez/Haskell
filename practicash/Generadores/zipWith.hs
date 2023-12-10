main :: IO ()
main = do
  let lista1 = [1, 2, 3]
  let lista2 = [4, 5, 6]
  let resultado = zipWith (+) lista1 lista2
  putStrLn $ "Resultado de zipWith (+): " ++ show resultado

  --el zipWIth basicamente es una variane del zip, solo que este realiza una operaión entre los elementos de las listas
  --entre los pares, el primero cn el primero, y el seundo con el segundo
  
