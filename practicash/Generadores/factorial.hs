import Data.Char (toUpper)
import Data.List.Split


main :: IO()
main = do
    print(unionesCadena "hola mundo")
--Factorial con Guardas:
factorial :: Int -> Int
factorial n
    | n == 0 = 1
    | n > 0 = n * factorial (n-1)
    | otherwise = error "No hay para negativos"

--identificar is hay un valor dentro del arreglo
esta :: Int -> [Int] -> Bool
esta _ [] = False
esta n (x:xs)
    | n == x = True
    | otherwise = esta n xs
--saber cuantas vecees se repite un elemento en una lista
cuantasVeces :: Int -> [Int] -> Int
cuantasVeces _ [] = 0
cuantasVeces n (x:xs)
    | n == x = 1 + cuantasVeces n xs
    | otherwise = cuantasVeces n xs
--prueba de dropwhile
--eliminar los numeoros menores a n de una lista
menorQue:: Int -> [Int] -> [Int]
menorQue numero lista = dropWhile (<numero) lista

--suma de digitos de una cadena 
--read conversor de un caracter a su numero entero en caso de servlo    

sumaDigitos :: String -> Int
sumaDigitos [] = 0
sumaDigitos (x:xs) = read [x] + sumaDigitos xs

---crear toda una cadena a mayusculas por medio de recurcion
mayusculasRecurcion::String -> String
mayusculasRecurcion [] = []
mayusculasRecurcion (x:xs) = toUpper x : mayusculasRecurcion xs


unionesCadena :: String -> String
unionesCadena cadena = unwords (formateo (splitOn " " cadena))

formateo :: [String] -> [String]
formateo [] = []
formateo (x:xs) = map toLower x : formateo xs