import System.Random

main :: IO ()
main = do
  -- Crear una semilla para el generador de números aleatorios
  gen <- getStdGen
  
  -- Generar un número aleatorio
  let numeroAleatorio = head (randomRs (1, 100) gen :: [Int])
  
  putStrLn $ "Número aleatorio: " ++ show numeroAleatorio


randomIO :: IO Int
randomIO = randomRIO (0, 100)