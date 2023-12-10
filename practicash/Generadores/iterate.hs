main :: IO ()
main = do
  let sucesionDoble = iterate (* 2) 1
  let primerosCinco = take 5 sucesionDoble
  putStrLn $ "Primeros cinco elementos de la sucesión doble: " ++ show primerosCinco
 