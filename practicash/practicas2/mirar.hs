{-
Decir hacia donde miras si giras 90 grados
girar90 :: Dirección -> Dirección

como no se si hay una direccion ya por defecto tome el angulo 90 del circulo unitario
-}
main :: IO()
main = do
    
    print (girar 0)

girar :: Int -> String
girar grados =
     let angulo = grados+90
     in direccion angulo

direccion :: Int -> String
direccion angulo
    | angulo == 90 = "Norte"
    | angulo == 180 = "Este"
    | angulo == 270 = "Sur"
    | angulo == 360 = "Oeste"
    | otherwise = "Angulo no valido"