main :: IO()
main = do
    --codgio para la generacion de una propiedad distributiva
    let generador = [(x,y) | x <- [1,2,3], y <- [4,5]]
    --en este caso la funcion que va a mandar la primera funcion para ahcer las combinaciones
    let generador2 = [(x,y)| y<-[4,5],x<-[1,2,3]]
    print generador2

