{-# LANGUAGE NoMonomorphismRestriction #-}
import Data.List
import Debug.Trace
import Data.Char


{-
    Implementati functia take  
    $, pattern-matching 
-}

myTake :: Int -> [a] -> [a]
myTake n l = undefined



f = head
g = id $ f


{-
    f1 = fst . head
    f2 = fst $ head
-}


{-
    Scrieți un list comprehension în Haskell care reprezintă mulțimea (așadar fără 
    duplicate) tuturor tripletelor pitagorice de numere naturale de maxim 3 cifre.

    Obs: Numerele a, b, c formează un triplet pitagoric dacă pot fi laturile unui triunghi 
    dreptunghic (a^2 + b^2 = c^2).
-}

triplete = [[x, y, z] | x <- [1..99], y <- [x .. 99], let z = x ** 2 + y ** 2, x > 12]



-- flip (/) 10 2


{-
    ord :: Char -> Int
    f = zipWith (,) . map ord

    ce tip de date are f ?
-}
