-- comentariu
-- :load pentru a încărca un fișier
-- :reload pentru a face update fișierului


--------------------------------------- Tipuri de date:
bool1 = True
str = "string"
str1 = ['c', 'e', 'v', 'a']
chr = 'c'
int = 3


--------------------------------------- Notație infixată pentru operatori
r1 = 1 + 2 + 3 + 4      -- :t r1

r2 = 2 < 3


--------------------------------------- Notație prefixată pentru funcții  
l1 = filter odd [1 .. 7]


--------------------------------------- Perechi
r3 = (1, "ceva")
r3_1 = fst r3
r3_2 = snd r3

--------------------------------------- Liste
l2 = []
l3 = "ceva" : l2
l4 = [1, 2, 3, 4, 5, 5, 6]

-- l3 ++ l4

l5 = [1,3..10]

-- init primeste o lista și o intoarce fără ultimul element
-- take
-- drop
-- reverse
-- elem/notElem

--------------------------------------- Funcții anonime
-- (\x y -> x + y) 3 5


--------------------------------------- Funcții cu nume
f1 = \x y -> x + y            -- f1 2 3

f2 = \x -> \y -> x + y        -- f2 2 3

mediaar1 x y = (x + y) / 2
mediaar2 (x, y) = (x + y) / 2

--------------------------------------- Funcții uzuale

-- map

-- filter

-- zip
r13 = zip [0..2] [3..5]

-- zipWith
r14 = zipWith (\x y -> [x, y]) [0..2] [3..5]



--------------------------------------- Operator->funcție

r4 = (-) 4 2

r5 = (/=) 2 2    -- !=

r6 = foldl (+) 0 [1 .. 4]

--------------------------------------- Funcție->operator

r7 = 5 `mod` 3

--------------------------------------- Secțiuni

-- se dă operatorul din stânga

-- :t (5/)
r8 = (5/) 2

r9 = map (2-) [0..4]

r10 = filter (2<) [0..4]

-- se dă operatorul din dreapta
r11 = (/5) 2
-- r12 = map (-2) [0..4]    (-2) este numar, nu este functie

--------------------------------------- Pattern matching

ordered [] = True
ordered [x] = True
ordered (x:xs@(y:rest)) = x <= y && ordered xs

-- ordered 7:[0..3]

---------------------------------------  Operatorii . și $

-- funcție care sa întoarcă ultimul element dintr-o listă
-- myLast = 



r15 = take 4 $ filter (odd . fst) $ zip [1..] [2..]


--------------------------------------- Condiționale

-- if

r16 = if 2 < 3 then "true" else "false"

length_if l = if l /= [] then 1 + length_if (tail l) else 0


-- case
length_case l = case l of
    (_ : xs) -> 1 + length_case xs
    _ -> 0


-- gărzi
length_guard l
    | l /= [] = 1 + length_guard (tail l)
    | otherwise = 0


-- pattern matching
length_pm [] = 0
length_pm (_:xs) = 1 + length_pm xs


--------------------------------------- let

naturals = let loop n = n : loop (n+1) 
            in loop 0

naturals1 = loop 0
            where loop n = n : loop (n + 1)

naturals2 = iterate (+1) 0
-- take 6 naturals

