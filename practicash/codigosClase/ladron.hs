main :: IO()
main = do

    let confesion1 = ""
        confesion2 = ""
    
    print (delatar True True)

--funcion de delatar que recibe dos argumentos
delatar :: Bool -> Bool -> String
delatar luis mario
    | luis == True && mario == True = "(3,3)"
    | luis == True && mario == False = "(0,2)"
    | luis == False && mario == True = "(2,0)"
    | luis == False && mario == False = "(0,0)"

