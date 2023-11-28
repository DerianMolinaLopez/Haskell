
main :: IO()
main = do
    print (viviparos "perro")

-- Definir el tipo de dato Animal que tenga un constructor Animal que reciba un nombre y una edad


--vivipar
viviparos :: String -> Bool
viviparos animal 
    | animal == "perro" = True
    | animal == "raton" = True
    | animal == "leon" = True
    | animal == "chango" = True
    | otherwise = False
--oviviparosviviparos :: String -> Bool
oviviparos :: String -> Bool
oviviparos animal 
    | animal == "pajaro" = True
    | animal == "pez" = True
    | animal == "tiburon" = True
    | otherwise = False