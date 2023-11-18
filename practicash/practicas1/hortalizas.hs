{-
 2. En el estado de Sinaloa el periodo de siembra de hortalizas 
 es entre los meses de noviembre a enero, fuera de esos periodos 
 la siembra no es exitosa. Definir una función en Haskell que 
 determine si la siembra tendrá éxito teniendo como entrada el mes. El resultado debe ser un valor booleano.

-}
--defino mi arreglo global
meses::[String]
meses = ["Noviembre","Diciembre","Enero"]

main::IO()
main = do
    print (mesProductivo "Febrero")
--metodos
mesProductivo :: String ->Bool
mesProductivo  mes =
    if elem mes meses
        then  True
        else  False
