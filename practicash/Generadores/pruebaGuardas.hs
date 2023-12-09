import Data.Fixed (mod')
main :: IO()
main = do
    --las guardas tienen una exprecion de limitacion a la hora de 
    --generar los valores por ejemplo tenemos el metodo de la parte inferior
    --una guarda directo del main
    let guardaLImite = [x|x<-[1..10],x<=10]
    --print guardaPares 100
    print (factores 20) 
    
--creamos una guarda por invocacion que me de solo los numeros pares menores a n
guardaPares :: Int -> [Int]
guardaPares n = [x|x<-[1..n],x<=50,even x]

factores ::  Int -> [Int]
factores n = [x|x<-[1..n], n `mod` x ==0]


