import Data.List (nub)

main::IO()
main = do 
    --let uniones = unidos [3,1,5,1,7,1,5,3]
    --let suman = sumanMas [[1,3,5],[2,7],[1,3,2],[3,2],[5]]
    --let norepeat = sinRepetir [(1,2),(1,4),(3,3),(2,1),(4,2)]
    let ulti = ultimos 3 [2,5,47,9,5]
    print (ulti) 
{-
Sin usar las funciones drop y  take, elabore la función (ultimos n xs)  que retorne la lista formada por los últimos n elementos de xs. Por ejemplo, ultimos 3 [2,5,47,9,5] == [47,9,5]
-}
ultimos :: Int -> [a] -> [a]
ultimos n xs
    | length xs > n = ultimos n (tail xs)
    | otherwise = xs


unidos :: [Int] -> [Int]
unidos [] = []
unidos (x:xs) = x : filter (== x) xs ++ unidos (filter (/= x) xs)


sinRepetir :: [(Int,Int)] -> [Int]
sinRepetir xs = nub (concatMap (\(x, y) -> [x, y]) xs)
--Sin usar las funciones drop y  take, elabore la función (ultimos n xs)  que retorne la lista formada por los últimos n elementos de xs. Por ejemplo, ultimos 3 [2,5,47,9,5] == [47,9,5]






















{-
 1.(sumanMas xss) es la lista de las listas de xss que suman el número más alto. Por ejemplo,  ghci> sumanMas [[1,3,5],[2,7],[1,3,2],[3,2],[5]]   Rsp: [[1,3,5],[2,7]]
-}
sumanMas::[[Int]]->[[Int]]
sumanMas xss = [xs|xs<-xss, sum xs == maximum (map sum xss)]
