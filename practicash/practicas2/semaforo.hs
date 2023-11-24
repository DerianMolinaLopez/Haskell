-- Definición del tipo de datos Color
data Color = Rojo | Amarillo | Verde deriving (Show, Eq)

-- Función para obtener el siguiente color en el semáforo
semaforo :: Color -> Color
semaforo Rojo = Amarillo
semaforo Amarillo = Verde
semaforo Verde = Rojo

main :: IO ()
main = do
  let colorActual = Rojo
  let siguienteColor = semaforo colorActual
  putStrLn $ "El siguiente color es: " ++ show siguienteColor
