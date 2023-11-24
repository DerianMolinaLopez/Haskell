import System.Random

-- Función para generar una lista aleatoria de 4 números del 1 al 6 sin repetir
generarListaAleatoria :: IO [Int]
generarListaAleatoria = do
  gen <- newStdGen
  return $ take 4 $ nub $ randomRs (1, 6) gen

-- Función principal que ejecuta el juego
main :: IO ()
main = do
  randX <- generarListaAleatoria
  putStrLn "Adivina la lista de 4 números del 1 al 6 sin repetir."

  jugarJuego randX

-- Función recursiva que permite al usuario ingresar listas hasta adivinar la correcta
jugarJuego :: [Int] -> IO ()
jugarJuego randX = do
  putStrLn "Ingresa tu lista:"
  putStr "Ejemplo [1,2,3,4]: "
  input <- getLine
  let lista = read input :: [Int]
      verdes = length [x | (x, y) <- zip randX lista, x == y]
      amarillos = length (intersect randX lista) - verdes
      rojos = length lista - (verdes + amarillos)
  putStrLn $ "Verdes: " ++ show verdes
  putStrLn $ "Amarillos: " ++ show amarillos
  putStrLn $ "Rojos: " ++ show rojos

  if verdes == 4
    then putStrLn "¡Felicidades! Has adivinado la lista."
    else jugarJuego randX
