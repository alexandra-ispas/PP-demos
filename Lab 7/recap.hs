{-# LANGUAGE NoMonomorphismRestriction #-}
import Data.List
import Debug.Trace
import Data.Char


    -- Fix bug
    -- // isEmpty
reverseList ::  Eq a => [a] -> [a]
reverseList l = if l == [] then l else reverseList (tail l) ++ [head l]


{-
    Se da o lista de cuvinte, sa se pastreze doar acelea care nu contin litera 'o'
    Hint: elem, notElem, .

    :t (.)
    :t ($)
-}

cuvinte = ["ana", "odata", "ceva", "oare", "care", "multi"]
func l = filter (\x -> not $ elem 'o' x) l


compute factory list =
    let sum = foldl (+) 0 list
        no = length list
        random = quot 31 no
    in
    case factory of
        "sum" -> sum
        "number" -> no
        "random" -> random


{-
    Care linie produce o eroare ?

x = [1, 2, 3]
y = [['a', 'n', 'a'], "ceva"]
z = [1, "string"]
w = (1, "string")

-}

{-

zipWith (\x y -> x + y) [1, 2, 3] [4, 5, 6]
zipWith + [1, 2, 3] [4, 5, 6]
map (\x y -> x + y) [1, 2, 3] [4, 5, 6]
map (\(x, y) -> x * y) $ zip [1, 2, 3] [4, 5, 6]
-}


{-
    Scrieti o functie care primeste o lista si aduna 
    o valoare la fiecare element din lista. foldl + foldr
-}

func2 list x = foldl (\acc y -> acc ++ [x + y]) [] list
func3 list x = foldr (\y acc -> [x + y] ++ acc) [] list


{-
    Pe ce face match urmatoarea functie?
    f [a:b] = 0
-}


naturals = naturalsFrom 0
    where naturalsFrom n = n : naturalsFrom (n + 1)

{-
    Scrieti o functie prin care sa obtineti perechi de numere consecutive
    de ex. (0, 1), (1, 2), (2, 3)..

    - map
    - zip
-}

-- pairs = map (\x -> (x, x + 1)) naturals
-- pairs = foldl (\acc x -> acc ++ [(x, x+1)]) [] naturals 
pairs = zip naturals $ tail naturals


r = foldr ((\x y z -> filter x (y ++ z)) odd) [] [[1,2], [3,4,5]]
