main :: IO()
main = do
    -- creamos una propiedad distributiva de dos listas por medio de zip
    let primero = [1,2,3,4,5]
    let segundo = ["a","b","c","d","e"]--si en uno de los arreglos la lista tiene mas elementos que en la otra, solamente se crearan pares con n maximo al del array de menor longitud

    -- me puede servir mucho para la generación de índices, por ejemplo
    let indice = ["primero","segundo","tercero","cuarto","quinto"]
    print (zip [0..] indice)
    print (zip segundo primero)