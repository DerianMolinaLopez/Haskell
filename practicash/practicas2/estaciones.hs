{-
-- Definir una función que nos diga qué meses corresponden  a cada estación
-- ejemplo: Primavera == Marzo, Abril, Mayo

-}
--espacio de variables globales
--simulaicon de una tabla hash
type Mes = String
type Estacion = String

mesesEstaciones :: [(Mes, Estacion)]
mesesEstaciones =
  [ ("Enero", "Invierno")
  , ("Febrero", "Invierno")
  , ("Marzo", "Primavera")
  , ("Abril", "Primavera")
  , ("Mayo", "Primavera")
  , ("Junio", "Verano")
  , ("Julio", "Verano")
  , ("Agosto", "Verano")
  , ("Septiembre", "Otoño")
  , ("Octubre", "Otoño")
  , ("Noviembre", "Otoño")
  , ("Diciembre", "Invierno")
  ]


-----------------------------------------------------------------------
main :: IO()
main = do
    print (mesesPorEstacion "Primavera")

mesesPorEstacion :: Estacion -> [Mes]
mesesPorEstacion estacion =
  [mes | (mes, est) <- mesesEstaciones, est == estacion]