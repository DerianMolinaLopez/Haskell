main :: IO()
main = do
    -- Imaginemos que tenemos dos listas
    let primero = [1,2,3,4,5,6,7,8,9,10]
    let segundo = [10,9,8,7,6,5,4,3,2,1]

    -- Une las listas por medio de los pares, el primero con el primero, el segundo con el segundo hasta n
    let union = zip primero segundo

    -- Suma los elementos pares correspondientes de las dos listas
    let sumarParesElementos = [x + y | (x, y) <- union, even x, even y]
    print sumarParesElementos
    {-
     Definir la función diagonalPrincipal :: [[a]] -> [a] que valide que se reciba una matriz cuadrada en cuyo caso retornará la diagonal principal de la matriz,. Por ejemplo,

diagonalPrincipal [[3,5,2],[4,17,21],[26,9,4]] == [3,17,4]
    -}
    --definir la funcion deiagonal principal que valide que sea una matriz cuadrada y que retorne la diagnal principal
    