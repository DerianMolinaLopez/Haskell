--
-- VALIDA NUMERO DE TARJETA DE CREDITO
-- 


--rem es para el residuo de dos numeros
-- El objetivo de esta relación es estudiar un algoritmo para validar
-- algunos identificadores numéricos como los números de algunas tarjetas
-- de crédito; por ejemplo, las de tipo Visa o Master Card.  
--
-- El algoritmo que vamos a estudiar es el algoritmo de Luhn consistente
-- en aplicar los siguientes pasos a los dígitos del número de la
-- tarjeta.    
--    1. Se invierten los dígitos del número; por ejemplo, [9,4,5,5] se
--       transforma en [5,5,4,9].
--    2. Se duplican los dígitos que se encuentra en posiciones impares
--       (empezando a contar en 0); por ejemplo, [5,5,4,9] se transforma
--       en [5,10,4,18].
--    3. Se suman los dígitos de cada número; por ejemplo, [5,10,4,18]
--       se transforma en 5 + (1 + 0) + 4 + (1 + 8) = 19.
--    4. Si el último dígito de la suma es 0, el número es válido; y no
--       lo es, en caso contrario. 
--
-- A los números válidos, los llamaremos números de Luhn. 
 



main :: IO()
main = do
    let arreglo = [1, 2, 3, 4, 5]
    let arregloInvertido = invertirArray arreglo
    print arregloInvertido
    let arregloMultiplicado = duplicarImpares arregloInvertido
    print arregloMultiplicado
    let arregloIMpares =  doblePosImpar arregloMultiplicado

invertirArray :: [Integer] -> [Integer]
invertirArray arreglo = reverse arreglo

--formateo las posiciones
duplicarImpares :: [Integer] -> [Integer]
duplicarImpares xs = zipWith (*) xs (cycle [1, 2])

-- Ejercicio 1. Definir la función
--    digitosInv :: Integer -> [Integer]
-- tal que (digitosInv n) es la lista de los dígitos del número n. en
-- orden inverso. Por ejemplo, 
--    digitosR 320274  ==  [4,7,2,0,2,3]
-- ---------------------------------------------------------------------

--invertios la lista por medio de recursividad 
digitosInv :: [Integer] -> [Integer]
digitosInv [] = []
digitosInv (x:xs) = digitosInv xs ++ [x]
 
-- ---------------------------------------------------------------------
-- Ejercicio 2. Definir la función
 doblePosImpar :: [Integer] -> [Integer]
 doblePosImpar [] == []
 doblePosImpar (x:xs) = x * 2 : doblePosImpar xs
-- tal que (doblePosImpar ns) es la lista obtenida doblando los
-- elementos en las posiciones impares (empezando a contar en cero y
-- dejando igual a los que están en posiciones pares. Por ejemplo,
--    doblePosImpar [4,9,5,5]    ==  [4,18,5,10] 
--    doblePosImpar [4,9,5,5,7]  ==  [4,18,5,10,7]
-- ---------------------------------------------------------------------
 
-- 1ª definición (por recursión)

-- 2ª definición (por recursión)

 
-- 3ª definición (por comprensión)

 
-- ---------------------------------------------------------------------
-- Ejercicio 3. Definir la función
--    sumaDigitos :: [Integer] -> Integer
-- tal que (sumaDigitos ns) es la suma de los dígitos de ns. Por
-- ejemplo, 
--    sumaDigitos [10,5,18,4] = 1 + 0 + 5 + 1 + 8 + 4 =
--                            = 19
-- ---------------------------------------------------------------------
 
-- 1ª definición (por comprensión):

 
-- 2ª definición (por recursión):

 
-- ---------------------------------------------------------------------
-- Ejercicio 4. Definir la función  
--    ultimoDigito :: Integer -> Integer
-- tal que (ultimoDigito n) es el último dígito de n. Por ejemplo,
--    ultimoDigito 123 == 3
--    ultimoDigito   0 == 0
-- ---------------------------------------------------------------------



-- ---------------------------------------------------------------------
-- Ejercicio 5. Definir la función 
--    luhn :: Integer -> Bool
-- tal que (luhn n) se verifica si n es un número de Luhn. Por ejemplo,
--    luhn 5594589764218858  ==  True
--    luhn 1234567898765432  ==  False
-- ---------------------------------------------------------------------





