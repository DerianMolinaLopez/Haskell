{-
     1. Dadas las dimensiones ancho y alto de dos terrenos rectangulares, definir el área del terreno mayor.

-}

main :: IO()
main =  do
     let terreno1=area 30 10
     let terreno2 = area 20 20
     print (comparacion terreno1 terreno2)
     --print terreno1
    -- print terreno2
     {-if terreno1>terreno2 then
          print "el terreno 1 es mayor"
          else
               print "el terreno 2 es mayor"
     -}

     
area:: Int->Int->Int--esqueleto de mi funcion
area base altura = (base*altura)--comportamiento
comparacion :: Int->Int->String
comparacion terreno1 terreno2
       |terreno1>terreno2 = "el terreno 1 es mayor"
       |terreno2>terreno1 = "el terreno 2 es mayor"
       |terreno1==terreno2 = "son iguales"