
{-
main :: IO ()
main = do
  let num1 = 10
      num2= 20
      suma = sumar num1  num2
  putStrLn $ "La suma de " ++ show num1 ++ " y " ++ show num2 ++ " es: " ++ show suma

sumar ::Int -> Int-> Int--recibo dos enteros, y regreso un entero
sumar a b = a + b
 

-}
main :: IO()
main =do
    let(numero1,numero2) = (20,40)
       suma = numero1+numero2
    putStrLn $ "La suma de " ++ show numero1 ++ " y " ++ show numero2 ++ " es: " ++ show suma
