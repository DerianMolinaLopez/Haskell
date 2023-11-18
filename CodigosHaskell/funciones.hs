import Control.Monad.RWS.Class (MonadState(put))
main :: IO()
main = do
    let saludar = saludo "Juan"--mando a llamar el metodo dandole el argumento de juan
    let sumar = sumas 8 10
    putStrLn (show sumar) --18
    putStrLn saludar  --Hola Juan
saludo :: String ->String --me llega un string y te devuelvo otro string
saludo nombre = "Hola " ++ nombre--esto solo es una plantilla de como va a comportarse

sumas:: Int->Int->Int
sumas a b = a + b -- plantilla de como es que se tiene que comportar
