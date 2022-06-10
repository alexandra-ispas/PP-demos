{-# LANGUAGE NoMonomorphismRestriction #-}
import Data.List
import Debug.Trace
import Data.Char

data MyList a = Empty | Node a (MyList a)

{-
    doua elemente de tipul 'MyList' sunt egale daca:
        - amandoua sunt Empty
        - informatia dintr-un nod este triplul informatiei din celalalt
-}

instance (Num a, Eq a) => Eq (MyList a) where    
    Empty == Empty = True
    Node a _ == Node b _ = a == 3 * b || b == 3 * a




-------------------
{-
    ce tip de date are urmatoarea expresie
    map (-) [1, 2, 3]
-}

-- (1-), (2- ), (3-)
-- Num a => [a] -> [(a -> a)]

{-
    de ce urmatorul cod genereaza eroare ?

    > let f x y z = x + y
    > f 1 2
-}



{-
    functia f cauta o cheie intr-o lista de perechi (cheie, valoare)
    si intoarce Just valoare daca gaseste cheia
    sau Nothing in caz contrar.

    care este semnatura functiei ?
-}


-------------------

data Wrapper a = Wrap
    {
        fstHalf :: a,
        sndHalf :: a
    } deriving Eq

instance (Num a, Ord a) => Ord (Wrapper a) where
    compare w1 w2 = compare (fstHalf w1) ((sndHalf w2) + 10)



