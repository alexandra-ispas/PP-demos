
data Point = P {
    x :: Int,
    y :: Int
} --deriving (Show, Eq)


{-
    x = P 2 3
    y = P 2 3
-}

instance Eq Point where
    P x1 y1 == P x2 y2 = x1 == x2 && y1 == y2
    p1 /= p2 = not (p1 == p2)


{-
implementare implicita

class  Eq a  where
    (==), (/=)           :: a -> a -> Bool
    x /= y               = not (x == y)
    x == y               = not (x /= y)

-}

instance Show Point where
    show (P x y) = "Punctul are coordonatele: x = " ++ (show x) ++ " si y = " ++ (show y)


-------------------------------------------

{-

    class NumeClasa t where
        f1 :: signatura1
        f2 :: signatura2
        ....


    t = variabila de tip
    signaturile folosesc tipul t (descriem o intreaga clasa de tipuri)

-}

class DummyClass a where
    dummyFunction :: a -> String
    dummyFunction _ = "dummy result"

    doubleX :: a -> a
    doubleY :: a -> a


instance DummyClass Point where
    doubleX (P x y) = P (2 * x) y
    doubleY (P x y) = P x (2 * y)


{-

    Data.Bifunctor.bimap (+6) (*2) (1,2)
    - primeste 2 functii, prima se aplica pe primul element din pereche,
      a doua pe cel de-al doilea

    (*2) <$> [1,2,3]
    - <$> = notatia infixata de la fmap
    https://hackage.haskell.org/package/base-4.11.0.0/docs/Data-Functor.html#t:Functor


    (1,2) $> "foo"
    (1,2) <$ "foo"

-} 

    