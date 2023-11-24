-- Retorna las raíces de una función cuadrática en base a sus coeficientes
raices :: Float -> Float -> Float -> (Float, Float)
raices a b c =
  let discriminante = b^2 - 4*a*c
      raizDiscriminante = sqrt discriminante
      denominador = 2*a
  in
    if discriminante >= 0
      then ((-b + raizDiscriminante) / denominador, (-b - raizDiscriminante) / denominador)
      else error "La función cuadrática no tiene raíces reales"

main :: IO ()
main = do
  
  -- Ejemplo de uso de la función raices
  let coeficientes@(a, b, c) = (1, -3, 2)  -- coeficientes para la ecuación x^2 - 3x + 2 = 0
  let resultado = raices a b c
  putStrLn $ "Las raíces son: " ++ show resultado
