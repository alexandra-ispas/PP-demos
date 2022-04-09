{-# LANGUAGE NoMonomorphismRestriction #-}
import Data.List
import Debug.Trace
import Data.Char

------------------------------------------------------------------- list comprehensions
lc1 = [ (x,y,z) | x<-[1..3], y<-[1..4], x<y, let z = x+y, odd z ]

fibo = 0 : 1 : [ x+y | (x,y) <- zip fibo (tail fibo) ]

------------------------------------------------------------------- liste inifite
naturals1 = [0..]
naturals2 = iterate (+1) 0

ones = repeat 1

onesTwos = intersperse 2 ones

------------------------------------------------------------------- compuneri
len1 = length $ 3 : [1, 2]

square x = x*x
inc x = x+1
f1 x = inc (square x)
f2 x = inc $ square x
f3 x = inc . square $ x
f4 = inc . square

------------------------------------------------------------------- point-free
sum1 xs = foldl (+) 0 xs
-- vs
sum2 = foldl (+) 0


--  calculm expresia 2 * x + 1 pentru orice element dintr-o listă

-- cu lambda
l1 = map (\x->2 *x + 1)

-- fară lambda
l2 = map ((*2).(+1))

concatMap (\x->[x+1]) [1, 2, 3]