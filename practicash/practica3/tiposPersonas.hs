
-- tipo persona
{-
NOMBRE,CARRERA,NACIMIENTO,MUERTE
-}
type Persona = (String,String,Int,Int)
--MAS ABAJO ME PDIE DEFINIR UN TIPO NOMBRE
type Nombre = String
type Carrera = String
type Edad = Int
type Muerte = Int
type Profesion = String
-- base de datos
personas :: [(String,String,Int,Int)]
personas = [
        ("Cervantes","Literatura",1547,1616),("Velazquez","Pintura",1599,1660),
        ("Picasso","Pintura",1881,1973),("Beethoven","Musica",1770,1823),
        ("Poincare","Ciencia",1854,1912),("Quevedo","Literatura",1580,1654),
        ("Goya","Pintura",1746,1828),("Einstein","Ciencia",1879,1955),
        ("Mozart","Musica",1756,1791),("Botticelli","Pintura",1445,1510),
        ("Borromini","Arquitectura",1599,1667),("Bach","Musica",1685,1750)]


main :: IO()
main = do

    print (musicos personas)
-- funci�n que proporciona la lista de la nombres de personas de la BD
nombres :: [(String,String,Int,Int)] -> [String]
nombres [] = []--caso base, toco hacer recursividad
--deo conjunto, como solo quiero los nombres, los demas quedan como variables anonimas 
nombres ((nombre,_,_,_):xs) = nombre : nombres xs



-- funci�n que retorna los nombres de las personas que son m�sicos


esMusico :: Persona -> Bool
esMusico (_, carrera, _, _) = carrera == "Musica"

musicos :: [Persona] -> [Nombre]
musicos personas = map (\(nombre, _, _, _) -> nombre) (filter esMusico personas)
-- funci�n que define los nombres de las personas cuya actividad es m
--ocupacion :: [Persona]-> Profesion -> [Nombre]
--definir basicamente la prosfesion que recibe y la lista de personas
ocupacion :: [Persona]-> Profesion -> [Nombre]
ocupacion personas profesion = map (\(nombre, _, _, _) -> nombre) (filter (\(_, carrera, _, _) -> carrera == profesion) personas)

-- Definir la funci�n vivas tal que (vivas bd a) es la lista de 
-- los nombres de las personas de la base de datos bd que 
-- estaban vivas en el a�o a
--vivas :: [(String,String,Int,Int)] -> Int -> [String]


