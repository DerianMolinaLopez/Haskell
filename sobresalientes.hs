{-
5. En el nuevo modelo de competencias los alumnos son calificados
 como “Sobresalientes“ si obtienen calificación de 95 a 100, 
 “Altamente Competentes” si su calificación es entre 90 y 94,
  “Competente” si su calificación es 80 a89, “Suficiente” si
   obtiene entre 70 y 79, en caso que su calificación sea menor
    a 70 será “No Competente”. Hacer una función en Haskell que
     reciba el puntaje y retorne como salida la leyenda de competencia correspondiente.
-}
main :: IO()
main = do
    print (checarClificacion 73)

checarClificacion:: Int->String
checarClificacion calificacion
                      |calificacion>=95 && calificacion<=100 = "Sobresalientes"
                      |calificacion>=90 && calificacion<=94 = "Altamente Competentes"
                      |calificacion>=70 && calificacion<=79 = "Suficiente"
                      |calificacion>=80 && calificacion<=89 = "Competente"
                      |calificacion<70 = "No competente"