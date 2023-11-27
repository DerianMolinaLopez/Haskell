main :: IO ()
main = do
    putStr "Ingresa una lista de números separados por espacios: "
    lista <- getLine
    let listaInt = map read (words lista) :: [Int]  -- Convierte la cadena a una lista de enteros
    unoMas = maestra toman
    regalos = [div x 2|x<- unoMas]
    recibidos = last regalos: init regalos 
    obtenidos = [x+y|(x,y)<- zip regalos recibidos]

    putStrL $ "iniciamos con: "++ show toman
     putStrL $ "y terminamos con con: "++ show obtenidos

maestra :: [Int] -> [Int]
maestra [] = []--caso base
maestra lista = 