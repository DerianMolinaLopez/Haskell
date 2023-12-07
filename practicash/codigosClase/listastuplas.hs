

demo = [(n,i,i/n)|(n,i)<- zip[1..][3,8,5,9]]

main :: IO()
main = do
    print demo

--un metodo que me devuelva el promedio de los numeros de la lista
