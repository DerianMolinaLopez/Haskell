{-
  3.    Hacer una función que retorne si una persona es niño (de 0 a 11 años), 
  joven (de 12 a 18 años), 
  adulto (de 19 a 50) y adulto mayor (de 50 o más años).

-}
main :: IO()
main = do
    print (edades 10)

edades::Int->String
edades edad 
    |edad>=0  && edad<=11 = "es un nino"
    |edad>=12 && edad<=18 ="es un joven"
    |edad>=19 && edad<=50 ="es un adulto"
