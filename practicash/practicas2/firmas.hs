enRango :: Integer -> Bool
previoSiguiente :: Integer -> (Integer, Integer)
andLogico :: Bool -> Bool -> Bool
valorAbsoluto :: Integer -> Integer
signo :: Integer -> String
-- Número en el rango 0-9
enRango :: Integer -> Bool
enRango x = x >= 0 && x <= 9

-- Anterior y siguiente en una tupla
previoSiguiente :: Integer -> (Integer, Integer)
previoSiguiente x = (x - 1, x + 1)

-- Simulación del AND lógico
andLogico :: Bool -> Bool -> Bool
andLogico True True = True
andLogico _    _    = False

-- Valor absoluto
valorAbsoluto :: Integer -> Integer
valorAbsoluto x = if x < 0 then (-x) else x

-- Determinar el signo
signo :: Integer -> String
signo x
  | x < 0     = "Negativo"
  | x == 0    = "Cero"
  | otherwise = "Positivo"
