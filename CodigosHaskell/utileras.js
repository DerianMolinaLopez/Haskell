/*


3
3.
b. replicate :: Int -> a -> [a]


4
a. !! :: [a] -> Int -> a
*/


/*
2------
    1
    sumanMas :: (Num a, Ord a) => [[a]] -> [[a]]
    sumanMas xss = filter (\xs -> sum xs == maximum (map sum xss)) xss

    2
    listaSinRepetir :: (Eq a) => [(a, a)] -> [a]
listaSinRepetir tuples = nub (concatMap (\(x, y) -> [x, y]) tuples)
-- Asegúrate de importar la función nub desde Data.List
-- import Data.List (nub)

    3 
    ultimos :: Int -> [a] -> [a]
ultimos n xs = reverse (take n (reverse xs))

*/ 