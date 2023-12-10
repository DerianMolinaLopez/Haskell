main :: IO()
main = do
    --codgio para la generacion de una propiedad distributiva
 --   let generador = [(x,y) | x <- [1,2,3], y <- [4,5]]
    --en este caso la funcion que va a mandar la primera funcion para ahcer las combinaciones
 --   let generador2 = [(x,y)| y<-[4,5],x<-[1,2,3]]
   
    print (numerosCuadrados 10)
    print(paresEven 10)
    print(numerosImpares 10)
    print(numerosManipulados 10 )
    --print(numerosPares 10)
--generar numeros cuadrados
numerosCuadrados :: Int -> [Int]
numerosCuadrados n = [x^2 | x <- [1..n]]
numerpsPares:: Int -> [Int]
numerpsPares n = [x | x <- [1..n], mod x 2 == 0]
--en los generadores para agregar una operacion
--despues del generador agrega una coma , mod x 2 == 0
multiplostres :: Int-> [Int]
multiplostres m = [x |x<-[1..m], mod x 3 == 0]

paresEven::Int->[Int]
paresEven n = [x | x <- [1..n], even x]
--even es para los pares
numerosImpares :: Int -> [Int]
numerosImpares n = [x | x <- [1..n], odd x]


numerosManipulados :: Int -> [Int]
numerosManipulados _ = [x | x<- [1..200], even x, x<200 , x/=10]