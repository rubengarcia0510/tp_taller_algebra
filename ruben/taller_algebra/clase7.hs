listar :: a -> a -> a -> [a]
listar a b c = [a,b,c]

--pertenece :: Integer -> [Integer] -> Bool
--pertenece _ [] = False
--pertenece e l | e == head l = True
--              | otherwise = pertenece e (tail l)

lista_decreciente :: Integer -> [Integer] -> [Integer]
lista_decreciente (-100) l = ((-100):l)
lista_decreciente n l = (n - 1:lista_decreciente (n-1) l)

primerMultiplode45345 :: [Integer] -> Integer
primerMultiplode45345 (l:ls) | l > 45345 && mod l 45345 == 0 = l
                             | otherwise = primerMultiplode45345 ls

perteneceR :: Integer -> [Integer] -> Bool
perteneceR e [] = False
perteneceR e l = e == head l || perteneceR e (tail l)

productoria :: [Integer] -> Integer
productoria [] = 1
productoria l | l /= [] = (head l) * productoria (tail l)

productoriaR :: [Integer] -> Integer
productoriaR [] = 1
productoriaR (l:ls) = l * (productoriaR ls)

sumarN :: Integer -> [Integer] -> [Integer]
sumarN n [] = [n]
sumarN n l | l /= [] = ((head l)+n:sumarN n (tail l))

sumarNR :: Integer -> [Integer] -> [Integer]
sumarNR n [] = [n]
sumarNR n (l:ls) = (l+n:sumarNR n ls)

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero l = sumarXaLista (head l) l

sumarXaLista :: Integer -> [Integer] -> [Integer]
sumarXaLista n [] = [n]
sumarXaLista n (x:xs) | (x:xs) /= [] = (n+x:sumarXaLista n xs)

sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo [] = []
sumarElUltimo l = ((head l) + (ultimoElemento l):sumarElUltimo (tail l))

ultimoElemento :: [Integer] -> Integer
ultimoElemento [] = 0
ultimoElemento l | length (tail l) == 0 = head l
                 | otherwise = ultimoElemento (tail l)

pares :: [Integer] -> [Integer]
pares [] = []
pares (l:ls) | mod l 2 == 0 = (l:pares ls)
             | otherwise = pares ls
