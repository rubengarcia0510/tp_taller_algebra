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

pertenece :: Integer -> [Integer] -> Bool
pertenece e [] = False
pertenece e l = e == head l || pertenece e (tail l)

--productoria :: [Integer] -> Integer
--productoria [] = 1
--productoria l | l /= [] = (head l) * productoria (tail l)

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (l:ls) = l * (productoria ls)
