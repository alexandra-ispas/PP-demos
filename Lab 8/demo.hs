{-# LANGUAGE NoMonomorphismRestriction #-}
import Data.List
import Debug.Trace
import Data.Char
import Data.Maybe


---------------------------------------------- type
type Age = Int
type Name = (String, String)

agePrint :: Age -> IO()
agePrint x = print x

namePrint :: Name -> IO()
namePrint (nume, prenume) = mapM_ print ["numele este: ", nume, "prenumele:", prenume]

---------------------------------------------- tipuri enumerate

data Zar = Fata1 | Fata2 | Fata3 | Fata4 | Fata5 | Fata6  --deriving Show
-- :i Bool

printZar :: Zar -> IO()
printZar Fata1 = print "zarul are val 1"
printZar _ = print "orice" 


---------------------------------------------- tipuri inregistrate
data Person = Per 
    {
        nume :: Name, 
        varsta :: Age
    } deriving Show

p = Per ("Popescu", "Ion") 20
-- :t varsta
-- varsta p

newP = p {varsta = 30}

printName :: Person -> IO()
printName person@(Per (nume, pren) var) = print nume

---------------------------------------------- maybe
{-
    primul element dintr-o lista vida
-}

myHead :: [a] -> Maybe a
myHead (x:_) = Just x
myHead _ = Nothing

{-
    x = myHead []
    y = myHead [1, 2 .. 5]
    :t y
    z = fromJust y
    :t y 
-}


