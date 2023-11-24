puedeVotar :: Int -> Bool
puedeVotar edad = edad >= 18

main :: IO()
main = do
    print (puedeVotar 20) 