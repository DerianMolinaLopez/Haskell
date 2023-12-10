import Data.Char (toUpper)
import Data.Char (toUpper)
import Data.Char (toLower)
--import Data.List.Split

main :: IO()
main = do
    print (paresZipWith[1,2,3] [4,5,6])
    print (paresZip [1,2,3] [4,5,6])
    print (paresEven 10)
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


--unionesCadena :: String -> String
--unionesCadena cadena = unwords (formateo (splitOn " " cadena))

--formateo :: [String] -> [String]
--formateo [] = []
--formateo (x:xs) = map toLower x : formateo xs

--posiciones de una letra en una cadena de string
posiciones :: String -> Char -> [Int]
posiciones xs y = [n | (x,n) <- zip xs [0..], x == y]

--generar n numeros pares por medio de un generador
pares :: Int -> [Int]
pares n = [2*x | x <- [1..n]]


--una funcion anonima por medio del zipWIth
--hace run formateo de caracteres por medio de dicha funcion
formateo :: [String] -> [String] -> [String]
formateo primera segunda = zipWith (\x y -> map toUpper x ++ " " ++ map toUpper y) primera segunda

--generacion de pares con even
paresEven :: Int -> [Int]
paresEven n = take n [x | x <- [1..], even x]

--generacion de pares con zip
paresZip :: [Int] -> [Int] -> [(Int, Int)]
paresZip primero segundo = zip primero segundo
--generacion de pares zipWIth
paresZipWith :: [Int] -> [Int] -> [(Int, Int)]
paresZipWith primero segundo = zipWith (\x y -> (x,y)) primero segundo

