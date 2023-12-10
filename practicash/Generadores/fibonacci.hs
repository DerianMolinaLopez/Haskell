main ::IO()
main = do 
    print(fibonacci 10)
--programar de forma recursiva el fibonacci de un numero n
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)