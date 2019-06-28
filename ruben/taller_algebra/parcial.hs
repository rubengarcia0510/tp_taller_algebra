--ejercicio 2
prod :: Integer -> Integer
prod n | n == 1 = 24
       | n > 1 = (2*n^2 + 4*n) * prod (n-1)

--ejercicio 3
esCapicua :: Integer -> Bool
esCapicua n = n == listToInteger (inverse n)

ultimoDigito :: Integer -> Integer
ultimoDigito n = mod n 10

inverse :: Integer -> [Integer]
inverse 0 = []
inverse n = ultimoDigito n:inverse (div (n-(ultimoDigito n)) 10)

listToInteger :: [Integer] -> Integer
listToInteger [] = 0
listToInteger (x:xs) = x*10^((length (xs))) + listToInteger xs

--ejercicio 4
esPrimo :: Integer -> Bool
esPrimo n = auxEsPrimo n 1


auxEsPrimo :: Integer -> Integer -> Bool
auxEsPrimo n m | m > 1 && (mod n m) == 0 && n > m = False
        | (mod n m) == 0 && n == m = True
        | otherwise = auxEsPrimo n (m+1)

zipPrimos :: [Integer] -> [Integer] -> [(Integer,Integer)]
zipPrimos _ [] = []
zipPrimos [] _ = []
zipPrimos (l1:l1s) (l2:l2s) | esPrimo l1 && esPrimo l2 = (l1,l2):zipPrimos l1s l2s
                            | otherwise = zipPrimos l1s l2s
