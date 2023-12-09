diagonalPrincipal :: [[a]] -> [a]
diagonalPrincipal matriz
  | not (esCuadrada matriz) = error "La matriz no es cuadrada"
  | otherwise = [matriz !! i !! i | i <- [0..(length matriz - 1)]]

-- Función para verificar si una matriz es cuadrada
esCuadrada :: [[a]] -> Bool
esCuadrada matriz = all (\fila -> length fila == length matriz) matriz

-- Ejemplo de uso:
main :: IO ()
main = do
  let matrizEjemplo = [[3,5,2],[4,17,21],[26,9,4]]
  putStrLn $ show (diagonalPrincipal matrizEjemplo)
