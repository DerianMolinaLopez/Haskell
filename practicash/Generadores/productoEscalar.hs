productoEscalar :: [Int] -> [Int] -> Int
productoEscalar xs ys = sum (zipWith (*) xs ys)

main :: IO ()
main = do
    --print (""productoEscalar [1, 2, 3] [4, 5, 6] )
    --print (sumaElementos [1, 2, 3] [4, 5, 6] )
    --print(combinarTexto["Hola", "Mundo"] ["Adios", "Mundo"])
   -- print (esPalindromo "oso")
   print(diferenciaAbsoluta [1, 2, 3, 4, 5])


--Ejercicio 1: Suma de Elementos de Listas
sumaElementos :: [Int] -> [Int] -> Int
sumaElementos parx pary = sum (zipWith (+) parx pary)
--Ejercicio 3: Combinar Cadenas de Texto
combinarTexto:: [String]->[String]->String
combinarTexto parx pary = concat(zipWith (++) parx pary)
--esPalindromo :: Eq a => [a] -> Bool
-- Ejemplo de uso: esPalindromo [1, 2, 3, 2, 1] == True
--esPalindromo :: Eq a => [a] -> Bool
esPalindromo :: Eq a => [a] -> Bool
esPalindromo cadena = cadena == reverse cadena

--Ejercicio 5: Diferencia Absoluta entre Elementos Consecutivos
diferenciaAbsoluta :: [Int] -> [Int]
diferenciaAbsoluta lista = zipWith (\x y -> abs (x - y)) lista (tail lista)