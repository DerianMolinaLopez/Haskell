main :: IO()
puertas = ["si","no","si"]
main = do
    --primero recibimops una respuesta por teclado
    putStrLn "Elige una de las puertas esta la 1,2 y la 3"
    respuesta <- getLine

    print(respuesta)

estaSeguro :: String -> String
estaSeguro respuesta 
    | respuesta == "si" = "si"
    | otherwise = "no"