{-
-- Decir que color sigue en el semaforo a partir del color actual
semaforo :: Color -> Color
-}
--necesito hacer un recorrido simulando una lista circular
data Color = Rojo | Amarillo | Verde deriving (Show, Eq)

-- Lista circular de colores
coloresSemaforo :: [Color]
coloresSemaforo = [Rojo, Amarillo, Verde]

-- Función para obtener el índice siguiente en una lista circular
siguienteIndice :: Int -> Int -> Int
siguienteIndice currentIndex listLength = (currentIndex + 1) `mod` listLength

-- Función para obtener el siguiente color en el semáforo
semaforo :: Color -> Color
semaforo currentColor =
    let currentIndex = case currentColor of
                          Rojo     -> 0
                          Amarillo -> 1
                          Verde    -> 2
        nextIndex = siguienteIndice currentIndex (length coloresSemaforo)
    in coloresSemaforo !! nextIndex

main :: IO ()
main = do
    putStrLn "Bienvenido al programa del semáforo."
    putStrLn "Ingrese el color actual del semáforo (Rojo, Amarillo o Verde):"
    inputColor <- getLine
    let currentColor = read inputColor :: Color
    let nextColor = semaforo currentColor
    putStrLn $ "El siguiente color en el semáforo después de " ++ show currentColor ++ " es: " ++ show nextColor
