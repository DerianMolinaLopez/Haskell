import Text.Read (readMaybe)

catafixia = ["NO","NO","SI"]

main :: IO()
main = do
    putStrLn "¿Que puerta escoges? 1, 2 o 3: "
    respuesta <- getLine
    let numero = readMaybe respuesta :: Maybe Int
{-mostrar la puerta

-}

--preguntamos si esta seguro
    putStrLn "¿ESTAS SEGURO? SI O NO: "
    seguridad <- getLine
    estaSeguro seguridad numero

estaSeguro :: String -> Maybe Int -> IO ()
estaSeguro respuesta numero 
    | respuesta == "SI" = case numero of
                            Just num -> mostrar num
                            
    | otherwise = main

mostrar :: Int -> IO ()
mostrar numero = putStrLn (catafixia !! (numero - 1))