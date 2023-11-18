
main :: IO()
main = do
    let auxiliar = descomponer "oso"
    putStr $ show auxiliar
{-
!Para el ejemplo necesito crear 2 cosas, el esqueleto y el caso base 
-}
descomponer :: String ->[String]
descomponer []=[] --caso base por si hay lista vacia
--procedimiento recursivo
descomponer (cabeza:resto) = [cabeza] : descomponer resto --cada vez que se ejecute se va a ir quitando un elemento de la lista
