{-
     4. Los autos pagan tenencia se son modelo de
      diez años atrás al año actual. Hacer una 
      función que dado el año actual y el modelo 
      del auto indique si ese auto pagará tenencia o no.
-}

--dado a que no quiero incluir bibliotecas, sera necesario usar un año estatico
date::Int
date = 2023-10
----
main :: IO()
main = do
    print (checkDate 2023)

checkDate::Int->Bool
checkDate datecheck
     |datecheck>=date = False
     |datecheck<=date = True